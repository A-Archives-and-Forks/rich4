extern _rich4_all_players_state
extern _rich4_current_player
extern _rich4_player_say
extern _tool_strings
extern _rich4_update_player_sprite
extern fcn_0041d476
extern _rich4_player_tool_amount

global _rich4_use_tool_gongchengche

section .text

_rich4_use_tool_gongchengche:
push ebx
push edi
push ebp
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dl, byte [eax + (_rich4_all_players_state + 17)]  ; mov dl, byte [eax + 0x496b79]
and dl, 3
cmp dl, 3
jne short loc_004479f1  ; jne 0x4479f1
xor edx, edx
jmp near loc_00447ac8  ; jmp 0x447ac8

loc_004479f1:
cmp byte [eax + (_rich4_all_players_state + 17)], 1  ; cmp byte [eax + 0x496b79], 1
jne short loc_00447a14  ; jne 0x447a14
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
inc byte [eax + (_rich4_player_tool_amount + 4)]  ; inc byte [eax + 0x499160]

loc_00447a14:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul eax, ecx, 0x68
cmp byte [eax + (_rich4_all_players_state + 17)], 2  ; cmp byte [eax + 0x496b79], 2
jne short loc_00447a3a  ; jne 0x447a3a
mov eax, ecx
shl eax, 2
add eax, ecx
mov edx, eax
shl eax, 2
sub eax, edx
inc byte [eax + (_rich4_player_tool_amount + 5)]  ; inc byte [eax + 0x499161]

loc_00447a3a:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
imul eax, ebx, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 17)]  ; mov dl, byte [eax + 0x496b79]
mov byte [eax + (_rich4_all_players_state + 100)], dl  ; mov byte [eax + 0x496bcc], dl
mov dl, byte [eax + (_rich4_all_players_state + 18)]  ; mov dl, byte [eax + 0x496b7a]
mov byte [eax + (_rich4_all_players_state + 101)], dl  ; mov byte [eax + 0x496bcd], dl
mov byte [eax + (_rich4_all_players_state + 17)], 0x1f  ; mov byte [eax + 0x496b79], 0x1f
mov byte [eax + (_rich4_all_players_state + 18)], 1  ; mov byte [eax + 0x496b7a], 1
push ebx
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
imul eax, edi, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
imul eax, eax, 0x68
mov ebp, dword [eax + (_tool_strings + 44)]  ; mov ebp, dword [eax + 0x480d86]
push ebp
push 0
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
mov edx, 1
dec byte [eax + (_rich4_player_tool_amount + 11)]  ; dec byte [eax + 0x499167]

loc_00447ac8:
mov eax, edx
pop ebp
pop edi
pop ebx
ret

