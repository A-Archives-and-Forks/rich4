#include <stdlib.h>

#include "rich4_player_info.h"
#include "tool.h"

#define libc_rand rand
#define PLAYER_TOOL_AMOUNT(p, t) (rich4_player_tool_amount[15 * (p) + (t)])

void
rich4_update_player_sprite(int player);

void
rich4_receive_tool(int player, int tool)
{
    if (PLAYER_TOOL_AMOUNT(player, tool - 1) < 9) {
        if (tool <= 8) {
            const uint8_t remain_tool_amount = rich4_remain_tool_amount[tool - 1];
            if (remain_tool_amount == 0) {
                return;
            }
            rich4_remain_tool_amount[tool - 1] = remain_tool_amount - 1;
        }
        ++PLAYER_TOOL_AMOUNT(player, tool - 1);
    }
}

void
rich4_after_player_use_tool(int player, int tool)
{
    const uint8_t tool_amount = PLAYER_TOOL_AMOUNT(player, tool - 1);
    if (tool_amount == 0)
        return;

    PLAYER_TOOL_AMOUNT(player, tool - 1) = tool_amount - 1;

    if (tool > 8)
        return;

    ++rich4_remain_tool_amount[tool - 1];
}

int
rich4_receive_random_tool(int player)
{
    int num_available_tools = 0;
    uint8_t available_tools[128];

    for (int tool_idx = 0; tool_idx < 8; ++tool_idx) {
        if (rich4_remain_tool_amount[tool_idx] != 0) {
            for (uint8_t i = 0; i < rich4_remain_tool_amount[tool_idx]; ++i) {
                available_tools[num_available_tools] = tool_idx;
                ++num_available_tools;
            }
        }
    }
    if (num_available_tools != 0) {
        const int tool = available_tools[libc_rand() % num_available_tools] + 1;
        rich4_receive_tool(player, tool);
        return tool;
    }

    return 0;
}

int
rich4_player_sell_all_tools(int player)
{
    if (rich4_all_players_state[player].traffic_method != 0) {
        const uint8_t traffic_method = rich4_all_players_state[player].traffic_method & 3;
        if (traffic_method == 1) {
            ++PLAYER_TOOL_AMOUNT(player, 4);
        } else if (traffic_method == 2) {
            ++PLAYER_TOOL_AMOUNT(player, 5);
        } else if (traffic_method == 3) {
            ++PLAYER_TOOL_AMOUNT(player, 11);
        }
        rich4_all_players_state[player].traffic_method = 0;
        rich4_all_players_state[player].ndices = 1;
        rich4_update_player_sprite(player);
    }

    int points = 0;
    for (int i = 0; i < 13; ++i) {
        if (PLAYER_TOOL_AMOUNT(player, i) != 0) {
            if (i < 8) {
                rich4_remain_tool_amount[i] += PLAYER_TOOL_AMOUNT(player, i);
            }
            points += ((int)tool_table[i].price * (int)PLAYER_TOOL_AMOUNT(player, i));
            PLAYER_TOOL_AMOUNT(player, i) = 0;
        }
    }

    return points;
}
