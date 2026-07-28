extern _all_players_state
extern _num_players
extern _rich4_calculate_player_wealth
extern _rich4_game_initial_fund
extern _rich4_price_index

global _rich4_update_price_index

section .text

_rich4_update_price_index:
push ebx
push esi
push edi
xor ebx, ebx
xor esi, esi
xor edi, edi

loc_00423ad8:
cmp ebx, dword [_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_00423afb  ; jge 0x423afb
imul eax, ebx, 0x68
cmp byte [eax + (_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_00423af8  ; je 0x423af8
push ebx
call _rich4_calculate_player_wealth  ; call 0x4239b9
add esp, 4
add esi, eax
inc edi

loc_00423af8:
inc ebx
jmp short loc_00423ad8  ; jmp 0x423ad8

loc_00423afb:
mov eax, esi
mov edx, esi
sar edx, 0x1f
idiv edi
mov edx, eax
sar edx, 0x1f
mov ecx, dword [_rich4_game_initial_fund]  ; mov ecx, dword [0x49908c]
idiv ecx
mov ebx, eax
cmp eax, dword [_rich4_price_index]  ; cmp eax, dword [0x4990e8]
jle short loc_00423b20  ; jle 0x423b20
mov dword [_rich4_price_index], eax  ; mov dword [0x4990e8], eax

loc_00423b20:
pop edi
pop esi
pop ebx
ret

