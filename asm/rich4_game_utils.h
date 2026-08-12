/*
 * Copyright (C)  2026 Iru Cai <mytbk920423@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef _RICH4_GAME_UTILS_H__
#define _RICH4_GAME_UTILS_H__

void rich4_player_say(int player, int unknown_arg, const char *message);
void rich4_update_hostility(int to_player, int from_player, int added_hostility);
void rich4_update_player_info_window(int player);

#endif
