extern __imp__timeGetTime@0
extern _if_sqrt
extern _libc_free
extern _memcpy
extern fcn_00409a23
extern fcn_00451a97
extern _rich4_rect_union
extern fcn_0045285e
extern fcn_00456469
extern fcn_00456770
extern __round_toward_zero
extern ref_0046caec
extern ref_0046caf4
extern ref_0048a068
extern ref_0048a08c
extern _rich4_ddraw_primary_sf_ptr
extern _rich4_ddraw_offscreen_sf_ptr
extern ref_0049692c
extern ref_00496930
extern _rich4_objects_info
extern ref_00499088

global _rich4_animate_object

section .text

_rich4_animate_object:
push ebx
push esi
push edi
push ebp
sub esp, 0x68
mov edx, dword [esp + 0x7c]
test edx, edx
je short loc_0040e6b9  ; je 0x40e6b9
dec edx
mov eax, edx
shl eax, 2
sub eax, edx
xor ecx, ecx
mov cl, byte [eax*8 + (_rich4_objects_info + 1)]  ; mov cl, byte [eax*8 + 0x496d09]
mov ebp, 8
sub ebp, dword [ref_00499088]  ; sub ebp, dword [0x499088]
add ebp, ecx
and ebp, 7
movzx edi, byte [eax*8 + _rich4_objects_info]  ; movzx edi, byte [eax*8 + 0x496d08]
mov edi, dword [edi*4 + ref_0049692c]  ; mov edi, dword [edi*4 + 0x49692c]
mov eax, ebp
shl eax, 2
sub eax, ebp
shl eax, 2
lea ebx, [edi + 0xc]
add ebx, eax
jmp short loc_0040e6c4  ; jmp 0x40e6c4

loc_0040e6b9:
xor ebp, ebp
mov edi, dword [(ref_00496930 + 76)]  ; mov edi, dword [0x49697c]
lea ebx, [edi + 0xc]

loc_0040e6c4:
lea eax, [esp + 0x34]
push eax
lea eax, [esp + 0x34]
push eax
mov esi, dword [esp + 0x8c]
push esi
mov eax, dword [esp + 0x8c]
push eax
call fcn_00409a23  ; call 0x409a23
add esp, 0x10
lea eax, [esp + 0x3c]
push eax
lea eax, [esp + 0x3c]
push eax
mov edx, dword [esp + 0x94]
push edx
mov ecx, dword [esp + 0x94]
push ecx
call fcn_00409a23  ; call 0x409a23
add esp, 0x10
mov edx, dword [esp + 0x38]
sub edx, dword [esp + 0x30]
mov ecx, dword [esp + 0x3c]
sub ecx, dword [esp + 0x34]
test edx, edx
jne short loc_0040e724  ; jne 0x40e724
test ecx, ecx
je near loc_0040ea5a  ; je 0x40ea5a

loc_0040e724:
mov eax, edx
imul eax, edx
mov dword [esp + 0x40], eax
mov eax, ecx
imul eax, ecx
mov esi, dword [esp + 0x40]
add eax, esi
mov dword [esp + 0x64], eax
fild dword [esp + 0x64]
call _if_sqrt  ; call 0x4582bc
fmul dword [ref_0046324c]  ; fmul dword [0x46324c]
fld1
faddp st1  ; faddp st(1)
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0x60]
mov dword [esp + 0x64], edx
fild dword [esp + 0x64]
mov eax, dword [esp + 0x60]
mov dword [esp + 0x64], eax
fild dword [esp + 0x64]
fstp dword [esp + 0x40]
fdiv dword [esp + 0x40]
fstp dword [esp + 0x48]
mov dword [esp + 0x64], ecx
fild dword [esp + 0x64]
fdiv dword [esp + 0x40]
fstp dword [esp + 0x44]
mov eax, dword [esp + 0x30]
mov dword [esp + 0x64], eax
fild dword [esp + 0x64]
fadd dword [esp + 0x48]
fstp dword [esp + 0x58]
mov eax, dword [esp + 0x34]
mov dword [esp + 0x64], eax
fild dword [esp + 0x64]
fadd dword [esp + 0x44]
fstp dword [esp + 0x5c]
mov dword [esp], 0xfffffc18
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
mov dword [ref_0046caf4], eax  ; mov dword [0x46caf4], eax
push 0x1b8
push 0x1b8
push 0x28
push 0
push 0
push ref_0046caec  ; push 0x46caec
call fcn_00451a97  ; call 0x451a97
add esp, 0x18
mov dword [esp + 0x4c], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall

