extern __imp__GetTickCount@0
extern __round_toward_zero
extern _callbackSize
extern _card_table
extern _count_trailing_zero_u8
extern _gWindowHandle
extern _global_rich4_cfg
extern _libc_free
extern _libc_rand
extern _libc_sprintf
extern _libc_srand
extern _memset
extern _num_human_players
extern _read_mkf
extern _rich4_add_player_days_in_hospital
extern _rich4_add_player_days_in_prison
extern _rich4_all_players_state
extern _rich4_all_special_players_state
extern _rich4_attach_god
extern _rich4_buy_stock
extern _rich4_calculate_player_wealth
extern _rich4_current_player
extern _rich4_data_mkf
extern _rich4_detach_god
extern _rich4_end_ally
extern _rich4_event_strings
extern _rich4_facility_info_ptr
extern _rich4_game_initial_fund
extern _rich4_land_info_ptr
extern _rich4_map_node_ptr
extern _rich4_num_facilities
extern _rich4_num_lands
extern _rich4_num_players
extern _rich4_on_map_commercial_ptr
extern _rich4_place_object
extern _rich4_player_bankrupt
extern _rich4_player_drop_random_card
extern _rich4_player_has_card
extern _rich4_player_receive_random_card
extern _rich4_player_say
extern _rich4_player_tool_amount
extern _rich4_price_index
extern _rich4_receive_card
extern _rich4_receive_random_tool
extern _rich4_receive_tool
extern _rich4_release_player_from_hospital
extern _rich4_release_player_from_prison
extern _rich4_remove_object
extern _rich4_string_strip_spaces
extern _rich4_try_use_card_jiahuoka
extern _rich4_try_use_card_mianfeika
extern _rich4_ui_bank_atm_entry
extern _rich4_ui_bank_entry
extern _rich4_ui_game_balloon
extern _rich4_ui_game_penguin_treasure
extern _rich4_ui_game_xicongtianjiang
extern _rich4_ui_hospital_entry
extern _rich4_ui_letou_bar_entry
extern _rich4_ui_letou_kaijiang_entry
extern _rich4_ui_prison_entry
extern _rich4_ui_shop_entry
extern _rich4_update_hostility
extern _rich4_update_price_index
extern _stocks_on_map
extern _strcmp
extern _strcpy
extern _tool_strings
extern _tool_table
extern fcn_00407842
extern fcn_0040829d
extern fcn_00409b18
extern fcn_0040a4e1
extern _rich4_find_random_unoccupied_distant_node
extern fcn_0040ab4a
extern fcn_0040af12
extern fcn_0040b0cd
extern fcn_0040b110
extern fcn_0040b455
extern fcn_0040b8d8
extern _rich4_update_player_sprite
extern fcn_0040cc56
extern fcn_0040cd07
extern fcn_0040d375
extern fcn_0040d4e5
extern fcn_0040d5a5
extern fcn_0040d6be
extern fcn_0040d761
extern fcn_0040f381
extern fcn_0040f8be
extern fcn_0040fa61
extern fcn_0040fafd
extern _rich4_find_other_death_attached_player
extern fcn_00415d31
extern fcn_00415e70
extern fcn_00415f69
extern fcn_004166f8
extern fcn_00416e6d
extern fcn_00417e26
extern fcn_0041906a
extern fcn_004192f7
extern fcn_00428475
extern fcn_0042915a
extern fcn_004291d6
extern fcn_0042ba97
extern fcn_0043380a
extern fcn_00436a5a
extern fcn_00439bfa
extern fcn_0044090e
extern fcn_00440aac
extern fcn_00440ba8
extern fcn_00440cac
extern fcn_0044101d
extern fcn_00441f73
extern fcn_00446ae8
extern fcn_00448a7e
extern fcn_0044b6df
extern fcn_0044ba63
extern fcn_0044db81
extern fcn_0044f230
extern fcn_0044f2c2
extern fcn_0044f354
extern fcn_0044f42d
extern fcn_0044f4ed
extern fcn_0044f567
extern fcn_0044f627
extern fcn_0045144f
extern fcn_00451985
extern fcn_00452117
extern fcn_004521cb
extern fcn_00452444
extern fcn_00453544
extern fcn_004542ce
extern fcn_004542e9
extern fcn_00454acb
extern fcn_00454d91
extern fcn_00456c0a
extern ref_0046385e
extern ref_0046caf8
extern ref_0046cb06
extern ref_00474938
extern ref_00474940
extern ref_004749d4
extern ref_00475110
extern ref_0047517c
extern ref_00475184
extern ref_004751f0
extern ref_0047528b
extern ref_0047528e
extern ref_00475299
extern ref_0047edaa
extern ref_0047edae
extern ref_0047edb6
extern ref_0047edba
extern ref_0047edbe
extern ref_0048234a
extern ref_00482362
extern ref_0048237a
extern ref_00482382
extern ref_004823d2
extern ref_004823da
extern ref_004823ea
extern ref_0048baf8
extern ref_0048bafc
extern ref_0048be18
extern ref_0048be1c
extern ref_0048be20
extern _rich4_objects_info
extern ref_00498ea0
extern ref_00498ea1
extern ref_00499080
extern ref_00499084
extern ref_004990dc
extern ref_004990e4
extern ref_004990f4
extern ref_00499108
extern ref_00499110
extern ref_0049911c

global _rich4_get_player_num_chain_store
global _rich4_calculate_land_toll
global _rich4_handle_player_land_on_node
global _rich4_player_move_one_step_done
global fcn_0041c84f
global fcn_0041cf67
global fcn_0041d1a9
global fcn_0041d2c6
global fcn_0041d3f4
global _rich4_update_player_info_window
global fcn_0041d476
global fcn_0041d546
global fcn_0041d559
global fcn_0041d709
global fcn_0041d7d4
global fcn_0041d839
global fcn_0041d89e

section .text

_rich4_get_player_num_chain_store:
push ebx
push esi
mov esi, dword [esp + 0xc]
mov edx, 1
xor ecx, ecx
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]

loc_00419721:
add eax, 0x34
cmp edx, dword [_rich4_num_lands]  ; cmp edx, dword [0x498e98]
jg short loc_0041973f  ; jg 0x41973f
cmp byte [eax + 0x18], 0
je short loc_0041973c  ; je 0x41973c
xor ebx, ebx
mov bl, byte [eax + 0x19]
cmp ebx, esi
jne short loc_0041973c  ; jne 0x41973c
inc ecx

loc_0041973c:
inc edx
jmp short loc_00419721  ; jmp 0x419721

loc_0041973f:
mov eax, ecx
pop esi
pop ebx
ret

_rich4_calculate_land_toll:
push ebx
push esi
push edi
push ebp
mov ebp, dword [esp + 0x14]
xor edi, edi
cmp dword [esp + 0x18], 0
je short loc_004197a5  ; je 0x4197a5
mov esi, 1
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]

loc_00419760:
add ebx, 0x34
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg near loc_004197d8  ; jg 0x4197d8
cmp byte [ebx + 0x18], 0
jne short loc_004197a2  ; jne 0x4197a2
xor eax, eax
mov al, byte [ebx + 0x19]
cmp eax, ebp
jne short loc_004197a2  ; jne 0x4197a2
mov edx, dword [esp + 0x18]
push edx
lea eax, [ebx + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_004197a2  ; jne 0x4197a2
mov al, byte [ebx + 0x1a]
mov ax, word [ebx + eax*2 + 0x20]
and eax, 0xffff
add edi, eax

loc_004197a2:
inc esi
jmp short loc_00419760  ; jmp 0x419760

loc_004197a5:
mov esi, 1
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]
add ebx, 0x34
mov ecx, dword [_rich4_num_lands]  ; mov ecx, dword [0x498e98]

loc_004197b9:
cmp esi, ecx
jg short loc_004197d8  ; jg 0x4197d8
cmp byte [ebx + 0x18], 0
je short loc_004197d2  ; je 0x4197d2
xor eax, eax
mov al, byte [ebx + 0x19]
cmp eax, ebp
jne short loc_004197d2  ; jne 0x4197d2
add edi, 0x7d0

loc_004197d2:
inc esi
add ebx, 0x34
jmp short loc_004197b9  ; jmp 0x4197b9

loc_004197d8:
mov ecx, dword [_rich4_price_index]  ; mov ecx, dword [0x4990e8]
mov eax, edi
imul eax, ecx
pop ebp
pop edi
pop esi
pop ebx
ret

endloc_004197e8:
db 0x90

ref_004197e9:  ; may contain a jump table
dd loc_004198b9
dd loc_0041b3d0
dd loc_0041b11e
dd loc_0041b128
dd loc_0041b132
dd loc_0041b13c
dd loc_0041b146
dd loc_0041b15e
dd loc_0041b16c
dd loc_0041b17a
dd loc_0041b184
dd loc_0041b21e
dd loc_0041b2a3
dd loc_0041b302
dd loc_0041b396
dd loc_0041b3b9
dd loc_0041b3cb

_rich4_handle_player_land_on_node:
push ebx
push esi
push edi
push ebp
sub esp, 0xf8
mov edx, dword [esp + 0x10c]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
add eax, edx
mov dx, word [eax + 0x20]
mov dword [esp + 0xf0], edx
mov ebx, dword [eax + 0x24]
and ebx, 0xff
mov byte [esp + 0xf4], 0x80
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
je short loc_00419884  ; je 0x419884
test ebx, ebx
jne near loc_0041b3d0  ; jne 0x41b3d0

loc_00419884:
cmp ebx, 2
jb short loc_004198a9  ; jb 0x4198a9
cmp ebx, 0x10
ja short loc_004198a9  ; ja 0x4198a9
push 0
xor eax, eax
mov al, byte [ebx + ref_00475299]  ; mov al, byte [ebx + 0x475299]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce
add esp, 8

loc_004198a9:
cmp ebx, 0x10
ja near loc_0041b3d0  ; ja 0x41b3d0
jmp dword [ebx*4 + ref_004197e9]  ; ujmp: jmp dword [ebx*4 + 0x4197e9]

loc_004198b9:
mov ebx, dword [esp + 0xf0]
test bx, bx
je near loc_0041b3d0  ; je 0x41b3d0
cmp bx, 0x7d0
jbe near loc_0041a168  ; jbe 0x41a168
cmp bx, 0xfa0
jae near loc_0041a168  ; jae 0x41a168
xor eax, eax
mov ax, bx
sub eax, 0x7d0
imul eax, eax, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
add esi, eax
mov ch, byte [esi + 0x19]
test ch, ch
je near loc_0041a013  ; je 0x41a013
xor edx, edx
mov dl, ch
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne near loc_00419a67  ; jne 0x419a67
cmp byte [esi + 0x1a], 5
jae near loc_0041b077  ; jae 0x41b077
cmp byte [esi + 0x18], 0
jne near loc_0041b077  ; jne 0x41b077
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
jne near loc_0041b077  ; jne 0x41b077
movzx ebp, word [esi + 0x1e]
imul ebp, dword [_rich4_price_index]  ; imul ebp, dword [0x4990e8]
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp ebp, dword [eax + (_rich4_all_players_state + 28)]  ; cmp ebp, dword [eax + 0x496b84]
jg near loc_00419a52  ; jg 0x419a52
push ebp
lea eax, [esi + 4]
push eax
mov eax, ref_0046396d  ; mov eax, 0x46396d
push eax
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
test byte [eax + (_rich4_all_players_state + 21)], 6  ; test byte [eax + 0x496b7d], 6
jne short loc_004199a7  ; jne 0x4199a7
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne near loc_0041b077  ; jne 0x41b077
mov eax, esp
push eax
call fcn_00440ba8  ; call 0x440ba8
add esp, 4
cmp eax, 1
jne near loc_0041b077  ; jne 0x41b077

loc_004199a7:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call fcn_0040fa61  ; call 0x40fa61
add esp, 4
test eax, eax
jne near loc_0041b077  ; jne 0x41b077
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
sub dword [eax + (_rich4_all_players_state + 28)], ebp  ; sub dword [eax + 0x496b84], ebp
push 1
push 0
push 0
inc byte [esi + 0x1a]
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0
push ref_004823da  ; push 0x4823da
call fcn_004542ce  ; call 0x4542ce
add esp, 8
cmp byte [esi + 0x1a], 5
jne short loc_00419a2b  ; jne 0x419a2b

loc_004199f1:
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
imul eax, esi, 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov edi, dword [edx + eax*8 + (_rich4_event_strings + 60)]  ; mov edi, dword [edx + eax*8 + 0x480886]
push edi
push 0
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
call fcn_0040b0cd  ; call 0x40b0cd
jmp near loc_0041b077  ; jmp 0x41b077

loc_00419a2b:
push 1
add esi, 4
push esi
call fcn_0044f627  ; call 0x44f627
add esp, 8

loc_00419a39:
mov ecx, dword [esp + 0x10c]
push ecx
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx

loc_00419a48:
call fcn_0040f8be  ; call 0x40f8be
jmp near loc_0041b074  ; jmp 0x41b074

loc_00419a52:
push 0x5dc
mov eax, ref_0046398b  ; mov eax, 0x46398b
push eax

loc_00419a5d:
call fcn_00440cac  ; call 0x440cac
jmp near loc_0041b074  ; jmp 0x41b074

loc_00419a67:
push 0
push ref_004823ea  ; push 0x4823ea
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov edx, dword [ref_0047517c]  ; mov edx, dword [0x47517c]
push edx
xor eax, eax
mov al, byte [esi + 0x17]
push eax
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
push eax
call fcn_0041d559  ; call 0x41d559
add esp, 0xc
cmp eax, 1
jne near loc_0041b077  ; jne 0x41b077
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 65)]  ; mov al, byte [eax + 0x496ba9]
and eax, 0xff
mov dword [esp + 0xe4], eax
cmp byte [esi + 0x18], 0
jne short loc_00419ade  ; jne 0x419ade
lea eax, [esi + 4]
push eax
xor eax, eax
mov al, byte [esi + 0x19]
push eax
call _rich4_calculate_land_toll  ; call 0x419744
add esp, 8
mov ebp, eax
lea eax, [esi + 4]
push eax
mov ebx, dword [esp + 0xe8]
push ebx
jmp short loc_00419afa  ; jmp 0x419afa

loc_00419ade:
push 0
xor eax, eax
mov al, byte [esi + 0x19]
push eax
call _rich4_calculate_land_toll  ; call 0x419744
add esp, 8
mov ebp, eax
push 0
mov ecx, dword [esp + 0xe8]
push ecx

loc_00419afa:
call _rich4_calculate_land_toll  ; call 0x419744
add esp, 8
mov dword [esp + 0xcc], eax
cmp byte [esi + 0x17], 0
je short loc_00419b11  ; je 0x419b11
add ebp, ebp

loc_00419b11:
push 1
call fcn_00409b18  ; call 0x409b18
add esp, 4
mov edi, 1
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]
add ebx, 0x34
xor eax, eax
mov dword [esp + 0xe8], eax

