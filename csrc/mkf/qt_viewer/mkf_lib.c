#include "mkf_lib.h"
#include "mkf_decompress.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#pragma pack(push, 1)
typedef struct {
    uint32_t uncompressed_size;
    uint32_t compressed_size;
    uint32_t image_data_offset;
    uint32_t image_data_size;
} mkf_resource_header;

typedef struct {
    char signature[4];
    uint32_t num_chunks;
    uint32_t start_offset;
} mkf_spr_smp_header;

typedef struct {
    int16_t width;
    int16_t height;
    int16_t x;
    int16_t y;
    uint32_t gsize;
} mkf_chunk_entry;
#pragma pack(pop)

struct mkf_node {
    mkf_node_type type;
    char* label;
    int expanded;
    int expandable;
    int child_count;
    int child_capacity;
    mkf_node** children;
    struct mkf_node* parent;

    int resource_index;
    int image_index;

    void* data;
    size_t data_size;
    int data_valid;

    int resource_info_valid;
    mkf_resource_info res_info;

    int image_info_valid;
    mkf_image_info img_info;

    int spr_smp_checked;
    int is_spr_smp;
    char spr_smp_sig[4];
    uint32_t spr_smp_num_chunks;
    uint32_t spr_smp_start_offset;

    mkf_lib* lib;
};

struct mkf_lib {
    char* filepath;
    uint8_t* file_data;
    size_t file_size;
    uint32_t index_offset;
    uint32_t num_resources;
    uint32_t* resource_offsets;
    mkf_node* root;
};

static mkf_node* node_create(mkf_lib* lib, mkf_node_type type, const char* label)
{
    mkf_node* node = (mkf_node*)calloc(1, sizeof(mkf_node));
    node->lib = lib;
    node->type = type;
    node->label = label ? strdup(label) : NULL;
    node->expanded = 0;
    node->expandable = 0;
    node->child_count = 0;
    node->child_capacity = 0;
    node->children = NULL;
    node->resource_index = -1;
    node->image_index = -1;
    node->data = NULL;
    node->data_size = 0;
    node->data_valid = 0;
    node->resource_info_valid = 0;
    node->image_info_valid = 0;
    return node;
}

static void node_add_child(mkf_node* parent, mkf_node* child)
{
    if (parent->child_count >= parent->child_capacity) {
        parent->child_capacity = parent->child_capacity ? parent->child_capacity * 2 : 4;
        parent->children = (mkf_node**)realloc(parent->children,
            (size_t)parent->child_capacity * sizeof(mkf_node*));
    }
    child->parent = parent;
    parent->children[parent->child_count++] = child;
}

static void node_free(mkf_node* node)
{
    if (!node) return;
    free(node->label);
    for (int i = 0; i < node->child_count; i++) {
        node_free(node->children[i]);
    }
    free(node->children);
    if (node->data_valid) {
        free(node->data);
    }
    free(node);
}

static void ensure_resource_info(mkf_node* node)
{
    if (node->resource_info_valid) return;
    node->resource_info_valid = 1;

    mkf_lib* lib = node->lib;
    int ri = node->resource_index;
    if (ri < 0 || ri >= (int)lib->num_resources) return;

    uint32_t offset = lib->resource_offsets[ri];
    node->res_info.file_offset = offset;
    node->res_info.compressed_size = 0;
    node->res_info.uncompressed_size = 0;
    node->res_info.image_offset = 0;
    node->res_info.image_size = 0;
    node->res_info.is_compressed = 0;
    node->res_info.is_spr_smp = 0;
    memset(node->res_info.signature, 0, 4);
    node->res_info.num_chunks = 0;
    node->res_info.start_offset = 0;

    if (offset + sizeof(mkf_resource_header) <= lib->file_size) {
        mkf_resource_header hdr;
        memcpy(&hdr, lib->file_data + offset, sizeof(hdr));
        node->res_info.compressed_size = hdr.compressed_size;
        node->res_info.uncompressed_size = hdr.uncompressed_size;
        node->res_info.image_offset = hdr.image_data_offset;
        node->res_info.image_size = hdr.image_data_size;
        node->res_info.is_compressed = (hdr.compressed_size != hdr.uncompressed_size);
    }
}

