extern __imp__GetCursorPos@4
extern __imp__ShowCursor@4
extern __imp__timeKillEvent@4
extern __imp__timeSetEvent@20
extern _g_ddraw_ptr
extern _g_ddraw_sf1_ptr
extern _global_rich4_cfg
extern _libc_free
extern _read_mkf
extern _rich4_data_mkf
extern fcn_00451a5a
extern fcn_00451a97
extern fcn_00456280
extern fcn_004562a5
extern ref_0046caf9
extern ref_0046cafa
extern ref_0046cb01

global fcn_004020fa
global fcn_004021b2
global fcn_004021f8
global fcn_00402250
global fcn_0040235d
global fcn_00402460
global fcn_004024a1
global fcn_004024a9
global fcn_004024c0

section .text

fcn_00401e59:
push ebx
push esi
push edi
mov ecx, 0x20
mov edx, ecx
mov eax, dword [esp + 0x10]
mov dword [ref_0048a168], eax  ; mov dword [0x48a168], eax
mov eax, dword [esp + 0x14]
mov dword [ref_0048a164], eax  ; mov dword [0x48a164], eax
movsx ebx, word [ref_0048a172]  ; movsx ebx, word [0x48a172]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, dword [ref_0048a0f4]  ; mov ebx, dword [0x48a0f4]
add eax, ebx
movsx ebx, word [eax + 4]
mov esi, dword [esp + 0x10]
sub esi, ebx
mov dword [ref_0048a0ec], esi  ; mov dword [0x48a0ec], esi
movsx eax, word [eax + 6]
mov ebx, dword [esp + 0x14]
sub ebx, eax
mov dword [ref_0048a0f0], ebx  ; mov dword [0x48a0f0], ebx
test esi, esi
jge short loc_00401ebc  ; jge 0x401ebc
add ecx, esi
xor esi, esi
mov dword [ref_0048a0ec], esi  ; mov dword [0x48a0ec], esi

loc_00401ebc:
mov edi, dword [ref_0048a0f0]  ; mov edi, dword [0x48a0f0]
test edi, edi
jge short loc_00401ecf  ; jge 0x401ecf
add edx, edi
xor eax, eax
mov dword [ref_0048a0f0], eax  ; mov dword [0x48a0f0], eax

loc_00401ecf:
mov eax, dword [ref_0048a0ec]  ; mov eax, dword [0x48a0ec]
add eax, 0x20
cmp eax, 0x280
jle short loc_00401eea  ; jle 0x401eea
mov eax, dword [ref_0048a0ec]  ; mov eax, dword [0x48a0ec]
sub eax, 0x260
sub ecx, eax

loc_00401eea:
mov eax, dword [ref_0048a0f0]  ; mov eax, dword [0x48a0f0]
add eax, 0x20
cmp eax, 0x1e0
jle short loc_00401f05  ; jle 0x401f05
mov eax, dword [ref_0048a0f0]  ; mov eax, dword [0x48a0f0]
sub eax, 0x1c0
sub edx, eax

loc_00401f05:
push edx
push ecx
mov edx, dword [ref_0048a0f0]  ; mov edx, dword [0x48a0f0]
push edx
mov ecx, dword [ref_0048a0ec]  ; mov ecx, dword [0x48a0ec]
push ecx
mov ebx, dword [ref_0048a0e8]  ; mov ebx, dword [0x48a0e8]
push ebx
push ref_0046cb14  ; push 0x46cb14
call fcn_00451a97  ; call 0x451a97
add esp, 0x18
mov esi, dword [esp + 0x14]
push esi
mov edi, dword [esp + 0x14]
push edi
movsx edx, word [ref_0048a172]  ; movsx edx, word [0x48a172]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048a0f4]  ; mov edx, dword [0x48a0f4]
add eax, edx
push eax
push ref_0046cb14  ; push 0x46cb14
call fcn_004562a5  ; call 0x4562a5
add esp, 0x10
pop edi
pop esi
pop ebx
ret

fcn_00401f5e:
push ebx
push esi
cmp dword [ref_0048a168], 0xffffffff  ; cmp dword [0x48a168], 0xffffffff
je short loc_00401f95  ; je 0x401f95
mov ecx, dword [ref_0048a0f0]  ; mov ecx, dword [0x48a0f0]
push ecx
mov ebx, dword [ref_0048a0ec]  ; mov ebx, dword [0x48a0ec]
push ebx
mov esi, dword [ref_0048a0e8]  ; mov esi, dword [0x48a0e8]
push esi
push ref_0046cb14  ; push 0x46cb14
call fcn_00456280  ; call 0x456280
add esp, 0x10
mov dword [ref_0048a168], 0xffffffff  ; mov dword [0x48a168], 0xffffffff