loc_00419b32:
cmp edi, dword [_rich4_num_lands]  ; cmp edi, dword [0x498e98]
jg near loc_00419c79  ; jg 0x419c79
mov eax, dword [esp + 0xe8]
inc eax
mov dword [esp + 0xdc], eax
lea eax, [edi + 0x7d0]
mov dword [esp + 0xd8], eax
cmp byte [esi + 0x18], 0
jne near loc_00419bf4  ; jne 0x419bf4
mov al, byte [ebx + 0x19]
cmp al, byte [esi + 0x19]
jne short loc_00419bb4  ; jne 0x419bb4
cmp byte [ebx + 0x18], 0
jne short loc_00419bb4  ; jne 0x419bb4
lea eax, [ebx + 4]
push eax
lea eax, [esi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_00419bb4  ; jne 0x419bb4
push 0xffff
mov ecx, dword [esp + 0xdc]
push ecx
push 0x2f440
mov eax, dword [ref_00474938]  ; mov eax, dword [0x474938]
push eax
call fcn_00456c0a  ; call 0x456c0a
add esp, 0x10
mov eax, dword [esp + 0xdc]
mov dword [esp + 0xe8], eax

loc_00419bb4:
mov edx, dword [esp + 0xe4]
test edx, edx
je near loc_00419c70  ; je 0x419c70
xor eax, eax
mov al, byte [ebx + 0x19]
cmp eax, edx
jne near loc_00419c70  ; jne 0x419c70
cmp byte [ebx + 0x18], 0
jne near loc_00419c70  ; jne 0x419c70
lea eax, [ebx + 4]
push eax
lea eax, [esi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne near loc_00419c70  ; jne 0x419c70
jmp short loc_00419c4a  ; jmp 0x419c4a

loc_00419bf4:
mov al, byte [ebx + 0x19]
cmp al, byte [esi + 0x19]
jne short loc_00419c30  ; jne 0x419c30
cmp byte [ebx + 0x18], 0
je short loc_00419c30  ; je 0x419c30
push 0xffff
mov ecx, dword [esp + 0xdc]
push ecx
push 0x2f440
mov eax, dword [ref_00474938]  ; mov eax, dword [0x474938]
push eax
call fcn_00456c0a  ; call 0x456c0a
add esp, 0x10
mov eax, dword [esp + 0xdc]
mov dword [esp + 0xe8], eax

loc_00419c30:
mov edx, dword [esp + 0xe4]
test edx, edx
je short loc_00419c70  ; je 0x419c70
xor eax, eax
mov al, byte [ebx + 0x19]
cmp eax, edx
jne short loc_00419c70  ; jne 0x419c70
cmp byte [ebx + 0x18], 0
je short loc_00419c70  ; je 0x419c70

loc_00419c4a:
push 0xffff
lea eax, [edi + 0x7d0]
push eax
push 0x2f440
mov eax, dword [ref_00474938]  ; mov eax, dword [0x474938]
push eax
call fcn_00456c0a  ; call 0x456c0a
add esp, 0x10
inc dword [esp + 0xe8]

loc_00419c70:
inc edi
add ebx, 0x34
jmp near loc_00419b32  ; jmp 0x419b32

loc_00419c79:
cmp dword [esp + 0xe8], 1
jle short loc_00419c88  ; jle 0x419c88
call fcn_00451985  ; call 0x451985

loc_00419c88:
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
imul eax, eax, 0x68
mov ecx, dword [eax + _rich4_all_players_state]  ; mov ecx, dword [eax + 0x496b68]
push ecx
lea eax, [esp + 0xac]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea ebx, [esi + 4]
mov edi, dword [esp + 0xe4]
test edi, edi
je short loc_00419d2e  ; je 0x419d2e
mov edx, dword [esp + 0xcc]
add ebp, edx
mov dword [esp + 0xec], edx
fild dword [esp + 0xec]
mov dword [esp + 0xec], ebp
fild dword [esp + 0xec]
fdivp st1  ; fdivp st(1)
fstp dword [esp + 0xc4]
lea eax, [edi - 1]
imul eax, eax, 0x68
mov ecx, dword [eax + _rich4_all_players_state]  ; mov ecx, dword [eax + 0x496b68]
push ecx
lea eax, [esp + 0x98]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
mov edi, dword [ref_0047517c]  ; mov edi, dword [0x47517c]
push edi
push ebp
lea eax, [esp + 0x9c]
push eax
lea eax, [esp + 0xb4]
push eax
push ebx
push ref_0046399a  ; push 0x46399a
lea eax, [esp + 0x18]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x1c
jmp short loc_00419d50  ; jmp 0x419d50

loc_00419d2e:
mov eax, dword [ref_0047517c]  ; mov eax, dword [0x47517c]
push eax
push ebp
lea eax, [esp + 0xb0]
push eax
push ebx
push ref_004639b3  ; push 0x4639b3
lea eax, [esp + 0x14]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x18

loc_00419d50:
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push ebp
mov ebp, dword [ref_0047517c]  ; mov ebp, dword [0x47517c]
push ebp
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call fcn_0041d709  ; call 0x41d709
mov edx, eax
add esp, 0xc
mov ebp, eax
test eax, eax
je near loc_0041b077  ; je 0x41b077
cmp dword [esp + 0xe4], 0
je short loc_00419dda  ; je 0x419dda
mov edi, dword [esp + 0xcc]
sub edx, edi
mov ecx, 0x64
mov eax, edx
sar edx, 0x1f
idiv ecx
push eax
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc
mov ecx, 0x64
mov eax, edi
mov edx, edi
sar edx, 0x1f
idiv ecx
push eax
mov eax, dword [esp + 0xe8]
dec eax
push eax
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
push edx
jmp short loc_00419df3  ; jmp 0x419df3

loc_00419dda:
mov ecx, 0x64
sar edx, 0x1f
idiv ecx
push eax
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
push eax
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx

loc_00419df3:
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
cmp ebp, eax
jge short loc_00419e34  ; jge 0x419e34
imul eax, edi, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
cmp ebp, edx
jle short loc_00419e67  ; jle 0x419e67

loc_00419e34:
push 0x14
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_00419e67  ; jne 0x419e67
push ebp
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call _rich4_try_use_card_mianfeika  ; call 0x444a60
add esp, 0xc
cmp eax, 1
jne short loc_00419e67  ; jne 0x419e67
xor ebp, ebp

loc_00419e67:
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
cmp ebp, eax
jge short loc_00419e9a  ; jge 0x419e9a
imul eax, edi, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
cmp ebp, edx
jle short loc_00419ec7  ; jle 0x419ec7

loc_00419e9a:
push 0x13
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_00419ec7  ; jne 0x419ec7
push ebp
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call _rich4_try_use_card_jiahuoka  ; call 0x44476a
add esp, 0xc
cmp eax, 0xffffffff
je short loc_00419ec7  ; je 0x419ec7
mov edi, eax

loc_00419ec7:
test ebp, ebp
je short loc_00419f2a  ; je 0x419f2a
push edi
call _rich4_find_other_death_attached_player  ; call 0x40fbb8
mov ebx, eax
add esp, 4
cmp eax, 0xffffffff
je short loc_00419f2a  ; je 0x419f2a
imul eax, eax, 0x68
mov edx, dword [eax + _rich4_all_players_state]  ; mov edx, dword [eax + 0x496b68]
push edx
lea eax, [esp + 0xac]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
mov ecx, dword [ref_0047517c]  ; mov ecx, dword [0x47517c]
push ecx
lea eax, [esp + 0xac]
push eax
push ref_004639cc  ; push 0x4639cc
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov edi, ebx

loc_00419f2a:
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
cmp edi, eax
je near loc_0041b077  ; je 0x41b077
mov edx, dword [esp + 0xe4]
dec edx
cmp edi, edx
je near loc_0041b077  ; je 0x41b077
cmp dword [esp + 0xe4], 0
je near loc_00419fcf  ; je 0x419fcf
push ebp
push eax
push edi
call fcn_0044f4ed  ; call 0x44f4ed
add esp, 0xc
test eax, eax
jne short loc_00419f6f  ; jne 0x419f6f
push ebp
push edi
call fcn_0044f42d  ; call 0x44f42d
add esp, 8

loc_00419f6f:
mov dword [esp + 0xec], ebp
fild dword [esp + 0xec]
fmul dword [esp + 0xc4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0xcc]
mov ebx, ebp
sub ebx, dword [esp + 0xcc]
push ebx
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
push eax
call fcn_0044f354  ; call 0x44f354
add esp, 8
push 0
push ebx
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
push eax
push edi
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
push 0
mov edx, dword [esp + 0xd0]
push edx
mov eax, dword [esp + 0xec]
jmp short loc_0041a000  ; jmp 0x41a000

loc_00419fcf:
push ebp
push eax
push edi
call fcn_0044f4ed  ; call 0x44f4ed
add esp, 0xc
test eax, eax
jne short loc_00419fe8  ; jne 0x419fe8
push ebp
push edi
call fcn_0044f42d  ; call 0x44f42d
add esp, 8

loc_00419fe8:
push ebp
xor eax, eax
mov al, byte [esi + 0x19]
dec eax
push eax
call fcn_0044f354  ; call 0x44f354
add esp, 8
push 0
push ebp
xor eax, eax
mov al, byte [esi + 0x19]

loc_0041a000:
dec eax
push eax
push edi
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
mov dword [esi + 0x2c], ebp
jmp near loc_0041b077  ; jmp 0x41b077

loc_0041a013:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
jne near loc_0041b077  ; jne 0x41b077
cmp byte [eax + (_rich4_all_players_state + 63)], 0xc  ; cmp byte [eax + 0x496ba7], 0xc
je near loc_0041b077  ; je 0x41b077
xor ecx, ecx
mov cl, byte [esi + 0x1a]
xor edx, edx
mov dx, word [esi + 0x1e]
imul edx, ecx
xor ecx, ecx
mov cx, word [esi + 0x1c]
add edx, ecx
mov ebp, dword [_rich4_price_index]  ; mov ebp, dword [0x4990e8]
imul ebp, edx
cmp ebp, dword [eax + (_rich4_all_players_state + 28)]  ; cmp ebp, dword [eax + 0x496b84]
jg near loc_0041a159  ; jg 0x41a159
push ebp
lea eax, [esi + 4]
push eax
push ref_004639e1  ; push 0x4639e1
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
xor edi, edi
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
test byte [eax + (_rich4_all_players_state + 21)], 6  ; test byte [eax + 0x496b7d], 6
je short loc_0041a098  ; je 0x41a098
push ebp
call fcn_0041d7d4  ; call 0x41d7d4
add esp, 4
cmp eax, 1
jne short loc_0041a098  ; jne 0x41a098
mov edi, eax

loc_0041a098:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne short loc_0041a0b8  ; jne 0x41a0b8
mov eax, esp
push eax
call fcn_00440ba8  ; call 0x440ba8
add esp, 4
cmp eax, 1
je short loc_0041a0c0  ; je 0x41a0c0

loc_0041a0b8:
test edi, edi
je near loc_0041b077  ; je 0x41b077

loc_0041a0c0:
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
call fcn_0040fa61  ; call 0x40fa61
add esp, 4
test eax, eax
jne near loc_0041b077  ; jne 0x41b077
mov al, byte [_rich4_current_player]  ; mov al, byte [0x49910c]
inc al
mov byte [esi + 0x19], al
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0
push ref_004823d2  ; push 0x4823d2
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4
mov eax, dword [ref_00499110]  ; mov eax, dword [0x499110]
test eax, eax
je short loc_0041a12b  ; je 0x41a12b
mov edx, dword [eax*4 + ref_004751f0]  ; mov edx, dword [eax*4 + 0x4751f0]
push edx
mov ecx, dword [(_global_rich4_cfg + 8)]  ; mov ecx, dword [0x497160]
push ecx
call fcn_004521cb  ; call 0x4521cb
add esp, 8
mov dword [esi + 0x30], eax

loc_0041a12b:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
sub dword [eax + (_rich4_all_players_state + 28)], ebp  ; sub dword [eax + 0x496b84], ebp
push 0
add esi, 4
push esi
call fcn_0044f627  ; call 0x44f627
add esp, 8
mov ebp, dword [esp + 0x10c]
push ebp
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
jmp near loc_00419a48  ; jmp 0x419a48

loc_0041a159:
push 0x5dc
push ref_0046398b  ; push 0x46398b
jmp near loc_00419a5d  ; jmp 0x419a5d

loc_0041a168:
mov edi, dword [esp + 0xf0]
cmp di, 0xfa0
jbe near loc_0041a998  ; jbe 0x41a998
cmp di, 0x1770
jae near loc_0041a998  ; jae 0x41a998
xor eax, eax
mov ax, di
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add edx, eax
mov dword [esp + 0xe0], edx
lea edi, [edx + 4]
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov edx, dword [esp + 0xe0]
cmp byte [edx + 0x19], 0
je near loc_0041a86b  ; je 0x41a86b
xor edx, edx
mov ecx, dword [esp + 0xe0]
mov dl, byte [ecx + 0x19]
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
inc ecx
cmp edx, ecx
jne near loc_0041a370  ; jne 0x41a370
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
jne near loc_0041b077  ; jne 0x41b077
mov edx, dword [esp + 0xe0]
cmp byte [edx + 0x1a], 0
jne near loc_0041a2b3  ; jne 0x41a2b3
movzx ebp, word [edx + 0x22]
imul ebp, dword [_rich4_price_index]  ; imul ebp, dword [0x4990e8]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
cmp ebp, dword [eax + (_rich4_all_players_state + 28)]  ; cmp ebp, dword [eax + 0x496b84]
jg near loc_00419a52  ; jg 0x419a52
imul eax, edx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne short loc_0041a23e  ; jne 0x41a23e
push 0
call fcn_00440aac  ; call 0x440aac
add esp, 4
mov edx, dword [esp + 0xe0]
mov byte [edx + 0x18], al
jmp short loc_0041a25a  ; jmp 0x41a25a

loc_0041a23e:
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 4
sar edx, 0x1f
idiv ecx
inc edx
mov eax, dword [esp + 0xe0]
mov byte [eax + 0x18], dl

loc_0041a25a:
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call fcn_0040fa61  ; call 0x40fa61
add esp, 4
test eax, eax
jne near loc_0041b077  ; jne 0x41b077
push 1
push eax
push eax
mov eax, dword [esp + 0xec]
inc byte [eax + 0x1a]
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0
push ref_004823da  ; push 0x4823da
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
imul eax, edi, 0x68
sub dword [eax + (_rich4_all_players_state + 28)], ebp  ; sub dword [eax + 0x496b84], ebp
mov ecx, dword [esp + 0x10c]
push ecx
push edi
jmp near loc_00419a48  ; jmp 0x419a48

loc_0041a2b3:
xor edx, edx
mov ecx, dword [esp + 0xe0]
mov dl, byte [ecx + 0x18]
mov bl, byte [ecx + 0x1a]
cmp bl, byte [edx + ref_00474940]  ; cmp bl, byte [edx + 0x474940]
jae near loc_0041b077  ; jae 0x41b077
mov ebp, dword [esp + 0xe0]
movzx ebp, word [ebp + 0x24]
imul ebp, dword [_rich4_price_index]  ; imul ebp, dword [0x4990e8]
cmp ebp, dword [eax + (_rich4_all_players_state + 28)]  ; cmp ebp, dword [eax + 0x496b84]
jg near loc_0041a159  ; jg 0x41a159
push ebp
push edi
push ref_0046396d  ; push 0x46396d
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ch, byte [eax + (_rich4_all_players_state + 21)]  ; mov ch, byte [eax + 0x496b7d]
test ch, 6
jne short loc_0041a32f  ; jne 0x41a32f
cmp ch, 1
jne near loc_0041b077  ; jne 0x41b077
mov eax, esp
push eax
call fcn_00440ba8  ; call 0x440ba8
add esp, 4
cmp eax, 1
jne near loc_0041b077  ; jne 0x41b077

loc_0041a32f:
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call fcn_0040fa61  ; call 0x40fa61
add esp, 4
test eax, eax
jne near loc_0041b077  ; jne 0x41b077
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
sub dword [eax + (_rich4_all_players_state + 28)], ebp  ; sub dword [eax + 0x496b84], ebp
mov eax, dword [esp + 0xe0]
mov dh, byte [eax + 0x1a]
inc dh
mov byte [eax + 0x1a], dh
cmp dh, 5
je near loc_004199f1  ; je 0x4199f1
jmp near loc_00419a39  ; jmp 0x419a39

loc_0041a370:
mov eax, dword [esp + 0xe0]
cmp byte [eax + 0x1a], 0
je near loc_0041b077  ; je 0x41b077
mov ch, byte [eax + 0x18]
test ch, ch
jbe near loc_0041b077  ; jbe 0x41b077
cmp ch, 4
jae near loc_0041b077  ; jae 0x41b077
push 0
push ref_004823ea  ; push 0x4823ea
call fcn_004542ce  ; call 0x4542ce
add esp, 8
xor eax, eax
mov edx, dword [esp + 0xe0]
mov al, byte [edx + 0x18]
movzx esi, byte [eax + ref_0047528b]  ; movzx esi, byte [eax + 0x47528b]
mov esi, dword [esi*4 + ref_0047517c]  ; mov esi, dword [esi*4 + 0x47517c]
push esi
xor eax, eax
mov al, byte [edx + 0x1c]
push eax
xor eax, eax
mov al, byte [edx + 0x19]
dec eax
push eax
call fcn_0041d559  ; call 0x41d559
add esp, 0xc
cmp eax, 1
jne near loc_0041b077  ; jne 0x41b077
xor eax, eax
mov edx, dword [esp + 0xe0]
mov al, byte [edx + 0x19]
dec eax
imul eax, eax, 0x68
mov edi, dword [eax + _rich4_all_players_state]  ; mov edi, dword [eax + 0x496b68]
push edi
lea eax, [esp + 0xac]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
mov eax, dword [esp + 0xe0]
mov al, byte [eax + 0x18]
cmp al, 2
jb short loc_0041a421  ; jb 0x41a421
jbe short loc_0041a485  ; jbe 0x41a485
cmp al, 3
je near loc_0041a4db  ; je 0x41a4db
jmp near loc_0041a581  ; jmp 0x41a581

loc_0041a421:
cmp al, 1
jne near loc_0041a581  ; jne 0x41a581
xor eax, eax
mov edx, dword [esp + 0xe0]
mov al, byte [edx + 0x1a]
add eax, eax
add eax, edx
xor ebx, ebx
mov bx, word [eax + 0x24]
imul ebx, dword [_rich4_price_index]  ; imul ebx, dword [0x4990e8]
cmp byte [edx + 0x1c], 0
je short loc_0041a44e  ; je 0x41a44e
add ebx, ebx

loc_0041a44e:
lea eax, [esp + 0xa8]
push eax
push 1
call fcn_0044090e  ; call 0x44090e
add esp, 8
mov dword [esp + 0xd0], eax
mov ebp, eax
imul ebp, ebx
push ebp
push eax
push ref_004639ff  ; push 0x4639ff
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
jmp near loc_0041a56f  ; jmp 0x41a56f

loc_0041a485:
xor eax, eax
mov edx, dword [esp + 0xe0]
mov al, byte [edx + 0x1a]
add eax, eax
add eax, edx
xor ebx, ebx
mov bx, word [eax + 0x24]
imul ebx, dword [_rich4_price_index]  ; imul ebx, dword [0x4990e8]
cmp byte [edx + 0x1c], 0
je short loc_0041a4aa  ; je 0x41a4aa
add ebx, ebx

loc_0041a4aa:
lea eax, [esp + 0xa8]
push eax
push 2
call fcn_0044090e  ; call 0x44090e
add esp, 8
mov ebp, eax
imul ebp, ebx
push ebp
push eax
push ebx
push ref_00463a14  ; push 0x463a14
lea eax, [esp + 0x10]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x14
jmp near loc_0041a56f  ; jmp 0x41a56f

loc_0041a4db:
xor ebp, ebp
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dh, byte [eax + (_rich4_all_players_state + 17)]  ; mov dh, byte [eax + 0x496b79]
test dh, 3
je near loc_0041a581  ; je 0x41a581
mov al, dh
and al, 3
xor ecx, ecx
mov cl, al
dec ecx
mov eax, 1
shl eax, cl
mov dword [esp + 0xd4], eax
mov edx, eax
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 2
mov edx, eax
shl eax, 2
add eax, edx
mov ebp, dword [ref_0048bafc]  ; mov ebp, dword [0x48bafc]
imul ebp, eax
imul ebp, dword [_rich4_price_index]  ; imul ebp, dword [0x4990e8]
push ref_0046385e  ; push 0x46385e
lea eax, [esp + 0x84]
push eax
call _strcpy  ; call 0x457d96
add esp, 8
mov ebx, dword [ref_00475184]  ; mov ebx, dword [0x475184]
push ebx
push ebp
lea eax, [esp + 0xb0]
push eax
lea eax, [esp + 0x8c]
push eax
push ref_00463a31  ; push 0x463a31
lea eax, [esp + 0x14]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x18

loc_0041a56f:
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8

loc_0041a581:
push ebp
push esi
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call fcn_0041d709  ; call 0x41d709
mov ebx, eax
add esp, 0xc
mov ebp, eax
test eax, eax
je near loc_0041b077  ; je 0x41b077
mov ecx, 0x64
mov edx, eax
sar edx, 0x1f
idiv ecx
push eax
xor eax, eax
mov edx, dword [esp + 0xe4]
mov al, byte [edx + 0x19]
dec eax
push eax
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
mov eax, dword [esp + 0xe0]
cmp byte [eax + 0x18], 1
je short loc_0041a63d  ; je 0x41a63d
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
cmp ebx, eax
jge short loc_0041a60e  ; jge 0x41a60e
imul eax, edi, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
cmp ebx, edx
jle short loc_0041a63d  ; jle 0x41a63d

loc_0041a60e:
push 0x14
push edi
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_0041a63d  ; jne 0x41a63d
push ebp
xor eax, eax
mov edx, dword [esp + 0xe4]
mov al, byte [edx + 0x19]
dec eax
push eax
push edi
call _rich4_try_use_card_mianfeika  ; call 0x444a60
add esp, 0xc
cmp eax, 1
jne short loc_0041a63d  ; jne 0x41a63d
xor ebp, ebp

loc_0041a63d:
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
cmp ebp, eax
jge short loc_0041a670  ; jge 0x41a670
imul eax, edi, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
cmp ebp, edx
jle short loc_0041a692  ; jle 0x41a692

loc_0041a670:
push 0x13
push edi
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_0041a692  ; jne 0x41a692
push ebp
push eax
push edi
call _rich4_try_use_card_jiahuoka  ; call 0x44476a
add esp, 0xc
cmp eax, 0xffffffff
je short loc_0041a692  ; je 0x41a692
mov edi, eax

loc_0041a692:
test ebp, ebp
jne short loc_0041a6a3  ; jne 0x41a6a3
mov eax, dword [esp + 0xe0]
cmp byte [eax + 0x18], 1
jne short loc_0041a6fc  ; jne 0x41a6fc

loc_0041a6a3:
push edi
call _rich4_find_other_death_attached_player  ; call 0x40fbb8
mov ebx, eax
add esp, 4
cmp eax, 0xffffffff
je short loc_0041a6fc  ; je 0x41a6fc
imul eax, eax, 0x68
mov edi, dword [eax + _rich4_all_players_state]  ; mov edi, dword [eax + 0x496b68]
push edi
lea eax, [esp + 0xac]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
push esi
lea eax, [esp + 0xac]
push eax
push ref_004639cc  ; push 0x4639cc
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov edi, ebx

loc_0041a6fc:
xor eax, eax
mov edx, dword [esp + 0xe0]
mov al, byte [edx + 0x19]
dec eax
cmp edi, eax
je short loc_0041a761  ; je 0x41a761
push ebp
push eax
push edi
call fcn_0044f4ed  ; call 0x44f4ed
add esp, 0xc
test eax, eax
jne short loc_0041a726  ; jne 0x41a726
push ebp
push edi
call fcn_0044f42d  ; call 0x44f42d
add esp, 8

loc_0041a726:
push ebp
xor eax, eax
mov edx, dword [esp + 0xe4]
mov al, byte [edx + 0x19]
dec eax
push eax
call fcn_0044f354  ; call 0x44f354
add esp, 8
push 0
push ebp
xor eax, eax
mov edx, dword [esp + 0xe8]
mov al, byte [edx + 0x19]
dec eax
push eax
push edi
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
mov eax, dword [esp + 0xe0]
mov dword [eax + 0x30], ebp

loc_0041a761:
mov eax, dword [esp + 0xe0]
cmp byte [eax + 0x18], 1
jne near loc_0041b077  ; jne 0x41b077
imul eax, edi, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je near loc_0041b077  ; je 0x41b077
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne near loc_0041b077  ; jne 0x41b077
mov edx, dword [esp + 0xd0]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
imul eax, dword [_rich4_price_index]  ; imul eax, dword [0x4990e8]
push eax
xor eax, eax
mov edx, dword [esp + 0xe4]
mov al, byte [edx + 0x19]
dec eax
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc
push edi
call fcn_0040d761  ; call 0x40d761
add esp, 4
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
cmp edi, edx
jne short loc_0041a7e8  ; jne 0x41a7e8
mov ecx, dword [esp + 0xd0]
push ecx
push edx
call fcn_0044f2c2  ; call 0x44f2c2
add esp, 8

loc_0041a7e8:
mov dl, byte [esp + 0xd0]
dec dl
imul eax, edi, 0x68
mov byte [eax + (_rich4_all_players_state + 50)], dl  ; mov byte [eax + 0x496b9a], dl
test dl, dl
jne short loc_0041a805  ; jne 0x41a805
mov byte [eax + (_rich4_all_players_state + 50)], 0x80  ; mov byte [eax + 0x496b9a], 0x80

loc_0041a805:
push 0
mov edx, dword [esp + 0xd4]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
imul eax, dword [_rich4_price_index]  ; imul eax, dword [0x4990e8]
push eax
push edi
call fcn_0044ba63  ; call 0x44ba63
add esp, 0xc
imul eax, edi, 0x68
mov dl, byte [esp + 0xd0]
add byte [eax + (_rich4_all_players_state + 66)], dl  ; add byte [eax + 0x496baa], dl
xor eax, eax
mov ax, word [esp + 0xf0]
sub eax, 0xfa0
push eax
mov ebp, dword [esp + 0x110]
push ebp
push edi
call fcn_0040d5a5  ; call 0x40d5a5
add esp, 0xc
jmp near loc_0041b077  ; jmp 0x41b077

loc_0041a86b:
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
jne near loc_0041b077  ; jne 0x41b077
cmp byte [eax + (_rich4_all_players_state + 63)], 0xc  ; cmp byte [eax + 0x496ba7], 0xc
je near loc_0041b077  ; je 0x41b077
mov ebp, dword [esp + 0xe0]
movzx ebp, word [ebp + 0x22]
imul ebp, dword [_rich4_price_index]  ; imul ebp, dword [0x4990e8]
cmp ebp, dword [eax + (_rich4_all_players_state + 28)]  ; cmp ebp, dword [eax + 0x496b84]
jg near loc_0041a159  ; jg 0x41a159
push ebp
push edi
push ref_004639e1  ; push 0x4639e1
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
xor edi, edi
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
test byte [eax + (_rich4_all_players_state + 21)], 6  ; test byte [eax + 0x496b7d], 6
je short loc_0041a8d9  ; je 0x41a8d9
push ebp
call fcn_0041d7d4  ; call 0x41d7d4
add esp, 4
cmp eax, 1
jne short loc_0041a8d9  ; jne 0x41a8d9
mov edi, eax

loc_0041a8d9:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne short loc_0041a8f9  ; jne 0x41a8f9
mov eax, esp
push eax
call fcn_00440ba8  ; call 0x440ba8
add esp, 4
cmp eax, 1
je short loc_0041a901  ; je 0x41a901

loc_0041a8f9:
test edi, edi
je near loc_0041b077  ; je 0x41b077

loc_0041a901:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0040fa61  ; call 0x40fa61
add esp, 4
test eax, eax
jne near loc_0041b077  ; jne 0x41b077
mov al, byte [_rich4_current_player]  ; mov al, byte [0x49910c]
inc al
mov edx, dword [esp + 0xe0]
mov byte [edx + 0x19], al
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0
push ref_004823d2  ; push 0x4823d2
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4
mov ebx, dword [ref_00499110]  ; mov ebx, dword [0x499110]
test ebx, ebx
je short loc_0041a97b  ; je 0x41a97b
mov esi, dword [ebx*4 + ref_004751f0]  ; mov esi, dword [ebx*4 + 0x4751f0]
push esi
mov edi, dword [(_global_rich4_cfg + 8)]  ; mov edi, dword [0x497160]
push edi
call fcn_004521cb  ; call 0x4521cb
add esp, 8
mov edx, dword [esp + 0xe0]
mov dword [edx + 0x34], eax

loc_0041a97b:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
sub dword [eax + (_rich4_all_players_state + 28)], ebp  ; sub dword [eax + 0x496b84], ebp
mov ebx, dword [esp + 0x10c]
push ebx
push edx
jmp near loc_00419a48  ; jmp 0x419a48

loc_0041a998:
mov edx, dword [esp + 0xf0]
cmp dx, 0x1770
jbe near loc_0041b077  ; jbe 0x41b077
cmp dx, 0x1f40
jae near loc_0041b077  ; jae 0x41b077
xor eax, eax
mov ax, dx
sub eax, 0x1770
imul eax, eax, 0x34
mov ebx, dword [_rich4_on_map_commercial_ptr]  ; mov ebx, dword [0x498e7c]
add ebx, eax
xor eax, eax
mov al, byte [ebx + 0x18]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
lea edi, [ebx + 4]
imul esi, dword [_rich4_current_player], 0x68  ; imul esi, dword [0x49910c], 0x68
cmp eax, edx
jne near loc_0041ab6d  ; jne 0x41ab6d
mov al, byte [ebx + 0x1a]
cmp al, 4
jb near loc_0041b067  ; jb 0x41b067
jbe short loc_0041a9fe  ; jbe 0x41a9fe
cmp al, 0xb
je short loc_0041aa3c  ; je 0x41aa3c
jmp near loc_0041b067  ; jmp 0x41b067

loc_0041a9fe:
push edi
push 3
call fcn_0044090e  ; call 0x44090e
add esp, 8
mov dword [esp + 0xd4], eax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dl, byte [esp + 0xd4]
mov dh, byte [eax + (_rich4_all_players_state + 62)]  ; mov dh, byte [eax + 0x496ba6]
add dh, dl
mov byte [eax + (_rich4_all_players_state + 62)], dh  ; mov byte [eax + 0x496ba6], dh
mov cl, dh
and cl, 0x7f
mov byte [eax + (_rich4_all_players_state + 62)], cl  ; mov byte [eax + 0x496ba6], cl
jmp near loc_0041b067  ; jmp 0x41b067

loc_0041aa3c:
cmp byte [esi + (_rich4_all_players_state + 21)], 1  ; cmp byte [esi + 0x496b7d], 1
jne short loc_0041aa76  ; jne 0x41aa76
push edi
push ref_00463a4a  ; push 0x463a4a
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0x2090086
call fcn_00446ae8  ; call 0x446ae8
jmp short loc_0041aa82  ; jmp 0x41aa82

loc_0041aa76:
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call fcn_0040b455  ; call 0x40b455

loc_0041aa82:
add esp, 4
mov dword [esp + 0xd4], eax
mov edi, dword [esp + 0xd4]
test edi, edi
je near loc_0041b062  ; je 0x41b062
lea eax, [esp + 0xc0]
push eax
lea eax, [esp + 0xc0]
push eax
push edi
call fcn_0040af12  ; call 0x40af12
add esp, 0xc
push 0
push 0
push 0x229
mov eax, dword [_rich4_data_mkf]  ; mov eax, dword [0x48a0e4]
push eax
call _read_mkf  ; call 0x450441
add esp, 0x10
mov esi, eax
push 0
mov edx, dword [esp + 0xc4]
push edx
mov ecx, dword [esp + 0xc4]
push ecx
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push edi
call fcn_0040b110  ; call 0x40b110
add esp, 4
mov dword [esp + 0xbc], eax
test al, 0x80
jne short loc_0041ab04  ; jne 0x41ab04
push edi
call fcn_0040b110  ; call 0x40b110
add esp, 4

loc_0041ab04:
push 0x5b
push 0x2c0001
push 0x28
push 0
push esi
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push esi
call _libc_free  ; call 0x456e11
add esp, 4
test byte [esp + 0xbc], 0x80
je near loc_0041b062  ; je 0x41b062
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 60)]  ; mov ecx, dword [edx + eax*8 + 0x480886]
push ecx
push 0
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
call fcn_0040b0cd  ; call 0x40b0cd
jmp near loc_0041b062  ; jmp 0x41b062

