extern _rich4_all_players_state
extern _libc_rand
extern _rich4_player_tool_amount
extern _tool_table
extern fcn_0040b93b
extern _rich4_remain_tool_amount

global _rich4_receive_tool
global _rich4_after_player_use_tool
global _rich4_receive_random_tool
global _rich4_player_sell_all_tools

section .text

_rich4_receive_tool:
push ebx
mov edx, dword [esp + 0xc]
mov ecx, dword [esp + 8]
mov eax, ecx
shl eax, 2
add eax, ecx
mov ecx, eax
shl eax, 2
sub eax, ecx
cmp byte [edx + eax + (_rich4_player_tool_amount - 1)], 9  ; cmp byte [edx + eax + 0x49915b], 9
jae short loc_00445aa0  ; jae 0x445aa0
cmp edx, 8
jg short loc_00445a87  ; jg 0x445a87
mov bh, byte [edx + (_rich4_remain_tool_amount - 1)]  ; mov bh, byte [edx + 0x49731f]
test bh, bh
je short loc_00445aa0  ; je 0x445aa0
mov cl, bh
dec cl
mov byte [edx + (_rich4_remain_tool_amount - 1)], cl  ; mov byte [edx + 0x49731f], cl

loc_00445a87:
mov ecx, dword [esp + 8]
mov eax, ecx
shl eax, 2
add eax, ecx
mov ecx, eax
shl eax, 2
sub eax, ecx
inc byte [edx + eax + (_rich4_player_tool_amount - 1)]  ; inc byte [edx + eax + 0x49915b]

loc_00445aa0:
pop ebx
ret

_rich4_after_player_use_tool:
mov ecx, dword [esp + 8]
mov edx, dword [esp + 4]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
add eax, ecx
mov dl, byte [eax + (_rich4_player_tool_amount - 1)]  ; mov dl, byte [eax + 0x49915b]
test dl, dl
je short loc_00445ad9  ; je 0x445ad9
mov dh, dl
dec dh
mov byte [eax + (_rich4_player_tool_amount - 1)], dh  ; mov byte [eax + 0x49915b], dh
cmp ecx, 8
jg short loc_00445ad9  ; jg 0x445ad9
inc byte [ecx + (_rich4_remain_tool_amount - 1)]  ; inc byte [ecx + 0x49731f]

loc_00445ad9:
ret

_rich4_receive_random_tool:
push ebx
push esi
sub esp, 0x80
xor esi, esi
xor eax, eax
xor ebx, ebx
jmp short loc_00445af0  ; jmp 0x445af0

loc_00445aea:
inc eax
cmp eax, 8
jge short loc_00445b0e  ; jge 0x445b0e

loc_00445af0:
cmp byte [eax + _rich4_remain_tool_amount], 0  ; cmp byte [eax + 0x497320], 0
je short loc_00445aea  ; je 0x445aea
xor edx, edx

loc_00445afb:
xor ecx, ecx
mov cl, byte [eax + _rich4_remain_tool_amount]  ; mov cl, byte [eax + 0x497320]
cmp edx, ecx
jge short loc_00445aea  ; jge 0x445aea
mov byte [esp + ebx], al
inc ebx
inc edx
jmp short loc_00445afb  ; jmp 0x445afb

loc_00445b0e:
test ebx, ebx
je short loc_00445b34  ; je 0x445b34
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv ebx
movzx esi, byte [esp + edx]
inc esi
push esi
mov edx, dword [esp + 0x90]
push edx
call _rich4_receive_tool  ; call 0x445a4d
add esp, 8

loc_00445b34:
mov eax, esi
add esp, 0x80
pop esi
pop ebx
ret

_rich4_player_sell_all_tools:
push ebx
push esi
push edi
mov esi, dword [esp + 0x10]
imul eax, esi, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 17)]  ; mov dl, byte [eax + 0x496b79]
test dl, dl
je short loc_00445baa  ; je 0x445baa
mov bl, dl
and bl, 3
mov eax, esi
shl eax, 2
add eax, esi
mov edx, eax
shl eax, 2
sub eax, edx
cmp bl, 2
jb short loc_00445b74  ; jb 0x445b74
jbe short loc_00445b81  ; jbe 0x445b81
cmp bl, 3
je short loc_00445b89  ; je 0x445b89
jmp short loc_00445b8f  ; jmp 0x445b8f

loc_00445b74:
cmp bl, 1
jne short loc_00445b8f  ; jne 0x445b8f
add byte [eax + (_rich4_player_tool_amount + 4)], bl  ; add byte [eax + 0x499160], bl
jmp short loc_00445b8f  ; jmp 0x445b8f

loc_00445b81:
inc byte [eax + (_rich4_player_tool_amount + 5)]  ; inc byte [eax + 0x499161]
jmp short loc_00445b8f  ; jmp 0x445b8f

loc_00445b89:
inc byte [eax + (_rich4_player_tool_amount + 11)]  ; inc byte [eax + 0x499167]

loc_00445b8f:
imul eax, esi, 0x68
xor cl, cl
mov byte [eax + (_rich4_all_players_state + 17)], cl  ; mov byte [eax + 0x496b79], cl
mov byte [eax + (_rich4_all_players_state + 18)], 1  ; mov byte [eax + 0x496b7a], 1
push esi
call fcn_0040b93b  ; call 0x40b93b
add esp, 4

loc_00445baa:
xor eax, eax
xor ebx, ebx
jmp short loc_00445bb6  ; jmp 0x445bb6

loc_00445bb0:
inc eax
cmp eax, 0xd
jge short loc_00445c0e  ; jge 0x445c0e

loc_00445bb6:
mov edx, esi
shl edx, 2
add edx, esi
mov ecx, edx
shl edx, 2
sub edx, ecx
add edx, eax
mov cl, byte [edx + _rich4_player_tool_amount]  ; mov cl, byte [edx + 0x49915c]
test cl, cl
je short loc_00445bb0  ; je 0x445bb0
cmp eax, 8
jge short loc_00445bdb  ; jge 0x445bdb
add byte [eax + _rich4_remain_tool_amount], cl  ; add byte [eax + 0x497320], cl

loc_00445bdb:
mov edx, esi
shl edx, 2
add edx, esi
mov ecx, edx
shl edx, 2
sub edx, ecx
movzx edi, byte [edx + eax + _rich4_player_tool_amount]  ; movzx edi, byte [edx + eax + 0x49915c]
mov cl, byte [eax*8 + (_tool_table + 5)]  ; mov cl, byte [eax*8 + 0x47fee7]
and ecx, 0xff
imul ecx, edi
add ebx, ecx
xor cl, cl
mov byte [edx + eax + _rich4_player_tool_amount], cl  ; mov byte [edx + eax + 0x49915c], cl
jmp short loc_00445bb0  ; jmp 0x445bb0

loc_00445c0e:
mov eax, ebx
pop edi
pop esi
pop ebx
ret

