extern __imp__PeekMessageA@20
extern __imp__timeGetTime@0
extern _global_rich4_cfg
extern _libc_free
extern _memcpy
extern _read_mkf
extern fcn_004528b9
extern fcn_00454d2c
extern ref_0047e748
extern ref_0047e74c
extern ref_0047e750
extern ref_0047e754
extern ref_0047e758
extern _rich4_speaking_mkf
extern _rich4_effect_mkf
extern ref_0048cae0
extern ref_0048cae4
extern ref_0048cae8
extern ref_0048cb28
extern ref_0048cb2c
extern ref_0048cb30
extern ref_0048cb34
extern ref_0048cb38
extern ref_0048cb3c
extern ref_0048cb4c

global fcn_00453d28
global fcn_00454176
global fcn_004541e3
global fcn_00454240
global fcn_004542ce
global fcn_004542e9
global fcn_00454304
global fcn_0045434f
global fcn_004543c4
global fcn_0045441a
global fcn_00454493
global fcn_004544b9
global fcn_004544f6

section .text

fcn_00453d28:
push ebx
push esi
push edi
push ebp
xor esi, esi
jmp short loc_00453d36  ; jmp 0x453d36

loc_00453d30:
inc esi
cmp esi, 0x10
jge short loc_00453d65  ; jge 0x453d65

loc_00453d36:
mov ebx, esi
shl ebx, 2
mov edx, dword [ebx + ref_0048cae8]  ; mov edx, dword [ebx + 0x48cae8]
test edx, edx
je short loc_00453d30  ; je 0x453d30
mov ebx, edx

loc_00453d47:
cmp dword [ebx], 0xffffffff
je short loc_00453d30  ; je 0x453d30
mov edi, dword [ebx + 4]
test edi, edi
je short loc_00453d30  ; je 0x453d30
mov edx, dword [edi]
push edi
call dword [edx + 8]  ; ucall
mov dword [ebx + 4], 0
add ebx, 8
jmp short loc_00453d47  ; jmp 0x453d47

loc_00453d65:
xor ebp, ebp
mov dword [ref_0048cae4], ebp  ; mov dword [0x48cae4], ebp
mov eax, dword [ref_0047e754]  ; mov eax, dword [0x47e754]
test eax, eax
je short loc_00453d82  ; je 0x453d82
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
mov dword [ref_0047e754], ebp  ; mov dword [0x47e754], ebp

loc_00453d82:
mov ecx, dword [ref_0047e750]  ; mov ecx, dword [0x47e750]
test ecx, ecx
je short loc_00453d9a  ; je 0x453d9a
mov edx, dword [ecx]
push ecx
call dword [edx + 8]  ; ucall
xor ebx, ebx
mov dword [ref_0047e750], ebx  ; mov dword [0x47e750], ebx

loc_00453d9a:
mov esi, dword [ref_0047e74c]  ; mov esi, dword [0x47e74c]
test esi, esi
je short loc_00453db2  ; je 0x453db2
mov edx, dword [esi]
push esi
call dword [edx + 8]  ; ucall
xor edi, edi
mov dword [ref_0047e74c], edi  ; mov dword [0x47e74c], edi

loc_00453db2:
mov ebp, dword [ref_0047e748]  ; mov ebp, dword [0x47e748]
test ebp, ebp
je short loc_00453dca  ; je 0x453dca
mov edx, dword [ebp]
push ebp
call dword [edx + 8]  ; ucall
xor eax, eax
mov dword [ref_0047e748], eax  ; mov dword [0x47e748], eax

loc_00453dca:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00453dcf:
push ebx
push esi
push edi
push ebp
sub esp, 0x14
mov esi, dword [esp + 0x28]
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_00453de7  ; je 0x453de7
test esi, esi
jne short loc_00453dee  ; jne 0x453dee

loc_00453de7:
xor eax, eax
jmp near loc_00453f64  ; jmp 0x453f64

