#include <stdint.h>

typedef struct
{
	const char *name_ptr;
	uint8_t max_amount;
	uint8_t price;
	uint8_t f6;
	uint8_t f7;
} rich4_tool;
extern const rich4_tool tool_table[];

extern uint8_t rich4_remain_tool_amount[8];

void rich4_receive_tool(int player, int tool);
void rich4_after_player_use_tool(int player, int tool);
int rich4_receive_random_tool(int player);
int rich4_player_sell_all_tools(int player);
