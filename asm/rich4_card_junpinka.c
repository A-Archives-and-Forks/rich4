/*
 * Copyright (C)  2026 Iru Cai <mytbk920423@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 *
 * 均贫卡
 */

#include "rich4_card_utils.h"
#include "rich4_game_utils.h"
#include "rich4_player_info.h"

int
rich4_use_card_junpinka(void)
{
    uint32_t selected_player_bitset;
    const int current_player = rich4_current_player;

    if (rich4_all_players_state[current_player].who_plays == 1) {
        selected_player_bitset = rich4_select_instance_with_mouse(0xe0c0410);
    } else {
        selected_player_bitset = rich4_get_ai_card_param_value(0);
    }
    if (selected_player_bitset != 0) {
        rich4_consume_card(current_player, 2);
        rich4_player_say(
          current_player,
          3,
          rich4_card_strings[rich4_all_players_state[current_player].character][0][1]);
        const int to_player = count_trailing_zero_u8(selected_player_bitset);
        const int average_cash = (rich4_all_players_state[current_player].cash +
                                  rich4_all_players_state[to_player].cash) /
                                 2;
        if (average_cash < rich4_all_players_state[to_player].cash) {
            rich4_update_hostility(to_player,
                                   current_player,
                                   (rich4_all_players_state[to_player].cash - average_cash) /
                                     100);
        }

        rich4_all_players_state[current_player].cash = average_cash;
        rich4_all_players_state[to_player].cash = average_cash;
        if (rich4_all_players_state[current_player].who_plays != 1) {
            rich4_animate_object(0,
                                 rich4_all_players_state[current_player].xpos,
                                 rich4_all_players_state[current_player].ypos,
                                 rich4_all_players_state[to_player].xpos,
                                 rich4_all_players_state[to_player].ypos);
        }
        rich4_update_player_info_window(current_player);
        rich4_player_say(
          to_player, 1, rich4_card_strings[rich4_all_players_state[to_player].character][2][1]);
        rich4_refresh_screen();
    }
    return selected_player_bitset;
}