loc_0041ab6d:
test al, al
je near loc_0041b067  ; je 0x41b067
cmp eax, edx
je near loc_0041b067  ; je 0x41b067
xor ebp, ebp
mov al, byte [ebx + 0x1a]
cmp al, 5
jb short loc_0041abb0  ; jb 0x41abb0
jbe near loc_0041ac8c  ; jbe 0x41ac8c
cmp al, 0xb
jb short loc_0041aba3  ; jb 0x41aba3
jbe near loc_0041acd1  ; jbe 0x41acd1
cmp al, 0xc
je near loc_0041ae21  ; je 0x41ae21
jmp near loc_0041ae37  ; jmp 0x41ae37

loc_0041aba3:
cmp al, 6
je near loc_0041ac8c  ; je 0x41ac8c
jmp near loc_0041ae37  ; jmp 0x41ae37

loc_0041abb0:
cmp al, 3
jb short loc_0041abbb  ; jb 0x41abbb
jbe short loc_0041ac2c  ; jbe 0x41ac2c
jmp near loc_0041ac3c  ; jmp 0x41ac3c

loc_0041abbb:
cmp al, 1
jne near loc_0041ae37  ; jne 0x41ae37
push edi
push ebp
call fcn_0044090e  ; call 0x44090e
add esp, 8
mov dword [esp + 0xd0], eax
test eax, eax
je short loc_0041abe6  ; je 0x41abe6
xor edx, edx
mov dx, word [ebx + 0x22]

loc_0041abde:
imul eax, edx
jmp near loc_0041ae2e  ; jmp 0x41ae2e

loc_0041abe6:
push 0x5dc
push ref_00463a5f  ; push 0x463a5f
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
imul eax, esi, 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov edi, dword [edx + eax*8 + (_rich4_event_strings + 8)]  ; mov edi, dword [edx + eax*8 + 0x480852]
push edi
push ebp
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
jmp near loc_0041ae37  ; jmp 0x41ae37

loc_0041ac2c:
movzx ebp, word [ebx + 0x22]
imul ebp, dword [ref_004990e4]  ; imul ebp, dword [0x4990e4]
jmp near loc_0041ae37  ; jmp 0x41ae37

loc_0041ac3c:
push edi
push 3
call fcn_0044090e  ; call 0x44090e
add esp, 8
mov dword [esp + 0xd4], eax
xor edx, edx
mov dx, word [ebx + 0x22]
imul eax, edx
mov ebp, dword [_rich4_price_index]  ; mov ebp, dword [0x4990e8]
imul ebp, eax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dl, byte [esp + 0xd4]
mov dh, byte [eax + (_rich4_all_players_state + 62)]  ; mov dh, byte [eax + 0x496ba6]
add dh, dl
mov byte [eax + (_rich4_all_players_state + 62)], dh  ; mov byte [eax + 0x496ba6], dh
mov cl, dh
and cl, 0x7f
mov byte [eax + (_rich4_all_players_state + 62)], cl  ; mov byte [eax + 0x496ba6], cl
jmp near loc_0041ae37  ; jmp 0x41ae37

loc_0041ac8c:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dl, byte [eax + (_rich4_all_players_state + 17)]  ; mov dl, byte [eax + 0x496b79]
test dl, dl
je near loc_0041ae37  ; je 0x41ae37
mov al, dl
and al, 3
xor ecx, ecx
mov cl, al
dec ecx
mov eax, 1
shl eax, cl
mov dword [esp + 0xd4], eax
xor eax, eax
mov ax, word [ebx + 0x22]
mov edx, dword [esp + 0xd4]
imul edx, dword [ref_0048bafc]  ; imul edx, dword [0x48bafc]
jmp near loc_0041abde  ; jmp 0x41abde

loc_0041acd1:
cmp byte [esi + (_rich4_all_players_state + 21)], 1  ; cmp byte [esi + 0x496b7d], 1
jne short loc_0041ad0b  ; jne 0x41ad0b
push edi
push ref_00463a4a  ; push 0x463a4a
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0x2090086
call fcn_00446ae8  ; call 0x446ae8
jmp short loc_0041ad17  ; jmp 0x41ad17

loc_0041ad0b:
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
call fcn_0040b455  ; call 0x40b455

loc_0041ad17:
add esp, 4
mov dword [esp + 0xd4], eax
mov ebp, dword [esp + 0xd4]
test ebp, ebp
je near loc_0041adff  ; je 0x41adff
lea eax, [esp + 0xc0]
push eax
lea eax, [esp + 0xc0]
push eax
push ebp
call fcn_0040af12  ; call 0x40af12
add esp, 0xc
push 0
push 0
push 0x229
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
mov esi, eax
add esp, 0x10
push 0
mov ecx, dword [esp + 0xc4]
push ecx
mov edi, dword [esp + 0xc4]
push edi
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push ebp
call fcn_0040b110  ; call 0x40b110
add esp, 4
mov dword [esp + 0xbc], eax
push 0x5b
push 0x2c0001
push 0x28
push 0
push esi
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push esi
call _libc_free  ; call 0x456e11
add esp, 4
test byte [esp + 0xbc], 0x80
je short loc_0041adb9  ; je 0x41adb9
call fcn_0040b0cd  ; call 0x40b0cd

loc_0041adb9:
mov eax, dword [esp + 0xd4]
cmp eax, 0xfa0
jge short loc_0041ade3  ; jge 0x41ade3
sub eax, 0x7d0
imul eax, eax, 0x34
mov edx, dword [_rich4_land_info_ptr]  ; mov edx, dword [0x498e84]
movzx ebp, word [edx + eax + 0x1c]

loc_0041adda:
imul ebp, dword [_rich4_price_index]  ; imul ebp, dword [0x4990e8]
jmp short loc_0041ae1a  ; jmp 0x41ae1a

loc_0041ade3:
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
movzx ebp, word [edx + eax + 0x22]
jmp short loc_0041adda  ; jmp 0x41adda

loc_0041adff:
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
mov ebp, eax
shl ebp, 2
sub ebp, eax
shl ebp, 3
add ebp, eax
shl ebp, 3
mov eax, ebp
shl ebp, 2
add ebp, eax

loc_0041ae1a:
call fcn_0041d546  ; call 0x41d546
jmp short loc_0041ae37  ; jmp 0x41ae37

loc_0041ae21:
xor eax, eax
mov ax, word [ebx + 0x22]
imul eax, dword [ref_0048bafc]  ; imul eax, dword [0x48bafc]

loc_0041ae2e:
mov ebp, dword [_rich4_price_index]  ; mov ebp, dword [0x4990e8]
imul ebp, eax

loc_0041ae37:
test ebp, ebp
je near loc_0041b067  ; je 0x41b067
xor eax, eax
mov al, byte [ebx + 0x18]
dec eax
imul eax, eax, 0x68
mov edx, dword [eax + _rich4_all_players_state]  ; mov edx, dword [eax + 0x496b68]
push edx
lea eax, [esp + 0xac]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
xor eax, eax
mov al, byte [ebx + 0x1a]
movzx esi, byte [eax + ref_0047528e]  ; movzx esi, byte [eax + 0x47528e]
mov esi, dword [esi*4 + ref_0047517c]  ; mov esi, dword [esi*4 + 0x47517c]
lea eax, [ebx + 4]
cmp byte [ebx + 0x1a], 0xc
jne short loc_0041ae8d  ; jne 0x41ae8d
push esi
push ebp
lea edx, [esp + 0xb0]
push edx
push eax
push ref_00463a6a  ; push 0x463a6a
jmp short loc_0041ae9d  ; jmp 0x41ae9d

loc_0041ae8d:
push esi
push ebp
lea edx, [esp + 0xb0]
push edx
push eax
push ref_00463a31  ; push 0x463a31

loc_0041ae9d:
lea eax, [esp + 0x14]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x18
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push ebp
push esi
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0041d709  ; call 0x41d709
mov ecx, eax
add esp, 0xc
mov ebp, eax
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
cmp ecx, eax
jge short loc_0041af0c  ; jge 0x41af0c
imul eax, edi, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
mov eax, dword [eax + (_rich4_all_players_state + 32)]  ; mov eax, dword [eax + 0x496b88]
add edx, eax
cmp ecx, edx
jle short loc_0041af2f  ; jle 0x41af2f

loc_0041af0c:
push 0x14
push edi
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_0041af2f  ; jne 0x41af2f
push ebp
push 0xffffffffffffffff
push edi
call _rich4_try_use_card_mianfeika  ; call 0x444a60
add esp, 0xc
cmp eax, 1
jne short loc_0041af2f  ; jne 0x41af2f
xor ebp, ebp

loc_0041af2f:
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
cmp ebp, eax
jge short loc_0041af62  ; jge 0x41af62
imul eax, edi, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
cmp ebp, edx
jle short loc_0041af84  ; jle 0x41af84

loc_0041af62:
push 0x13
push edi
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_0041af84  ; jne 0x41af84
push ebp
push eax
push edi
call _rich4_try_use_card_jiahuoka  ; call 0x44476a
add esp, 0xc
cmp eax, 0xffffffff
je short loc_0041af84  ; je 0x41af84
mov edi, eax

loc_0041af84:
test ebp, ebp
jne short loc_0041af98  ; jne 0x41af98
cmp byte [ebx + 0x1a], 1
jne short loc_0041affb  ; jne 0x41affb
cmp dword [esp + 0xd0], 0
je short loc_0041affb  ; je 0x41affb

loc_0041af98:
push edi
call _rich4_find_other_death_attached_player  ; call 0x40fbb8
mov dword [esp + 0xcc], eax
add esp, 4
cmp eax, 0xffffffff
je short loc_0041affb  ; je 0x41affb
imul eax, eax, 0x68
mov edi, dword [eax + _rich4_all_players_state]  ; mov edi, dword [eax + 0x496b68]
push edi
lea eax, [esp + 0xac]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
push esi
lea eax, [esp + 0xac]
push eax
push ref_004639cc  ; push 0x4639cc
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov edi, dword [esp + 0xc8]

loc_0041affb:
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
cmp edi, eax
jne short loc_0041b00e  ; jne 0x41b00e
push ebp
push eax
call fcn_0044f42d  ; call 0x44f42d
add esp, 8

loc_0041b00e:
push 0
push ebp
xor eax, eax
mov ax, word [esp + 0xf8]
sub eax, 0x170c
push eax
push edi
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
cmp byte [ebx + 0x1a], 1
jne short loc_0041b062  ; jne 0x41b062
cmp dword [esp + 0xd0], 0
je short loc_0041b062  ; je 0x41b062
imul eax, edi, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041b062  ; je 0x41b062
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne short loc_0041b062  ; jne 0x41b062
push 0
mov ecx, dword [esp + 0xd4]
push ecx
push edi
call fcn_0040d375  ; call 0x40d375
add esp, 0xc

loc_0041b062:
call fcn_0041d546  ; call 0x41d546

loc_0041b067:
push ebx
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
push ebp
call fcn_0041d1a9  ; call 0x41d1a9

loc_0041b074:
add esp, 8