loc_00453dee:
cmp byte [esi], 0x52
jne short loc_00453de7  ; jne 0x453de7
cmp byte [esi + 1], 0x49
jne short loc_00453de7  ; jne 0x453de7
mov dh, byte [esi + 2]
cmp dh, 0x46
jne short loc_00453de7  ; jne 0x453de7
cmp dh, byte [esi + 3]
jne short loc_00453de7  ; jne 0x453de7
push 0x10
lea eax, [esi + 0x14]
push eax
push ref_0048cb3c  ; push 0x48cb3c
call _memcpy  ; call 0x456de8
add esp, 0xc
xor edx, edx
mov word [ref_0048cb4c], dx  ; mov word [0x48cb4c], dx
mov ebx, dword [esi + 0x10]
add ebx, 0x14

loc_00453e28:
lea eax, [esi + ebx]
cmp byte [eax], 0x64
jne short loc_00453e43  ; jne 0x453e43
mov ch, byte [eax + 1]
cmp ch, 0x61
jne short loc_00453e43  ; jne 0x453e43
cmp byte [eax + 2], 0x74
jne short loc_00453e43  ; jne 0x453e43
cmp ch, byte [eax + 3]
je short loc_00453e50  ; je 0x453e50

loc_00453e43:
lea eax, [esi + ebx]
mov edi, dword [eax + 4]
add edi, 8
add ebx, edi
jmp short loc_00453e28  ; jmp 0x453e28

loc_00453e50:
mov edi, dword [eax + 4]
mov dword [ref_0048cb28], 0x14  ; mov dword [0x48cb28], 0x14
mov dword [ref_0048cb2c], 0xe2  ; mov dword [0x48cb2c], 0xe2
mov dword [ref_0048cb30], edi  ; mov dword [0x48cb30], edi
xor eax, eax
mov dword [ref_0048cb34], eax  ; mov dword [0x48cb34], eax
mov dword [ref_0048cb38], ref_0048cb3c  ; mov dword [0x48cb38], 0x48cb3c
mov eax, dword [ref_0047e748]  ; mov eax, dword [0x47e748]
mov edx, dword [eax]
push 0
lea ecx, [esp + 4]
push ecx
push ref_0048cb28  ; push 0x48cb28
push eax
call dword [edx + 0xc]  ; ucall
test eax, eax
jne near loc_00453de7  ; jne 0x453de7
mov eax, dword [esp]
mov eax, dword [eax]
push 0
lea edx, [esp + 0x14]
push edx
lea edx, [esp + 0x10]
push edx
lea edx, [esp + 0x18]
push edx
lea edx, [esp + 0x14]
push edx
push edi
push 0
mov ecx, dword [esp + 0x1c]
push ecx
call dword [eax + 0x2c]  ; ucall
mov edx, eax
cmp eax, 0x88780096
jne short loc_00453f00  ; jne 0x453f00
mov eax, dword [esp]
mov eax, dword [eax]
mov ebp, dword [esp]
push ebp
call dword [eax + 0x50]  ; ucall
mov eax, dword [esp]
mov eax, dword [eax]
push 0
lea edx, [esp + 0x14]
push edx
lea edx, [esp + 0x10]
push edx
lea edx, [esp + 0x18]
push edx
lea edx, [esp + 0x14]
push edx
push edi
push 0
mov edx, dword [esp + 0x1c]
push edx
call dword [eax + 0x2c]  ; ucall
mov edx, eax

loc_00453f00:
test edx, edx
jne near loc_00453de7  ; jne 0x453de7
mov ecx, dword [esp + 0xc]
push ecx
add ebx, esi
lea eax, [ebx + 8]
push eax
mov esi, dword [esp + 0xc]
push esi
call _memcpy  ; call 0x456de8
add esp, 0xc
mov ebp, dword [esp + 0xc]
cmp edi, ebp
je short loc_00453f40  ; je 0x453f40
mov eax, dword [esp + 0x10]
push eax
add ebx, ebp
add ebx, 8
push ebx
mov ecx, dword [esp + 0x10]
push ecx
call _memcpy  ; call 0x456de8
add esp, 0xc

