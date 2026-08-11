extern _rich4_all_players_state
extern _rich4_current_player
extern _rich4_player_say
extern _tool_strings
extern fcn_0040e033
extern _rich4_animate_object
extern fcn_0041d546
extern fcn_00420eee
extern fcn_00446ae8
extern fcn_004542ce
extern ref_0048236a
extern _rich4_map_node_ptr
extern _rich4_player_tool_amount

global _rich4_use_tool_luzhang

section .text

_rich4_use_tool_luzhang:
push ebx
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
imul eax, eax, 0x68
mov ecx, dword [eax + (_tool_strings + 4)]  ; mov ecx, dword [eax + 0x480d5e]
push ecx
push 0
push edx
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne short loc_00446bed  ; jne 0x446bed
push 1
call fcn_00446ae8  ; call 0x446ae8
jmp short loc_00446bf4  ; jmp 0x446bf4

loc_00446bed:
push 0
call fcn_00420eee  ; call 0x420eee

loc_00446bf4:
add esp, 4
mov ebx, eax
test ebx, ebx
je near loc_00446c84  ; je 0x446c84
push 0
push 0
push ebx
push 0x10
call fcn_0040e033  ; call 0x40e033
mov ecx, eax
add esp, 0x10
push 0x64
mov eax, ebx
shl eax, 2
lea edx, [ebx + eax]
shl edx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, edx
movsx edx, word [eax + 2]
push edx
movsx eax, word [eax]
push eax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dx, word [eax + (_rich4_all_players_state + 10)]  ; mov dx, word [eax + 0x496b72]
push edx
mov ax, word [eax + (_rich4_all_players_state + 8)]  ; mov ax, word [eax + 0x496b70]
and eax, 0xffff
push eax
push ecx
call _rich4_animate_object  ; call 0x40e669
add esp, 0x18
push 0
push ref_0048236a  ; push 0x48236a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
call fcn_0041d546  ; call 0x41d546
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
dec byte [eax + (_rich4_player_tool_amount + 1)]  ; dec byte [eax + 0x49915d]

loc_00446c84:
mov eax, ebx
pop ebx
ret