loc_0041b077:
mov ecx, dword [esp + 0x10c]
push ecx
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call fcn_0040f381  ; call 0x40f381
add esp, 8
mov esi, dword [esp + 0x10c]
push esi
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
call fcn_00448a7e  ; call 0x448a7e
add esp, 8
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov ecx, dword [esp + 0xf0]
cmp cx, 0xfa0
jbe short loc_0041b111  ; jbe 0x41b111
cmp cx, 0x1770
jae short loc_0041b111  ; jae 0x41b111
xor eax, eax
mov edx, dword [esp + 0xe0]
mov al, byte [edx + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_0041b111  ; jne 0x41b111
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
jne short loc_0041b111  ; jne 0x41b111
mov eax, dword [esp + 0xe0]
cmp byte [eax + 0x18], 4
jne short loc_0041b111  ; jne 0x41b111
cmp byte [eax + 0x1a], 0
je short loc_0041b111  ; je 0x41b111
test byte [eax + 0x1c], 0xf
jne short loc_0041b111  ; jne 0x41b111
push eax
call fcn_0044101d  ; call 0x44101d
add esp, 4

loc_0041b111:
mov byte [esp + 0xf4], 0x88
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b11e:
call fcn_0044b6df  ; call 0x44b6df
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b128:
call fcn_0044db81  ; call 0x44db81
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b132:
call _rich4_ui_prison_entry  ; call 0x43d304
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b13c:
call _rich4_ui_hospital_entry  ; call 0x43e9a4
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b146:
imul ebx, dword [_rich4_current_player], 0x68  ; imul ebx, dword [0x49910c], 0x68
call _rich4_ui_game_penguin_treasure  ; call 0x415215

loc_0041b152:
add word [ebx + (_rich4_all_players_state + 48)], ax  ; add word [ebx + 0x496b98], ax
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b15e:
imul ebx, dword [_rich4_current_player], 0x68  ; imul ebx, dword [0x49910c], 0x68
call _rich4_ui_game_balloon  ; call 0x4154dc
jmp short loc_0041b152  ; jmp 0x41b152

loc_0041b16c:
imul ebx, dword [_rich4_current_player], 0x68  ; imul ebx, dword [0x49910c], 0x68
call _rich4_ui_game_xicongtianjiang  ; call 0x4155fc
jmp short loc_0041b152  ; jmp 0x41b152

loc_0041b17a:
call _rich4_ui_letou_bar_entry  ; call 0x4315cc
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b184:
push 0
push 0
push 0x219
mov ebp, dword [_rich4_data_mkf]  ; mov ebp, dword [0x48a0e4]
push ebp
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x62
push 1
push 0xb4
push 0xcc
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push 0x3e8
push ref_00463a81  ; push 0x463a81
call fcn_00440cac  ; call 0x440cac
add esp, 8
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
add word [eax + (_rich4_all_players_state + 48)], 0x32  ; add word [eax + 0x496b98], 0x32
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov ebx, eax
shl ebx, 3
add ebx, eax
call _libc_rand  ; call 0x456f2d
and eax, 1
mov ecx, dword [ebx + eax*4 + _rich4_event_strings]  ; mov ecx, dword [ebx + eax*4 + 0x48084a]
push ecx
push 0
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx

loc_0041b211:
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b21e:
push 0
push 0
push 0x219
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x62
push 1
push 0xb4
push 0xcc
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push 0x3e8
push ref_00463a8e  ; push 0x463a8e
call fcn_00440cac  ; call 0x440cac
add esp, 8
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
add word [eax + (_rich4_all_players_state + 48)], 0x1e  ; add word [eax + 0x496b98], 0x1e
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov esi, dword [edx + eax*8 + (_rich4_event_strings + 8)]  ; mov esi, dword [edx + eax*8 + 0x480852]
push esi
push 0
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
jmp near loc_0041b211  ; jmp 0x41b211

loc_0041b2a3:
push 0
push 0
push 0x219
mov eax, dword [_rich4_data_mkf]  ; mov eax, dword [0x48a0e4]
push eax
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x62
push 1
push 0xb4
push 0xcc
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push 0x3e8
push ref_00463a9b  ; push 0x463a9b
call fcn_00440cac  ; call 0x440cac
add esp, 8
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
add word [eax + (_rich4_all_players_state + 48)], 0xa  ; add word [eax + 0x496b98], 0xa
jmp near loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b302:
push 0
push 0
push 0x218
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x63
push 1
push 0xb4
push 0xd0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_player_receive_random_card  ; call 0x441e12
mov ebx, eax
add esp, 4
test eax, eax
je near loc_0041b3d0  ; je 0x41b3d0
mov edi, dword [eax*8 + (_card_table - 8)]  ; mov edi, dword [eax*8 + 0x47fdea]
push edi
push ref_00463aa8  ; push 0x463aa8
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
push ebx
call fcn_00441f73  ; call 0x441f73
add esp, 8
xor eax, eax
mov al, byte [ebx*8 + (_card_table - 3)]  ; mov al, byte [ebx*8 + 0x47fdef]
push eax
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
push ebp
call fcn_0044f230  ; call 0x44f230
add esp, 8
jmp short loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b396:
call _rich4_ui_bank_atm_entry  ; call 0x4379c9
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne short loc_0041b3d0  ; jne 0x41b3d0
xor eax, eax
mov ax, word [esp + 0xf0]
push eax
call _rich4_ui_bank_entry  ; call 0x436668

loc_0041b3b4:
add esp, 4
jmp short loc_0041b3d0  ; jmp 0x41b3d0

loc_0041b3b9:
xor eax, eax
mov ax, word [esp + 0xf0]
push eax
call _rich4_ui_shop_entry  ; call 0x42e931
jmp short loc_0041b3b4  ; jmp 0x41b3b4

loc_0041b3cb:
call fcn_0043380a  ; call 0x43380a

loc_0041b3d0:
xor eax, eax
mov al, byte [esp + 0xf4]
add esp, 0xf8
pop ebp
pop edi
pop esi
pop ebx
ret

endloc_0041b3e4:
db 0x90

ref_0041b3e5:  ; may contain a jump table
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b807
dd loc_0041b837
dd loc_0041b807
dd loc_0041b8f9
dd loc_0041bb0c
dd loc_0041c164
dd loc_0041bceb
dd loc_0041be5f
dd loc_0041bfd2

_rich4_player_move_one_step_done:
push ebx
push esi
push edi
push ebp
sub esp, 0xa8
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
jne short loc_0041b456  ; jne 0x41b456
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4

loc_0041b456:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
cmp ecx, 4
jge short loc_0041b46d  ; jge 0x41b46d
imul esi, ecx, 0x68
mov si, word [esi + (_rich4_all_players_state + 12)]  ; mov si, word [esi + 0x496b74]
jmp short loc_0041b479  ; jmp 0x41b479

loc_0041b46d:
mov esi, ecx
shl esi, 4
mov si, word [esi + (_rich4_all_special_players_state - (64 - 4))]  ; mov si, word [esi + 0x498dec]

loc_0041b479:
and esi, 0xffff
mov eax, esi
shl eax, 2
add eax, esi
shl eax, 3
mov ecx, dword [_rich4_map_node_ptr]  ; mov ecx, dword [0x498e80]
add eax, ecx
mov ecx, dword [eax + 0x24]
and ecx, 0xff
mov dword [esp + 0xa0], ecx
mov ecx, dword [eax + 0x24]
and ecx, 0xf00
shr ecx, 8
mov dword [esp + 0x98], ecx
mov eax, dword [eax + 0x24]
and eax, 0xff0000
shr eax, 0x10
mov dword [esp + 0xa4], eax
test eax, eax
je short loc_0041b4e0  ; je 0x41b4e0
lea ebx, [eax - 1]
mov eax, ebx
shl eax, 2
sub eax, ebx
mov al, byte [eax*8 + _rich4_objects_info]  ; mov al, byte [eax*8 + 0x496d08]
and eax, 0xff

loc_0041b4e0:
mov dword [esp + 0x9c], eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
cmp eax, 8
jne short loc_0041b536  ; jne 0x41b536
cmp dword [esp + 0xa4], 0
je near loc_0041c844  ; je 0x41c844
xor eax, eax
mov ax, word [(_rich4_all_special_players_state + 70)]  ; mov ax, word [0x498e6e]
push eax
xor eax, eax
mov ax, word [(_rich4_all_special_players_state + 68)]  ; mov ax, word [0x498e6c]
push eax
mov edx, dword [esp + 0xac]
push edx
call fcn_0040fafd  ; call 0x40fafd
add esp, 0xc
mov ecx, dword [esp + 0xa4]
push ecx
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
jmp near loc_0041c844  ; jmp 0x41c844

loc_0041b536:
cmp eax, 4
jge near loc_0041b7ef  ; jge 0x41b7ef
cmp dword [esp + 0xa0], 0xe
jne near loc_0041b5fd  ; jne 0x41b5fd
imul eax, eax, 0x68
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
jne near loc_0041b5fd  ; jne 0x41b5fd
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je near loc_0041b5fd  ; je 0x41b5fd
cmp dword [esp + 0x9c], 0x10
je near loc_0041b5fd  ; je 0x41b5fd
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 64)], 0  ; cmp byte [eax + 0x496ba8], 0
je short loc_0041b5ab  ; je 0x41b5ab
push ref_00482362  ; push 0x482362
call fcn_004542e9  ; call 0x4542e9
add esp, 4

loc_0041b5ab:
call _rich4_ui_bank_atm_entry  ; call 0x4379c9
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne near loc_0041c844  ; jne 0x41c844
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je short loc_0041b5fd  ; je 0x41b5fd
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce
add esp, 8
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 64)], 0  ; cmp byte [eax + 0x496ba8], 0
je short loc_0041b5fd  ; je 0x41b5fd
push 1
push ref_00482362  ; push 0x482362
call fcn_004542ce  ; call 0x4542ce
add esp, 8

loc_0041b5fd:
mov cl, byte [_rich4_current_player]  ; mov cl, byte [0x49910c]
mov eax, 1
shl eax, cl
not eax
mov edi, dword [esp + 0x98]
and edi, eax
push edi
call _count_trailing_zero_u8  ; call 0x40d293
mov ebp, eax
add esp, 4
cmp eax, 0xffffffff
je short loc_0041b697  ; je 0x41b697
imul eax, eax, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
jne short loc_0041b697  ; jne 0x41b697
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
jne short loc_0041b697  ; jne 0x41b697
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
mov ebx, eax
shl ebx, 2
sub ebx, eax
shl ebx, 3
add ebx, eax
shl ebx, 3
mov eax, ebx
shl ebx, 2
add ebx, eax
push ebx
push ref_00463ab1  ; push 0x463ab1
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0
push ebx
push 0xffffffffffffffff
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
push edx
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
push ebp
call fcn_0040cc56  ; call 0x40cc56
add esp, 4

loc_0041b697:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ch, byte [eax + (_rich4_all_players_state + 64)]  ; mov ch, byte [eax + 0x496ba8]
test ch, ch
je near loc_0041b7ef  ; je 0x41b7ef
mov al, ch
and eax, 0xff
lea ebx, [eax - 1]
mov eax, ebx
shl eax, 2
sub eax, ebx
mov dl, byte [eax*8 + (_rich4_objects_info + 4)]  ; mov dl, byte [eax*8 + 0x496d0c]
dec dl
mov byte [eax*8 + (_rich4_objects_info + 4)], dl  ; mov byte [eax*8 + 0x496d0c], dl
jne near loc_0041b78b  ; jne 0x41b78b
push ref_00482362  ; push 0x482362
call fcn_004542e9  ; call 0x4542e9
add esp, 4
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov al, byte [eax + (_rich4_all_players_state + 64)]  ; mov al, byte [eax + 0x496ba8]
and eax, 0xff
push eax
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
mov ecx, esi
shl ecx, 2
add ecx, esi
shl ecx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, ecx
mov di, word [eax + 0x20]
test di, di
je short loc_0041b727  ; je 0x41b727
push 0
mov eax, edi
and eax, 0xffff
push eax
call fcn_0040ab4a  ; call 0x40ab4a
add esp, 8

loc_0041b727:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call fcn_0040cd07  ; call 0x40cd07
add esp, 4
push 0
push 0
push 0x20d
mov esi, dword [_rich4_data_mkf]  ; mov esi, dword [0x48a0e4]
push esi
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x52
push 0x30001
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
xor edi, edi
mov dword [ref_0048baf8], edi  ; mov dword [0x48baf8], edi
push 5
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
push ebp
call _rich4_add_player_days_in_hospital  ; call 0x43ec3f
add esp, 8
jmp near loc_0041c844  ; jmp 0x41c844

loc_0041b78b:
test edi, edi
je short loc_0041b7ef  ; je 0x41b7ef
push edi
call _count_trailing_zero_u8  ; call 0x40d293
add esp, 4
mov ebx, eax
imul eax, eax, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041b7ef  ; je 0x41b7ef
mov ch, byte [eax + (_rich4_all_players_state + 64)]  ; mov ch, byte [eax + 0x496ba8]
test ch, ch
jne short loc_0041b7ef  ; jne 0x41b7ef
imul edi, dword [_rich4_current_player], 0x68  ; imul edi, dword [0x49910c], 0x68
mov bh, byte [edi + (_rich4_all_players_state + 64)]  ; mov bh, byte [edi + 0x496ba8]
mov byte [eax + (_rich4_all_players_state + 64)], bh  ; mov byte [eax + 0x496ba8], bh
mov cl, bl
inc cl
xor eax, eax
mov al, bh
lea ebx, [eax - 1]
mov eax, ebx
shl eax, 2
sub eax, ebx
mov byte [eax*8 + (_rich4_objects_info + 5)], cl  ; mov byte [eax*8 + 0x496d0d], cl
mov byte [edi + (_rich4_all_players_state + 64)], ch  ; mov byte [edi + 0x496ba8], ch
push ref_00482362  ; push 0x482362
call fcn_004542e9  ; call 0x4542e9
add esp, 4

loc_0041b7ef:
mov eax, dword [esp + 0x9c]
dec eax
cmp eax, 0x11
ja near loc_0041c164  ; ja 0x41c164
jmp dword [eax*4 + ref_0041b3e5]  ; ujmp: jmp dword [eax*4 + 0x41b3e5]

loc_0041b807:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
cmp edx, 4
jge near loc_0041c164  ; jge 0x41c164
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
jne near loc_0041c164  ; jne 0x41c164
mov ebx, dword [esp + 0xa4]
push ebx
push esi
push edx
call _rich4_attach_god  ; call 0x40ead7
jmp near loc_0041bb95  ; jmp 0x41bb95

loc_0041b837:
mov edi, dword [ref_0048baf8]  ; mov edi, dword [0x48baf8]
test edi, edi
jne near loc_0041c164  ; jne 0x41c164
push 0xb
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp ebp, 4
jge short loc_0041b8a7  ; jge 0x41b8a7
imul eax, ebp, 0x68
cmp byte [eax + (_rich4_all_players_state + 17)], 0  ; cmp byte [eax + 0x496b79], 0
je short loc_0041b89e  ; je 0x41b89e
push edi
push edi
push 0x228
mov eax, dword [_rich4_data_mkf]  ; mov eax, dword [0x48a0e4]
push eax
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x55
push 0x10001
push 0x28
push edi
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
jmp near loc_0041c164  ; jmp 0x41c164

loc_0041b89e:
push ebp
call fcn_0040cd07  ; call 0x40cd07
add esp, 4

loc_0041b8a7:
push 0
push 0
push 0x214
mov ebx, dword [_rich4_data_mkf]  ; mov ebx, dword [0x48a0e4]
push ebx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x5d
push 0x30001
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4

loc_0041b8de:
xor edi, edi
mov dword [ref_0048baf8], edi  ; mov dword [0x48baf8], edi
push 3
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
push ebp
call _rich4_add_player_days_in_hospital  ; call 0x43ec3f
jmp near loc_0041c161  ; jmp 0x41c161

loc_0041b8f9:
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
cmp eax, 4
jge near loc_0041b995  ; jge 0x41b995
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
jne near loc_0041b995  ; jne 0x41b995
push eax
call _rich4_receive_random_tool  ; call 0x445ada
mov ebx, eax
add esp, 4
test eax, eax
je near loc_0041c164  ; je 0x41c164
push 0
push ref_0048237a  ; push 0x48237a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0xd
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov ecx, dword [ebx*8 + (_tool_table + -8)]  ; mov ecx, dword [ebx*8 + 0x47feda]
push ecx
push ref_00463aa8  ; push 0x463aa8
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
xor eax, eax
mov al, byte [ebx*8 + (_tool_table + -3)]  ; mov al, byte [ebx*8 + 0x47fedf]
push eax
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call fcn_0044f230  ; call 0x44f230
jmp near loc_0041c161  ; jmp 0x41c161

loc_0041b995:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
cmp ecx, 4
jne near loc_0041c164  ; jne 0x41c164
mov eax, ecx
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state - (64 - 13))], 0  ; cmp byte [eax + 0x498df5], 0
jne near loc_0041c164  ; jne 0x41c164
push 0xd
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
mov ebx, dword [eax + _rich4_all_players_state]  ; mov ebx, dword [eax + 0x496b68]
push ebx
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
mov edi, dword [ref_0047edaa]  ; mov edi, dword [0x47edaa]
push edi
push ref_00463ac0  ; push 0x463ac0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
call _rich4_receive_random_tool  ; call 0x445ada
mov ebx, eax
add esp, 4
test eax, eax
je near loc_0041be38  ; je 0x41be38
push 0
push ref_0048237a  ; push 0x48237a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
xor ecx, ecx
mov cx, word [eax + (_rich4_all_players_state + 10)]  ; mov cx, word [eax + 0x496b72]
push ecx
mov ax, word [eax + (_rich4_all_players_state + 8)]  ; mov ax, word [eax + 0x496b70]
and eax, 0xffff
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov ebp, dword [ebx*8 + (_tool_table + -8)]  ; mov ebp, dword [ebx*8 + 0x47feda]
push ebp
push ref_00463aa8  ; push 0x463aa8
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
xor eax, eax
mov al, byte [ebx*8 + (_tool_table + -3)]  ; mov al, byte [ebx*8 + 0x47fedf]
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
call fcn_0044f230  ; call 0x44f230
add esp, 8

loc_0041bb02:
call fcn_0041d546  ; call 0x41d546
jmp near loc_0041be38  ; jmp 0x41be38

loc_0041bb0c:
cmp dword [_rich4_current_player], 4  ; cmp dword [0x49910c], 4
jge near loc_0041bb9d  ; jge 0x41bb9d
mov ecx, dword [ref_0048baf8]  ; mov ecx, dword [0x48baf8]
test ecx, ecx
jne short loc_0041bb9d  ; jne 0x41bb9d
push ecx
push ref_00482382  ; push 0x482382
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0xe
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0x5dc
push ref_00463ad3  ; push 0x463ad3
call fcn_00440cac  ; call 0x440cac
add esp, 8
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
add word [eax + (_rich4_all_players_state + 48)], 0x1f4  ; add word [eax + 0x496b98], 0x1f4
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov edi, dword [ebx + eax*8 + _rich4_event_strings]  ; mov edi, dword [ebx + eax*8 + 0x48084a]
push edi
push 0
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
push ebp

loc_0041bb90:
call _rich4_player_say  ; call 0x44ef41

loc_0041bb95:
add esp, 0xc
jmp near loc_0041c164  ; jmp 0x41c164

loc_0041bb9d:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
cmp ebx, 4
jne near loc_0041c164  ; jne 0x41c164
mov eax, ebx
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state - (64 - 13))], 0  ; cmp byte [eax + 0x498df5], 0
jne near loc_0041c164  ; jne 0x41c164
push 0
push ref_00482382  ; push 0x482382
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0xe
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
mov edi, dword [eax + _rich4_all_players_state]  ; mov edi, dword [eax + 0x496b68]
push edi
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
mov ebp, dword [ref_0047edae]  ; mov ebp, dword [0x47edae]
push ebp
push ref_00463ac0  ; push 0x463ac0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
xor ecx, ecx
mov cx, word [eax + (_rich4_all_players_state + 10)]  ; mov cx, word [eax + 0x496b72]
push ecx
mov ax, word [eax + (_rich4_all_players_state + 8)]  ; mov ax, word [eax + 0x496b70]
and eax, 0xffff
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0x5dc
push ref_00463ad3  ; push 0x463ad3
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
movzx edi, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; movzx edi, byte [eax + 0x498df0]
imul eax, edi, 0x68
add word [eax + (_rich4_all_players_state + 48)], 0x1f4  ; add word [eax + 0x496b98], 0x1f4
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov edx, dword [ebx + eax*8 + _rich4_event_strings]  ; mov edx, dword [ebx + eax*8 + 0x48084a]
push edx
push 0
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
jmp near loc_0041bb02  ; jmp 0x41bb02

loc_0041bceb:
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
cmp eax, 8
jge short loc_0041bd65  ; jge 0x41bd65
cmp eax, 4
je short loc_0041bd65  ; je 0x41bd65
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
mov edx, dword [esp + 0xa4]
push edx
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
xor ecx, ecx
mov dword [ref_0048baf8], ecx  ; mov dword [0x48baf8], ecx
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
cmp ebx, 4
jge near loc_0041c164  ; jge 0x41c164
imul eax, ebx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
imul eax, eax, 0x68
mov ebp, dword [eax + (_tool_strings + 56)]  ; mov ebp, dword [eax + 0x480d92]
push ebp
push 1
push ebx
jmp near loc_0041bb90  ; jmp 0x41bb90

loc_0041bd65:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
cmp ecx, 4
jne near loc_0041c164  ; jne 0x41c164
mov eax, ecx
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state - (64 - 13))], 0  ; cmp byte [eax + 0x498df5], 0
jne near loc_0041c164  ; jne 0x41c164
mov ebx, dword [esp + 0xa4]
push ebx
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
mov edi, dword [eax + _rich4_all_players_state]  ; mov edi, dword [eax + 0x496b68]
push edi
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
mov ebp, dword [ref_0047edb6]  ; mov ebp, dword [0x47edb6]
push ebp
push ref_00463ac0  ; push 0x463ac0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 2

loc_0041be1c:
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
call _rich4_receive_tool  ; call 0x445a4d
add esp, 8

loc_0041be38:
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je near loc_0041c164  ; je 0x41c164
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce
jmp near loc_0041c161  ; jmp 0x41c161

loc_0041be5f:
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp ebp, 8
jge near loc_0041bf16  ; jge 0x41bf16
cmp ebp, 4
je near loc_0041bf16  ; je 0x41bf16
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
jne near loc_0041bf16  ; jne 0x41bf16
mov edx, dword [esp + 0xa4]
push edx
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
cmp ecx, 4
jge short loc_0041bea8  ; jge 0x41bea8
push ecx
call fcn_0040cd07  ; call 0x40cd07
add esp, 4