loc_00453f40:
mov eax, dword [esp]
mov eax, dword [eax]
mov ebx, dword [esp + 0x10]
push ebx
lea edx, [esp + 0xc]
push edx
mov esi, dword [esp + 0x14]
push esi
lea edx, [esp + 0x10]
push edx
mov edi, dword [esp + 0x10]
push edi
call dword [eax + 0x4c]  ; ucall
mov eax, dword [esp]

loc_00453f64:
add esp, 0x14
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00453f6c:
push ebx
push esi
push edi
push ebp
sub esp, 0x10
mov ebp, dword [esp + 0x24]
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_00453fc1  ; je 0x453fc1
test ebp, ebp
je short loc_00453fc1  ; je 0x453fc1
push 0
push 0
mov ecx, dword [esp + 0x30]
push ecx
mov ebx, dword [_rich4_effect_mkf]  ; mov ebx, dword [0x48a058]
push ebx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
mov esi, eax
cmp byte [eax], 0x52
jne short loc_00453fb8  ; jne 0x453fb8
cmp byte [ebx + 1], 0x49
jne short loc_00453fb8  ; jne 0x453fb8
mov dh, byte [ebx + 2]
cmp dh, 0x46
jne short loc_00453fb8  ; jne 0x453fb8
cmp dh, byte [ebx + 3]
je short loc_00453fc8  ; je 0x453fc8

loc_00453fb8:
push esi
call _libc_free  ; call 0x456e11
add esp, 4

loc_00453fc1:
xor eax, eax
jmp near loc_004540d0  ; jmp 0x4540d0

loc_00453fc8:
push 0x10
lea eax, [ebx + 0x14]
push eax
push ref_0048cb3c  ; push 0x48cb3c
call _memcpy  ; call 0x456de8
add esp, 0xc
xor edx, edx
mov word [ref_0048cb4c], dx  ; mov word [0x48cb4c], dx
mov ebx, dword [ebx + 0x10]
add ebx, 0x14

loc_00453fea:
lea eax, [esi + ebx]
cmp byte [eax], 0x64
jne short loc_00454005  ; jne 0x454005
mov dl, byte [eax + 1]
cmp dl, 0x61
jne short loc_00454005  ; jne 0x454005
cmp byte [eax + 2], 0x74
jne short loc_00454005  ; jne 0x454005
cmp dl, byte [eax + 3]
je short loc_00454012  ; je 0x454012

loc_00454005:
lea eax, [esi + ebx]
mov edi, dword [eax + 4]
add edi, 8
add ebx, edi
jmp short loc_00453fea  ; jmp 0x453fea

loc_00454012:
mov edi, dword [eax + 4]
mov eax, dword [ebp]
push 0
lea edx, [esp + 0x10]
push edx
lea edx, [esp + 0xc]
push edx
lea edx, [esp + 0x14]
push edx
lea edx, [esp + 0x10]
push edx
push edi
push 0
push ebp
call dword [eax + 0x2c]  ; ucall
mov edx, eax
cmp eax, 0x88780096
jne short loc_00454067  ; jne 0x454067
mov eax, dword [ebp]
push ebp
call dword [eax + 0x50]  ; ucall
mov eax, dword [ebp]
push 0
lea edx, [esp + 0x10]
push edx
lea edx, [esp + 0xc]
push edx
lea edx, [esp + 0x14]
push edx
lea edx, [esp + 0x10]
push edx
push edi
push 0
push ebp
call dword [eax + 0x2c]  ; ucall
mov edx, eax

loc_00454067:
test edx, edx
jne near loc_00453fb8  ; jne 0x453fb8
mov eax, dword [esp + 8]
push eax
add ebx, esi
lea eax, [ebx + 8]
push eax
mov edx, dword [esp + 8]
push edx
call _memcpy  ; call 0x456de8
add esp, 0xc
mov ecx, dword [esp + 8]
cmp edi, ecx
je short loc_004540a7  ; je 0x4540a7
mov edi, dword [esp + 0xc]
push edi
add ebx, ecx
add ebx, 8
push ebx
mov edx, dword [esp + 0xc]
push edx
call _memcpy  ; call 0x456de8
add esp, 0xc

