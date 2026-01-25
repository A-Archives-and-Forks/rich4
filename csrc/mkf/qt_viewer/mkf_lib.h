#ifndef MKF_LIB_H
#define MKF_LIB_H

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct mkf_lib mkf_lib;
typedef struct mkf_node mkf_node;

typedef enum {
    MKF_NODE_FILE,
    MKF_NODE_RESOURCE,
    MKF_NODE_COMPRESSED,
    MKF_NODE_DECOMPRESSED,
    MKF_NODE_IMAGE,
} mkf_node_type;

typedef struct {
    uint32_t file_offset;
    uint32_t compressed_size;
    uint32_t uncompressed_size;
    uint32_t image_offset;
    uint32_t image_size;
    int is_compressed;
    int is_spr_smp;
    char signature[4];
    uint32_t num_chunks;
    uint32_t start_offset;
} mkf_resource_info;

typedef struct {
    int16_t width;
    int16_t height;
    int16_t x;
    int16_t y;
    uint32_t gsize;
} mkf_image_info;

mkf_lib* mkf_open(const char* path);
void mkf_close(mkf_lib* lib);

mkf_node* mkf_get_root(mkf_lib* lib);

mkf_node_type mkf_node_get_type(mkf_node* node);
const char* mkf_node_get_label(mkf_node* node);
int mkf_node_get_child_count(mkf_node* node);
mkf_node* mkf_node_get_child(mkf_node* node, int index);

int mkf_node_is_expanded(mkf_node* node);
void mkf_node_set_expanded(mkf_node* node, int expanded);
int mkf_node_is_expandable(mkf_node* node);
mkf_node* mkf_node_get_parent(mkf_node* node);

const void* mkf_node_get_data(mkf_node* node, size_t* size);
uint32_t mkf_node_get_file_offset(mkf_node* node);

int mkf_node_get_resource_info(mkf_node* node, mkf_resource_info* out);
int mkf_node_get_image_info(mkf_node* node, mkf_image_info* out);

int mkf_get_resource_count(mkf_lib* lib);
int mkf_check_spr_smp(mkf_lib* lib, int resource_index);

#ifdef __cplusplus
}
#endif

#endif
