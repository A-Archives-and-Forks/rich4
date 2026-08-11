extern _rich4_all_players_state
extern _rich4_current_player
extern _rich4_player_say
extern _tool_strings
extern fcn_0040a4e1
extern fcn_0041906a
extern _rich4_after_player_use_tool
extern _rich4_restore_last_state
extern fcn_00454acb
extern fcn_00454d91
extern ref_0046cb06

global _rich4_use_tool_shiguangji

section .text

_rich4_use_tool_shiguangji:
push ebx
push esi
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
imul eax, eax, 0x68
mov ecx, dword [eax + (_tool_strings + 36)]  ; mov ecx, dword [eax + 0x480d7e]
push ecx
push 0
push edx
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
call _rich4_restore_last_state  ; call 0x448544
mov ebx, eax
test eax, eax
je short loc_00447423  ; je 0x447423
mov ah, byte [ref_0046cb06]  ; mov ah, byte [0x46cb06]
test ah, ah
je short loc_004473fe  ; je 0x4473fe
mov dl, ah
inc dl
mov byte [ref_0046cb06], dl  ; mov byte [0x46cb06], dl
mov al, dl
and al, 0xf
xor edx, edx
mov dl, al
xor eax, eax
mov al, byte [ref_0046cb06]  ; mov al, byte [0x46cb06]
sar eax, 4
cmp edx, eax
jle short loc_004473fe  ; jle 0x4473fe
xor dh, dh
mov byte [ref_0046cb06], dh  ; mov byte [0x46cb06], dh
call fcn_00454acb  ; call 0x454acb
push 0
call fcn_00454d91  ; call 0x454d91
add esp, 4

loc_004473fe:
push 0xa
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call _rich4_after_player_use_tool  ; call 0x445aa2
add esp, 8
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4

loc_00447423:
mov eax, ebx
pop esi
pop ebx
ret