static void node_populate_resource_children(mkf_node* node)
{
    if (node->expanded) return;
    node->expanded = 1;

    ensure_resource_info(node);
    mkf_resource_info* ri = &node->res_info;

    if (ri->is_compressed) {
        mkf_node* cmp = node_create(node->lib, MKF_NODE_COMPRESSED, "Compressed Data");
        cmp->resource_index = node->resource_index;
        cmp->expandable = 1;
        node_add_child(node, cmp);
    } else {
        mkf_node* dec = node_create(node->lib, MKF_NODE_DECOMPRESSED, "Decompressed Data");
        dec->resource_index = node->resource_index;
        dec->expandable = 1;
        node_add_child(node, dec);
    }
}

static void decompress_resource(mkf_lib* lib, int ri, void** out_data, size_t* out_size)
{
    *out_data = NULL;
    *out_size = 0;

    if (ri < 0 || ri >= (int)lib->num_resources) return;

    uint32_t offset = lib->resource_offsets[ri];
    if (offset + sizeof(mkf_resource_header) > lib->file_size) return;

    mkf_resource_header hdr;
    memcpy(&hdr, lib->file_data + offset, sizeof(hdr));

    size_t comp_size = hdr.compressed_size;
    size_t uncomp_size = hdr.uncompressed_size;

    if (offset + sizeof(mkf_resource_header) + comp_size > lib->file_size) return;

    const uint8_t* comp_data = lib->file_data + offset + sizeof(mkf_resource_header);

    void* buf = malloc(uncomp_size);
    if (!buf) return;

    if (comp_size == uncomp_size) {
        memcpy(buf, comp_data, uncomp_size);
    } else {
        mkf_decompress(buf, comp_data, uncomp_size);
    }

    *out_data = buf;
    *out_size = uncomp_size;
}

static void node_populate_decompressed_children(mkf_node* node)
{
    if (node->expanded) return;
    node->expanded = 1;

    mkf_lib* lib = node->lib;
    int ri = node->resource_index;
    if (ri < 0 || ri >= (int)lib->num_resources) {
        node->expandable = 0;
        return;
    }

    void* data = NULL;
    size_t data_size = 0;
    decompress_resource(lib, ri, &data, &data_size);
    if (!data) {
        node->expandable = 0;
        return;
    }

    node->data = data;
    node->data_size = data_size;
    node->data_valid = 1;

    if (data_size < sizeof(mkf_spr_smp_header)) {
        node->expandable = 0;
        return;
    }

    mkf_spr_smp_header* spr = (mkf_spr_smp_header*)data;
    int is_spr = (memcmp(spr->signature, "SPR\0", 4) == 0);
    int is_smp = (memcmp(spr->signature, "SMP\0", 4) == 0);

    if (!is_spr && !is_smp) {
        node->expandable = 0;
        return;
    }

    uint32_t num_chunks = spr->num_chunks;
    uint32_t start_offset = spr->start_offset;
    if (num_chunks == 0) {
        node->expandable = 0;
        return;
    }

    size_t chunk_table_size = (size_t)num_chunks * sizeof(mkf_chunk_entry);
    if (sizeof(mkf_spr_smp_header) + chunk_table_size > data_size) {
        node->expandable = 0;
        return;
    }

    mkf_chunk_entry* chunk_table = (mkf_chunk_entry*)((uint8_t*)data + sizeof(mkf_spr_smp_header));

    uint32_t graph_offset;
    if (is_spr) {
        graph_offset = start_offset + 512;
    } else {
        graph_offset = start_offset;
    }

    for (uint32_t i = 0; i < num_chunks; i++) {
        char img_label[64];
        snprintf(img_label, sizeof(img_label), "Image %u (%dx%d)",
                 i, chunk_table[i].width, chunk_table[i].height);

        mkf_node* img = node_create(node->lib, MKF_NODE_IMAGE, img_label);
        img->resource_index = ri;
        img->image_index = (int)i;
        img->expandable = 0;

        img->image_info_valid = 1;
        img->img_info.width = chunk_table[i].width;
        img->img_info.height = chunk_table[i].height;
        img->img_info.x = chunk_table[i].x;
        img->img_info.y = chunk_table[i].y;
        img->img_info.gsize = chunk_table[i].gsize;

        if (graph_offset + chunk_table[i].gsize <= data_size) {
            img->data = malloc(chunk_table[i].gsize);
            if (img->data) {
                memcpy(img->data, (uint8_t*)data + graph_offset, chunk_table[i].gsize);
                img->data_size = chunk_table[i].gsize;
                img->data_valid = 1;
            }
        }

        node_add_child(node, img);
        graph_offset += chunk_table[i].gsize;
    }
}

