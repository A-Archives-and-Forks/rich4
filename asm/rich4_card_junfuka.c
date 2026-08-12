/*
 * Copyright (C)  2026 Iru Cai <mytbk920423@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 *
 * 均富卡
 */

#include "rich4_card_utils.h"
#include "rich4_game_utils.h"
#include "rich4_player_info.h"

int
rich4_use_card_junfuka(void)
{
    int num_live_players;
    int average_cash;

    rich4_consume_card(rich4_current_player, 1);
    rich4_player_say(
      rich4_current_player,
      3,
      rich4_card_strings[rich4_all_players_state[rich4_current_player].character][0][0]);

    average_cash = 0;
    num_live_players = 0;
    for (int i = 0; i < rich4_num_players; i++) {
        if (rich4_all_players_state[i].who_plays != 0) {
            average_cash = average_cash + rich4_all_players_state[i].cash;
            num_live_players = num_live_players + 1;
        }
    }
    average_cash = average_cash / num_live_players;

    for (int j = 0; j < rich4_num_players; j++) {
        if (rich4_all_players_state[j].who_plays != 0) {
            if (average_cash < rich4_all_players_state[j].cash) {
                rich4_update_hostility(j,
                                       rich4_current_player,
                                       (rich4_all_players_state[j].cash - average_cash) / 100);
            }
            rich4_all_players_state[j].cash = average_cash;
        }
    }

    rich4_update_player_info_window(rich4_current_player);
    return 1;
}