loc_004540a7:
mov eax, dword [ebp]
mov ecx, dword [esp + 0xc]
push ecx
lea edx, [esp + 8]
push edx
mov ebx, dword [esp + 0x10]
push ebx
lea edx, [esp + 0xc]
push edx
push ebp
call dword [eax + 0x4c]  ; ucall
push esi
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, 1

loc_004540d0:
add esp, 0x10
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_004540d8:
push ebx
push esi
push edi
mov ebx, dword [esp + 0x10]
test ebx, ebx
je short loc_00454150  ; je 0x454150
cmp byte [(_global_rich4_cfg + 3)], 0  ; cmp byte [0x49715b], 0
je short loc_00454150  ; je 0x454150
mov eax, dword [ebx]
push 0
push ebx
call dword [eax + 0x34]  ; ucall
mov eax, dword [ebx]
mov edx, dword [esp + 0x18]
push edx
push 0
push 0
push ebx
call dword [eax + 0x30]  ; ucall
cmp eax, 0x88780096
jne short loc_0045412c  ; jne 0x45412c
mov ecx, dword [esp + 0x14]
push ecx
push ebx
call fcn_00453f6c  ; call 0x453f6c
add esp, 8
cmp eax, 1
jne short loc_0045412c  ; jne 0x45412c
mov eax, dword [ebx]
mov esi, dword [esp + 0x18]
push esi
push 0
push 0
push ebx
call dword [eax + 0x30]  ; ucall

loc_0045412c:
mov edx, dword [ebx]
xor eax, eax
mov al, byte [(_global_rich4_cfg + 3)]  ; mov al, byte [0x49715b]
mov edi, dword [eax*4 + ref_0047e758]  ; mov edi, dword [eax*4 + 0x47e758]
push edi
push ebx
call dword [edx + 0x3c]  ; ucall
mov eax, dword [esp + 0x14]
mov dword [ref_0048cae0], eax  ; mov dword [0x48cae0], eax
mov dword [ref_0048cae4], ebx  ; mov dword [0x48cae4], ebx

loc_00454150:
pop edi
pop esi
pop ebx
ret

endloc_00454154:
dd 0x24548b53
db 0x08
db 0x83
db 0x3d
dd ref_0047e748
db 0x00
dd 0xd2851274
dd 0x028b0e74
dd 0x4850ff52
dd 0x1d89db31
dd ref_0048cae4
db 0x5b
db 0xc3

fcn_00454176:
push ebx
push esi
push edi
mov ebx, dword [esp + 0x10]
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_004541df  ; je 0x4541df

loc_00454186:
mov ecx, dword [ebx]
cmp ecx, 0xffffffff
je short loc_004541bd  ; je 0x4541bd
push 0
push 0
push ecx
mov edi, dword [_rich4_effect_mkf]  ; mov edi, dword [0x48a058]
push edi
call _read_mkf  ; call 0x450441
mov esi, eax
add esp, 0x10
push eax
call fcn_00453dcf  ; call 0x453dcf
add esp, 4
mov dword [ebx + 4], eax
push esi
call _libc_free  ; call 0x456e11
add esp, 4
add ebx, 8
jmp short loc_00454186  ; jmp 0x454186

loc_004541bd:
xor eax, eax
jmp short loc_004541c7  ; jmp 0x4541c7

loc_004541c1:
inc eax
cmp eax, 0x10
jge short loc_004541df  ; jge 0x4541df

loc_004541c7:
mov ebx, eax
shl ebx, 2
cmp dword [ebx + ref_0048cae8], 0  ; cmp dword [ebx + 0x48cae8], 0
jne short loc_004541c1  ; jne 0x4541c1
mov eax, dword [esp + 0x10]
mov dword [ebx + ref_0048cae8], eax  ; mov dword [ebx + 0x48cae8], eax

loc_004541df:
pop edi
pop esi
pop ebx
ret

fcn_004541e3:
push ebx
push esi
push edi
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_004541df  ; je 0x4541df
xor edi, edi
jmp short loc_004541f9  ; jmp 0x4541f9

loc_004541f3:
inc edi
cmp edi, 0x10
jge short loc_004541df  ; jge 0x4541df

