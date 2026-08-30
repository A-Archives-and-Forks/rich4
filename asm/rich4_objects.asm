extern _rich4_all_players_state
extern _rich4_attach_god
extern _rich4_map_node_ptr
extern _rich4_remain_tool_amount
extern fcn_00407a8c
extern _rich4_find_random_unoccupied_distant_node
extern ref_004749e2
extern ref_00474a06
extern ref_00474a2a
extern _rich4_objects_info

global _rich4_place_object
global _rich4_remove_object

section .text

ref_0040e023:  ; may contain a jump table
dd fcn_0040e04d
dd fcn_0040e059
dd fcn_0040e065
dd fcn_0040e071

_rich4_place_object:
push ebx
push esi
push edi
mov edi, dword [esp + 0x10]
mov esi, dword [esp + 0x14]
lea eax, [edi - 0xf]
cmp eax, 3
ja short loc_0040e07d  ; ja 0x40e07d
jmp dword [eax*4 + ref_0040e023]  ; ujmp: jmp dword [eax*4 + 0x40e023]

fcn_0040e04d:
mov ebx, 0xe
mov ecx, 0x10
jmp short loc_0040e082  ; jmp 0x40e082

fcn_0040e059:
mov ebx, 0x10
mov ecx, 0x1a
jmp short loc_0040e082  ; jmp 0x40e082

fcn_0040e065:
mov ebx, 0x1a
mov ecx, 0x24
jmp short loc_0040e082  ; jmp 0x40e082

fcn_0040e071:
mov ebx, 0x24
mov ecx, 0x2e
jmp short loc_0040e082  ; jmp 0x40e082

loc_0040e07d:
lea ebx, [edi - 1]
mov ecx, edi

loc_0040e082:
cmp ebx, ecx
jge near loc_0040e13f  ; jge 0x40e13f
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 3
lea edx, [ebx + 1]
cmp word [eax + (_rich4_objects_info + 2)], 0  ; cmp word [eax + 0x496d0a], 0
jne near loc_0040e146  ; jne 0x40e146
mov word [eax + (_rich4_objects_info + 2)], si  ; mov word [eax + 0x496d0a], si
mov cl, byte [esp + 0x18]
mov byte [eax + (_rich4_objects_info + 4)], cl  ; mov byte [eax + 0x496d0c], cl
mov cl, byte [esp + 0x1c]
mov byte [eax + (_rich4_objects_info + 5)], cl  ; mov byte [eax + 0x496d0d], cl
mov ecx, dword [esp + 0x1c]
test ecx, ecx
je short loc_0040e0dc  ; je 0x40e0dc
cmp edi, 0xf
jne short loc_0040e0dc  ; jne 0x40e0dc
push edx
push 0
lea eax, [ecx - 1]
push eax
call _rich4_attach_god  ; call 0x40ead7
add esp, 0xc

loc_0040e0dc:
test esi, esi
je short loc_0040e13f  ; je 0x40e13f
xor edx, edx
jmp short loc_0040e0ea  ; jmp 0x40e0ea

loc_0040e0e4:
inc edx
cmp edx, 4
jge short loc_0040e10a  ; jge 0x40e10a

loc_0040e0ea:
mov eax, esi
shl eax, 2
lea ecx, [esi + eax]
shl ecx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, ecx
mov ecx, edx
mov ax, word [eax + ecx*2 + 0x18]
and eax, 0xffff
je short loc_0040e0e4  ; je 0x40e0e4

loc_0040e10a:
push esi
push eax
call fcn_00407a8c  ; call 0x407a8c
mov edx, eax
add esp, 8
mov eax, ebx
shl eax, 2
sub eax, ebx
mov byte [eax*8 + (_rich4_objects_info + 1)], dl  ; mov byte [eax*8 + 0x496d09], dl
mov eax, esi
shl eax, 2
add eax, esi
shl eax, 3
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
add eax, edx
lea edx, [ebx + 1]
shl edx, 0x10
or dword [eax + 0x24], edx

loc_0040e13f:
lea eax, [ebx + 1]
pop edi
pop esi
pop ebx
ret

loc_0040e146:
mov ebx, edx
jmp near loc_0040e082  ; jmp 0x40e082

_rich4_remove_object:
push ebx
push esi
mov edx, dword [esp + 0xc]
test edx, edx
je near loc_0040e29f  ; je 0x40e29f
dec edx
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov cl, byte [eax + _rich4_objects_info]  ; mov cl, byte [eax + 0x496d08]
cmp cl, 0x11
jb short loc_0040e17a  ; jb 0x40e17a
jbe short loc_0040e18a  ; jbe 0x40e18a
cmp cl, 0x12
je short loc_0040e195  ; je 0x40e195
jmp short loc_0040e1ba  ; jmp 0x40e1ba