mkf_lib* mkf_open(const char* path)
{
    FILE* fp = fopen(path, "rb");
    if (!fp) return NULL;

    fseek(fp, 0, SEEK_END);
    long fsize = ftell(fp);
    if (fsize < 4) {
        fclose(fp);
        return NULL;
    }
    rewind(fp);

    uint8_t* filedata = (uint8_t*)malloc((size_t)fsize);
    if (!filedata) {
        fclose(fp);
        return NULL;
    }

    if (fread(filedata, 1, (size_t)fsize, fp) != (size_t)fsize) {
        free(filedata);
        fclose(fp);
        return NULL;
    }
    fclose(fp);

    uint32_t index_offset;
    memcpy(&index_offset, filedata, 4);

    if (index_offset < 4 || index_offset >= (uint32_t)fsize) {
        free(filedata);
        return NULL;
    }

    uint32_t index_table_size = (uint32_t)fsize - index_offset;
    if (index_table_size % 4 != 0) {
        free(filedata);
        return NULL;
    }

    uint32_t num_resources = index_table_size / 4;

    uint32_t* res_offsets = (uint32_t*)malloc((size_t)num_resources * sizeof(uint32_t));
    if (!res_offsets) {
        free(filedata);
        return NULL;
    }

    for (uint32_t i = 0; i < num_resources; i++) {
        memcpy(&res_offsets[i], filedata + index_offset + i * 4, 4);
    }

    mkf_lib* lib = (mkf_lib*)calloc(1, sizeof(mkf_lib));
    lib->filepath = strdup(path);
    lib->file_data = filedata;
    lib->file_size = (size_t)fsize;
    lib->index_offset = index_offset;
    lib->num_resources = num_resources;
    lib->resource_offsets = res_offsets;

    const char* basename = path;
    const char* slash = strrchr(path, '/');
    if (slash) basename = slash + 1;

    lib->root = node_create(lib, MKF_NODE_FILE, basename);
    lib->root->expandable = 1;
    lib->root->expanded = 1;

    for (uint32_t i = 0; i < num_resources; i++) {
        char res_label[32];
        snprintf(res_label, sizeof(res_label), "Resource %u", i);
        mkf_node* res = node_create(lib, MKF_NODE_RESOURCE, res_label);
        res->resource_index = (int)i;
        res->expandable = 1;
        node_add_child(lib->root, res);
    }

    return lib;
}

void mkf_close(mkf_lib* lib)
{
    if (!lib) return;
    free(lib->filepath);
    free(lib->file_data);
    free(lib->resource_offsets);
    node_free(lib->root);
    free(lib);
}

mkf_node* mkf_get_root(mkf_lib* lib)
{
    return lib ? lib->root : NULL;
}

mkf_node_type mkf_node_get_type(mkf_node* node)
{
    return node->type;
}

const char* mkf_node_get_label(mkf_node* node)
{
    return node->label;
}

int mkf_node_get_child_count(mkf_node* node)
{
    return node->child_count;
}

mkf_node* mkf_node_get_child(mkf_node* node, int index)
{
    if (index < 0 || index >= node->child_count) return NULL;
    return node->children[index];
}

int mkf_node_is_expanded(mkf_node* node)
{
    return node->expanded;
}

static void node_populate_compressed_children(mkf_node* node)
{
    if (node->expanded) return;
    node->expanded = 1;

    mkf_node* dec = node_create(node->lib, MKF_NODE_DECOMPRESSED, "Decompressed Data");
    dec->resource_index = node->resource_index;
    dec->expandable = 1;
    node_add_child(node, dec);
}