loc_004541f9:
mov ebx, edi
shl ebx, 2
mov ecx, dword [ebx + ref_0048cae8]  ; mov ecx, dword [ebx + 0x48cae8]
test ecx, ecx
je short loc_004541f3  ; je 0x4541f3
mov ebx, ecx

loc_0045420a:
mov esi, dword [ebx]
cmp esi, 0xffffffff
je short loc_004541f3  ; je 0x4541f3
push 0
push 0
push esi
mov eax, dword [_rich4_effect_mkf]  ; mov eax, dword [0x48a058]
push eax
call _read_mkf  ; call 0x450441
mov esi, eax
add esp, 0x10
push eax
call fcn_00453dcf  ; call 0x453dcf
add esp, 4
mov dword [ebx + 4], eax
push esi
call _libc_free  ; call 0x456e11
add esp, 4
add ebx, 8
jmp short loc_0045420a  ; jmp 0x45420a

fcn_00454240:
push ebx
push esi
push edi
push ebp
sub esp, 4
mov esi, dword [esp + 0x18]
mov ebx, esi
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je near loc_004542c6  ; je 0x4542c6

loc_0045425a:
cmp dword [ebx], 0xffffffff
je short loc_004542a7  ; je 0x4542a7
mov edi, dword [ebx + 4]
test edi, edi
je short loc_004542a2  ; je 0x4542a2
mov edx, dword [edi]
mov ecx, esp
push ecx
push edi
call dword [edx + 0x24]  ; ucall
test byte [esp], 1
je short loc_0045427e  ; je 0x45427e
mov eax, dword [ebx + 4]
mov edx, dword [eax]
push eax
call dword [edx + 0x48]  ; ucall

loc_0045427e:
mov eax, dword [ebx + 4]
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
mov eax, dword [ebx + 4]
mov ebp, dword [ref_0048cae4]  ; mov ebp, dword [0x48cae4]
cmp eax, ebp
jne short loc_0045429b  ; jne 0x45429b
xor eax, ebp
mov dword [ref_0048cae4], eax  ; mov dword [0x48cae4], eax

loc_0045429b:
mov dword [ebx + 4], 0

loc_004542a2:
add ebx, 8
jmp short loc_0045425a  ; jmp 0x45425a

loc_004542a7:
xor eax, eax
jmp short loc_004542b1  ; jmp 0x4542b1

loc_004542ab:
inc eax
cmp eax, 0x10
jge short loc_004542c6  ; jge 0x4542c6

loc_004542b1:
mov ebx, eax
shl ebx, 2
cmp esi, dword [ebx + ref_0048cae8]  ; cmp esi, dword [ebx + 0x48cae8]
jne short loc_004542ab  ; jne 0x4542ab
xor ecx, ecx
mov dword [ebx + ref_0048cae8], ecx  ; mov dword [ebx + 0x48cae8], ecx

loc_004542c6:
add esp, 4
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_004542ce:
push ebx
mov eax, dword [esp + 8]
mov edx, dword [esp + 0xc]
push edx
mov ecx, dword [eax]
push ecx
mov ebx, dword [eax + 4]
push ebx
call fcn_004540d8  ; call 0x4540d8
add esp, 0xc
pop ebx
ret

fcn_004542e9:
mov eax, dword [esp + 4]
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_00454303  ; je 0x454303
mov ecx, dword [eax + 4]
test ecx, ecx
je short loc_00454303  ; je 0x454303
mov edx, dword [ecx]
push ecx
call dword [edx + 0x48]  ; ucall

loc_00454303:
ret

fcn_00454304:
push ebx
call fcn_00454395  ; call 0x454395
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_0045434d  ; je 0x45434d
cmp byte [(_global_rich4_cfg + 3)], 0  ; cmp byte [0x49715b], 0
je short loc_0045434d  ; je 0x45434d
push 0
push 0
mov ecx, dword [esp + 0x10]
push ecx
mov ebx, dword [_rich4_effect_mkf]  ; mov ebx, dword [0x48a058]
push ebx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push eax
call fcn_00453dcf  ; call 0x453dcf
add esp, 4
mov dword [ref_0047e754], eax  ; mov dword [0x47e754], eax
push ebx
call _libc_free  ; call 0x456e11
add esp, 4