loc_00401f95:
pop esi
pop ebx
ret

fcn_00401f98:
push ebx
push esi
push edi
sub esp, 8
xor ebx, ebx
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je near loc_004020f1  ; je 0x4020f1
xor eax, eax
mov al, byte [(_global_rich4_cfg + 0)]  ; mov al, byte [0x497158]
mov al, byte [eax + ref_0046cb20]  ; mov al, byte [eax + 0x46cb20]
and eax, 0xff
mov edx, dword [ref_0046cb23]  ; mov edx, dword [0x46cb23]
inc edx
mov dword [ref_0046cb23], edx  ; mov dword [0x46cb23], edx
cmp eax, edx
jg short loc_00401fdd  ; jg 0x401fdd
mov dword [ref_0046cb23], ebx  ; mov dword [0x46cb23], ebx
mov byte [ref_0046cafa], 1  ; mov byte [0x46cafa], 1

loc_00401fdd:
test byte [ref_0048a179], 1  ; test byte [0x48a179], 1
je near loc_004020f1  ; je 0x4020f1
cmp byte [ref_0048a17a], 0  ; cmp byte [0x48a17a], 0
jne near loc_004020f1  ; jne 0x4020f1
cmp byte [ref_0046caf9], 0  ; cmp byte [0x46caf9], 0
jne near loc_004020f1  ; jne 0x4020f1
mov byte [ref_0048a17a], 1  ; mov byte [0x48a17a], 1
cmp word [ref_0048a170], 1  ; cmp word [0x48a170], 1
jle short loc_00402065  ; jle 0x402065
mov cx, word [ref_0048a176]  ; mov cx, word [0x48a176]
inc ecx
mov word [ref_0048a176], cx  ; mov word [0x48a176], cx
movsx edx, cx
movsx eax, word [ref_0048a174]  ; movsx eax, word [0x48a174]
cmp edx, eax
jl short loc_00402065  ; jl 0x402065
xor esi, esi
mov word [ref_0048a176], si  ; mov word [0x48a176], si
mov di, word [ref_0048a172]  ; mov di, word [0x48a172]
inc edi
mov word [ref_0048a172], di  ; mov word [0x48a172], di
movsx eax, di
movsx edx, word [ref_0048a170]  ; movsx edx, word [0x48a170]
cmp eax, edx
jne short loc_00402060  ; jne 0x402060
xor eax, edx
mov word [ref_0048a172], ax  ; mov word [0x48a172], ax

loc_00402060:
mov ebx, 1

loc_00402065:
mov eax, esp
push eax
call dword [cs:__imp__GetCursorPos@4]  ; ucall: call dword cs:[0x4622ec]
mov eax, dword [esp]
cmp eax, dword [ref_0048a168]  ; cmp eax, dword [0x48a168]
jne short loc_0040208a  ; jne 0x40208a
mov eax, dword [esp + 4]
cmp eax, dword [ref_0048a164]  ; cmp eax, dword [0x48a164]
jne short loc_0040208a  ; jne 0x40208a
test ebx, ebx
je short loc_004020e9  ; je 0x4020e9

loc_0040208a:
test byte [ref_0048a179], 2  ; test byte [0x48a179], 2
jne short loc_004020a2  ; jne 0x4020a2
mov eax, dword [_g_ddraw_ptr]  ; mov eax, dword [0x48a0d8]
mov ebx, dword [eax]
push 0
push 1
push eax
call dword [ebx + 0x58]  ; ucall

loc_004020a2:
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov ebx, dword [eax]
push 0
push 1
push ref_0048a0f8  ; push 0x48a0f8
push 0
push eax
call dword [ebx + 0x64]  ; ucall
mov eax, dword [ref_0048a11c]  ; mov eax, dword [0x48a11c]
mov dword [ref_0046cb1c], eax  ; mov dword [0x46cb1c], eax
call fcn_00401f5e  ; call 0x401f5e
mov eax, dword [esp + 4]
push eax
mov edx, dword [esp + 4]
push edx
call fcn_00401e59  ; call 0x401e59
add esp, 8
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov ebx, dword [eax]
push 0
push eax
call dword [ebx + 0x80]  ; ucall

loc_004020e9:
xor dl, dl
mov byte [ref_0048a17a], dl  ; mov byte [0x48a17a], dl

