extern _rich4_ddraw_primary_sf_ptr
extern _rich4_ddraw_offscreen_sf_ptr
extern _libc_free
extern _libc_malloc
extern _memcpy
extern _memset
extern _rich4_copy_n_words_0
extern fcn_00402250
extern fcn_0040235d
extern fcn_004552e7
extern fcn_004563f5
extern ref_0046cadc
extern ref_0046cae0
extern ref_0046caec
extern ref_0046caf4
extern ref_0048a068
extern ref_0048a08c
extern ref_0048c888
extern ref_0048c88c
extern ref_0048c890
extern ref_0048c894
extern ref_0048c898

global fcn_00451a5a
global fcn_00451a97
global fcn_00451b36
global fcn_00451b9e
global fcn_00451d4e
global fcn_00451e7e
global fcn_00451edb

section .text

fcn_00451a5a:
mov eax, dword [esp + 4]
imul eax, dword [esp + 8]
add eax, eax
add eax, 0xc
push eax
call _libc_malloc  ; call 0x456f80
add esp, 4
mov edx, dword [esp + 4]
mov word [eax], dx
mov edx, dword [esp + 8]
mov word [eax + 2], dx
mov edx, dword [esp + 0xc]
mov word [eax + 4], dx
mov edx, dword [esp + 0x10]
mov word [eax + 6], dx
lea edx, [eax + 0xc]
mov dword [eax + 8], edx
ret

fcn_00451a97:
push ebx
push esi
push edi
push ebp
sub esp, 8
mov esi, dword [esp + 0x1c]
mov ebx, dword [esp + 0x2c]
imul ebx, dword [esp + 0x30]
add ebx, ebx
add ebx, 0xc
mov ecx, dword [esp + 0x20]
test ecx, ecx
jne short loc_00451ac5  ; jne 0x451ac5
push ebx
call _libc_malloc  ; call 0x456f80
mov ebp, eax
add esp, 4
jmp short loc_00451ac7  ; jmp 0x451ac7

loc_00451ac5:
mov ebp, ecx

loc_00451ac7:
mov ebx, dword [esp + 0x2c]
mov word [ebp], bx
mov ebx, dword [esp + 0x30]
mov word [ebp + 2], bx
mov word [ebp + 4], 0
mov word [ebp + 6], 0
lea ebx, [ebp + 0xc]
mov dword [ebp + 8], ebx
movsx edi, word [esi]
mov ebx, dword [esp + 0x28]
imul ebx, edi
add ebx, dword [esp + 0x24]
add ebx, ebx
add ebx, dword [esi + 8]
mov esi, dword [ebp + 8]
mov eax, dword [esp + 0x2c]
add eax, eax
mov dword [esp + 4], eax
add edi, edi
mov dword [esp], edi
xor edi, edi

loc_00451b10:
cmp edi, dword [esp + 0x30]
jge short loc_00451b2f  ; jge 0x451b2f
mov eax, dword [esp + 0x2c]
push eax
push ebx
push esi
call _rich4_copy_n_words_0  ; call 0x456d8e
add esp, 0xc
add esi, dword [esp + 4]
add ebx, dword [esp]
inc edi
jmp short loc_00451b10  ; jmp 0x451b10

loc_00451b2f:
mov eax, ebp
jmp near loc_00451d46  ; jmp 0x451d46

fcn_00451b36:
push ebx
push esi
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x96000
push 0
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call _memset  ; call 0x456f60
add esp, 0xc
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
push ref_0046cadc  ; push 0x46cadc
mov ecx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
mov ebx, dword [ref_0046cae0]  ; mov ebx, dword [0x46cae0]
push ebx
mov esi, dword [ref_0046cadc]  ; mov esi, dword [0x46cadc]
push esi
push eax
call dword [edx + 0x1c]  ; ucall
pop esi
pop ebx
ret