loc_0041bea8:
push 0
push 0
push 0x20d
mov edi, dword [_rich4_data_mkf]  ; mov edi, dword [0x48a0e4]
push edi
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x52
push 0x30001
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp ebp, 4
jge near loc_0041b8de  ; jge 0x41b8de
imul eax, ebp, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
imul eax, eax, 0x68
mov ecx, dword [eax + (_tool_strings + 60)]  ; mov ecx, dword [eax + 0x480d96]
push ecx
push 1
push ebp
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
jmp near loc_0041b8de  ; jmp 0x41b8de

loc_0041bf16:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
cmp ecx, 4
jne near loc_0041c164  ; jne 0x41c164
mov eax, ecx
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state - (64 - 13))], 0  ; cmp byte [eax + 0x498df5], 0
jne near loc_0041c164  ; jne 0x41c164
mov ebx, dword [esp + 0xa4]
push ebx
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
mov edi, dword [eax + _rich4_all_players_state]  ; mov edi, dword [eax + 0x496b68]
push edi
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
mov ebp, dword [ref_0047edba]  ; mov ebp, dword [0x47edba]
push ebp
push ref_00463ac0  ; push 0x463ac0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 3
jmp near loc_0041be1c  ; jmp 0x41be1c

loc_0041bfd2:
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
cmp eax, 4
jge near loc_0041c072  ; jge 0x41c072
imul eax, eax, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 64)]  ; mov dl, byte [eax + 0x496ba8]
test dl, dl
jne near loc_0041c072  ; jne 0x41c072
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
jne short loc_0041c072  ; jne 0x41c072
mov bl, byte [esp + 0xa4]
mov byte [eax + (_rich4_all_players_state + 64)], bl  ; mov byte [eax + 0x496ba8], bl
mov cl, byte [_rich4_current_player]  ; mov cl, byte [0x49910c]
inc cl
mov ebx, dword [esp + 0xa4]
dec ebx
mov eax, ebx
shl eax, 2
sub eax, ebx
mov byte [eax*8 + (_rich4_objects_info + 5)], cl  ; mov byte [eax*8 + 0x496d0d], cl
mov byte [eax*8 + (_rich4_objects_info + 4)], 0x26  ; mov byte [eax*8 + 0x496d0c], 0x26
mov eax, esi
shl eax, 2
add eax, esi
mov ecx, dword [_rich4_map_node_ptr]  ; mov ecx, dword [0x498e80]
mov byte [ecx + eax*8 + 0x26], dl
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul eax, ecx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
imul eax, eax, 0x68
mov ebx, dword [eax + (_tool_strings + 64)]  ; mov ebx, dword [eax + 0x480d9a]
push ebx
push 2
push ecx
jmp near loc_0041bb90  ; jmp 0x41bb90

loc_0041c072:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
cmp ebx, 4
jne near loc_0041c164  ; jne 0x41c164
mov eax, ebx
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state - (64 - 13))], 0  ; cmp byte [eax + 0x498df5], 0
jne near loc_0041c164  ; jne 0x41c164
mov edi, dword [esp + 0xa4]
push edi
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
mov ebp, dword [eax + _rich4_all_players_state]  ; mov ebp, dword [eax + 0x496b68]
push ebp
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
mov eax, dword [ref_0047edbe]  ; mov eax, dword [0x47edbe]
push eax
push ref_00463ac0  ; push 0x463ac0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push ebx
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
call _rich4_receive_tool  ; call 0x445a4d
add esp, 8
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je short loc_0041c164  ; je 0x41c164
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce

loc_0041c161:
add esp, 8

loc_0041c164:
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp ebp, 4
jl near loc_0041c844  ; jl 0x41c844
mov ebx, ebp
mov eax, ebp
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state - (64 - 10))], 0  ; cmp byte [eax + 0x498df2], 0
jne near loc_0041c7a6  ; jne 0x41c7a6
cmp byte [eax + (_rich4_all_special_players_state - (64 - 13))], 0  ; cmp byte [eax + 0x498df5], 0
jne near loc_0041c7a6  ; jne 0x41c7a6
cmp ebp, 4
je short loc_0041c1a2  ; je 0x41c1a2
cmp ebp, 5
jne near loc_0041c447  ; jne 0x41c447

loc_0041c1a2:
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov cl, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov cl, byte [eax + 0x498df0]
mov eax, 1
shl eax, cl
not eax
mov edi, dword [esp + 0x98]
and edi, eax
je near loc_0041c330  ; je 0x41c330
push edi
call _count_trailing_zero_u8  ; call 0x40d293
mov esi, eax
add esp, 4
imul ebx, eax, 0x68
cmp byte [ebx + (_rich4_all_players_state + 21)], 0  ; cmp byte [ebx + 0x496b7d], 0
je near loc_0041c330  ; je 0x41c330
mov edx, dword [ebx + _rich4_all_players_state]  ; mov edx, dword [ebx + 0x496b68]
push edx
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
cmp dword [_rich4_current_player], 4  ; cmp dword [0x49910c], 4
jne near loc_0041c293  ; jne 0x41c293
xor edi, edi
mov di, word [ebx + (_rich4_all_players_state + 48)]  ; mov di, word [ebx + 0x496b98]
sar edi, 1
test edi, edi
je near loc_0041c330  ; je 0x41c330
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push edi
lea eax, [esp + 0x84]
push eax
push ref_00463ae4  ; push 0x463ae4
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x3e8
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
sub word [ebx + (_rich4_all_players_state + 48)], di  ; sub word [ebx + 0x496b98], di
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
add word [eax + (_rich4_all_players_state + 48)], di  ; add word [eax + 0x496b98], di
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je near loc_0041c330  ; je 0x41c330
jmp near loc_0041c318  ; jmp 0x41c318

loc_0041c293:
push esi
call _rich4_player_drop_random_card  ; call 0x441e77
mov ebx, eax
add esp, 4
test eax, eax
je near loc_0041c330  ; je 0x41c330
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
mov eax, ebx
mov esi, dword [eax*8 + (_card_table - 8)]  ; mov esi, dword [eax*8 + 0x47fdea]
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463af7  ; push 0x463af7
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x3e8
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push ebx
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
call _rich4_receive_card  ; call 0x4412e4
add esp, 8
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je short loc_0041c330  ; je 0x41c330

loc_0041c318:
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce
add esp, 8

loc_0041c330:
cmp dword [_rich4_current_player], 5  ; cmp dword [0x49910c], 5
jne near loc_0041c7a6  ; jne 0x41c7a6
cmp dword [esp + 0xa0], 0xe
jne near loc_0041c7a6  ; jne 0x41c7a6
xor ebx, ebx
xor edi, edi

loc_0041c34f:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_0041c3ad  ; jge 0x41c3ad
imul esi, ebx, 0x68
cmp byte [esi + (_rich4_all_players_state + 21)], 0  ; cmp byte [esi + 0x496b7d], 0
je short loc_0041c3aa  ; je 0x41c3aa
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
shl ebp, 4
movzx ebp, byte [ebp + (_rich4_all_special_players_state - (64 - 8))]  ; movzx ebp, byte [ebp + 0x498df0]
cmp ebx, ebp
je short loc_0041c3aa  ; je 0x41c3aa
fild dword [esi + (_rich4_all_players_state + 32)]  ; fild dword [esi + 0x496b88]
fmul qword [ref_00463b60]  ; fmul qword [0x463b60]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0x94]
push 5
mov eax, dword [esp + 0x98]
push eax
push ebp
push ebx
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
add edi, dword [esp + 0x94]

loc_0041c3aa:
inc ebx
jmp short loc_0041c34f  ; jmp 0x41c34f

loc_0041c3ad:
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
imul eax, eax, 0x68
mov ebx, dword [eax + _rich4_all_players_state]  ; mov ebx, dword [eax + 0x496b68]
push ebx
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
push edi
push ref_00463b02  ; push 0x463b02
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x7d0
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je near loc_0041c7a6  ; je 0x41c7a6
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce
add esp, 8
jmp near loc_0041c7a6  ; jmp 0x41c7a6

loc_0041c447:
mov eax, dword [ref_0048baf8]  ; mov eax, dword [0x48baf8]
test eax, eax
jne near loc_0041c7a6  ; jne 0x41c7a6
push 1
push eax
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov eax, esi
shl eax, 2
add eax, esi
mov edi, dword [_rich4_map_node_ptr]  ; mov edi, dword [0x498e80]
mov di, word [edi + eax*8 + 0x20]
cmp di, 0x7d0
jbe near loc_0041c5cd  ; jbe 0x41c5cd
cmp di, 0xfa0
jae near loc_0041c5cd  ; jae 0x41c5cd
xor eax, eax
mov ax, di
sub eax, 0x7d0
imul eax, eax, 0x34
mov ebp, dword [_rich4_land_info_ptr]  ; mov ebp, dword [0x498e84]
add ebp, eax
mov dl, byte [ebp + 0x19]
test dl, dl
je near loc_0041c7a6  ; je 0x41c7a6
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
xor ecx, ecx
mov cl, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov cl, byte [eax + 0x498df0]
xor eax, eax
mov al, dl
dec eax
cmp ecx, eax
je near loc_0041c7a6  ; je 0x41c7a6
imul eax, eax, 0x68
mov edi, dword [eax + _rich4_all_players_state]  ; mov edi, dword [eax + 0x496b68]
push edi
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
cmp dword [_rich4_current_player], 6  ; cmp dword [0x49910c], 6
jne near loc_0041c597  ; jne 0x41c597
mov ebx, 1
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
add esi, 0x34
xor edi, edi

loc_0041c4fc:
cmp ebx, dword [_rich4_num_lands]  ; cmp ebx, dword [0x498e98]
jg short loc_0041c52c  ; jg 0x41c52c
mov al, byte [esi + 0x19]
cmp al, byte [ebp + 0x19]
jne short loc_0041c526  ; jne 0x41c526
lea eax, [esi + 4]
push eax
lea eax, [ebp + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041c526  ; jne 0x41c526
mov ax, word [esi + 0x1c]
add edi, eax

loc_0041c526:
inc ebx
add esi, 0x34
jmp short loc_0041c4fc  ; jmp 0x41c4fc

loc_0041c52c:
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
imul edi, dword [_rich4_price_index]  ; imul edi, dword [0x4990e8]
push edi
lea eax, [esp + 0x84]
push eax
push ref_00463b21  ; push 0x463b21
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10

loc_0041c564:
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0
push edi
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
xor eax, eax
mov al, byte [ebp + 0x19]
jmp near loc_0041c6b6  ; jmp 0x41c6b6

loc_0041c597:
mov edi, dword [ebp + 0x2c]
test edi, edi
je near loc_0041c7a6  ; je 0x41c7a6
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push edi
push ref_00463b36  ; push 0x463b36
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
jmp short loc_0041c564  ; jmp 0x41c564

loc_0041c5cd:
cmp di, 0xfa0
jbe near loc_0041c6e6  ; jbe 0x41c6e6
cmp di, 0x1770
jae near loc_0041c6e6  ; jae 0x41c6e6
xor eax, eax
mov ax, di
sub eax, 0xfa0
shl eax, 3
mov ebx, eax
shl eax, 3
sub eax, ebx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
add ebx, eax
cmp byte [ebx + 0x19], 0
je near loc_0041c7a6  ; je 0x41c7a6
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
xor ecx, ecx
mov cl, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov cl, byte [eax + 0x498df0]
xor eax, eax
mov al, byte [ebx + 0x19]
dec eax
cmp ecx, eax
je near loc_0041c7a6  ; je 0x41c7a6
imul eax, eax, 0x68
mov edx, dword [eax + _rich4_all_players_state]  ; mov edx, dword [eax + 0x496b68]
push edx
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
cmp dword [_rich4_current_player], 6  ; cmp dword [0x49910c], 6
jne short loc_0041c6bd  ; jne 0x41c6bd
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
xor edi, edi
mov di, word [ebx + 0x22]
imul edi, dword [_rich4_price_index]  ; imul edi, dword [0x4990e8]
push edi
lea eax, [esp + 0x84]
push eax
push ref_00463b21  ; push 0x463b21
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10

loc_0041c688:
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0
push edi
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
xor eax, eax
mov al, byte [ebx + 0x19]

loc_0041c6b6:
dec eax
push eax
jmp near loc_0041c79e  ; jmp 0x41c79e

loc_0041c6bd:
mov edi, dword [ebx + 0x30]
test edi, edi
je near loc_0041c7a6  ; je 0x41c7a6
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push edi
push ref_00463b36  ; push 0x463b36
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
jmp short loc_0041c688  ; jmp 0x41c688

loc_0041c6e6:
cmp di, 0x1770
jbe near loc_0041c7a6  ; jbe 0x41c7a6
cmp di, 0x1f40
jae near loc_0041c7a6  ; jae 0x41c7a6
xor esi, esi
mov si, di
lea eax, [esi - 0x1770]
imul eax, eax, 0x34
mov edi, dword [_rich4_on_map_commercial_ptr]  ; mov edi, dword [0x498e7c]
add edi, eax
cmp byte [edi + 0x18], 0
je near loc_0041c7a6  ; je 0x41c7a6
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
mov eax, ebx
shl eax, 4
xor ecx, ecx
mov cl, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov cl, byte [eax + 0x498df0]
xor eax, eax
mov al, byte [edi + 0x18]
dec eax
cmp ecx, eax
je short loc_0041c7a6  ; je 0x41c7a6
cmp ebx, 7
jne short loc_0041c7a6  ; jne 0x41c7a6
mov edi, dword [edi + 0x28]
test edi, edi
je short loc_0041c7a6  ; je 0x41c7a6
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
push edi
push ref_00463b49  ; push 0x463b49
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0
push edi
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
shl eax, 4
mov al, byte [eax + (_rich4_all_special_players_state - (64 - 8))]  ; mov al, byte [eax + 0x498df0]
and eax, 0xff
push eax
sub esi, 0x170c
push esi

loc_0041c79e:
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10

loc_0041c7a6:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
mov eax, ebx
shl eax, 4
mov cl, byte [eax + (_rich4_all_special_players_state - (64 - 11))]  ; mov cl, byte [eax + 0x498df3]
and cl, 0x7f
cmp cl, 1
jne short loc_0041c7f6  ; jne 0x41c7f6
cmp dword [esp + 0xa0], 4
jne short loc_0041c7f6  ; jne 0x41c7f6
mov cl, byte [eax + (_rich4_all_special_players_state - (64 - 11))]  ; mov cl, byte [eax + 0x498df3]
test cl, 0x80
je short loc_0041c7e9  ; je 0x41c7e9
push 0
push ebx
call _rich4_add_player_days_in_prison  ; call 0x43d593
add esp, 8
xor ebp, ebp
mov dword [ref_0048baf8], ebp  ; mov dword [0x48baf8], ebp
jmp short loc_0041c844  ; jmp 0x41c844

loc_0041c7e9:
mov ch, cl
or ch, 0x80
mov byte [eax + (_rich4_all_special_players_state - (64 - 11))], ch  ; mov byte [eax + 0x498df3], ch
jmp short loc_0041c844  ; jmp 0x41c844

loc_0041c7f6:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
mov eax, ebx
shl eax, 4
mov cl, byte [eax + (_rich4_all_special_players_state - (64 - 11))]  ; mov cl, byte [eax + 0x498df3]
and cl, 0x7f
cmp cl, 2
jne short loc_0041c844  ; jne 0x41c844
cmp dword [esp + 0xa0], 5
jne short loc_0041c844  ; jne 0x41c844
mov dl, byte [eax + (_rich4_all_special_players_state - (64 - 11))]  ; mov dl, byte [eax + 0x498df3]
test dl, 0x80
je short loc_0041c839  ; je 0x41c839
push 0
push ebx
call _rich4_add_player_days_in_hospital  ; call 0x43ec3f
add esp, 8
xor edi, edi
mov dword [ref_0048baf8], edi  ; mov dword [0x48baf8], edi
jmp short loc_0041c844  ; jmp 0x41c844

loc_0041c839:
mov dh, dl
or dh, 0x80
mov byte [eax + (_rich4_all_special_players_state - (64 - 11))], dh  ; mov byte [eax + 0x498df3], dh

loc_0041c844:
add esp, 0xa8
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041c84f:
push ebx
push esi
push ebp
sub esp, 0x80
mov ebx, dword [esp + 0x90]
cmp ebx, 4
jge near loc_0041ce39  ; jge 0x41ce39
call fcn_0042915a  ; call 0x42915a
call fcn_00436a5a  ; call 0x436a5a
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je near loc_0041cf5d  ; je 0x41cf5d
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne near loc_0041cf5d  ; jne 0x41cf5d
mov cl, byte [eax + (_rich4_all_players_state + 50)]  ; mov cl, byte [eax + 0x496b9a]
test cl, 0x80
je short loc_0041c8a5  ; je 0x41c8a5
push ebx
call fcn_0040d6be  ; call 0x40d6be
add esp, 4
jmp short loc_0041c8bc  ; jmp 0x41c8bc

loc_0041c8a5:
test cl, cl
je short loc_0041c8bc  ; je 0x41c8bc
mov dl, cl
dec dl
mov byte [eax + (_rich4_all_players_state + 50)], dl  ; mov byte [eax + 0x496b9a], dl
jne short loc_0041c8bc  ; jne 0x41c8bc
or byte [eax + (_rich4_all_players_state + 50)], 0x80  ; or byte [eax + 0x496b9a], 0x80

loc_0041c8bc:
imul eax, ebx, 0x68
mov ch, byte [eax + (_rich4_all_players_state + 51)]  ; mov ch, byte [eax + 0x496b9b]
test ch, 0x80
je short loc_0041c8d5  ; je 0x41c8d5
push ebx
call fcn_0040d4e5  ; call 0x40d4e5
add esp, 4
jmp short loc_0041c8f3  ; jmp 0x41c8f3

loc_0041c8d5:
test ch, ch
je short loc_0041c8f3  ; je 0x41c8f3
mov dh, ch
dec dh
mov byte [eax + (_rich4_all_players_state + 51)], dh  ; mov byte [eax + 0x496b9b], dh
test dh, 0x3f
jne short loc_0041c8f3  ; jne 0x41c8f3
mov ch, dh
or ch, 0x80
mov byte [eax + (_rich4_all_players_state + 51)], ch  ; mov byte [eax + 0x496b9b], ch

loc_0041c8f3:
imul eax, ebx, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 52)]  ; mov dl, byte [eax + 0x496b9c]
test dl, 0x80
je short loc_0041c90c  ; je 0x41c90c
push ebx
call _rich4_release_player_from_prison  ; call 0x43d7bf
add esp, 4
jmp short loc_0041c927  ; jmp 0x41c927

loc_0041c90c:
test dl, dl
je short loc_0041c927  ; je 0x41c927
mov cl, dl
dec cl
mov byte [eax + (_rich4_all_players_state + 52)], cl  ; mov byte [eax + 0x496b9c], cl
jne short loc_0041c927  ; jne 0x41c927
mov dl, cl
or dl, 0x80
mov byte [eax + (_rich4_all_players_state + 52)], dl  ; mov byte [eax + 0x496b9c], dl

loc_0041c927:
imul eax, ebx, 0x68
mov dh, byte [eax + (_rich4_all_players_state + 53)]  ; mov dh, byte [eax + 0x496b9d]
test dh, 0x80
je short loc_0041c940  ; je 0x41c940
push ebx
call _rich4_release_player_from_hospital  ; call 0x43ee6e
add esp, 4
jmp short loc_0041c95b  ; jmp 0x41c95b

loc_0041c940:
test dh, dh
je short loc_0041c95b  ; je 0x41c95b
mov ch, dh
dec ch
mov byte [eax + (_rich4_all_players_state + 53)], ch  ; mov byte [eax + 0x496b9d], ch
jne short loc_0041c95b  ; jne 0x41c95b
mov dh, ch
or dh, 0x80
mov byte [eax + (_rich4_all_players_state + 53)], dh  ; mov byte [eax + 0x496b9d], dh

loc_0041c95b:
imul eax, ebx, 0x68
cmp dword [eax + (_rich4_all_players_state + 50)], 0  ; cmp dword [eax + 0x496b9a], 0
jne near loc_0041ca8f  ; jne 0x41ca8f
test byte [eax + (_rich4_all_players_state + 54)], 0x80  ; test byte [eax + 0x496b9e], 0x80
je short loc_0041c9a4  ; je 0x41c9a4
xor ch, ch
mov byte [eax + (_rich4_all_players_state + 54)], ch  ; mov byte [eax + 0x496b9e], ch
imul eax, ebx, 0x34
and byte [eax + ref_00498ea0], 0xbf  ; and byte [eax + 0x498ea0], 0xbf
mov al, byte [eax + ref_00498ea1]  ; mov al, byte [eax + 0x498ea1]
and eax, 0xff
push eax
push ebx
call fcn_0040b8d8  ; call 0x40b8d8
add esp, 8
push ebx
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4

