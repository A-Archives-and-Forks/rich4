extern _rich4_all_players_state
extern _rich4_all_special_players_state
extern _rich4_current_player
extern _game_stocks
extern _global_rich4_cfg
extern _memcpy
extern _rich4_num_players
extern _rich4_player_cards
extern _rich4_player_stocks
extern _rich4_player_tool_amount
extern _rich4_price_index
extern _rich4_remain_card_amount
extern _rich4_remain_tool_amount
extern _rich4_save_state
extern _stocks_on_map
extern _rich4_update_player_sprite
extern fcn_0040c03b
extern ref_0047493c
extern _rich4_character_profiles
extern ref_004967e0
extern ref_00496b30
extern ref_00496b38
extern ref_00496b60
extern _rich4_objects_info
extern ref_00497328
extern ref_00498e94
extern ref_00499078
extern ref_0049907c
extern ref_00499080
extern ref_00499084
extern ref_00499090
extern ref_004990b4
extern ref_004990b8
extern ref_004990dc
extern ref_004990e0
extern ref_004990e4
extern ref_004990ec
extern ref_00499100
extern ref_004991b6
extern ref_004991b8

global _rich4_store_current_state
global _rich4_restore_last_state

section .text

_rich4_store_current_state:
push edi
push ebp
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
cmp edx, 4
jge near loc_00448541  ; jge 0x448541
jge short loc_004480ad  ; jge 0x4480ad
imul eax, edx, 0x68
test byte [eax + (_rich4_all_players_state + 21)], 1  ; test byte [eax + 0x496b7d], 1
je near loc_00448541  ; je 0x448541

loc_004480ad:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
mov dword [eax + _rich4_save_state], 1  ; mov dword [eax + 0x48cb80], 1
mov edx, dword [(_global_rich4_cfg + 8)]  ; mov edx, dword [0x497160]
mov dword [eax + (_rich4_save_state + 4)], edx  ; mov dword [eax + 0x48cb84], edx
push 0x1a0
push _rich4_all_players_state  ; push 0x496b68
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 8
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x50
push _rich4_all_special_players_state  ; push 0x498e28
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x1a8
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x450
push _rich4_objects_info  ; push 0x496d08
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x1f8
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x3c
push _rich4_player_cards  ; push 0x499120
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x648
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x3c
push _rich4_player_tool_amount  ; push 0x49915c
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x684
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x1e
push _rich4_remain_card_amount  ; push 0x499198
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x6c0
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 8
push _rich4_remain_tool_amount  ; push 0x497320
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x6de
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
mov edx, dword [ref_00499100]  ; mov edx, dword [0x499100]
mov dword [eax + (_rich4_save_state + 1768)], edx  ; mov dword [eax + 0x48d268], edx
push 0x1b00
push ref_00497328  ; push 0x497328
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x6ec
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x180
push _rich4_player_stocks  ; push 0x4971a0
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x21ec
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x1b0
push _stocks_on_map  ; push 0x496980
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x236c
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x150
push ref_004967e0  ; push 0x4967e0
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x251c
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov dword [eax + (_rich4_save_state + 9836)], edx  ; mov dword [eax + 0x48f1ec], edx
mov edx, dword [ref_004990e4]  ; mov edx, dword [0x4990e4]
mov dword [eax + (_rich4_save_state + 9840)], edx  ; mov dword [eax + 0x48f1f0], edx
mov edx, dword [ref_00499084]  ; mov edx, dword [0x499084]
mov dword [eax + (_rich4_save_state + 9844)], edx  ; mov dword [eax + 0x48f1f4], edx
mov edx, dword [ref_004990dc]  ; mov edx, dword [0x4990dc]
mov dword [eax + (_rich4_save_state + 9848)], edx  ; mov dword [eax + 0x48f1f8], edx
mov edx, dword [ref_0049907c]  ; mov edx, dword [0x49907c]
mov dword [eax + (_rich4_save_state + 9852)], edx  ; mov dword [eax + 0x48f1fc], edx
mov edx, dword [ref_00499078]  ; mov edx, dword [0x499078]
mov dword [eax + (_rich4_save_state + 9856)], edx  ; mov dword [eax + 0x48f200], edx
mov edx, dword [ref_004990ec]  ; mov edx, dword [0x4990ec]
mov dword [eax + (_rich4_save_state + 9860)], edx  ; mov dword [eax + 0x48f204], edx
mov edx, dword [ref_00499080]  ; mov edx, dword [0x499080]
mov dword [eax + (_rich4_save_state + 9864)], edx  ; mov dword [eax + 0x48f208], edx
push 0x24
push ref_004990b8  ; push 0x4990b8
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x268c
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 8
push ref_00496b30  ; push 0x496b30
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26b0
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 8
push ref_00496b60  ; push 0x496b60
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26b8
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
mov edx, dword [ref_004990e0]  ; mov edx, dword [0x4990e0]
mov dword [eax + (_rich4_save_state + 9920)], edx  ; mov dword [eax + 0x48f240], edx
mov edx, dword [ref_004990b4]  ; mov edx, dword [0x4990b4]
mov dword [eax + (_rich4_save_state + 9924)], edx  ; mov dword [eax + 0x48f244], edx
push 0x24
push ref_00499090  ; push 0x499090
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26c8
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x25
push ref_00496b38  ; push 0x496b38
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26ec
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
mov edi, dword [ref_00498e94]  ; mov edi, dword [0x498e94]
push edi
mov ebp, dword [ref_0047493c]  ; mov ebp, dword [0x47493c]
push ebp
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_save_state + 10004)]  ; mov ecx, dword [edx + eax*8 + 0x48f294]
push ecx
call _memcpy  ; call 0x456de8
add esp, 0xc

