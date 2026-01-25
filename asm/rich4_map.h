typedef unsigned char   undefined;

typedef unsigned char    bool;
typedef unsigned char    byte;
typedef unsigned int    dword;
float10
typedef pointer32 ImageBaseOffset32;

typedef long long    longlong;
typedef unsigned char    uchar;
typedef unsigned int    uint;
typedef unsigned long    ulong;
typedef unsigned long long    ulonglong;
typedef unsigned char    undefined1;
typedef unsigned short    undefined2;
typedef unsigned int    undefined4;
typedef unsigned long long    undefined8;
typedef unsigned short    ushort;
typedef short    wchar_t;
typedef unsigned short    word;
typedef struct rich4_facility_info rich4_facility_info, *Prich4_facility_info;

typedef ushort uint16_t;

typedef uchar uint8_t;

typedef uint uint32_t;

struct rich4_facility_info {
    uint16_t xpos;
    uint16_t ypos;
    char name[16];
    undefined field3_0x14;
    undefined field4_0x15;
    undefined field5_0x16;
    undefined field6_0x17;
    uint8_t facility_type;
    uint8_t owner; /* 如果是无主之地，则为0，否则为(player_id+1) */
    uint8_t level;
    undefined field10_0x1b;
    uint8_t tmp_state; /* 查封/涨价状态 */
    undefined field12_0x1d;
    undefined field13_0x1e;
    undefined field14_0x1f;
    undefined field15_0x20;
    undefined field16_0x21;
    uint16_t land_price;
    uint16_t price_per_level;
    undefined field19_0x26;
    undefined field20_0x27;
    undefined field21_0x28;
    undefined field22_0x29;
    undefined field23_0x2a;
    undefined field24_0x2b;
    undefined field25_0x2c;
    undefined field26_0x2d;
    undefined field27_0x2e;
    undefined field28_0x2f;
    uint32_t field29_0x30; /* 被传送机移走设施后，该字段变为0 */
    uint32_t expired_date;
};

typedef struct rich4_land_info rich4_land_info, *Prich4_land_info;

struct rich4_land_info {
    uint16_t xpos;
    uint16_t ypos;
    char name[16];
    undefined field3_0x14;
    undefined field4_0x15;
    undefined field5_0x16;
    uint8_t tmp_state; /* 查封/涨价状态 */
    uint8_t is_chain_store;
    uint8_t owner; /* 如果是无主之地，则为0，否则为(player_id+1) */
    uint8_t level;
    undefined field10_0x1b;
    uint16_t price_per_level;
    uint16_t land_price;
    undefined field13_0x20;
    undefined field14_0x21;
    undefined field15_0x22;
    undefined field16_0x23;
    undefined field17_0x24;
    undefined field18_0x25;
    undefined field19_0x26;
    undefined field20_0x27;
    undefined field21_0x28;
    undefined field22_0x29;
    undefined field23_0x2a;
    undefined field24_0x2b;
    uint32_t field25_0x2c; /* 被传送机移走房屋后，该字段变为0 */
    uint32_t expired_date; /* 租期 */
};

typedef struct rich4_map_node rich4_map_node, *Prich4_map_node;

typedef short int16_t;

struct rich4_map_node {
    int16_t x;
    int16_t y;
    undefined field2_0x4;
    undefined field3_0x5;
    undefined field4_0x6;
    undefined field5_0x7;
    undefined field6_0x8;
    undefined field7_0x9;
    undefined field8_0xa;
    undefined field9_0xb;
    undefined field10_0xc;
    undefined field11_0xd;
    undefined field12_0xe;
    undefined field13_0xf;
    undefined field14_0x10;
    undefined field15_0x11;
    undefined field16_0x12;
    undefined field17_0x13;
    undefined field18_0x14;
    undefined field19_0x15;
    undefined field20_0x16;
    undefined field21_0x17;
    uint16_t field22_0x18[4];
    uint16_t type_and_idx; /* 2000~3999: 普通土地 4000~5999: 设施; 6001~7999: 上市企业 */
    undefined field24_0x22;
    undefined field25_0x23;
    uint32_t field26_0x24;
};

typedef struct rich4_on_map_commercial_info rich4_on_map_commercial_info, *Prich4_on_map_commercial_info;

struct rich4_on_map_commercial_info {
    uint16_t xpos;
    uint16_t ypos;
    undefined field2_0x4;
    undefined field3_0x5;
    undefined field4_0x6;
    undefined field5_0x7;
    undefined field6_0x8;
    undefined field7_0x9;
    undefined field8_0xa;
    undefined field9_0xb;
    undefined field10_0xc;
    undefined field11_0xd;
    undefined field12_0xe;
    undefined field13_0xf;
    undefined field14_0x10;
    undefined field15_0x11;
    undefined field16_0x12;
    undefined field17_0x13;
    undefined field18_0x14;
    undefined field19_0x15;
    undefined field20_0x16;
    undefined field21_0x17;
    uint8_t owner; /* player_id+1 */
    undefined field23_0x19;
    uint8_t commerce_type; /* 4:保险公司; 11:建设公司 */
    undefined field25_0x1b;
    undefined field26_0x1c;
    undefined field27_0x1d;
    undefined field28_0x1e;
    undefined field29_0x1f;
    undefined field30_0x20;
    undefined field31_0x21;
    uint16_t toll_fee; /* 过路费 */
    undefined field33_0x24;
    undefined field34_0x25;
    undefined field35_0x26;
    undefined field36_0x27;
    undefined field37_0x28;
    undefined field38_0x29;
    undefined field39_0x2a;
    undefined field40_0x2b;
    undefined field41_0x2c;
    undefined field42_0x2d;
    undefined field43_0x2e;
    undefined field44_0x2f;
    undefined field45_0x30;
    undefined field46_0x31;
    undefined field47_0x32;
    undefined field48_0x33;
};