void mkf_node_set_expanded(mkf_node* node, int expanded)
{
    if (!node) return;
    if (expanded && !node->expanded) {
        switch (node->type) {
        case MKF_NODE_FILE:
        case MKF_NODE_RESOURCE:
            node_populate_resource_children(node);
            break;
        case MKF_NODE_COMPRESSED:
            node_populate_compressed_children(node);
            break;
        case MKF_NODE_DECOMPRESSED:
            node_populate_decompressed_children(node);
            break;
        default:
            break;
        }
    } else if (!expanded) {
        node->expanded = 0;
    }
}

static int quick_check_spr_smp(mkf_node* node)
{
    mkf_lib* lib = node->lib;
    int ri = node->resource_index;
    if (ri < 0 || ri >= (int)lib->num_resources) return 0;

    uint32_t offset = lib->resource_offsets[ri];
    if (offset + sizeof(mkf_resource_header) > lib->file_size) return 0;

    mkf_resource_header hdr;
    memcpy(&hdr, lib->file_data + offset, sizeof(hdr));

    size_t comp_size = hdr.compressed_size;
    size_t uncomp_size = hdr.uncompressed_size;

    if (uncomp_size < 12) return 0;
    if (offset + sizeof(mkf_resource_header) + comp_size > lib->file_size) return 0;

    const void* raw_data = lib->file_data + offset + sizeof(mkf_resource_header);
    char buf[12];

    if (comp_size == uncomp_size) {
        memcpy(buf, raw_data, 12);
    } else {
        mkf_decompress(buf, raw_data, 12);
    }

    int is_spr = (memcmp(buf, "SPR\0", 4) == 0);
    int is_smp = (memcmp(buf, "SMP\0", 4) == 0);
    if (!is_spr && !is_smp) return 0;

    memcpy(node->spr_smp_sig, buf, 4);
    memcpy(&node->spr_smp_num_chunks, buf + 4, 4);
    memcpy(&node->spr_smp_start_offset, buf + 8, 4);
    node->is_spr_smp = 1;
    return 1;
}

int mkf_node_is_expandable(mkf_node* node)
{
    switch (node->type) {
    case MKF_NODE_FILE:
    case MKF_NODE_RESOURCE:
    case MKF_NODE_COMPRESSED:
        return 1;
    case MKF_NODE_DECOMPRESSED:
        if (!node->expandable) return 0;
        if (!node->spr_smp_checked) {
            node->spr_smp_checked = 1;
            node->is_spr_smp = quick_check_spr_smp(node);
            if (!node->is_spr_smp) {
                node->expandable = 0;
            }
        }
        return node->is_spr_smp;
    default:
        return 0;
    }
}

mkf_node* mkf_node_get_parent(mkf_node* node)
{
    return node ? node->parent : NULL;
}

const void* mkf_node_get_data(mkf_node* node, size_t* size)
{
    if (size) *size = 0;
    if (!node) return NULL;

    switch (node->type) {
    case MKF_NODE_COMPRESSED: {
        int ri = node->resource_index;
        if (ri < 0 || ri >= (int)node->lib->num_resources) return NULL;
        uint32_t offset = node->lib->resource_offsets[ri];
        if (offset + sizeof(mkf_resource_header) > node->lib->file_size) return NULL;
        mkf_resource_header hdr;
        memcpy(&hdr, node->lib->file_data + offset, sizeof(hdr));
        size_t comp_size = hdr.compressed_size;
        if (offset + sizeof(mkf_resource_header) + comp_size > node->lib->file_size) return NULL;
        if (size) *size = comp_size;
        return node->lib->file_data + offset + sizeof(mkf_resource_header);
    }
    case MKF_NODE_DECOMPRESSED:
        if (!node->data_valid) {
            void* data = NULL;
            size_t ds = 0;
            decompress_resource(node->lib, node->resource_index, &data, &ds);
            if (data) {
                node->data = data;
                node->data_size = ds;
                node->data_valid = 1;
            }
        }
        if (size) *size = node->data_size;
        return node->data;
    case MKF_NODE_IMAGE:
        if (size) *size = node->data_size;
        return node->data;
    default:
        return NULL;
    }
}

