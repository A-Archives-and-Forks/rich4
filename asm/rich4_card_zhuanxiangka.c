/*
 * Copyright (C)  2026 Iru Cai <mytbk920423@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 *
 * 转向卡
 */

#include "rich4_card_utils.h"
#include "rich4_game_utils.h"
#include "rich4_player_info.h"

int
rich4_use_card_zhuanxiangka(void)
{
    uint32_t selected_player_bitset;

    if (rich4_all_players_state[rich4_current_player].who_plays == 1) {
        selected_player_bitset = rich4_select_instance_with_mouse(0xe0c0010);
    } else {
        selected_player_bitset = rich4_get_ai_card_param_value(0);
    }
    if (selected_player_bitset != 0) {
        rich4_consume_card(rich4_current_player, 6);
        rich4_player_say(
          rich4_current_player,
          3,
          rich4_card_strings[rich4_all_players_state[rich4_current_player].character][0][5]);
        const int target_player = count_trailing_zero_u8(selected_player_bitset);
        if (rich4_all_players_state[rich4_current_player].who_plays != 1) {
            rich4_animate_object(0,
                                 rich4_all_players_state[rich4_current_player].xpos,
                                 rich4_all_players_state[rich4_current_player].ypos,
                                 rich4_all_players_state[target_player].xpos,
                                 rich4_all_players_state[target_player].ypos);
        }
        rich4_change_player_direction(target_player);
        if (target_player < 4) {
            if (target_player == rich4_current_player) {
                rich4_player_say(
                  rich4_current_player,
                  0,
                  rich4_card_strings[rich4_all_players_state[rich4_current_player].character][1]
                                    [5]);
            } else {
                rich4_player_say(
                  target_player,
                  2,
                  rich4_card_strings[rich4_all_players_state[target_player].character][2][5]);
                rich4_refresh_screen();
            }
        }
    }
    return selected_player_bitset;
}
