extern _rich4_all_players_state
extern _rich4_player_stocks
extern _stocks_on_map
extern __round_toward_zero
extern _rich4_land_info_ptr
extern _rich4_facility_info_ptr
extern _rich4_num_facilities
extern _rich4_num_lands

global _rich4_calculate_player_wealth

section .text

_rich4_calculate_player_wealth:
push ebx
push esi
push edi
push ebp
sub esp, 8
mov ebx, dword [esp + 0x1c]
imul eax, ebx, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
mov esi, dword [eax + (_rich4_all_players_state + 36)]  ; mov esi, dword [eax + 0x496b8c]
sub edx, esi
mov dword [esp], edx
xor edx, edx

loc_004239e0:
mov ecx, ebx
shl ecx, 2
sub ecx, ebx
shl ecx, 5
mov eax, edx
fild dword [ecx + eax*8 + _rich4_player_stocks]  ; fild dword [ecx + eax*8 + 0x4971a0]
shl eax, 3
add eax, edx
fmul dword [eax*4 + (_stocks_on_map + 20)]  ; fmul dword [eax*4 + 0x496994]
mov eax, dword [esp]
mov dword [esp + 4], eax
fild dword [esp + 4]
fstp dword [esp + 4]
fadd dword [esp + 4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp]
inc edx
cmp edx, 0xc
jl short loc_004239e0  ; jl 0x4239e0
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, 0x34
mov edx, 1

loc_00423a2d:
cmp edx, dword [_rich4_num_lands]  ; cmp edx, dword [0x498e98]
jg short loc_00423a83  ; jg 0x423a83
xor ecx, ecx
mov cl, byte [eax + 0x19]
lea esi, [ebx + 1]
cmp ecx, esi
jne short loc_00423a7d  ; jne 0x423a7d
xor ecx, esi
mov cx, word [eax + 0x1c]
mov ebp, dword [esp]
add ebp, ecx
mov dword [esp], ebp
cmp byte [eax + 0x18], 0
je short loc_00423a63  ; je 0x423a63
xor ecx, ecx
mov cx, word [eax + 0x1e]
lea edi, [ecx + ebp]
mov dword [esp], edi
jmp short loc_00423a7d  ; jmp 0x423a7d

loc_00423a63:
cmp byte [eax + 0x1a], 0
je short loc_00423a7d  ; je 0x423a7d
xor ecx, ecx
mov cl, byte [eax + 0x1a]
xor esi, esi
mov si, word [eax + 0x1e]
imul ecx, esi
lea esi, [ecx + ebp]
mov dword [esp], esi

loc_00423a7d:
inc edx
add eax, 0x34
jmp short loc_00423a2d  ; jmp 0x423a2d

loc_00423a83:
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, 0x38
mov edx, 1
mov ebp, dword [_rich4_num_facilities]  ; mov ebp, dword [0x498e8c]

loc_00423a96:
cmp edx, ebp
jg short loc_00423ac4  ; jg 0x423ac4
movzx esi, byte [eax + 0x19]
lea ecx, [ebx + 1]
cmp esi, ecx
jne short loc_00423abe  ; jne 0x423abe
xor ecx, ecx
mov cl, byte [eax + 0x1a]
xor esi, esi
mov si, word [eax + 0x24]
imul ecx, esi
xor esi, esi
mov si, word [eax + 0x22]
add ecx, esi
add dword [esp], ecx

loc_00423abe:
inc edx
add eax, 0x38
jmp short loc_00423a96  ; jmp 0x423a96

loc_00423ac4:
mov eax, dword [esp]
add esp, 8
pop ebp
pop edi
pop esi
pop ebx
ret