loc_0040e17a:
cmp cl, 0x10
jne short loc_0040e1ba  ; jne 0x40e1ba
inc byte [(_rich4_remain_tool_amount + 1)]  ; inc byte [0x497321]
jmp near loc_0040e21a  ; jmp 0x40e21a

loc_0040e18a:
inc byte [(_rich4_remain_tool_amount + 2)]  ; inc byte [0x497322]
jmp near loc_0040e21a  ; jmp 0x40e21a

loc_0040e195:
inc byte [(_rich4_remain_tool_amount + 3)]  ; inc byte [0x497323]
mov bh, byte [eax + (_rich4_objects_info + 5)]  ; mov bh, byte [eax + 0x496d0d]
test bh, bh
je short loc_0040e21a  ; je 0x40e21a
mov al, bh
and eax, 0xff
dec eax
imul eax, eax, 0x68
xor cl, cl
mov byte [eax + (_rich4_all_players_state + 64)], cl  ; mov byte [eax + 0x496ba8], cl
jmp short loc_0040e21a  ; jmp 0x40e21a

loc_0040e1ba:
mov ecx, edx
shl ecx, 2
sub ecx, edx
shl ecx, 3
cmp byte [ecx + (_rich4_objects_info + 5)], 0  ; cmp byte [ecx + 0x496d0d], 0
je short loc_0040e21a  ; je 0x40e21a
xor eax, eax
mov al, byte [ecx + (_rich4_objects_info + 5)]  ; mov al, byte [ecx + 0x496d0d]
dec eax
imul eax, eax, 0x68
xor bl, bl
mov byte [eax + (_rich4_all_players_state + 63)], bl  ; mov byte [eax + 0x496ba7], bl
mov cl, byte [ecx + _rich4_objects_info]  ; mov cl, byte [ecx + 0x496d08]
and ecx, 0xff
mov bx, word [ecx*2 + ref_004749e2]  ; mov bx, word [ecx*2 + 0x4749e2]
sub word [eax + (_rich4_all_players_state + 68)], bx  ; sub word [eax + 0x496bac], bx
mov bx, word [ecx*2 + ref_00474a06]  ; mov bx, word [ecx*2 + 0x474a06]
sub word [eax + (_rich4_all_players_state + 70)], bx  ; sub word [eax + 0x496bae], bx
mov bx, word [ecx*2 + ref_00474a2a]  ; mov bx, word [ecx*2 + 0x474a2a]
sub word [eax + (_rich4_all_players_state + 72)], bx  ; sub word [eax + 0x496bb0], bx

loc_0040e21a:
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
cmp byte [eax + (_rich4_objects_info + 5)], 0  ; cmp byte [eax + 0x496d0d], 0
jne short loc_0040e248  ; jne 0x40e248
xor ecx, ecx
mov cx, word [eax + (_rich4_objects_info + 2)]  ; mov cx, word [eax + 0x496d0a]
mov eax, ecx
shl eax, 2
add eax, ecx
mov ecx, dword [_rich4_map_node_ptr]  ; mov ecx, dword [0x498e80]
mov byte [ecx + eax*8 + 0x26], 0

loc_0040e248:
mov ecx, edx
mov eax, edx
shl eax, 2
sub eax, edx
xor ecx, edx
mov cx, word [eax*8 + (_rich4_objects_info + 2)]  ; mov cx, word [eax*8 + 0x496d0a]
xor esi, esi
mov word [eax*8 + (_rich4_objects_info + 2)], si  ; mov word [eax*8 + 0x496d0a], si
xor bl, bl
mov byte [eax*8 + (_rich4_objects_info + 4)], bl  ; mov byte [eax*8 + 0x496d0c], bl
mov byte [eax*8 + (_rich4_objects_info + 5)], bl  ; mov byte [eax*8 + 0x496d0d], bl
cmp edx, 0xc
jge short loc_0040e29f  ; jge 0x40e29f
test dl, 1
je short loc_0040e284  ; je 0x40e284
lea ebx, [edx - 1]
jmp short loc_0040e287  ; jmp 0x40e287

loc_0040e284:
lea ebx, [edx + 1]

loc_0040e287:
push 0
push 0
push ecx
call _rich4_find_random_unoccupied_distant_node  ; call 0x40aa6c
add esp, 4
push eax
inc ebx
push ebx
call _rich4_place_object  ; call 0x40e033
add esp, 0x10

loc_0040e29f:
pop esi
pop ebx
ret