loc_0041c9a4:
imul eax, ebx, 0x68
test byte [eax + (_rich4_all_players_state + 55)], 0x80  ; test byte [eax + 0x496b9f], 0x80
je near loc_0041ca7b  ; je 0x41ca7b
xor cl, cl
mov byte [eax + (_rich4_all_players_state + 55)], cl  ; mov byte [eax + 0x496b9f], cl
mov al, byte [eax + (_rich4_all_players_state + 102)]  ; mov al, byte [eax + 0x496bce]
and al, 3
movzx esi, al
cmp esi, 1
jne short loc_0041c9e3  ; jne 0x41c9e3
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [eax + (_rich4_player_tool_amount + 4)], 0  ; cmp byte [eax + 0x499160], 0
jne short loc_0041ca04  ; jne 0x41ca04

loc_0041c9e3:
cmp esi, 2
jne short loc_0041c9ff  ; jne 0x41c9ff
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [eax + (_rich4_player_tool_amount + 5)], 0  ; cmp byte [eax + 0x499161], 0
jne short loc_0041ca04  ; jne 0x41ca04

loc_0041c9ff:
cmp esi, 3
jne short loc_0041ca60  ; jne 0x41ca60

loc_0041ca04:
imul eax, ebx, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 102)]  ; mov dl, byte [eax + 0x496bce]
mov byte [eax + (_rich4_all_players_state + 17)], dl  ; mov byte [eax + 0x496b79], dl
mov dl, byte [eax + (_rich4_all_players_state + 103)]  ; mov dl, byte [eax + 0x496bcf]
mov byte [eax + (_rich4_all_players_state + 18)], dl  ; mov byte [eax + 0x496b7a], dl
mov ch, byte [eax + (_rich4_all_players_state + 17)]  ; mov ch, byte [eax + 0x496b79]
cmp ch, 1
jne short loc_0041ca3e  ; jne 0x41ca3e
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
sub byte [eax + (_rich4_player_tool_amount + 4)], ch  ; sub byte [eax + 0x499160], ch

loc_0041ca3e:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 17)], 2  ; cmp byte [eax + 0x496b79], 2
jne short loc_0041ca72  ; jne 0x41ca72
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
dec byte [eax + (_rich4_player_tool_amount + 5)]  ; dec byte [eax + 0x499161]
jmp short loc_0041ca72  ; jmp 0x41ca72

loc_0041ca60:
imul eax, ebx, 0x68
xor dh, dh
mov byte [eax + (_rich4_all_players_state + 17)], dh  ; mov byte [eax + 0x496b79], dh
mov byte [eax + (_rich4_all_players_state + 18)], 1  ; mov byte [eax + 0x496b7a], 1

loc_0041ca72:
push ebx
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4

loc_0041ca7b:
imul eax, ebx, 0x68
test byte [eax + (_rich4_all_players_state + 57)], 0x80  ; test byte [eax + 0x496ba1], 0x80
je short loc_0041ca8f  ; je 0x41ca8f
xor dl, dl
mov byte [eax + (_rich4_all_players_state + 57)], dl  ; mov byte [eax + 0x496ba1], dl

loc_0041ca8f:
imul eax, ebx, 0x68
test byte [eax + (_rich4_all_players_state + 56)], 0x80  ; test byte [eax + 0x496ba0], 0x80
je short loc_0041caa3  ; je 0x41caa3
xor cl, cl
mov byte [eax + (_rich4_all_players_state + 56)], cl  ; mov byte [eax + 0x496ba0], cl

loc_0041caa3:
imul eax, ebx, 0x68
test byte [eax + (_rich4_all_players_state + 59)], 0x80  ; test byte [eax + 0x496ba3], 0x80
je short loc_0041cab7  ; je 0x41cab7
xor dl, dl
mov byte [eax + (_rich4_all_players_state + 59)], dl  ; mov byte [eax + 0x496ba3], dl

loc_0041cab7:
imul eax, ebx, 0x68
test byte [eax + (_rich4_all_players_state + 60)], 0x80  ; test byte [eax + 0x496ba4], 0x80
je short loc_0041cacb  ; je 0x41cacb
xor cl, cl
mov byte [eax + (_rich4_all_players_state + 60)], cl  ; mov byte [eax + 0x496ba4], cl

loc_0041cacb:
imul eax, ebx, 0x68
test byte [eax + (_rich4_all_players_state + 61)], 0x80  ; test byte [eax + 0x496ba5], 0x80
je short loc_0041cae0  ; je 0x41cae0
push ebx
call _rich4_end_ally  ; call 0x40cc1a
add esp, 4

loc_0041cae0:
imul eax, ebx, 0x68
test byte [eax + (_rich4_all_players_state + 62)], 0x80  ; test byte [eax + 0x496ba6], 0x80
je short loc_0041caf4  ; je 0x41caf4
xor dh, dh
mov byte [eax + (_rich4_all_players_state + 62)], dh  ; mov byte [eax + 0x496ba6], dh

loc_0041caf4:
imul eax, ebx, 0x68
cmp dword [eax + (_rich4_all_players_state + 50)], 0  ; cmp dword [eax + 0x496b9a], 0
jne near loc_0041cb6d  ; jne 0x41cb6d
mov cl, byte [eax + (_rich4_all_players_state + 54)]  ; mov cl, byte [eax + 0x496b9e]
test cl, cl
je short loc_0041cb25  ; je 0x41cb25
mov ch, cl
dec ch
mov byte [eax + (_rich4_all_players_state + 54)], ch  ; mov byte [eax + 0x496b9e], ch
jne short loc_0041cb25  ; jne 0x41cb25
mov dh, ch
or dh, 0x80
mov byte [eax + (_rich4_all_players_state + 54)], dh  ; mov byte [eax + 0x496b9e], dh

loc_0041cb25:
imul eax, ebx, 0x68
mov cl, byte [eax + (_rich4_all_players_state + 55)]  ; mov cl, byte [eax + 0x496b9f]
test cl, cl
je short loc_0041cb49  ; je 0x41cb49
mov ch, cl
dec ch
mov byte [eax + (_rich4_all_players_state + 55)], ch  ; mov byte [eax + 0x496b9f], ch
jne short loc_0041cb49  ; jne 0x41cb49
mov dh, ch
or dh, 0x80
mov byte [eax + (_rich4_all_players_state + 55)], dh  ; mov byte [eax + 0x496b9f], dh

loc_0041cb49:
imul eax, ebx, 0x68
mov cl, byte [eax + (_rich4_all_players_state + 57)]  ; mov cl, byte [eax + 0x496ba1]
test cl, cl
je short loc_0041cb6d  ; je 0x41cb6d
mov ch, cl
dec ch
mov byte [eax + (_rich4_all_players_state + 57)], ch  ; mov byte [eax + 0x496ba1], ch
jne short loc_0041cb6d  ; jne 0x41cb6d
mov dh, ch
or dh, 0x80
mov byte [eax + (_rich4_all_players_state + 57)], dh  ; mov byte [eax + 0x496ba1], dh

loc_0041cb6d:
imul eax, ebx, 0x68
mov cl, byte [eax + (_rich4_all_players_state + 56)]  ; mov cl, byte [eax + 0x496ba0]
test cl, cl
je short loc_0041cb91  ; je 0x41cb91
mov ch, cl
dec ch
mov byte [eax + (_rich4_all_players_state + 56)], ch  ; mov byte [eax + 0x496ba0], ch
jne short loc_0041cb91  ; jne 0x41cb91
mov dh, ch
or dh, 0x80
mov byte [eax + (_rich4_all_players_state + 56)], dh  ; mov byte [eax + 0x496ba0], dh

loc_0041cb91:
imul eax, ebx, 0x68
mov cl, byte [eax + (_rich4_all_players_state + 59)]  ; mov cl, byte [eax + 0x496ba3]
test cl, cl
je short loc_0041cbb5  ; je 0x41cbb5
mov ch, cl
dec ch
mov byte [eax + (_rich4_all_players_state + 59)], ch  ; mov byte [eax + 0x496ba3], ch
jne short loc_0041cbb5  ; jne 0x41cbb5
mov dh, ch
or dh, 0x80
mov byte [eax + (_rich4_all_players_state + 59)], dh  ; mov byte [eax + 0x496ba3], dh

loc_0041cbb5:
imul eax, ebx, 0x68
mov cl, byte [eax + (_rich4_all_players_state + 60)]  ; mov cl, byte [eax + 0x496ba4]
test cl, cl
je short loc_0041cbd9  ; je 0x41cbd9
mov ch, cl
dec ch
mov byte [eax + (_rich4_all_players_state + 60)], ch  ; mov byte [eax + 0x496ba4], ch
jne short loc_0041cbd9  ; jne 0x41cbd9
mov dh, ch
or dh, 0x80
mov byte [eax + (_rich4_all_players_state + 60)], dh  ; mov byte [eax + 0x496ba4], dh

loc_0041cbd9:
imul esi, ebx, 0x68
cmp byte [esi + (_rich4_all_players_state + 61)], 0  ; cmp byte [esi + 0x496ba5], 0
je short loc_0041cc48  ; je 0x41cc48
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
neg eax
push eax
xor eax, eax
mov al, byte [esi + (_rich4_all_players_state + 65)]  ; mov al, byte [esi + 0x496ba9]
dec eax
push eax
push ebx
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
neg eax
push eax
push ebx
xor eax, eax
mov al, byte [esi + (_rich4_all_players_state + 65)]  ; mov al, byte [esi + 0x496ba9]
dec eax
push eax
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc
mov ch, byte [esi + (_rich4_all_players_state + 61)]  ; mov ch, byte [esi + 0x496ba5]
dec ch
mov byte [esi + (_rich4_all_players_state + 61)], ch  ; mov byte [esi + 0x496ba5], ch
jne short loc_0041cc48  ; jne 0x41cc48
mov byte [esi + (_rich4_all_players_state + 61)], 0x80  ; mov byte [esi + 0x496ba5], 0x80

loc_0041cc48:
imul eax, ebx, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 62)]  ; mov dl, byte [eax + 0x496ba6]
test dl, dl
je short loc_0041cc6c  ; je 0x41cc6c
mov dh, dl
dec dh
mov byte [eax + (_rich4_all_players_state + 62)], dh  ; mov byte [eax + 0x496ba6], dh
jne short loc_0041cc6c  ; jne 0x41cc6c
mov ch, dh
or ch, 0x80
mov byte [eax + (_rich4_all_players_state + 62)], ch  ; mov byte [eax + 0x496ba6], ch

loc_0041cc6c:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 63)], 0  ; cmp byte [eax + 0x496ba7], 0
je short loc_0041cca3  ; je 0x41cca3
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 63)]  ; mov dl, byte [eax + 0x496ba7]
dec edx
mov eax, edx
shl eax, 2
sub eax, edx
mov dh, byte [eax*8 + (_rich4_objects_info + 4)]  ; mov dh, byte [eax*8 + 0x496d0c]
dec dh
mov byte [eax*8 + (_rich4_objects_info + 4)], dh  ; mov byte [eax*8 + 0x496d0c], dh
jne short loc_0041cca3  ; jne 0x41cca3
push ebx
call _rich4_detach_god  ; call 0x40e32c
add esp, 4

loc_0041cca3:
imul eax, ebx, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 17)]  ; mov dl, byte [eax + 0x496b79]
and dl, 3
cmp dl, 3
jne near loc_0041cd8c  ; jne 0x41cd8c
mov ch, byte [eax + (_rich4_all_players_state + 17)]  ; mov ch, byte [eax + 0x496b79]
sub ch, 4
mov byte [eax + (_rich4_all_players_state + 17)], ch  ; mov byte [eax + 0x496b79], ch
test ch, 0xfc
jne near loc_0041cd8c  ; jne 0x41cd8c
mov al, byte [eax + (_rich4_all_players_state + 100)]  ; mov al, byte [eax + 0x496bcc]
and al, dl
movzx esi, al
cmp esi, 1
jne short loc_0041ccf7  ; jne 0x41ccf7
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [eax + (_rich4_player_tool_amount + 4)], 0  ; cmp byte [eax + 0x499160], 0
jne short loc_0041cd17  ; jne 0x41cd17

loc_0041ccf7:
cmp esi, 2
jne near loc_0041cd71  ; jne 0x41cd71
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [eax + (_rich4_player_tool_amount + 5)], 0  ; cmp byte [eax + 0x499161], 0
je short loc_0041cd71  ; je 0x41cd71

loc_0041cd17:
imul eax, ebx, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 100)]  ; mov dl, byte [eax + 0x496bcc]
mov byte [eax + (_rich4_all_players_state + 17)], dl  ; mov byte [eax + 0x496b79], dl
mov dl, byte [eax + (_rich4_all_players_state + 101)]  ; mov dl, byte [eax + 0x496bcd]
mov byte [eax + (_rich4_all_players_state + 18)], dl  ; mov byte [eax + 0x496b7a], dl
cmp byte [eax + (_rich4_all_players_state + 17)], 1  ; cmp byte [eax + 0x496b79], 1
jne short loc_0041cd4f  ; jne 0x41cd4f
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
dec byte [eax + (_rich4_player_tool_amount + 4)]  ; dec byte [eax + 0x499160]

loc_0041cd4f:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 17)], 2  ; cmp byte [eax + 0x496b79], 2
jne short loc_0041cd83  ; jne 0x41cd83
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
dec byte [eax + (_rich4_player_tool_amount + 5)]  ; dec byte [eax + 0x499161]
jmp short loc_0041cd83  ; jmp 0x41cd83

loc_0041cd71:
imul eax, ebx, 0x68
xor ch, ch
mov byte [eax + (_rich4_all_players_state + 17)], ch  ; mov byte [eax + 0x496b79], ch
mov byte [eax + (_rich4_all_players_state + 18)], 1  ; mov byte [eax + 0x496b7a], 1

loc_0041cd83:
push ebx
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4

loc_0041cd8c:
mov esi, 1
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]

loc_0041cd97:
add ebx, 0x38
cmp esi, dword [_rich4_num_facilities]  ; cmp esi, dword [0x498e8c]
jg near loc_0041cf5d  ; jg 0x41cf5d
cmp byte [ebx + 0x18], 4
jne near loc_0041ce33  ; jne 0x41ce33
mov cl, byte [ebx + 0x1e]
test cl, cl
je near loc_0041ce33  ; je 0x41ce33
xor edx, edx
mov dl, byte [ebx + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne short loc_0041ce33  ; jne 0x41ce33
mov al, byte [ebx + 0x1d]
cmp al, byte [ebx + 0x1a]
ja short loc_0041ce2f  ; ja 0x41ce2f
mov al, cl
dec al
mov byte [ebx + 0x1e], al
jne short loc_0041ce33  ; jne 0x41ce33
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
xor eax, eax
mov al, byte [ebx + 0x1d]
mov ebp, dword [eax*8 + (_tool_table + 56)]  ; mov ebp, dword [eax*8 + 0x47ff1a]
push ebp
push ref_00463b68  ; push 0x463b68
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
xor eax, eax
mov al, byte [ebx + 0x1d]
add eax, 8
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call _rich4_receive_tool  ; call 0x445a4d
add esp, 8
jmp short loc_0041ce33  ; jmp 0x41ce33

loc_0041ce2f:
mov byte [ebx + 0x1e], 0

loc_0041ce33:
inc esi
jmp near loc_0041cd97  ; jmp 0x41cd97

loc_0041ce39:
cmp ebx, 8
jge near loc_0041cf5d  ; jge 0x41cf5d
sub ebx, 4
mov eax, ebx
shl eax, 4
test byte [eax + (_rich4_all_special_players_state + 12)], 0x80  ; test byte [eax + 0x498e34], 0x80
je short loc_0041ce86  ; je 0x41ce86
xor dh, dh
mov byte [eax + (_rich4_all_special_players_state + 12)], dh  ; mov byte [eax + 0x498e34], dh
lea esi, [ebx + 4]
imul eax, esi, 0x34
and byte [eax + ref_00498ea0], 0xbf  ; and byte [eax + 0x498ea0], 0xbf
mov al, byte [eax + ref_00498ea1]  ; mov al, byte [eax + 0x498ea1]
and eax, 0xff
push eax
push esi
call fcn_0040b8d8  ; call 0x40b8d8
add esp, 8
push esi
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4

loc_0041ce86:
mov eax, ebx
shl eax, 4
test byte [eax + (_rich4_all_special_players_state + 13)], 0x80  ; test byte [eax + 0x498e35], 0x80
je short loc_0041ce9c  ; je 0x41ce9c
xor dl, dl
mov byte [eax + (_rich4_all_special_players_state + 13)], dl  ; mov byte [eax + 0x498e35], dl

loc_0041ce9c:
mov eax, ebx
shl eax, 4
test byte [eax + (_rich4_all_special_players_state + 14)], 0x80  ; test byte [eax + 0x498e36], 0x80
je short loc_0041ceb2  ; je 0x41ceb2
xor cl, cl
mov byte [eax + (_rich4_all_special_players_state + 14)], cl  ; mov byte [eax + 0x498e36], cl

loc_0041ceb2:
mov eax, ebx
shl eax, 4
test byte [eax + (_rich4_all_special_players_state + 15)], 0x80  ; test byte [eax + 0x498e37], 0x80
je short loc_0041cec8  ; je 0x41cec8
xor dl, dl
mov byte [eax + (_rich4_all_special_players_state + 15)], dl  ; mov byte [eax + 0x498e37], dl

loc_0041cec8:
mov eax, ebx
shl eax, 4
mov dh, byte [eax + (_rich4_all_special_players_state + 12)]  ; mov dh, byte [eax + 0x498e34]
test dh, dh
je short loc_0041ceee  ; je 0x41ceee
mov cl, dh
dec cl
mov byte [eax + (_rich4_all_special_players_state + 12)], cl  ; mov byte [eax + 0x498e34], cl
jne short loc_0041ceee  ; jne 0x41ceee
mov dl, cl
or dl, 0x80
mov byte [eax + (_rich4_all_special_players_state + 12)], dl  ; mov byte [eax + 0x498e34], dl

loc_0041ceee:
mov eax, ebx
shl eax, 4
mov dh, byte [eax + (_rich4_all_special_players_state + 13)]  ; mov dh, byte [eax + 0x498e35]
test dh, dh
je short loc_0041cf14  ; je 0x41cf14
mov cl, dh
dec cl
mov byte [eax + (_rich4_all_special_players_state + 13)], cl  ; mov byte [eax + 0x498e35], cl
jne short loc_0041cf14  ; jne 0x41cf14
mov dl, cl
or dl, 0x80
mov byte [eax + (_rich4_all_special_players_state + 13)], dl  ; mov byte [eax + 0x498e35], dl

loc_0041cf14:
mov eax, ebx
shl eax, 4
mov dh, byte [eax + (_rich4_all_special_players_state + 14)]  ; mov dh, byte [eax + 0x498e36]
test dh, dh
je short loc_0041cf3a  ; je 0x41cf3a
mov cl, dh
dec cl
mov byte [eax + (_rich4_all_special_players_state + 14)], cl  ; mov byte [eax + 0x498e36], cl
jne short loc_0041cf3a  ; jne 0x41cf3a
mov dl, cl
or dl, 0x80
mov byte [eax + (_rich4_all_special_players_state + 14)], dl  ; mov byte [eax + 0x498e36], dl

loc_0041cf3a:
shl ebx, 4
mov dh, byte [ebx + (_rich4_all_special_players_state + 15)]  ; mov dh, byte [ebx + 0x498e37]
test dh, dh
je short loc_0041cf5d  ; je 0x41cf5d
mov cl, dh
dec cl
mov byte [ebx + (_rich4_all_special_players_state + 15)], cl  ; mov byte [ebx + 0x498e37], cl
jne short loc_0041cf5d  ; jne 0x41cf5d
mov al, cl
or al, 0x80
mov byte [ebx + (_rich4_all_special_players_state + 15)], al  ; mov byte [ebx + 0x498e37], al

loc_0041cf5d:
add esp, 0x80
pop ebp
pop esi
pop ebx
ret

fcn_0041cf67:
push ebx
push esi
push edi
xor esi, esi
mov ah, byte [ref_0046cb06]  ; mov ah, byte [0x46cb06]
test ah, 0xf
je short loc_0041cf9c  ; je 0x41cf9c
mov dl, ah
dec dl
mov byte [ref_0046cb06], dl  ; mov byte [0x46cb06], dl
test dl, 0xf
jne short loc_0041cf9c  ; jne 0x41cf9c
xor bl, bl
mov byte [ref_0046cb06], bl  ; mov byte [0x46cb06], bl
call fcn_00454acb  ; call 0x454acb
push esi
call fcn_00454d91  ; call 0x454d91
add esp, 4

loc_0041cf9c:
push (_global_rich4_cfg + 8)  ; push 0x497160
call fcn_00452117  ; call 0x452117
add esp, 4
mov edi, eax
inc dword [ref_004990e4]  ; inc dword [0x4990e4]
call fcn_0041d89e  ; call 0x41d89e
cmp eax, 1
je near loc_0041d1a5  ; je 0x41d1a5
call _rich4_update_price_index  ; call 0x423acf
call fcn_00428475  ; call 0x428475
test byte [ref_004990dc], 0x80  ; test byte [0x4990dc], 0x80
je short loc_0041cfdb  ; je 0x41cfdb
xor eax, eax
mov dword [ref_004990dc], eax  ; mov dword [0x4990dc], eax
jmp short loc_0041cff9  ; jmp 0x41cff9

loc_0041cfdb:
mov ecx, dword [ref_004990dc]  ; mov ecx, dword [0x4990dc]
test ecx, ecx
je short loc_0041cff9  ; je 0x41cff9
lea ebx, [ecx - 1]
mov dword [ref_004990dc], ebx  ; mov dword [0x4990dc], ebx
test ebx, ebx
jne short loc_0041cff9  ; jne 0x41cff9
or byte [ref_004990dc], 0x80  ; or byte [0x4990dc], 0x80

loc_0041cff9:
xor ebx, ebx
jmp short loc_0041d003  ; jmp 0x41d003

loc_0041cffd:
inc ebx
cmp ebx, 0xc
jge short loc_0041d066  ; jge 0x41d066

loc_0041d003:
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 2
mov ch, byte [eax + (_stocks_on_map + 6)]  ; mov ch, byte [eax + 0x496986]
test ch, ch
je short loc_0041d021  ; je 0x41d021
mov dl, ch
dec dl
mov byte [eax + (_stocks_on_map + 6)], dl  ; mov byte [eax + 0x496986], dl

loc_0041d021:
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 2
mov dh, byte [eax + (_stocks_on_map + 7)]  ; mov dh, byte [eax + 0x496987]
test dh, dh
je short loc_0041cffd  ; je 0x41cffd
test dh, 0xf0
je short loc_0041d045  ; je 0x41d045
mov ch, dh
sub ch, 0x10
mov byte [eax + (_stocks_on_map + 7)], ch  ; mov byte [eax + 0x496987], ch

loc_0041d045:
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 2
mov dl, byte [eax + (_stocks_on_map + 7)]  ; mov dl, byte [eax + 0x496987]
test dl, 0xf
je short loc_0041cffd  ; je 0x41cffd
mov dh, dl
dec dh
mov byte [eax + (_stocks_on_map + 7)], dh  ; mov byte [eax + 0x496987], dh
jmp short loc_0041cffd  ; jmp 0x41cffd

loc_0041d066:
call dword [cs:__imp__GetTickCount@0]  ; ucall: call dword cs:[0x4623cc]
push eax
call _libc_srand  ; call 0x456f50
add esp, 4
call fcn_004291d6  ; call 0x4291d6
call fcn_00452444  ; call 0x452444
mov eax, dword [(_global_rich4_cfg + 8)]  ; mov eax, dword [0x497160]
and eax, 0xff
cmp eax, 0xf
jne short loc_0041d099  ; jne 0x41d099
call fcn_0042ba97  ; call 0x42ba97
call _rich4_ui_letou_kaijiang_entry  ; call 0x431712

loc_0041d099:
cmp edi, 1
jne short loc_0041d0ff  ; jne 0x41d0ff
call fcn_00439bfa  ; call 0x439bfa
xor ebx, ebx
mov bx, word [(_rich4_objects_info + 290)]  ; mov bx, word [0x496e2a]
push 0xd
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 0
push 0
push ebx
call _rich4_find_random_unoccupied_distant_node  ; call 0x40aa6c
add esp, 4
push eax
push 0xd
call _rich4_place_object  ; call 0x40e033
add esp, 0x10
xor ebx, ebx
mov bx, word [(_rich4_objects_info + 314)]  ; mov bx, word [0x496e42]
push 0xe
call _rich4_remove_object  ; call 0x40e14d
add esp, 4
push 0
push 0
push ebx
call _rich4_find_random_unoccupied_distant_node  ; call 0x40aa6c
add esp, 4
push eax
push 0xe
call _rich4_place_object  ; call 0x40e033
add esp, 0x10
add dword [ref_00499084], edi  ; add dword [0x499084], edi

loc_0041d0ff:
mov ebx, 1
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]

