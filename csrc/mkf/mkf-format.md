mkf 文件格式
==================

所有整数字段均采用 **小端字节序**（Little Endian），除非另有说明。

一个 mkf 文件包含多个资源，通过索引表定位各资源的存储位置。

### 1. 文件头结构（前 4 字节）

- **index_table_offset**（32 位小端整数）：表示资源索引表起始位置相对于文件开头的字节偏移量（即索引表第一个字节的位置）。
    - `index_table_offset` 应当不小于 4, 小于文件总长度

### 2. 资源索引表

- 资源索引表位于文件末尾，从文件偏移 `index_table_offset` 开始，到文件结束
- 索引表长度为 (文件总长度 - `index_table_offset`), 这个值应当能被 4 整除，索引表条目数量为 N = 索引表长度 / 4
- 索引表连续存放 N 个 4 字节的 32 位小端整数，每个整数表示一个资源数据在文件中相对于文件开头的偏移量

### 3. 资源数据块结构

每个资源的数据块由以下部分组成，按顺序连续存储：

1. **资源头结构体**：16 字节，由以下 4 个 32 位小端整数组成
     - `uncompressed_size`：原始资源数据大小（未压缩时的字节数）
     - `compressed_size`：压缩后实际存储的数据大小（即压缩数据长度），如果和 `original_size` 相同，则表示未压缩
     - `image_data_offset`：若为图像资源，表示图像数据在未压缩资源数据中的偏移量；否则应为 0
     - `image_data_size`：若为图像资源，表示图像数据的字节数；否则应为 0

2. **压缩数据（`compressed_size` 字节）**：
     - 实际存储的压缩后数据，解压后得到完整原始数据
     - 压缩算法是一种私有算法，由一个C语言实现的库提供解压实现

注意：所有资源均以相同结构存储，但 `image_data_offset` 和 `image_data_size` 仅对图像资源有意义。若资源非图像，则这两个字段应设为 0，解析时可忽略。

#### 3.1 SPR与SMP资源

mkf 文件存在两种具有特定格式的资源，它们是 **SPR资源** 和 **SMP资源**，这些资源包含多个数据块。

SMP和SPR资源的原始数据开头是由3个32位小端整数组成，共12字节：
    - `signature`: 4字节的数据类型标识，SPR数据为 {'S','P','R','\0'}, SMP数据为 {'S','M','P','\0'}
    - `num_chunks`: 4字节小端整数，表示资源的数据块数量
    - `start_offset`: 4字节，数据块相对SMP/SPR数据的起始偏移位置

解压资源数据后，通过检查 `signature` 判断是否为SPR/SMP数据，如果是，则按照本节的描述解析SPR/SMP数据。

其后SMP和SPR数据由 `num_chunks` 个图像描述结构连续排列组成，每个图像描述结构对应一个图像数据。每个图像描述结构有12字节，组成如下：
    - `width`: 2字节
    - `height`: 2字节
    - `x`: 2字节
    - `y`: 2字节
    - `gsize`: 4字节

用C语言表示为：

```c
struct graph_info
{
	int16_t width;
	int16_t height;
	int16_t x;
	int16_t y;
	uint32_t gsize;
} __attribute__((packed));
```

将这些图像描述结构记为 ``chunk_table[i]`` (i = 0, 1, 2, ..., `num_chunks` - 1)

将每个图像数据相对于资源原始数据的起始位置记为 `graph_offset[i]` (i = 0, 1, ..., `num_chunks` - 1)，则：
    - 对于SPR数据，graph_offset[0] = start_offset + 512
    - 对于SMP数据，graph_offset[0] = start_offset
    - graph_offset[i] = graph_offset[i-1] + chunk_table[i-1].gsize

### 4. 示例

以下展示一个有 3 个资源的 mkf 文件，所有资源均无图像数据：

- `index_table_offset`: 起始偏移 0, 4 字节，值为 1844 (见以下资源索引表位置)
- 资源0: 起始偏移 4, 原始数据大小 512 字节，未压缩
    - 头部 (`uncompressed_size` = 512, `compressed_size` = 512, `image_data_offset` = 0, `image_data_size` = 0)
    - 数据 512字节
- 资源1: 起始偏移 532, 原始数据大小 512 字节，压缩后 256 字节
    - 头部 (`uncompressed_size` = 512, `compressed_size` = 256, `image_data_offset` = 0, `image_data_size` = 0)
    - 数据 256字节
- 资源2: 起始偏移 804, 原始数据大小 1024 字节，未压缩
    - 头部 (`uncompressed_size` = 1024, `compressed_size` = 1024, `image_data_offset` = 0, `image_data_size` = 0)
    - 数据 1024字节
- 资源索引表：起始偏移 1844
    - 3 个资源的起始位置，共 3 * 4 = 12 字节：(4, 532, 804)