uint32_t mkf_node_get_file_offset(mkf_node* node)
{
    if (!node) return 0;
    switch (node->type) {
    case MKF_NODE_RESOURCE:
    case MKF_NODE_COMPRESSED:
    case MKF_NODE_DECOMPRESSED:
    case MKF_NODE_IMAGE: {
        int ri = node->resource_index;
        if (ri >= 0 && ri < (int)node->lib->num_resources) {
            uint32_t off = node->lib->resource_offsets[ri];
            if (node->type == MKF_NODE_COMPRESSED) {
                off += sizeof(mkf_resource_header);
            }
            return off;
        }
        return 0;
    }
    default:
        return 0;
    }
}

int mkf_node_get_resource_info(mkf_node* node, mkf_resource_info* out)
{
    if (!node || !out) return 0;

    int ri = -1;
    switch (node->type) {
    case MKF_NODE_RESOURCE:
    case MKF_NODE_COMPRESSED:
    case MKF_NODE_DECOMPRESSED:
    case MKF_NODE_IMAGE:
        ri = node->resource_index;
        break;
    default:
        return 0;
    }

    if (ri < 0 || ri >= (int)node->lib->num_resources) return 0;

    ensure_resource_info(node);
    memcpy(out, &node->res_info, sizeof(mkf_resource_info));

    if (node->type == MKF_NODE_DECOMPRESSED || node->type == MKF_NODE_IMAGE) {
        if (node->data_valid && node->data_size >= sizeof(mkf_spr_smp_header)) {
            mkf_spr_smp_header* spr = (mkf_spr_smp_header*)node->data;
            if (memcmp(spr->signature, "SPR\0", 4) == 0 ||
                memcmp(spr->signature, "SMP\0", 4) == 0) {
                memcpy(out->signature, spr->signature, 4);
                out->is_spr_smp = 1;
                out->num_chunks = spr->num_chunks;
                out->start_offset = spr->start_offset;
            }
        } else if (node->type == MKF_NODE_DECOMPRESSED) {
            if (!node->spr_smp_checked) {
                node->spr_smp_checked = 1;
                quick_check_spr_smp(node);
            }
            if (node->is_spr_smp) {
                memcpy(out->signature, node->spr_smp_sig, 4);
                out->is_spr_smp = 1;
                out->num_chunks = node->spr_smp_num_chunks;
                out->start_offset = node->spr_smp_start_offset;
            }
        }
    }

    return 1;
}

int mkf_node_get_image_info(mkf_node* node, mkf_image_info* out)
{
    if (!node || !out || node->type != MKF_NODE_IMAGE) return 0;
    if (!node->image_info_valid) return 0;
    memcpy(out, &node->img_info, sizeof(mkf_image_info));
    return 1;
}

int mkf_get_resource_count(mkf_lib* lib)
{
    return lib ? (int)lib->num_resources : 0;
}

int mkf_check_spr_smp(mkf_lib* lib, int resource_index)
{
    if (!lib || resource_index < 0 || resource_index >= (int)lib->num_resources)
        return 0;

    uint32_t offset = lib->resource_offsets[resource_index];
    if (offset + sizeof(mkf_resource_header) > lib->file_size)
        return 0;

    mkf_resource_header hdr;
    memcpy(&hdr, lib->file_data + offset, sizeof(hdr));

    size_t comp_size = hdr.compressed_size;
    size_t uncomp_size = hdr.uncompressed_size;

    if (uncomp_size < 4) return 0;
    if (offset + sizeof(mkf_resource_header) + comp_size > lib->file_size)
        return 0;

    const void* raw_data = lib->file_data + offset + sizeof(mkf_resource_header);
    char sig[4];

    if (comp_size == uncomp_size) {
        memcpy(sig, raw_data, 4);
    } else {
        mkf_decompress(sig, raw_data, 4);
    }

    return (memcmp(sig, "SPR\0", 4) == 0 || memcmp(sig, "SMP\0", 4) == 0);
}