loc_0041d109:
add eax, 0x34
cmp ebx, dword [_rich4_num_lands]  ; cmp ebx, dword [0x498e98]
jg short loc_0041d14b  ; jg 0x41d14b
mov cl, byte [eax + 0x17]
test cl, 0xf0
je short loc_0041d12d  ; je 0x41d12d
mov ch, cl
sub ch, 0x10
mov byte [eax + 0x17], ch
test ch, 0xf0
jne short loc_0041d12d  ; jne 0x41d12d
mov byte [eax + 0x17], 0

loc_0041d12d:
mov edx, dword [eax + 0x30]
cmp edx, dword [(_global_rich4_cfg + 8)]  ; cmp edx, dword [0x497160]
jne short loc_0041d148  ; jne 0x41d148
mov byte [eax + 0x19], 0
mov dword [eax + 0x30], 0
mov esi, 1

loc_0041d148:
inc ebx
jmp short loc_0041d109  ; jmp 0x41d109

loc_0041d14b:
mov ebx, 1
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]

loc_0041d155:
add eax, 0x38
cmp ebx, dword [_rich4_num_facilities]  ; cmp ebx, dword [0x498e8c]
jg short loc_0041d197  ; jg 0x41d197
mov dh, byte [eax + 0x1c]
test dh, 0xf0
je short loc_0041d179  ; je 0x41d179
mov cl, dh
sub cl, 0x10
mov byte [eax + 0x1c], cl
test cl, 0xf0
jne short loc_0041d179  ; jne 0x41d179
mov byte [eax + 0x1c], 0

loc_0041d179:
mov edx, dword [eax + 0x34]
cmp edx, dword [(_global_rich4_cfg + 8)]  ; cmp edx, dword [0x497160]
jne short loc_0041d194  ; jne 0x41d194
mov byte [eax + 0x19], 0
mov dword [eax + 0x34], 0
mov esi, 1

loc_0041d194:
inc ebx
jmp short loc_0041d155  ; jmp 0x41d155

loc_0041d197:
test esi, esi
je short loc_0041d1a5  ; je 0x41d1a5
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4

loc_0041d1a5:
pop edi
pop esi
pop ebx
ret

fcn_0041d1a9:
push ebx
push esi
push edi
push ebp
sub esp, 0x80
mov ebp, dword [esp + 0x94]
mov ebx, dword [esp + 0x98]
xor edi, edi
imul esi, ebp, 0x68
cmp byte [esi + (_rich4_all_players_state + 55)], 0  ; cmp byte [esi + 0x496b9f], 0
jne near loc_0041d2bb  ; jne 0x41d2bb
cmp byte [esi + (_rich4_all_players_state + 21)], 0  ; cmp byte [esi + 0x496b7d], 0
je near loc_0041d2bb  ; je 0x41d2bb
cmp dword [ebx + 0x30], 0
je near loc_0041d2bb  ; je 0x41d2bb
mov ecx, 0x2710
mov eax, dword [ebx + 0x24]
mov edx, eax
sar edx, 0x1f
idiv ecx
mov ecx, eax
mov eax, dword [esi + (_rich4_all_players_state + 28)]  ; mov eax, dword [esi + 0x496b84]
mov edx, eax
sar edx, 0x1f
idiv ecx
mov esi, eax
cmp eax, 0x3e8
jle short loc_0041d216  ; jle 0x41d216
mov esi, 0x3e8

loc_0041d216:
mov eax, dword [ebx + 0x30]
cmp esi, eax
jle short loc_0041d21f  ; jle 0x41d21f
mov esi, eax

loc_0041d21f:
test esi, esi
je near loc_0041d2bb  ; je 0x41d2bb
imul eax, ebp, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne short loc_0041d267  ; jne 0x41d267
push ecx
lea eax, [ebx + 4]
push eax
push ref_00463b75  ; push 0x463b75
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
mov eax, esp
push eax
call fcn_00440ba8  ; call 0x440ba8
add esp, 4
cmp eax, 1
jne short loc_0041d273  ; jne 0x41d273
push esi
call fcn_00453544  ; call 0x453544
add esp, 4
mov edi, eax
jmp short loc_0041d273  ; jmp 0x41d273

loc_0041d267:
push esi
push ecx
call fcn_0041d839  ; call 0x41d839
mov edi, eax
add esp, 8

loc_0041d273:
test edi, edi
je short loc_0041d2bb  ; je 0x41d2bb
push 0
push edi
xor eax, eax
mov al, byte [ebx + 0x19]
push eax
push ebp
call _rich4_buy_stock  ; call 0x428d2a
add esp, 0x10
cmp eax, 1
jne short loc_0041d2b2  ; jne 0x41d2b2
cmp byte [ebx + 0x1a], 0xc
jne short loc_0041d2a0  ; jne 0x41d2a0
push 0x5dc
push ref_00463b94  ; push 0x463b94
jmp short loc_0041d2aa  ; jmp 0x41d2aa

loc_0041d2a0:
push 0x5dc
push ref_00463ba5  ; push 0x463ba5

loc_0041d2aa:
call fcn_00440cac  ; call 0x440cac
add esp, 8

loc_0041d2b2:
push ebp
call _rich4_update_player_info_window  ; call 0x41d433
add esp, 4

loc_0041d2bb:
add esp, 0x80
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041d2c6:
push ebx
push esi
push edi
push ebp
mov esi, dword [esp + 0x14]
mov edi, dword [esp + 0x18]
mov ebx, dword [esp + 0x1c]
cmp esi, 0x64
jle short loc_0041d2f3  ; jle 0x41d2f3
lea edx, [esi - 0x64]
imul edx, edx, 0x34
mov eax, dword [_rich4_on_map_commercial_ptr]  ; mov eax, dword [0x498e7c]
sub dword [edx + eax + 0x28], ebx
sub dword [edx + eax + 0x2c], ebx
jmp near loc_0041d387  ; jmp 0x41d387

loc_0041d2f3:
imul eax, esi, 0x68
test byte [esp + 0x20], 4
je short loc_0041d33d  ; je 0x41d33d
mov ecx, dword [eax + (_rich4_all_players_state + 32)]  ; mov ecx, dword [eax + 0x496b88]
sub ecx, ebx
mov dword [eax + (_rich4_all_players_state + 32)], ecx  ; mov dword [eax + 0x496b88], ecx
test ecx, ecx
jge near loc_0041d37e  ; jge 0x41d37e
mov edx, ecx
add dword [eax + (_rich4_all_players_state + 28)], edx  ; add dword [eax + 0x496b84], edx
xor ebp, ebp
mov dword [eax + (_rich4_all_players_state + 32)], ebp  ; mov dword [eax + 0x496b88], ebp
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
test edx, edx
jge short loc_0041d37e  ; jge 0x41d37e
add ebx, edx
mov dword [eax + (_rich4_all_players_state + 28)], ebp  ; mov dword [eax + 0x496b84], ebp
test ebx, ebx
jge short loc_0041d375  ; jge 0x41d375
xor ebx, ebx
jmp short loc_0041d375  ; jmp 0x41d375

loc_0041d33d:
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
sub edx, ebx
mov dword [eax + (_rich4_all_players_state + 28)], edx  ; mov dword [eax + 0x496b84], edx
test edx, edx
jge short loc_0041d37e  ; jge 0x41d37e
add dword [eax + (_rich4_all_players_state + 32)], edx  ; add dword [eax + 0x496b88], edx
xor edx, edx
mov dword [eax + (_rich4_all_players_state + 28)], edx  ; mov dword [eax + 0x496b84], edx
mov ecx, dword [eax + (_rich4_all_players_state + 32)]  ; mov ecx, dword [eax + 0x496b88]
test ecx, ecx
jge short loc_0041d37e  ; jge 0x41d37e
add ebx, ecx
mov dword [eax + (_rich4_all_players_state + 32)], edx  ; mov dword [eax + 0x496b88], edx
test ebx, ebx
jge short loc_0041d375  ; jge 0x41d375
xor ebx, ebx

loc_0041d375:
push esi
call _rich4_player_bankrupt  ; call 0x40cd87
add esp, 4

loc_0041d37e:
imul eax, esi, 0x68
add dword [eax + (_rich4_all_players_state + 92)], ebx  ; add dword [eax + 0x496bc4], ebx

loc_0041d387:
cmp edi, 0xffffffff
jne short loc_0041d394  ; jne 0x41d394
add dword [ref_00499080], ebx  ; add dword [0x499080], ebx
jmp short loc_0041d3d0  ; jmp 0x41d3d0

loc_0041d394:
cmp edi, 0x64
jle short loc_0041d3af  ; jle 0x41d3af
sub edi, 0x64
imul eax, edi, 0x34
mov edx, dword [_rich4_on_map_commercial_ptr]  ; mov edx, dword [0x498e7c]
add dword [edx + eax + 0x28], ebx
add dword [edx + eax + 0x2c], ebx
jmp short loc_0041d3d0  ; jmp 0x41d3d0

loc_0041d3af:
imul eax, edi, 0x68
test byte [esp + 0x20], 1
je short loc_0041d3c1  ; je 0x41d3c1
add dword [eax + (_rich4_all_players_state + 28)], ebx  ; add dword [eax + 0x496b84], ebx
jmp short loc_0041d3c7  ; jmp 0x41d3c7

loc_0041d3c1:
add dword [eax + (_rich4_all_players_state + 32)], ebx  ; add dword [eax + 0x496b88], ebx

loc_0041d3c7:
imul eax, edi, 0x68
add dword [eax + (_rich4_all_players_state + 96)], ebx  ; add dword [eax + 0x496bc8], ebx

loc_0041d3d0:
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp esi, ebp
jne short loc_0041d3ef  ; jne 0x41d3ef
imul eax, ebp, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041d3ef  ; je 0x41d3ef
push ebp
call _rich4_update_player_info_window  ; call 0x41d433
add esp, 4

loc_0041d3ef:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041d3f4:
push ebp
mov edx, dword [esp + 8]
mov ecx, dword [esp + 0xc]
imul eax, edx, 0x68
test byte [esp + 0x10], 1
je short loc_0041d40f  ; je 0x41d40f
add dword [eax + (_rich4_all_players_state + 28)], ecx  ; add dword [eax + 0x496b84], ecx
jmp short loc_0041d415  ; jmp 0x41d415

loc_0041d40f:
add dword [eax + (_rich4_all_players_state + 32)], ecx  ; add dword [eax + 0x496b88], ecx

loc_0041d415:
imul eax, edx, 0x68
add dword [eax + (_rich4_all_players_state + 96)], ecx  ; add dword [eax + 0x496bc8], ecx
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp edx, ebp
jne short loc_0041d431  ; jne 0x41d431
push ebp
call _rich4_update_player_info_window  ; call 0x41d433
add esp, 4

loc_0041d431:
pop ebp
ret

_rich4_update_player_info_window:
push ebx
mov edx, dword [esp + 8]
cmp edx, 7
jg short loc_0041d474  ; jg 0x41d474
cmp dword [_callbackSize], 1  ; cmp dword [0x46cad8], 1
jg short loc_0041d474  ; jg 0x41d474
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
mov dword [_rich4_current_player], edx  ; mov dword [0x49910c], edx
cmp byte [(_global_rich4_cfg + 5)], 2  ; cmp byte [0x49715d], 2
je short loc_0041d464  ; je 0x41d464
push 1
call fcn_00415f69  ; call 0x415f69
jmp short loc_0041d46b  ; jmp 0x41d46b

loc_0041d464:
push 1
call fcn_004166f8  ; call 0x4166f8

loc_0041d46b:
add esp, 4
mov dword [_rich4_current_player], ebx  ; mov dword [0x49910c], ebx

loc_0041d474:
pop ebx
ret

fcn_0041d476:
push ebp
test byte [esp + 0x10], 1
je short loc_0041d496  ; je 0x41d496
push 0
push 0xffffffffffffffff
call fcn_0040829d  ; call 0x40829d
add esp, 8
or byte [ref_00475110], 2  ; or byte [0x475110], 2
jmp near loc_0041d516  ; jmp 0x41d516

loc_0041d496:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
cmp edx, 4
jge short loc_0041d4b6  ; jge 0x41d4b6
imul eax, edx, 0x68
xor edx, edx
mov dx, word [eax + (_rich4_all_players_state + 8)]  ; mov dx, word [eax + 0x496b70]
mov ax, word [eax + (_rich4_all_players_state + 10)]  ; mov ax, word [eax + 0x496b72]
jmp short loc_0041d4cb  ; jmp 0x41d4cb

loc_0041d4b6:
mov eax, edx
shl eax, 4
xor edx, edx
mov dx, word [eax + (_rich4_all_special_players_state - 64)]  ; mov dx, word [eax + 0x498de8]
mov ax, word [eax + (_rich4_all_special_players_state - (64 - 2))]  ; mov ax, word [eax + 0x498dea]

loc_0041d4cb:
and eax, 0xffff
cmp edx, dword [esp + 8]
jne short loc_0041d4e6  ; jne 0x41d4e6
cmp eax, dword [esp + 0xc]
jne short loc_0041d4e6  ; jne 0x41d4e6
xor ebp, ebp
mov dword [ref_0048be18], ebp  ; mov dword [0x48be18], ebp
jmp short loc_0041d502  ; jmp 0x41d502

loc_0041d4e6:
mov dword [ref_0048be18], 1  ; mov dword [0x48be18], 1
mov eax, dword [esp + 8]
mov dword [ref_0048be1c], eax  ; mov dword [0x48be1c], eax
mov eax, dword [esp + 0xc]
mov dword [ref_0048be20], eax  ; mov dword [0x48be20], eax

loc_0041d502:
push 0
call fcn_00416e6d  ; call 0x416e6d
add esp, 4
push 0
call fcn_00415e70  ; call 0x415e70
add esp, 4

loc_0041d516:
test byte [esp + 0x10], 2
je short loc_0041d527  ; je 0x41d527
push 0
call fcn_00415d31  ; call 0x415d31
add esp, 4

loc_0041d527:
test byte [esp + 0x10], 4
je short loc_0041d53f  ; je 0x41d53f
push 0
push 0
push 0xf
mov eax, dword [_gWindowHandle]  ; mov eax, dword [0x48a0d4]
push eax
call fcn_00417e26  ; call 0x417e26

loc_0041d53f:
call fcn_004192f7  ; call 0x4192f7
pop ebp
ret

fcn_0041d546:
xor edx, edx
mov dword [ref_0048be18], edx  ; mov dword [0x48be18], edx
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
ret

fcn_0041d559:
push ebx
push esi
push ebp
sub esp, 0x94
mov esi, dword [esp + 0xac]
mov ebx, 1
imul eax, dword [esp + 0xa4], 0x68
mov ecx, dword [eax + _rich4_all_players_state]  ; mov ecx, dword [eax + 0x496b68]
push ecx
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
mov ah, byte [esp + 0xa8]
test ah, 0xf0
je short loc_0041d5b3  ; je 0x41d5b3
test ah, 0xf
je short loc_0041d5b3  ; je 0x41d5b3
push esi
push ref_00463bb8  ; push 0x463bb8

loc_0041d5a4:
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
jmp short loc_0041d5e9  ; jmp 0x41d5e9

loc_0041d5b3:
imul eax, dword [esp + 0xa4], 0x68
xor ecx, ecx
mov cl, byte [eax + (_rich4_all_players_state + 65)]  ; mov cl, byte [eax + 0x496ba9]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp ecx, edx
jne short loc_0041d5f0  ; jne 0x41d5f0
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463bcd  ; push 0x463bcd