loc_0040e808:
cmp dword [esp + 0x60], 0
je near loc_0040e9bd  ; je 0x40e9bd
call dword [cs:__imp__timeGetTime@0]  ; ucall: call dword cs:[0x46246c]
mov esi, eax
fld dword [esp + 0x58]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0x54]
fld dword [esp + 0x5c]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0x50]
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edx, dword [esp]
cmp edx, 0xfffffc18
je short loc_0040e883  ; je 0x40e883
mov eax, dword [esp + 0xc]
mov ecx, dword [esp + 4]
sub eax, ecx
push eax
mov eax, dword [esp + 0xc]
sub eax, edx
push eax
lea eax, [ecx - 0x28]
push eax
push edx
push ecx
push edx
mov ecx, dword [esp + 0x64]
push ecx
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456469  ; call 0x456469
add esp, 0x20

loc_0040e883:
mov edx, dword [esp + 0x50]
push edx
mov ecx, dword [esp + 0x58]
push ecx
push ebp
push edi
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456770  ; call 0x456770
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
movsx eax, word [ebx + 4]
mov edx, dword [esp + 0x54]
sub edx, eax
mov dword [esp + 0x20], edx
movsx eax, word [ebx + 6]
mov edx, dword [esp + 0x50]
sub edx, eax
mov dword [esp + 0x24], edx
movsx eax, word [ebx]
mov edx, dword [esp + 0x20]
add edx, eax
mov dword [esp + 0x28], edx
movsx eax, word [ebx + 2]
mov edx, dword [esp + 0x24]
add edx, eax
mov dword [esp + 0x2c], edx
cmp dword [esp], 0xfffffc18
je short loc_0040e903  ; je 0x40e903
lea eax, [esp + 0x10]
push eax
lea eax, [esp + 4]
push eax
lea eax, [esp + 0x28]
push eax
call _rich4_rect_union  ; call 0x452808
jmp short loc_0040e914  ; jmp 0x40e914

loc_0040e903:
push 0x10
lea eax, [esp + 0x24]
push eax
lea eax, [esp + 0x18]
push eax
call _memcpy  ; call 0x456de8

loc_0040e914:
add esp, 0xc
cmp dword [esp + 0x18], 0
jle short loc_0040e96a  ; jle 0x40e96a
cmp dword [esp + 0x14], 0x1e0
jge short loc_0040e96a  ; jge 0x40e96a
cmp dword [esp + 0x10], 0
jge short loc_0040e935  ; jge 0x40e935
xor ecx, ecx
mov dword [esp + 0x10], ecx

loc_0040e935:
cmp dword [esp + 0x1c], 0x1e0
jle short loc_0040e947  ; jle 0x40e947
mov dword [esp + 0x1c], 0x1e0

loc_0040e947:
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x14]
push ecx
mov ecx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
mov ecx, dword [esp + 0x20]
push ecx
mov ecx, dword [esp + 0x20]
push ecx
push eax
call dword [edx + 0x1c]  ; ucall

loc_0040e96a:
push 0x10
lea eax, [esp + 0x24]
push eax
lea eax, [esp + 8]
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
call dword [cs:__imp__timeGetTime@0]  ; ucall: call dword cs:[0x46246c]
sub eax, esi
cmp eax, 0x18
jae short loc_0040e99c  ; jae 0x40e99c
mov edx, 0x18
sub edx, eax
push edx
call fcn_0045285e  ; call 0x45285e
add esp, 4

loc_0040e99c:
fld dword [esp + 0x58]
fadd dword [esp + 0x48]
fstp dword [esp + 0x58]
fld dword [esp + 0x5c]
fadd dword [esp + 0x44]
fstp dword [esp + 0x5c]
dec dword [esp + 0x60]
jmp near loc_0040e808  ; jmp 0x40e808

loc_0040e9bd:
mov ecx, dword [esp + 0x90]
push ecx
call fcn_0045285e  ; call 0x45285e
add esp, 4
mov ebx, dword [esp + 0x7c]
test ebx, ebx
jne short loc_0040ea4d  ; jne 0x40ea4d
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push ebx
push 1
push ref_0048a068  ; push 0x48a068
push ebx
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0xc]
mov esi, dword [esp + 4]
sub eax, esi
push eax
mov eax, dword [esp + 0xc]
mov edi, dword [esp + 4]
sub eax, edi
push eax
lea eax, [esi - 0x28]
push eax
push edi
push esi
push edi
mov ecx, dword [esp + 0x64]
push ecx
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456469  ; call 0x456469
add esp, 0x20
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 4]
push ecx
mov esi, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov esi, dword [0x48a0e0]
push esi
mov edi, dword [esp + 0x10]
push edi
mov ebp, dword [esp + 0x10]
push ebp
push eax
call dword [edx + 0x1c]  ; ucall

loc_0040ea4d:
mov eax, dword [esp + 0x4c]
push eax
call _libc_free  ; call 0x456e11
add esp, 4

loc_0040ea5a:
add esp, 0x68
pop ebp
pop edi
pop esi
pop ebx
ret

section .data

ref_0046324c:
dd 0x3e000000