fcn_00451b9e:
push ebx
push esi
push edi
push ebp
sub esp, 8
mov eax, dword [esp + 0x1c]
mov ebx, dword [eax]
mov dword [ref_0048c888], ebx  ; mov dword [0x48c888], ebx
mov ebx, dword [eax + 8]
mov dword [ref_0048c890], ebx  ; mov dword [0x48c890], ebx
mov ebx, dword [eax + 4]
mov dword [ref_0048c88c], ebx  ; mov dword [0x48c88c], ebx
mov eax, dword [eax + 0xc]
mov dword [ref_0048c894], eax  ; mov dword [0x48c894], eax
mov eax, dword [ref_0048c890]  ; mov eax, dword [0x48c890]
mov edx, dword [ref_0048c888]  ; mov edx, dword [0x48c888]
sub eax, edx
mov dword [esp + 4], eax
mov edi, dword [ref_0048c894]  ; mov edi, dword [0x48c894]
sub edi, ebx
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 7
lea ebp, [edx + eax]
lea ebx, [edi - 1]
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 7
lea ebx, [eax + ebp]
mov dword [esp], ebx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov ebx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [ebx + 0x64]  ; ucall
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
mov dword [ref_0046caf4], eax  ; mov dword [0x46caf4], eax
xor esi, esi
mov eax, dword [esp + 4]
dec eax
add eax, ebp
add eax, eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
add ebx, eax
lea eax, [edi - 1]

loc_00451c3a:
cmp esi, eax
jge short loc_00451c52  ; jge 0x451c52
mov dx, word [ebx]
mov word [esi*2 + ref_0048c898], dx  ; mov word [esi*2 + 0x48c898], dx
inc esi
add ebx, 0x500
jmp short loc_00451c3a  ; jmp 0x451c3a

loc_00451c52:
mov eax, dword [esp + 4]
add eax, eax
push eax
mov ebx, dword [esp + 4]
add ebx, ebx
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
add eax, ebx
push eax
lea eax, [edi + edi]
add eax, ref_0048c898  ; add eax, 0x48c898
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
xor esi, esi
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
sub ebx, 0x500
add ebx, eax
lea ebp, [edi - 1]

loc_00451c8a:
cmp esi, ebp
jge short loc_00451cb1  ; jge 0x451cb1
mov eax, dword [esp + 4]
add eax, eax
sub eax, 2
push eax
push ebx
lea eax, [ebx + 0x502]
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
inc esi
sub ebx, 0x500
jmp short loc_00451c8a  ; jmp 0x451c8a

loc_00451cb1:
push 0xfffffffffffffff0
push 1
mov ebx, dword [esp + 0xc]
push ebx
mov esi, dword [ref_0048c88c]  ; mov esi, dword [0x48c88c]
push esi
mov edi, dword [ref_0048c888]  ; mov edi, dword [0x48c888]
push edi
push ref_0046caec  ; push 0x46caec
call fcn_004552e7  ; call 0x4552e7
add esp, 0x18
push 0xfffffffffffffff0
push ebp
push 1
mov eax, dword [ref_0048c88c]  ; mov eax, dword [0x48c88c]
inc eax
push eax
mov ebp, dword [ref_0048c888]  ; mov ebp, dword [0x48c888]
push ebp
push ref_0046caec  ; push 0x46caec
call fcn_004552e7  ; call 0x4552e7
add esp, 0x18
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov ebx, dword [eax]
push 0
push eax
call dword [ebx + 0x80]  ; ucall
push ref_0048c888  ; push 0x48c888
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov ebx, dword [eax]
push 0x10
push ref_0048c888  ; push 0x48c888
mov edx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov edx, dword [0x48a0e0]
push edx
mov ecx, dword [ref_0048c88c]  ; mov ecx, dword [0x48c88c]
push ecx
mov esi, dword [ref_0048c888]  ; mov esi, dword [0x48c888]
push esi

loc_00451d35:
push eax
call dword [ebx + 0x1c]  ; ucall
push ref_0048c888  ; push 0x48c888
call fcn_00402250  ; call 0x402250
add esp, 4