loc_00448541:
pop ebp
pop edi
ret

_rich4_restore_last_state:
push ebx
push esi
push edi
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
cmp dword [eax + _rich4_save_state], 0  ; cmp dword [eax + 0x48cb80], 0
jne short loc_00448577  ; jne 0x448577
xor eax, eax
pop edi
pop esi
pop ebx
ret

loc_00448577:
mov edx, dword [eax + (_rich4_save_state + 4)]  ; mov edx, dword [eax + 0x48cb84]
mov dword [(_global_rich4_cfg + 8)], edx  ; mov dword [0x497160], edx
push 0x1a0
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 8
push eax
push _rich4_all_players_state  ; push 0x496b68
call _memcpy  ; call 0x456de8
add esp, 0xc
xor ebx, ebx
mov ecx, dword [_rich4_num_players]  ; mov ecx, dword [0x499114]

loc_004485a6:
cmp ebx, ecx
jge short loc_004485c7  ; jge 0x4485c7
imul eax, ebx, 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
imul edx, edx, 0x68
mov edx, dword [edx + _rich4_character_profiles]  ; mov edx, dword [edx + 0x47e80c]
mov dword [eax + _rich4_all_players_state], edx  ; mov dword [eax + 0x496b68], edx
inc ebx
jmp short loc_004485a6  ; jmp 0x4485a6

loc_004485c7:
push 0x50
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x1a8
push eax
push _rich4_all_special_players_state  ; push 0x498e28
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x450
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x1f8
push eax
push _rich4_objects_info  ; push 0x496d08
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x3c
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x648
push eax
push _rich4_player_cards  ; push 0x499120
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x3c
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x684
push eax
push _rich4_player_tool_amount  ; push 0x49915c
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x1e
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x6c0
push eax
push _rich4_remain_card_amount  ; push 0x499198
call _memcpy  ; call 0x456de8
add esp, 0xc
push 8
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x6de
push eax
push _rich4_remain_tool_amount  ; push 0x497320
call _memcpy  ; call 0x456de8
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
mov edx, dword [eax + (_rich4_save_state + 1768)]  ; mov edx, dword [eax + 0x48d268]
mov dword [ref_00499100], edx  ; mov dword [0x499100], edx
push 0x1b00
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x6ec
push eax
push ref_00497328  ; push 0x497328
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x180
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x21ec
push eax
push _rich4_player_stocks  ; push 0x4971a0
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x1b0
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x236c
push eax
push _stocks_on_map  ; push 0x496980
call _memcpy  ; call 0x456de8
add esp, 0xc
xor ebx, ebx

