/*
 * Copyright (C)  2026 Iru Cai <mytbk920423@gmail.com>
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef _RICH4_GAME_UTILS_H__
#define _RICH4_GAME_UTILS_H__

#include <stdint.h>

// 大富翁4的函数声明在未确定放哪个头文件时，都放到这里

void rich4_player_say(int player, int unknown_arg, const char *message);
void rich4_update_hostility(int to_player, int from_player, int added_hostility);
void rich4_update_player_info_window(int player);
uint32_t rich4_select_instance_with_mouse(uint32_t flags);
uint32_t rich4_get_ai_card_param_value(int idx);
int count_trailing_zero_u8(uint32_t v);
void rich4_animate_object(int arg0, uint32_t from_x, uint32_t from_y, uint32_t to_x, uint32_t to_y);
void rich4_refresh_screen(void);

#endif