loc_0041d5dc:
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10

loc_0041d5e9:
xor ebx, ebx
jmp near loc_0041d6a4  ; jmp 0x41d6a4

loc_0041d5f0:
cmp byte [eax + (_rich4_all_players_state + 63)], 0xf  ; cmp byte [eax + 0x496ba7], 0xf
jne short loc_0041d601  ; jne 0x41d601
push esi
push ref_00463be2  ; push 0x463be2
jmp short loc_0041d5a4  ; jmp 0x41d5a4

loc_0041d601:
cmp byte [eax + (_rich4_all_players_state + 50)], 0  ; cmp byte [eax + 0x496b9a], 0
je short loc_0041d61a  ; je 0x41d61a
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463bf5  ; push 0x463bf5
jmp short loc_0041d5dc  ; jmp 0x41d5dc

loc_0041d61a:
cmp byte [eax + (_rich4_all_players_state + 51)], 0  ; cmp byte [eax + 0x496b9b], 0
je short loc_0041d633  ; je 0x41d633
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463c08  ; push 0x463c08
jmp short loc_0041d5dc  ; jmp 0x41d5dc

loc_0041d633:
cmp byte [eax + (_rich4_all_players_state + 52)], 0  ; cmp byte [eax + 0x496b9c], 0
je short loc_0041d64c  ; je 0x41d64c
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463c1b  ; push 0x463c1b
jmp short loc_0041d5dc  ; jmp 0x41d5dc

loc_0041d64c:
cmp byte [eax + (_rich4_all_players_state + 53)], 0  ; cmp byte [eax + 0x496b9d], 0
je short loc_0041d668  ; je 0x41d668
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463c2e  ; push 0x463c2e
jmp near loc_0041d5dc  ; jmp 0x41d5dc

loc_0041d668:
cmp byte [eax + (_rich4_all_players_state + 54)], 0  ; cmp byte [eax + 0x496b9e], 0
je short loc_0041d684  ; je 0x41d684
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463c41  ; push 0x463c41
jmp near loc_0041d5dc  ; jmp 0x41d5dc

loc_0041d684:
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
je short loc_0041d6a0  ; je 0x41d6a0
push esi
lea eax, [esp + 0x84]
push eax
push ref_00463c54  ; push 0x463c54
jmp near loc_0041d5dc  ; jmp 0x41d5dc

loc_0041d6a0:
test ebx, ebx
jne short loc_0041d6e5  ; jne 0x41d6e5

loc_0041d6a4:
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
imul eax, ebp, 0x68
movzx esi, byte [eax + (_rich4_all_players_state + 19)]  ; movzx esi, byte [eax + 0x496b7b]
mov eax, esi
shl eax, 2
sub eax, esi
shl eax, 2
mov esi, eax
mov edx, dword [esi + eax*8 + (_rich4_event_strings + 52)]  ; mov edx, dword [esi + eax*8 + 0x48087e]
push edx
push 3
push ebp
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0041d6e5:
mov eax, ebx
add esp, 0x94
pop ebp
pop esi
pop ebx
ret

ref_0041d6f1:  ; may contain a jump table
dd loc_0041d741
dd loc_0041d758
dd loc_0041d79e
dd loc_0041d79e
dd loc_0041d76f
dd loc_0041d788

fcn_0041d709:
push ebx
push esi
sub esp, 0x80
mov edx, dword [esp + 0x90]
mov esi, dword [esp + 0x94]
mov ebx, esi
imul eax, dword [esp + 0x8c], 0x68
mov al, byte [eax + (_rich4_all_players_state + 63)]  ; mov al, byte [eax + 0x496ba7]
dec al
cmp al, 5
ja short loc_0041d79e  ; ja 0x41d79e
and eax, 0xff
jmp dword [eax*4 + ref_0041d6f1]  ; ujmp: jmp dword [eax*4 + 0x41d6f1]

loc_0041d741:
push edx
push ref_00463c67  ; push 0x463c67
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
sar ebx, 1
jmp short loc_0041d79e  ; jmp 0x41d79e

loc_0041d758:
push edx
push ref_00463c80  ; push 0x463c80
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
xor ebx, esi
jmp short loc_0041d79e  ; jmp 0x41d79e

loc_0041d76f:
push edx
push ref_00463c95  ; push 0x463c95
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
sar ebx, 1
add ebx, esi
jmp short loc_0041d79e  ; jmp 0x41d79e

loc_0041d788:
push edx
push ref_00463cae  ; push 0x463cae
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
lea ebx, [esi + esi]

loc_0041d79e:
cmp ebx, esi
je short loc_0041d7c9  ; je 0x41d7c9
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
test ebx, ebx
jne short loc_0041d7c9  ; jne 0x41d7c9
push esi
mov esi, dword [esp + 0x90]
push esi
call fcn_0044f567  ; call 0x44f567
add esp, 8

loc_0041d7c9:
mov eax, ebx
add esp, 0x80
pop esi
pop ebx
ret

fcn_0041d7d4:
push esi
sub esp, 4
xor ecx, ecx
fild dword [_rich4_game_initial_fund]  ; fild dword [0x49908c]
fmul qword [ref_00463cc8]  ; fmul qword [0x463cc8]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp]
cmp dword [esp], 0x1b58
jle short loc_0041d7fe  ; jle 0x41d7fe
mov dword [esp], 0x1b58

loc_0041d7fe:
mov eax, dword [esp]
mov esi, dword [_rich4_price_index]  ; mov esi, dword [0x4990e8]
imul eax, esi
mov dword [esp], eax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
mov eax, dword [esp + 0xc]
sub edx, eax
mov eax, edx
cmp eax, dword [esp]
jle short loc_0041d832  ; jle 0x41d832
mov ecx, 1

loc_0041d832:
mov eax, ecx
add esp, 4
pop esi
ret

fcn_0041d839:
push edi
push ebp
sub esp, 4
xor ecx, ecx
fild dword [_rich4_game_initial_fund]  ; fild dword [0x49908c]
fmul qword [ref_00463cd0]  ; fmul qword [0x463cd0]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp]
mov eax, dword [esp]
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
imul eax, edx
mov dword [esp], eax
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
mov edx, dword [edx + (_rich4_all_players_state + 28)]  ; mov edx, dword [edx + 0x496b84]
sub edx, eax
test edx, edx
jle short loc_0041d896  ; jle 0x41d896
mov eax, dword [esp + 0x10]
mov edi, dword [esp + 0x14]
imul eax, edi
cmp edx, eax
jle short loc_0041d889  ; jle 0x41d889
mov ecx, edi
jmp short loc_0041d896  ; jmp 0x41d896

loc_0041d889:
mov eax, edx
sar edx, 0x1f
mov ebp, dword [esp + 0x10]
idiv ebp
mov ecx, eax

loc_0041d896:
mov eax, ecx
add esp, 4
pop ebp
pop edi
ret

fcn_0041d89e:
push ebx
push esi
push edi
push ebp
xor ebp, ebp
cmp dword [ref_0049911c], 0  ; cmp dword [0x49911c], 0
jne short loc_0041d8bd  ; jne 0x41d8bd
cmp dword [ref_00499108], 0  ; cmp dword [0x499108], 0
jne short loc_0041d8bd  ; jne 0x41d8bd
xor eax, eax
pop ebp
pop edi
pop esi
pop ebx
ret

loc_0041d8bd:
xor ebx, ebx
xor edi, edi

loc_0041d8c1:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_0041d8e9  ; jge 0x41d8e9
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041d8e6  ; je 0x41d8e6
push ebx
call _rich4_calculate_player_wealth  ; call 0x4239b9
add esp, 4
cmp edi, eax
jge short loc_0041d8e6  ; jge 0x41d8e6
mov edi, eax
mov esi, ebx

loc_0041d8e6:
inc ebx
jmp short loc_0041d8c1  ; jmp 0x41d8c1

loc_0041d8e9:
test edi, edi
je short loc_0041d8ff  ; je 0x41d8ff
mov edx, dword [ref_0049911c]  ; mov edx, dword [0x49911c]
test edx, edx
je short loc_0041d8ff  ; je 0x41d8ff
cmp edx, dword [ref_004990e4]  ; cmp edx, dword [0x4990e4]
jle short loc_0041d915  ; jle 0x41d915

loc_0041d8ff:
mov ebx, dword [ref_00499108]  ; mov ebx, dword [0x499108]
test ebx, ebx
je near loc_0041da5a  ; je 0x41da5a
cmp edi, ebx
jl near loc_0041da5a  ; jl 0x41da5a

loc_0041d915:
mov dword [_rich4_current_player], esi  ; mov dword [0x49910c], esi
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
imul eax, esi, 0x68
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov edx, dword [ebx + eax*8 + (_rich4_event_strings + 96)]  ; mov edx, dword [ebx + eax*8 + 0x4808aa]
push edx
push 3
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
xor ebx, ebx

loc_0041d951:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_0041d96b  ; jge 0x41d96b
cmp ebx, esi
je short loc_0041d968  ; je 0x41d968
imul eax, ebx, 0x68
xor ch, ch
mov byte [eax + (_rich4_all_players_state + 21)], ch  ; mov byte [eax + 0x496b7d], ch

loc_0041d968:
inc ebx
jmp short loc_0041d951  ; jmp 0x41d951

loc_0041d96b:
imul eax, esi, 0x68
cmp dword [_num_human_players], 1  ; cmp dword [0x499104], 1
jne near loc_0041da3c  ; jne 0x41da3c
test byte [eax + (_rich4_all_players_state + 21)], 1  ; test byte [eax + 0x496b7d], 1
je short loc_0041d9b9  ; je 0x41d9b9
xor ebx, ebx
mov dl, 2
mov ebp, dword [_rich4_num_players]  ; mov ebp, dword [0x499114]

loc_0041d98e:
cmp ebx, ebp
jge short loc_0041d9ad  ; jge 0x41d9ad
cmp ebx, esi
je short loc_0041d9aa  ; je 0x41d9aa
imul eax, ebx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
mov byte [eax + ref_004990f4], dl  ; mov byte [eax + 0x4990f4], dl

loc_0041d9aa:
inc ebx
jmp short loc_0041d98e  ; jmp 0x41d98e

loc_0041d9ad:
mov byte [ref_0046caf8], 2  ; mov byte [0x46caf8], 2
jmp near loc_0041da55  ; jmp 0x41da55

loc_0041d9b9:
xor esi, esi
mov dword [_rich4_current_player], esi  ; mov dword [0x49910c], esi
xor ebx, ebx
mov bx, word [(_rich4_all_players_state + 12)]  ; mov bx, word [0x496b74]
mov eax, ebx
shl eax, 2
add ebx, eax
shl ebx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, ebx
mov bx, word [eax]
mov word [(_rich4_all_players_state + 8)], bx  ; mov word [0x496b70], bx
mov ax, word [eax + 2]
mov word [(_rich4_all_players_state + 10)], ax  ; mov word [0x496b72], ax
mov eax, _rich4_all_players_state  ; mov eax, 0x496b68
add eax, 0x32
mov ebx, eax
sub ebx, _rich4_all_players_state  ; sub ebx, 0x496b68
mov esi, 0x68
sub esi, ebx
push esi
push 0
push eax
call _memset  ; call 0x456f60
add esp, 0xc
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
push 1
call fcn_00407842  ; call 0x407842
add esp, 4
mov byte [ref_0046caf8], al  ; mov byte [0x46caf8], al
jmp short loc_0041da55  ; jmp 0x41da55

loc_0041da3c:
test byte [eax + (_rich4_all_players_state + 21)], 1  ; test byte [eax + 0x496b7d], 1
je short loc_0041da4e  ; je 0x41da4e
mov byte [ref_0046caf8], 3  ; mov byte [0x46caf8], 3
jmp short loc_0041da55  ; jmp 0x41da55

loc_0041da4e:
mov byte [ref_0046caf8], 1  ; mov byte [0x46caf8], 1

loc_0041da55:
mov ebp, 1

loc_0041da5a:
mov eax, ebp
pop ebp
pop edi
pop esi
pop ebx
ret

section .data

ref_0046396d:
db 0x25
db 0x73
db 0x0a
dd 0xafc9a40a
dd 0xa54fb6c5
dd 0x64253ace
dd 0x0a0ab8a4
dd 0x5fa74fac
dd 0xc5afc9a4
db 0xa1
db 0x48
db 0x00

ref_0046398b:
db 0xb1
dd 0xb2baaa7a
dd 0xa4f7aa7b
dd 0xa1aca8a3
db 0x49
db 0x00

ref_0046399a:
db 0x25
db 0x73
dd 0xddc40a0a
dd 0x50bb7325
dd 0x0a0a7325
dd 0x49a5d0bd
dd 0xb8a46425
db 0x25
db 0x73
db 0x00

ref_004639b3:
db 0x25
dd 0xa60a0a73
dd 0xc461a6b9
dd 0x0a7325dd
dd 0xa5d0bd0a
dd 0xa4642549
dd 0x007325b8

ref_004639cc:
dd 0xabafbaa6
dd 0x46c6e3c5
dd 0xd1a50a0a
dd 0xdfbd7325
dd 0x732576c0
db 0x00

ref_004639e1:
db 0x25
db 0x73
db 0x0a
dd 0xa54fb60a
dd 0x64253ace
dd 0x0a0ab8a4
dd 0x5fa74fac
dd 0x55a452b6
dd 0x61a6b9a6
db 0xa1
db 0x48
db 0x00

ref_004639ff:
db 0xa5
dd 0x25a7aef0
dd 0x0ad1a464
dd 0xa54fb60a
dd 0xa46425ce
dd 0x0049a1b8

ref_00463a14:
dd 0xbaaa7ab1
dd 0x4fb6f8ae
dd 0x42c3f7aa
dd 0x0a0ab0ac
dd 0x25786425
dd 0x3dbfad64
dd 0xb8a46425
db 0x00

ref_00463a31:
db 0x25
db 0x73
db 0x0a
dd 0xa8b3b80a
dd 0x25f8aac6
dd 0xbd0a0a73
dd 0x2549a5d0
dd 0x25b8a464
db 0x73
db 0x00

ref_00463a4a:
db 0x25
db 0x73
dd 0xd0bd0a0a
dd 0xdcbeefbf
dd 0x5ba5fdb1
dd 0x61a65cbb
db 0xc2
db 0x49
db 0x00

ref_00463a5f:
db 0xa4
dd 0xa5cea5a3
dd 0xa1eab058
db 0x49
db 0x00

ref_00463a6a:
db 0x25
db 0x73
dd 0xb0c00a0a
dd 0x732544a5
dd 0xd0bd0a0a
dd 0x642549a5
dd 0x7325b8a4
db 0x00

ref_00463a81:
db 0xb1
db 0x6f
db 0xc2
dd 0xa2e9a849
dd 0xc2afa2b4
db 0x49
db 0x00

ref_00463a8e:
db 0xb1
db 0x6f
dd 0xe9a849c2
dd 0xafa2b2a2
db 0xc2
db 0x49
db 0x00

ref_00463a9b:
db 0xb1
dd 0xa849c26f
dd 0xa2b0a2e9
dd 0x0049c2af

ref_00463aa8:
dd 0xeca86fb1
dd 0x49a17325
db 0x00

ref_00463ab1:
db 0xac
db 0x49
db 0xb1
dd 0xa4b9b5cb
dd 0x25a2a45e
dd 0x00b8a464

ref_00463ac0:
dd 0xbdb070a4
dd 0x6fb1bdb0
dd 0x0a0a7325
dd 0x7325b9b5
db 0xa1
db 0x49
db 0x00

ref_00463ad3:
db 0xb1
dd 0xa2eca86f
dd 0xa2afa2b4
dd 0xa849c2af
dd 0x0049a1e9

ref_00463ae4:
dd 0xfaa8bdb0
dd 0x0a0a7325
dd 0x49c26425
dd 0xe9a849c2
db 0xa1
db 0x49
db 0x00

ref_00463af7:
db 0xb9
dd 0x25faa8dc
dd 0xa1732573
db 0x49
db 0x00

ref_00463b02:
db 0xb1
db 0x6a
dd 0x6db773b5
dd 0xc8bbdcb9
dd 0x0a0ae6a6
dd 0xdab46fb1
dd 0xb8a46425
dd 0xb9b50a0a
dd 0x49a17325
db 0x00

ref_00463b21:
db 0xb0
db 0xc7
db 0xaf
dd 0x0a7325c1
dd 0xa464250a
dd 0xc54fabb8
dd 0xa14fb640
db 0x49
db 0x00

ref_00463b36:
db 0xa8
db 0xfa
dd 0x4cb9aba8
dd 0x4fb6f4b8
dd 0x64250a0a
dd 0x49a1b8a4
db 0x00

ref_00463b49:
db 0xa8
db 0xfa
db 0xa8
dd 0xbed5acab
dd 0x250a0a6c
dd 0xa1b8a464
dd 0x00000049
dd 0x00000000

ref_00463b60:
dd 0x9999999a
dd 0x3fc99999

ref_00463b68:
dd 0x7db67325
dd 0xb9a76fb5
dd 0x49a1a8a6
db 0x00

ref_00463b75:
db 0x25
db 0x73
db 0x0a
dd 0xaa43a80a
dd 0xbbe2b0d1
dd 0x0a6425f9
dd 0xa74fac0a
dd 0xc17bbb5f
dd 0xa5d1aaca
dd 0x0048a1f7

ref_00463b94:
dd 0xdfb3a5ae
dd 0xa8a67ab1
dd 0xb0c0b0ac
dd 0x49a144a5
db 0x00

ref_00463ba5:
db 0xae
db 0xa5
db 0xb3
dd 0xc07ab1df
dd 0xb86fb1f2
dd 0xc5e7c067
dd 0x0049a176

ref_00463bb8:
dd 0xceabd0a9
dd 0xcaab64ac
dd 0x0a0aa4a4
dd 0xaca64ba7
dd 0x49a17325
db 0x00

ref_00463bcd:
db 0xbb
db 0x50
db 0x25
dd 0xb750a673
dd 0x0aa4a4f9
dd 0xa64ba70a
dd 0xa17325ac
db 0x49
db 0x00

ref_00463be2:
db 0xa6
db 0xba
dd 0xe3c5abaf
dd 0x0a0a46c6
dd 0xaca64ba7
dd 0x49a17325
db 0x00

ref_00463bf5:
db 0x25
db 0x73
db 0xa6
dd 0xa44ab1ed
dd 0xa70a0aa4
dd 0x25aca64b
dd 0x0049a173

ref_00463c08:
dd 0xf8ae7325
dd 0xa4a4a2a5
dd 0x4ba70a0a
dd 0x7325aca6
db 0xa1
db 0x49
db 0x00

ref_00463c1b:
db 0x25
dd 0xa8a4a773
dd 0x0aa4a463
dd 0xa64ba70a
dd 0xa17325ac
db 0x49
db 0x00

ref_00463c2e:
db 0x25
db 0x73
dd 0x7cb0eda6
dd 0x0a0aa4a4
dd 0xaca64ba7
dd 0x49a17325
db 0x00

ref_00463c41:
db 0x25
db 0x73
db 0xa5
dd 0xa476af56
dd 0xa70a0aa4
dd 0x25aca64b
dd 0x0049a173

ref_00463c54:
dd 0xdab97325
dd 0xa4a443b9
dd 0x4ba70a0a
dd 0x7325aca6
db 0xa1
db 0x49
db 0x00

ref_00463c67:
db 0xa4
dd 0xaf5db070
dd 0xc6e3c5ab
dd 0x250a0a46
dd 0xa7eeb473
dd 0xa540a44b
dd 0x0049a162

ref_00463c80:
dd 0x5db06aa4
dd 0xe3c5abaf
dd 0x0a0a46c6
dd 0x49a54ba7
dd 0x49a17325
db 0x00

ref_00463c95:
db 0xa4
db 0x70
db 0xbd
dd 0xc5abaf61
dd 0x0a46c6e3
dd 0xa573250a
dd 0x3549a55b
dd 0xa148a230
db 0x49
db 0x00

ref_00463cae:
db 0xa4
db 0x6a
dd 0xabaf61bd
dd 0x46c6e3c5
dd 0x5ba50a0a
dd 0x49a5bfad
dd 0x49a17325
dd 0x00000000

ref_00463cc8:
dd 0x9999999a
dd 0x3fa99999

ref_00463cd0:
dd 0x33333333
dd 0x3fd33333