loc_00451d46:
add esp, 8
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00451d4e:
push ebx
push esi
push edi
push ebp
sub esp, 8
mov ebp, dword [ref_0048c890]  ; mov ebp, dword [0x48c890]
mov edx, dword [ref_0048c888]  ; mov edx, dword [0x48c888]
sub ebp, edx
mov edi, dword [ref_0048c894]  ; mov edi, dword [0x48c894]
mov ecx, dword [ref_0048c88c]  ; mov ecx, dword [0x48c88c]
sub edi, ecx
mov eax, ecx
shl eax, 2
add eax, ecx
shl eax, 7
lea ebx, [edx + eax]
mov dword [esp + 4], ebx
lea ebx, [edi - 1]
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 7
mov ebx, dword [esp + 4]
add ebx, eax
mov dword [esp], ebx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov ebx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [ebx + 0x64]  ; ucall
xor esi, esi
mov eax, dword [esp + 4]
add eax, eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
add eax, 0x502
add ebx, eax

loc_00451dc3:
lea eax, [edi - 1]
cmp esi, eax
jge short loc_00451de8  ; jge 0x451de8
lea eax, [ebp + ebp - 2]
push eax
push ebx
lea eax, [ebx - 0x502]
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
inc esi
add ebx, 0x500
jmp short loc_00451dc3  ; jmp 0x451dc3

loc_00451de8:
xor esi, esi
lea eax, [ebp - 1]
add eax, dword [esp + 4]
add eax, eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
add ebx, eax

loc_00451dfb:
lea eax, [edi - 1]
cmp esi, eax
jge short loc_00451e16  ; jge 0x451e16
mov ax, word [esi*2 + ref_0048c898]  ; mov ax, word [esi*2 + 0x48c898]
mov word [ebx], ax
inc esi
add ebx, 0x500
jmp short loc_00451dfb  ; jmp 0x451dfb

loc_00451e16:
add ebp, ebp
push ebp
lea eax, [edi + edi]
add eax, ref_0048c898  ; add eax, 0x48c898
push eax
mov eax, dword [esp + 8]
add eax, eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
add eax, ebx
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov ebx, dword [eax]
push 0
push eax
call dword [ebx + 0x80]  ; ucall
push ref_0048c888  ; push 0x48c888
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov ebx, dword [eax]
push 0x10
push ref_0048c888  ; push 0x48c888
mov esi, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov esi, dword [0x48a0e0]
push esi
mov edi, dword [ref_0048c88c]  ; mov edi, dword [0x48c88c]
push edi
mov ebp, dword [ref_0048c888]  ; mov ebp, dword [0x48c888]
push ebp
jmp near loc_00451d35  ; jmp 0x451d35

fcn_00451e7e:
push ebx
mov ebx, dword [esp + 8]
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
mov eax, dword [ebx + 0xc]
mov edx, dword [ebx + 4]
sub eax, edx
push eax
mov eax, dword [ebx + 8]
mov ecx, dword [ebx]
sub eax, ecx
push eax
push edx
push ecx
push 0
push ref_0046caec  ; push 0x46caec
call fcn_00451a97  ; call 0x451a97
mov ebx, eax
add esp, 0x18
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov eax, ebx
pop ebx
ret

fcn_00451edb:
push ebx
push esi
push edi
push ebp
sub esp, 0x10
mov esi, dword [esp + 0x24]
mov ebp, dword [esp + 0x28]
mov ebx, dword [esp + 0x2c]
mov edi, 1
test esi, esi
je near loc_00451f84  ; je 0x451f84
test bh, 0x80
je short loc_00451f08  ; je 0x451f08
and ebx, 0x7fff
xor edi, edi

loc_00451f08:
mov dword [esp], ebp
mov dword [esp + 4], ebx
movsx eax, word [esi]
lea edx, [eax + ebp]
mov dword [esp + 8], edx
movsx eax, word [esi + 2]
lea edx, [ebx + eax]
mov dword [esp + 0xc], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push ebx
push ebp
push esi
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
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
mov ecx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
push ebx
push ebp
push eax
call dword [edx + 0x1c]  ; ucall
test edi, edi
je short loc_00451f84  ; je 0x451f84
push esi
call _libc_free  ; call 0x456e11
add esp, 4

loc_00451f84:
add esp, 0x10
pop ebp
pop edi
pop esi
pop ebx
ret