loc_004020f1:
add esp, 8
pop edi
pop esi
pop ebx
ret 0x14

fcn_004020fa:
mov edx, dword [ref_0046cb10]  ; mov edx, dword [0x46cb10]
test edx, edx
jne near loc_004021b1  ; jne 0x4021b1
push edx
push edx
push edx
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0046cb10], eax  ; mov dword [0x46cb10], eax
push 0
push 0
push 0x20
push 0x20
call fcn_00451a5a  ; call 0x451a5a
add esp, 0x10
mov dword [ref_0048a0e8], eax  ; mov dword [0x48a0e8], eax
xor ah, ah
mov byte [ref_0048a179], ah  ; mov byte [0x48a179], ah
mov byte [ref_0048a17a], ah  ; mov byte [0x48a17a], ah
mov byte [ref_0048a178], ah  ; mov byte [0x48a178], ah
mov dword [ref_0048a168], 0xffffffff  ; mov dword [0x48a168], 0xffffffff
push 0
call dword [cs:__imp__ShowCursor@4]  ; ucall: call dword cs:[0x46232c]
mov dword [ref_0048a0f8], 0x6c  ; mov dword [0x48a0f8], 0x6c
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push 1
push ref_0048a0f8  ; push 0x48a0f8
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [ref_0048a108]  ; mov eax, dword [0x48a108]
sar eax, 1
mov word [ref_0046cb14], ax  ; mov word [0x46cb14], ax
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 1
push 0
push fcn_00401f98  ; push 0x401f98
push 5
push 0x14
call dword [cs:__imp__timeSetEvent@20]  ; ucall: call dword cs:[0x462474]
mov dword [ref_0048a16c], eax  ; mov dword [0x48a16c], eax

loc_004021b1:
ret

fcn_004021b2:
push ebx
push esi
mov edx, dword [ref_0046cb10]  ; mov edx, dword [0x46cb10]
test edx, edx
je short loc_004021f5  ; je 0x4021f5
xor ah, ah
mov byte [ref_0048a179], ah  ; mov byte [0x48a179], ah
push edx
call _libc_free  ; call 0x456e11
add esp, 4
mov ebx, dword [ref_0048a0e8]  ; mov ebx, dword [0x48a0e8]
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
mov esi, dword [ref_0048a16c]  ; mov esi, dword [0x48a16c]
push esi
call dword [cs:__imp__timeKillEvent@4]  ; ucall: call dword cs:[0x462470]
push 1
call dword [cs:__imp__ShowCursor@4]  ; ucall: call dword cs:[0x46232c]

loc_004021f5:
pop esi
pop ebx
ret

fcn_004021f8:
mov ecx, dword [ref_0046cb10]  ; mov ecx, dword [0x46cb10]
mov edx, dword [esp + 4]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
add ecx, 0xc
add ecx, eax
mov dword [ref_0048a0f4], ecx  ; mov dword [0x48a0f4], ecx
mov eax, dword [esp + 8]
mov word [ref_0048a170], ax  ; mov word [0x48a170], ax
mov eax, dword [esp + 0xc]
mov word [ref_0048a174], ax  ; mov word [0x48a174], ax
xor edx, edx
mov word [ref_0048a172], dx  ; mov word [0x48a172], dx
mov word [ref_0048a176], dx  ; mov word [0x48a176], dx
push 0
call fcn_0040235d  ; call 0x40235d
add esp, 4
push 0
call fcn_00402250  ; call 0x402250
add esp, 4
ret

fcn_00402250:
push ebx
push esi
sub esp, 8
mov ebx, dword [esp + 0x14]
mov ah, byte [ref_0048a178]  ; mov ah, byte [0x48a178]
cmp ah, 1
jne near loc_00402357  ; jne 0x402357
cmp byte [ref_0046caf9], 0  ; cmp byte [0x46caf9], 0
jne near loc_00402357  ; jne 0x402357
test byte [ref_0048a179], ah  ; test byte [0x48a179], ah
jne near loc_00402357  ; jne 0x402357
mov eax, esp
push eax
call dword [cs:__imp__GetCursorPos@4]  ; ucall: call dword cs:[0x4622ec]
test ebx, ebx
je near loc_004022ff  ; je 0x4022ff
movsx edx, word [ref_0048a172]  ; movsx edx, word [0x48a172]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048a0f4]  ; mov edx, dword [0x48a0f4]
add eax, edx
movsx edx, word [eax + 4]
mov ecx, dword [esp]
sub ecx, edx
mov edx, ecx
movsx eax, word [eax + 6]
mov ecx, dword [esp + 4]
sub ecx, eax
mov eax, ecx
lea ecx, [edx + 0x20]
lea esi, [eax + 0x20]
cmp edx, dword [ebx + 8]
jge short loc_004022dc  ; jge 0x4022dc
cmp ecx, dword [ebx]
jle short loc_004022dc  ; jle 0x4022dc
cmp eax, dword [ebx + 0xc]
jge short loc_004022dc  ; jge 0x4022dc
cmp esi, dword [ebx + 4]
jg short loc_004022ff  ; jg 0x4022ff

