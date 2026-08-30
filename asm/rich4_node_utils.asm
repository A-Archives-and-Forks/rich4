extern _abs
extern _libc_rand
extern _rich4_map_node_ptr
extern _rich4_num_map_nodes

global _rich4_find_random_unoccupied_node
global _rich4_find_random_unoccupied_distant_node

section .text

_rich4_find_random_unoccupied_node:
push ebx
sub esp, 0x100
mov edx, 1
xor ebx, ebx

loc_0040aa1d:
cmp edx, dword [_rich4_num_map_nodes]  ; cmp edx, dword [0x498e9c]
jg short loc_0040aa53  ; jg 0x40aa53
mov eax, edx
shl eax, 2
lea ecx, [edx + eax]
shl ecx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, ecx
test dword [eax + 0x24], 0x80ffff00
jne short loc_0040aa50  ; jne 0x40aa50
cmp dword [eax + 0x18], 0
jne short loc_0040aa4c  ; jne 0x40aa4c
cmp dword [eax + 0x1c], 0
je short loc_0040aa50  ; je 0x40aa50

loc_0040aa4c:
mov byte [esp + ebx], dl
inc ebx

loc_0040aa50:
inc edx
jmp short loc_0040aa1d  ; jmp 0x40aa1d

loc_0040aa53:
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv ebx
xor eax, eax
mov al, byte [esp + edx]
add esp, 0x100
pop ebx
ret

_rich4_find_random_unoccupied_distant_node:
push ebx
push esi
push edi
push ebp
sub esp, 0x104
mov edx, dword [esp + 0x118]
test edx, edx
je short loc_0040aaa2  ; je 0x40aaa2
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
mov ebp, dword [_rich4_map_node_ptr]  ; mov ebp, dword [0x498e80]
add ebp, eax
movsx eax, word [ebp]
mov dword [esp + 0x100], eax
movsx ebp, word [ebp + 2]

loc_0040aaa2:
mov edx, 1
xor ebx, ebx

loc_0040aaa9:
cmp edx, dword [_rich4_num_map_nodes]  ; cmp edx, dword [0x498e9c]
jg short loc_0040aadf  ; jg 0x40aadf
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
mov ecx, dword [_rich4_map_node_ptr]  ; mov ecx, dword [0x498e80]
add eax, ecx
test dword [eax + 0x24], 0x80ffff00
jne short loc_0040aadc  ; jne 0x40aadc
cmp dword [eax + 0x18], 0
jne short loc_0040aad8  ; jne 0x40aad8
cmp dword [eax + 0x1c], 0
je short loc_0040aadc  ; je 0x40aadc

loc_0040aad8:
mov byte [esp + ebx], dl
inc ebx

loc_0040aadc:
inc edx
jmp short loc_0040aaa9  ; jmp 0x40aaa9

loc_0040aadf:
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv ebx
movzx esi, byte [esp + edx]
mov eax, esi
shl eax, 2
add eax, esi
shl eax, 3
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
add eax, edx
movsx edx, word [eax]
movsx edi, word [eax + 2]
cmp dword [esp + 0x118], 0
je short loc_0040ab3d  ; je 0x40ab3d
sub edx, dword [esp + 0x100]
push edx
call _abs  ; call 0x458276
add esp, 4
cmp eax, 0x12c
jge short loc_0040ab3d  ; jge 0x40ab3d
mov eax, edi
sub eax, ebp
push eax
call _abs  ; call 0x458276
add esp, 4
cmp eax, 0x12c
jl short loc_0040aadf  ; jl 0x40aadf

loc_0040ab3d:
mov eax, esi
add esp, 0x104
pop ebp
pop edi
pop esi
pop ebx
ret