loc_0045434d:
pop ebx
ret

fcn_0045434f:
push ebx
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_00454393  ; je 0x454393
cmp byte [(_global_rich4_cfg + 3)], 0  ; cmp byte [0x49715b], 0
je short loc_00454393  ; je 0x454393
mov ecx, dword [ref_0047e754]  ; mov ecx, dword [0x47e754]
test ecx, ecx
je short loc_00454393  ; je 0x454393
mov edx, dword [ecx]
push 0
push 0
push 0
push ecx
call dword [edx + 0x30]  ; ucall
mov eax, dword [ref_0047e754]  ; mov eax, dword [0x47e754]
mov edx, dword [eax]
xor ecx, ecx
mov cl, byte [(_global_rich4_cfg + 3)]  ; mov cl, byte [0x49715b]
mov ebx, dword [ecx*4 + ref_0047e758]  ; mov ebx, dword [ecx*4 + 0x47e758]
push ebx
push eax
call dword [edx + 0x3c]  ; ucall

loc_00454393:
pop ebx
ret

fcn_00454395:
push ebx
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_004543c2  ; je 0x4543c2
mov ecx, dword [ref_0047e754]  ; mov ecx, dword [0x47e754]
test ecx, ecx
je short loc_004543c2  ; je 0x4543c2
mov edx, dword [ecx]
push ecx
call dword [edx + 0x48]  ; ucall
mov eax, dword [ref_0047e754]  ; mov eax, dword [0x47e754]
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
xor ebx, ebx
mov dword [ref_0047e754], ebx  ; mov dword [0x47e754], ebx

loc_004543c2:
pop ebx
ret

fcn_004543c4:
push ebx
push esi
sub esp, 4
call dword [cs:__imp__timeGetTime@0]  ; ucall: call dword cs:[0x46246c]
mov esi, eax
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_00454414  ; je 0x454414
cmp dword [ref_0048cae4], 0  ; cmp dword [0x48cae4], 0
je short loc_00454414  ; je 0x454414
cmp byte [(_global_rich4_cfg + 3)], 0  ; cmp byte [0x49715b], 0
je short loc_00454414  ; je 0x454414

loc_004543ed:
call dword [cs:__imp__timeGetTime@0]  ; ucall: call dword cs:[0x46246c]
mov ebx, eax
sub ebx, esi
mov eax, dword [ref_0048cae4]  ; mov eax, dword [0x48cae4]
mov edx, dword [eax]
mov ecx, esp
push ecx
push eax
call dword [edx + 0x24]  ; ucall
test byte [esp], 1
je short loc_00454414  ; je 0x454414
cmp ebx, 0x3e8
jb short loc_004543ed  ; jb 0x4543ed

loc_00454414:
add esp, 4
pop esi
pop ebx
ret

fcn_0045441a:
push ebx
push esi
cmp dword [ref_0047e748], 0  ; cmp dword [0x47e748], 0
je short loc_00454490  ; je 0x454490
cmp byte [(_global_rich4_cfg + 3)], 0  ; cmp byte [0x49715b], 0
je short loc_00454490  ; je 0x454490
call fcn_00454493  ; call 0x454493
push 0
push 0
mov ecx, dword [esp + 0x14]
push ecx
mov ebx, dword [_rich4_speaking_mkf]  ; mov ebx, dword [0x48a054]
push ebx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push eax
call fcn_00453dcf  ; call 0x453dcf
add esp, 4
mov dword [ref_0047e750], eax  ; mov dword [0x47e750], eax
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, dword [ref_0047e750]  ; mov eax, dword [0x47e750]
mov edx, dword [eax]
push 0
push 0
push 0
push eax
call dword [edx + 0x30]  ; ucall
mov eax, dword [ref_0047e750]  ; mov eax, dword [0x47e750]
mov ebx, dword [eax]
xor edx, edx
mov dl, byte [(_global_rich4_cfg + 3)]  ; mov dl, byte [0x49715b]
mov esi, dword [edx*4 + ref_0047e758]  ; mov esi, dword [edx*4 + 0x47e758]
push esi
push eax
call dword [ebx + 0x3c]  ; ucall