loc_004022dc:
mov eax, dword [ref_0048a0ec]  ; mov eax, dword [0x48a0ec]
cmp eax, dword [ebx + 8]
jge short loc_00402357  ; jge 0x402357
add eax, 0x20
cmp eax, dword [ebx]
jle short loc_00402357  ; jle 0x402357
mov eax, dword [ref_0048a0f0]  ; mov eax, dword [0x48a0f0]
cmp eax, dword [ebx + 0xc]
jge short loc_00402357  ; jge 0x402357
add eax, 0x20
cmp eax, dword [ebx + 4]
jle short loc_00402357  ; jle 0x402357

loc_004022ff:
mov byte [ref_0048a17a], 1  ; mov byte [0x48a17a], 1
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov ebx, dword [eax]
push 0
push 1
push ref_0048a0f8  ; push 0x48a0f8
push 0
push eax
call dword [ebx + 0x64]  ; ucall
mov eax, dword [ref_0048a11c]  ; mov eax, dword [0x48a11c]
mov dword [ref_0046cb1c], eax  ; mov dword [0x46cb1c], eax
mov ecx, dword [esp + 4]
push ecx
mov ebx, dword [esp + 4]
push ebx
call fcn_00401e59  ; call 0x401e59
add esp, 8
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
xor bh, bh
mov byte [ref_0048a17a], bh  ; mov byte [0x48a17a], bh
or byte [ref_0048a179], 1  ; or byte [0x48a179], 1

loc_00402357:
add esp, 8
pop esi
pop ebx
ret

fcn_0040235d:
push ebx
push esi
sub esp, 8
mov ebx, dword [esp + 0x14]
mov ah, byte [ref_0048a178]  ; mov ah, byte [0x48a178]
cmp ah, 1
jne short loc_00402357  ; jne 0x402357
cmp byte [ref_0046caf9], 0  ; cmp byte [0x46caf9], 0
jne short loc_00402357  ; jne 0x402357
test byte [ref_0048a179], ah  ; test byte [0x48a179], ah
je short loc_00402357  ; je 0x402357
mov eax, esp
push eax
call dword [cs:__imp__GetCursorPos@4]  ; ucall: call dword cs:[0x4622ec]
test ebx, ebx
je near loc_00402410  ; je 0x402410
movsx edx, word [ref_0048a172]  ; movsx edx, word [0x48a172]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048a0f4]  ; mov edx, dword [0x48a0f4]
add eax, edx
movsx edx, word [eax + 4]
mov ecx, dword [esp]
sub ecx, edx
mov edx, ecx
movsx eax, word [eax + 6]
mov ecx, dword [esp + 4]
sub ecx, eax
mov eax, ecx
lea ecx, [edx + 0x20]
lea esi, [eax + 0x20]
cmp edx, dword [ebx + 8]
jge short loc_004023dd  ; jge 0x4023dd
cmp ecx, dword [ebx]
jle short loc_004023dd  ; jle 0x4023dd
cmp eax, dword [ebx + 0xc]
jge short loc_004023dd  ; jge 0x4023dd
cmp esi, dword [ebx + 4]
jg short loc_00402410  ; jg 0x402410

loc_004023dd:
mov eax, dword [ref_0048a0ec]  ; mov eax, dword [0x48a0ec]
cmp eax, dword [ebx + 8]
jge near loc_00402357  ; jge 0x402357
add eax, 0x20
cmp eax, dword [ebx]
jle near loc_00402357  ; jle 0x402357
mov eax, dword [ref_0048a0f0]  ; mov eax, dword [0x48a0f0]
cmp eax, dword [ebx + 0xc]
jge near loc_00402357  ; jge 0x402357
add eax, 0x20
cmp eax, dword [ebx + 4]
jle near loc_00402357  ; jle 0x402357