loc_004487f4:
movsx edx, word [ref_004991b6]  ; movsx edx, word [0x4991b6]
shl edx, 2
movsx eax, word [ref_004991b8]  ; movsx eax, word [0x4991b8]
add edx, eax
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 4
mov ecx, eax
shl ecx, 3
add ecx, eax
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 2
lea edx, [ecx + eax]
mov edx, dword [edx + _game_stocks]  ; mov edx, dword [edx + 0x47f072]
mov dword [eax + _stocks_on_map], edx  ; mov dword [eax + 0x496980], edx
inc ebx
cmp ebx, 0xc
jl short loc_004487f4  ; jl 0x4487f4
push 0x150
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x251c
push eax
push ref_004967e0  ; push 0x4967e0
call _memcpy  ; call 0x456de8
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
mov edx, dword [eax + (_rich4_save_state + 9836)]  ; mov edx, dword [eax + 0x48f1ec]
mov dword [_rich4_price_index], edx  ; mov dword [0x4990e8], edx
mov edx, dword [eax + (_rich4_save_state + 9840)]  ; mov edx, dword [eax + 0x48f1f0]
mov dword [ref_004990e4], edx  ; mov dword [0x4990e4], edx
mov edx, dword [eax + (_rich4_save_state + 9844)]  ; mov edx, dword [eax + 0x48f1f4]
mov dword [ref_00499084], edx  ; mov dword [0x499084], edx
mov edx, dword [eax + (_rich4_save_state + 9848)]  ; mov edx, dword [eax + 0x48f1f8]
mov dword [ref_004990dc], edx  ; mov dword [0x4990dc], edx
mov edx, dword [eax + (_rich4_save_state + 9852)]  ; mov edx, dword [eax + 0x48f1fc]
mov dword [ref_0049907c], edx  ; mov dword [0x49907c], edx
mov edx, dword [eax + (_rich4_save_state + 9856)]  ; mov edx, dword [eax + 0x48f200]
mov dword [ref_00499078], edx  ; mov dword [0x499078], edx
mov edx, dword [eax + (_rich4_save_state + 9860)]  ; mov edx, dword [eax + 0x48f204]
mov dword [ref_004990ec], edx  ; mov dword [0x4990ec], edx
mov edx, dword [eax + (_rich4_save_state + 9864)]  ; mov edx, dword [eax + 0x48f208]
mov dword [ref_00499080], edx  ; mov dword [0x499080], edx
push 0x24
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x268c
push eax
push ref_004990b8  ; push 0x4990b8
call _memcpy  ; call 0x456de8
add esp, 0xc
push 8
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26b0
push eax
push ref_00496b30  ; push 0x496b30
call _memcpy  ; call 0x456de8
add esp, 0xc
push 8
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26b8
push eax
push ref_00496b60  ; push 0x496b60
call _memcpy  ; call 0x456de8
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
mov edx, dword [eax + (_rich4_save_state + 9920)]  ; mov edx, dword [eax + 0x48f240]
mov dword [ref_004990e0], edx  ; mov dword [0x4990e0], edx
mov edx, dword [eax + (_rich4_save_state + 9924)]  ; mov edx, dword [eax + 0x48f244]
mov dword [ref_004990b4], edx  ; mov dword [0x4990b4], edx
push 0x24
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26c8
push eax
push ref_00499090  ; push 0x499090
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x25
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 3
add eax, edx
add eax, _rich4_save_state  ; add eax, 0x48cb80
add eax, 0x26ec
push eax
push ref_00496b38  ; push 0x496b38
call _memcpy  ; call 0x456de8
add esp, 0xc
mov ebx, dword [ref_00498e94]  ; mov ebx, dword [0x498e94]
push ebx
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
mov esi, dword [edx + eax*8 + (_rich4_save_state + 10004)]  ; mov esi, dword [edx + eax*8 + 0x48f294]
push esi
mov edi, dword [ref_0047493c]  ; mov edi, dword [0x47493c]
push edi
call _memcpy  ; call 0x456de8
add esp, 0xc
call fcn_0040c03b  ; call 0x40c03b
xor ebx, ebx
jmp short loc_00448a5d  ; jmp 0x448a5d

loc_00448a57:
inc ebx
cmp ebx, 9
jge short loc_00448a75  ; jge 0x448a75

loc_00448a5d:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jl short loc_00448a6a  ; jl 0x448a6a
cmp ebx, 4
jl short loc_00448a57  ; jl 0x448a57

loc_00448a6a:
push ebx
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4
jmp short loc_00448a57  ; jmp 0x448a57

loc_00448a75:
mov eax, 1
pop edi
pop esi
pop ebx
ret