loc_00454490:
pop esi
pop ebx
ret

fcn_00454493:
mov edx, dword [ref_0047e750]  ; mov edx, dword [0x47e750]
test edx, edx
je short loc_004544b8  ; je 0x4544b8
mov eax, edx
mov edx, dword [edx]
push eax
call dword [edx + 0x48]  ; ucall
mov eax, dword [ref_0047e750]  ; mov eax, dword [0x47e750]
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
xor ecx, ecx
mov dword [ref_0047e750], ecx  ; mov dword [0x47e750], ecx

loc_004544b8:
ret

fcn_004544b9:
push ebx
sub esp, 4
xor ebx, ebx
mov edx, dword [ref_0047e750]  ; mov edx, dword [0x47e750]
test edx, edx
je short loc_004544ef  ; je 0x4544ef
cmp byte [(_global_rich4_cfg + 3)], 0  ; cmp byte [0x49715b], 0
je short loc_004544ef  ; je 0x4544ef
mov eax, edx
mov edx, dword [edx]
mov ecx, esp
push ecx
push eax
call dword [edx + 0x24]  ; ucall
test byte [esp], 1
je short loc_004544ea  ; je 0x4544ea
mov ebx, 1
jmp short loc_004544ef  ; jmp 0x4544ef

loc_004544ea:
call fcn_00454493  ; call 0x454493

loc_004544ef:
mov eax, ebx
add esp, 4
pop ebx
ret

fcn_004544f6:
push ebx
push esi
sub esp, 0x20
xor ebx, ebx
call dword [cs:__imp__timeGetTime@0]  ; ucall: call dword cs:[0x46246c]
mov esi, eax
cmp dword [ref_0047e750], 0  ; cmp dword [0x47e750], 0
je near loc_0045458f  ; je 0x45458f
cmp byte [(_global_rich4_cfg + 3)], 0  ; cmp byte [0x49715b], 0
je near loc_0045458f  ; je 0x45458f

loc_00454520:
push 1
push 0
push 0
push 0
lea eax, [esp + 0x10]
push eax
call dword [cs:__imp__PeekMessageA@20]  ; ucall: call dword cs:[0x46230c]
test eax, eax
je short loc_0045456f  ; je 0x45456f
mov ecx, dword [esp + 4]
cmp ecx, 0x202
je short loc_00454554  ; je 0x454554
cmp ecx, 0x205
je short loc_00454554  ; je 0x454554
cmp ecx, 0x101
jne short loc_00454559  ; jne 0x454559

loc_00454554:
mov ebx, 1

loc_00454559:
cmp dword [esp + 4], 0x3b9
jne short loc_0045456f  ; jne 0x45456f
cmp dword [esp + 8], 1
jne short loc_0045456f  ; jne 0x45456f
call fcn_00454d2c  ; call 0x454d2c

loc_0045456f:
mov eax, dword [ref_0047e750]  ; mov eax, dword [0x47e750]
mov edx, dword [eax]
lea ecx, [esp + 0x1c]
push ecx
push eax
call dword [edx + 0x24]  ; ucall
test byte [esp + 0x1c], 1
je short loc_0045458a  ; je 0x45458a
test ebx, ebx
je short loc_00454520  ; je 0x454520

loc_0045458a:
call fcn_00454493  ; call 0x454493

loc_0045458f:
call dword [cs:__imp__timeGetTime@0]  ; ucall: call dword cs:[0x46246c]
sub eax, esi
mov ecx, dword [esp + 0x2c]
cmp eax, ecx
jae short loc_004545b1  ; jae 0x4545b1
test ebx, ebx
jne short loc_004545b1  ; jne 0x4545b1
mov edx, ecx
sub edx, eax
push edx
call fcn_004528b9  ; call 0x4528b9
add esp, 4

loc_004545b1:
add esp, 0x20
pop esi
pop ebx
ret