loc_00402410:
mov byte [ref_0048a17a], 1  ; mov byte [0x48a17a], 1
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov ebx, dword [eax]
push 0
push 1
push ref_0048a0f8  ; push 0x48a0f8
push 0
push eax
call dword [ebx + 0x64]  ; ucall
mov eax, dword [ref_0048a11c]  ; mov eax, dword [0x48a11c]
mov dword [ref_0046cb1c], eax  ; mov dword [0x46cb1c], eax
call fcn_00401f5e  ; call 0x401f5e
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
xor bh, bh
mov byte [ref_0048a17a], bh  ; mov byte [0x48a17a], bh
and byte [ref_0048a179], 0xfe  ; and byte [0x48a179], 0xfe
jmp near loc_00402357  ; jmp 0x402357

fcn_00402460:
cmp dword [esp + 4], 1
jne short loc_00402484  ; jne 0x402484
mov al, byte [esp + 4]
mov byte [ref_0048a178], al  ; mov byte [0x48a178], al
test byte [ref_0048a179], 1  ; test byte [0x48a179], 1
jne short loc_004024a0  ; jne 0x4024a0
push 0
call fcn_00402250  ; call 0x402250
add esp, 4
ret

loc_00402484:
test byte [ref_0048a179], 1  ; test byte [0x48a179], 1
je short loc_00402497  ; je 0x402497
push 0
call fcn_0040235d  ; call 0x40235d
add esp, 4

loc_00402497:
mov al, byte [esp + 4]
mov byte [ref_0048a178], al  ; mov byte [0x48a178], al

loc_004024a0:
ret

fcn_004024a1:
xor eax, eax
mov al, byte [ref_0048a178]  ; mov al, byte [0x48a178]
ret

fcn_004024a9:
cmp dword [esp + 4], 1
jne short loc_004024b8  ; jne 0x4024b8
and byte [ref_0048a179], 0xfd  ; and byte [0x48a179], 0xfd
ret

loc_004024b8:
or byte [ref_0048a179], 2  ; or byte [0x48a179], 2
ret

fcn_004024c0:
push ebx
sub esp, 8
mov ebx, dword [esp + 0x10]
mov eax, esp
push eax
call dword [cs:__imp__GetCursorPos@4]  ; ucall: call dword cs:[0x4622ec]
movsx edx, word [ref_0048a172]  ; movsx edx, word [0x48a172]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048a0f4]  ; mov eax, dword [0x48a0f4]
movsx eax, word [edx + eax + 4]
mov edx, dword [esp]
sub edx, eax
mov dword [ebx], edx
movsx edx, word [ref_0048a172]  ; movsx edx, word [0x48a172]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, dword [ref_0048a0f4]  ; mov edx, dword [0x48a0f4]
movsx eax, word [edx + eax*4 + 6]
mov edx, dword [esp + 4]
sub edx, eax
mov dword [ebx + 4], edx
mov eax, dword [ebx]
add eax, 0x20
mov dword [ebx + 8], eax
mov eax, dword [ebx + 4]
add eax, 0x20
mov dword [ebx + 0xc], eax
cmp dword [ebx], 0
jge short loc_00402534  ; jge 0x402534
mov dword [ebx], 0

loc_00402534:
cmp dword [ebx + 4], 0
jge short loc_00402541  ; jge 0x402541
mov dword [ebx + 4], 0

loc_00402541:
cmp dword [ebx + 8], 0x280
jle short loc_00402551  ; jle 0x402551
mov dword [ebx + 8], 0x280

loc_00402551:
cmp dword [ebx + 0xc], 0x1e0
jle short loc_00402561  ; jle 0x402561
mov dword [ebx + 0xc], 0x1e0

loc_00402561:
add esp, 8
pop ebx
ret

section .data

ref_0046cb10:
dd 0x00000000

ref_0046cb14:
dd 0x01e00280
dd 0x00000000

ref_0046cb1c:
dd 0x00000000

ref_0046cb20:
db 0x06
db 0x04
db 0x02

ref_0046cb23:
db 0x00
dd 0x00000000

section .bss

ref_0048a0e8:
resb 4

ref_0048a0ec:
resb 4

ref_0048a0f0:
resb 4

ref_0048a0f4:
resb 4

ref_0048a0f8:
resb 16

ref_0048a108:
resb 20

ref_0048a11c:
resb 72

ref_0048a164:
resb 4

ref_0048a168:
resb 4

ref_0048a16c:
resb 4

ref_0048a170:
resb 2

ref_0048a172:
resb 2

ref_0048a174:
resb 2

ref_0048a176:
resb 2

ref_0048a178:
resb 1

ref_0048a179:
resb 1

ref_0048a17a:
resb 6
