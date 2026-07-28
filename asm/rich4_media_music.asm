extern __imp__auxGetDevCapsA@12
extern __imp__auxGetNumDevs@0
extern __imp__auxGetVolume@8
extern __imp__auxSetVolume@8
extern __imp__mciGetDeviceIDA@4
extern __imp__mciSendStringA@16
extern __imp__midiOutGetDevCapsA@12
extern __imp__midiOutGetVolume@8
extern __imp__midiOutSetVolume@8
extern _atoi
extern _gWindowHandle
extern _global_rich4_cfg
extern _libc_sprintf
extern _libc_stricmp
extern __round_toward_zero
extern ref_0046cb03
extern ref_0046cb04
extern ref_0046cb06
extern ref_00476374
extern ref_0047e770
extern ref_0047e771
extern ref_0047e772
extern ref_0048cb50
extern ref_0048cb70
extern ref_0048cb78
extern ref_0048cb7c

global fcn_004545ba
global fcn_004548ef
global fcn_0045497b
global fcn_004549cf
global fcn_00454acb
global fcn_00454bcc
global fcn_00454d2c
global fcn_00454d91
global fcn_00454edc
global fcn_00454f5b

section .text

ref_004545b7:
db 0x41
db 0x3a
db 0x00

fcn_004545ba:
push ebx
push esi
push edi
sub esp, 0xa0
lea edi, [esp + 0x9c]
mov esi, ref_004545b7  ; mov esi, 0x4545b7
db 0x66, 0xa5  ; movsw word es:[edi], word ptr [esi]
movsb  ; movsb byte es:[edi], byte ptr [esi]
mov al, byte [ref_00476374]  ; mov al, byte [0x476374]
mov byte [esp + 0x9c], al
lea eax, [esp + 0x9c]
push eax
push ref_004663e7  ; push 0x4663e7
lea eax, [esp + 0x6c]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0
push 0
push 0
lea eax, [esp + 0x70]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne near loc_00454771  ; jne 0x454771
push eax
push eax
push eax
push ref_0046640a  ; push 0x46640a
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
push 0
push 0x28
lea eax, [esp + 0x6c]
push eax
push ref_00466427  ; push 0x466427
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
lea eax, [esp + 0x64]
push eax
call _atoi  ; call 0x4584db
add esp, 4
cmp eax, 9
jne near loc_00454767  ; jne 0x454767
mov byte [ref_0047e770], 1  ; mov byte [0x47e770], 1
xor ebx, ebx

loc_00454655:
call dword [cs:__imp__auxGetNumDevs@0]  ; ucall: call dword cs:[0x46244c]
cmp ebx, eax
jae near loc_00454779  ; jae 0x454779
push 0x30
lea eax, [esp + 0x38]
push eax
push ebx
call dword [cs:__imp__auxGetDevCapsA@12]  ; ucall: call dword cs:[0x462448]
cmp word [esp + 0x5c], 1
jne near loc_00454761  ; jne 0x454761
test byte [esp + 0x60], 1
je near loc_00454761  ; je 0x454761
mov dword [ref_0047e7df], ebx  ; mov dword [0x47e7df], ebx
push ref_0048cb78  ; push 0x48cb78
push ebx
call dword [cs:__imp__auxGetVolume@8]  ; ucall: call dword cs:[0x462450]
mov eax, dword [ref_0048cb78]  ; mov eax, dword [0x48cb78]
mov dword [ref_0047e807], eax  ; mov dword [0x47e807], eax
test byte [esp + 0x60], 2
je near loc_00454736  ; je 0x454736
mov edx, eax
shr edx, 0x10
and edx, 0xffff
mov ebx, eax
and ebx, 0xffff
mov ecx, 0xa
mov eax, edx
sar edx, 0x1f
idiv ecx
mov ecx, eax
mov edi, eax
shl edi, 3
sub edi, eax
shl edi, 0x10
mov esi, 0xa
mov eax, ebx
mov edx, ebx
sar edx, 0x1f
idiv esi
mov edx, eax
shl eax, 3
sub eax, edx
and eax, 0xffff
add edi, eax
mov dword [ref_0047e803], edi  ; mov dword [0x47e803], edi
mov ebx, ecx
mov esi, ebx
shl esi, 2
add esi, ebx
shl esi, 0x10
mov ebx, edx
mov eax, ebx
shl eax, 2
add eax, ebx
and eax, 0xffff
add esi, eax
mov dword [ref_0047e7ff], esi  ; mov dword [0x47e7ff], esi
shl ecx, 0x11
add edx, edx
and edx, 0xffff
add ecx, edx
mov dword [ref_0047e7fb], ecx  ; mov dword [0x47e7fb], ecx
jmp short loc_00454779  ; jmp 0x454779

loc_00454736:
mov ecx, 0xa
xor edx, edx
div ecx
mov ebx, eax
shl eax, 3
sub eax, ebx
mov dword [ref_0047e803], eax  ; mov dword [0x47e803], eax
mov eax, ebx
shl eax, 2
add eax, ebx
mov dword [ref_0047e7ff], eax  ; mov dword [0x47e7ff], eax
add ebx, ebx
mov dword [ref_0047e7fb], ebx  ; mov dword [0x47e7fb], ebx
jmp short loc_00454779  ; jmp 0x454779

loc_00454761:
inc ebx
jmp near loc_00454655  ; jmp 0x454655

loc_00454767:
xor dl, dl
mov byte [ref_0047e770], dl  ; mov byte [0x47e770], dl
jmp short loc_00454779  ; jmp 0x454779

loc_00454771:
xor ah, ah
mov byte [ref_0047e770], ah  ; mov byte [0x47e770], ah

loc_00454779:
push ref_00466447  ; push 0x466447
call dword [cs:__imp__mciGetDeviceIDA@4]  ; ucall: call dword cs:[0x462458]
mov dword [ref_0047e7db], eax  ; mov dword [0x47e7db], eax
push 0x34
lea edx, [esp + 4]
push edx
push eax
call dword [cs:__imp__midiOutGetDevCapsA@12]  ; ucall: call dword cs:[0x462460]
push ref_0048cb7c  ; push 0x48cb7c
mov edx, dword [ref_0047e7db]  ; mov edx, dword [0x47e7db]
push edx
call dword [cs:__imp__midiOutGetVolume@8]  ; ucall: call dword cs:[0x462464]
mov eax, dword [ref_0048cb7c]  ; mov eax, dword [0x48cb7c]
mov dword [ref_0047e7f3], eax  ; mov dword [0x47e7f3], eax
test byte [esp + 0x30], 2
je near loc_00454855  ; je 0x454855
mov edx, dword [ref_0048cb7c]  ; mov edx, dword [0x48cb7c]
shr edx, 0x10
and edx, 0xffff
mov ebx, dword [ref_0048cb7c]  ; mov ebx, dword [0x48cb7c]
and ebx, 0xffff
mov ecx, 0xa
mov eax, edx
sar edx, 0x1f
idiv ecx
mov ecx, eax
mov esi, eax
shl esi, 3
add esi, eax
shl esi, 0x10
mov edi, 0xa
mov eax, ebx
mov edx, ebx
sar edx, 0x1f
idiv edi
mov edx, eax
shl eax, 3
add eax, edx
and eax, 0xffff
add esi, eax
mov dword [ref_0047e7ef], esi  ; mov dword [0x47e7ef], esi
mov ebx, ecx
shl ebx, 0x13
mov eax, edx
shl eax, 3
and eax, 0xffff
add ebx, eax
mov dword [ref_0047e7eb], ebx  ; mov dword [0x47e7eb], ebx
mov eax, ecx
shl eax, 2
sub eax, ecx
lea ecx, [eax + eax]
shl ecx, 0x10
mov eax, edx
shl eax, 2
sub eax, edx
add eax, eax
and eax, 0xffff
add ecx, eax
mov dword [ref_0047e7e7], ecx  ; mov dword [0x47e7e7], ecx
jmp near loc_004548e0  ; jmp 0x4548e0

loc_00454855:
xor ecx, ecx
mov dword [esp + 0x90], ecx
mov eax, dword [ref_0048cb7c]  ; mov eax, dword [0x48cb7c]
mov dword [esp + 0x8c], eax
fild qword [esp + 0x8c]
fst qword [esp + 0x8c]
fmul qword [ref_00466458]  ; fmul qword [0x466458]
call __round_toward_zero  ; call 0x457dbc
fistp qword [esp + 0x94]
mov eax, dword [esp + 0x94]
mov dword [ref_0047e7ef], eax  ; mov dword [0x47e7ef], eax
fld qword [esp + 0x8c]
fmul qword [ref_00466460]  ; fmul qword [0x466460]
call __round_toward_zero  ; call 0x457dbc
fistp qword [esp + 0x94]
mov eax, dword [esp + 0x94]
mov dword [ref_0047e7eb], eax  ; mov dword [0x47e7eb], eax
fld qword [esp + 0x8c]
fmul qword [ref_00466468]  ; fmul qword [0x466468]
call __round_toward_zero  ; call 0x457dbc
fistp qword [esp + 0x94]
mov eax, dword [esp + 0x94]
mov dword [ref_0047e7e7], eax  ; mov dword [0x47e7e7], eax

loc_004548e0:
call fcn_0045497b  ; call 0x45497b
add esp, 0xa0
pop edi
pop esi
pop ebx
ret

fcn_004548ef:
push ebx
cmp byte [ref_0047e770], 0  ; cmp byte [0x47e770], 0
jne short loc_00454906  ; jne 0x454906
push 0
push 0
push 0
push ref_00466470  ; push 0x466470
jmp short loc_00454923  ; jmp 0x454923

loc_00454906:
push 0
push 0
push 0
push ref_0046647f  ; push 0x46647f
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
push 0
push 0
push 0
push ref_00466491  ; push 0x466491

loc_00454923:
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
mov edx, dword [ref_0048cb7c]  ; mov edx, dword [0x48cb7c]
push edx
push ref_00466447  ; push 0x466447
call dword [cs:__imp__mciGetDeviceIDA@4]  ; ucall: call dword cs:[0x462458]
push eax
call dword [cs:__imp__midiOutSetVolume@8]  ; ucall: call dword cs:[0x462468]
cmp byte [ref_0047e770], 1  ; cmp byte [0x47e770], 1
jne short loc_0045496b  ; jne 0x45496b
mov ecx, dword [ref_0047e7df]  ; mov ecx, dword [0x47e7df]
cmp ecx, 0xffff
je short loc_0045496b  ; je 0x45496b
mov ebx, dword [ref_0048cb78]  ; mov ebx, dword [0x48cb78]
push ebx
push ecx
call dword [cs:__imp__auxSetVolume@8]  ; ucall: call dword cs:[0x462454]

loc_0045496b:
xor dh, dh
mov byte [ref_0046cb03], dh  ; mov byte [0x46cb03], dh
mov byte [ref_0046cb04], dh  ; mov byte [0x46cb04], dh
pop ebx
ret

fcn_0045497b:
push ebx
xor eax, eax
mov al, byte [(_global_rich4_cfg + 2)]  ; mov al, byte [0x49715a]
mov edx, dword [eax*4 + ref_0047e7e3]  ; mov edx, dword [eax*4 + 0x47e7e3]
push edx
push ref_00466447  ; push 0x466447
call dword [cs:__imp__mciGetDeviceIDA@4]  ; ucall: call dword cs:[0x462458]
push eax
call dword [cs:__imp__midiOutSetVolume@8]  ; ucall: call dword cs:[0x462468]
cmp byte [ref_0047e770], 1  ; cmp byte [0x47e770], 1
jne short loc_004549cd  ; jne 0x4549cd
mov ecx, dword [ref_0047e7df]  ; mov ecx, dword [0x47e7df]
cmp ecx, 0xffff
je short loc_004549cd  ; je 0x4549cd
xor eax, eax
mov al, byte [(_global_rich4_cfg + 2)]  ; mov al, byte [0x49715a]
mov ebx, dword [eax*4 + ref_0047e7f7]  ; mov ebx, dword [eax*4 + 0x47e7f7]
push ebx
push ecx
call dword [cs:__imp__auxSetVolume@8]  ; ucall: call dword cs:[0x462454]

loc_004549cd:
pop ebx
ret

fcn_004549cf:
push ebx
push esi
push edi
push ebp
sub esp, 0x28
xor esi, esi
xor eax, eax
cmp byte [ref_0046cb06], 0  ; cmp byte [0x46cb06], 0
jne near loc_00454ac3  ; jne 0x454ac3
test byte [esp + 0x3d], 0x80
je short loc_004549fb  ; je 0x4549fb
and dword [esp + 0x3c], 0x7fff
mov eax, 1

loc_004549fb:
cmp byte [(_global_rich4_cfg + 2)], 0  ; cmp byte [0x49715a], 0
je near loc_00454ab8  ; je 0x454ab8
test byte [ref_0047e772], 0x80  ; test byte [0x47e772], 0x80
je short loc_00454a1f  ; je 0x454a1f
test eax, eax
jne short loc_00454a1f  ; jne 0x454a1f
call fcn_00454b1a  ; call 0x454b1a
mov esi, 1

loc_00454a1f:
call fcn_00454acb  ; call 0x454acb
mov edi, 1
mov ebx, dword [esp + 0x3c]
shl ebx, 2
mov ecx, dword [ebx + ref_0047e793]  ; mov ecx, dword [ebx + 0x47e793]
push ecx
push ref_004664a4  ; push 0x4664a4
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
je short loc_00454a93  ; je 0x454a93
mov ebp, dword [ebx + ref_0047e793]  ; mov ebp, dword [ebx + 0x47e793]
push ebp
push ref_00476374  ; push 0x476374
push ref_004664c0  ; push 0x4664c0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454ab8  ; jne 0x454ab8

loc_00454a93:
test edi, edi
je short loc_00454ab8  ; je 0x454ab8
mov eax, dword [_gWindowHandle]  ; mov eax, dword [0x48a0d4]
push eax
push 0
push 0
push ref_004664de  ; push 0x4664de
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454ab8  ; jne 0x454ab8
mov byte [ref_0046cb03], 1  ; mov byte [0x46cb03], 1

loc_00454ab8:
mov al, byte [esp + 0x3c]
mov byte [ref_0047e772], al  ; mov byte [0x47e772], al
mov eax, esi

loc_00454ac3:
add esp, 0x28
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00454acb:
cmp byte [ref_0046cb03], 0  ; cmp byte [0x46cb03], 0
je short loc_00454ae6  ; je 0x454ae6
push 0
push 0
push 0
push ref_00466470  ; push 0x466470
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]

loc_00454ae6:
xor dl, dl
mov byte [ref_0046cb03], dl  ; mov byte [0x46cb03], dl
mov byte [ref_0047e772], dl  ; mov byte [0x47e772], dl
ret

fcn_00454af5:
call fcn_00454f46  ; call 0x454f46
cmp eax, 1
jne short loc_00454b19  ; jne 0x454b19
push 0
push 0
push 0
push ref_0046647f  ; push 0x46647f
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
xor ah, ah
mov byte [ref_0046cb04], ah  ; mov byte [0x46cb04], ah

loc_00454b19:
ret

fcn_00454b1a:
push ebx
sub esp, 0x14
cmp byte [ref_0047e770], 0  ; cmp byte [0x47e770], 0
jne near loc_00454ba9  ; jne 0x454ba9
call fcn_00454efa  ; call 0x454efa
cmp eax, 1
jne short loc_00454b6c  ; jne 0x454b6c
push 0
push 0x14
lea eax, [esp + 8]
push eax
push ref_004664f5  ; push 0x4664f5
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
mov eax, esp
push eax
call _atoi  ; call 0x4584db
add esp, 4
mov edx, dword [ref_0047e7d7]  ; mov edx, dword [0x47e7d7]
mov dword [edx*4 + ref_0048cb50], eax  ; mov dword [edx*4 + 0x48cb50], eax
mov eax, edx
mov dl, byte [ref_0047e772]  ; mov dl, byte [0x47e772]
jmp short loc_00454b98  ; jmp 0x454b98

loc_00454b6c:
mov dh, byte [ref_0047e771]  ; mov dh, byte [0x47e771]
inc dh
mov byte [ref_0047e771], dh  ; mov byte [0x47e771], dh
mov bl, dh
and bl, 7
mov byte [ref_0047e771], bl  ; mov byte [0x47e771], bl
mov eax, dword [ref_0047e7d7]  ; mov eax, dword [0x47e7d7]
xor edx, edx
mov dword [eax*4 + ref_0048cb50], edx  ; mov dword [eax*4 + 0x48cb50], edx
mov dl, bl
or dl, 0x80

loc_00454b98:
mov byte [eax + ref_0048cb70], dl  ; mov byte [eax + 0x48cb70], dl
inc dword [ref_0047e7d7]  ; inc dword [0x47e7d7]
add esp, 0x14
pop ebx
ret

loc_00454ba9:
push 0
push 0
push 0
push ref_00466509  ; push 0x466509
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454bc7  ; jne 0x454bc7
xor dl, dl
mov byte [ref_0046cb04], dl  ; mov byte [0x46cb04], dl

loc_00454bc7:
add esp, 0x14
pop ebx
ret

fcn_00454bcc:
push ebx
push esi
push edi
push ebp
sub esp, 0x50
xor ebx, ebx
cmp byte [ref_0046cb06], 0  ; cmp byte [0x46cb06], 0
jne near loc_00454d24  ; jne 0x454d24
cmp byte [(_global_rich4_cfg + 2)], 0  ; cmp byte [0x49715a], 0
je near loc_00454d24  ; je 0x454d24
call fcn_00454acb  ; call 0x454acb
cmp byte [ref_0047e770], 0  ; cmp byte [0x47e770], 0
jne near loc_00454cd9  ; jne 0x454cd9
mov ecx, dword [ref_0047e7d7]  ; mov ecx, dword [0x47e7d7]
dec ecx
mov dword [ref_0047e7d7], ecx  ; mov dword [0x47e7d7], ecx
mov bl, byte [ecx + ref_0048cb70]  ; mov bl, byte [ecx + 0x48cb70]
and ebx, 0xff
mov edi, 1
mov esi, ebx
and esi, 0x7f
shl esi, 2
mov ebp, dword [esi + ref_0047e773]  ; mov ebp, dword [esi + 0x47e773]
push ebp
push ref_004664a4  ; push 0x4664a4
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
je short loc_00454c8e  ; je 0x454c8e
mov eax, dword [esi + ref_0047e773]  ; mov eax, dword [esi + 0x47e773]
push eax
push ref_00476374  ; push 0x476374
push ref_004664c0  ; push 0x4664c0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne near loc_00454d1e  ; jne 0x454d1e

loc_00454c8e:
test edi, edi
je near loc_00454d1e  ; je 0x454d1e
mov eax, dword [ref_0047e7d7]  ; mov eax, dword [0x47e7d7]
mov edx, dword [eax*4 + ref_0048cb50]  ; mov edx, dword [eax*4 + 0x48cb50]
push edx
push ref_00466516  ; push 0x466516
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov ecx, dword [_gWindowHandle]  ; mov ecx, dword [0x48a0d4]
push ecx
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454d1e  ; jne 0x454d1e
mov byte [ref_0046cb03], 1  ; mov byte [0x46cb03], 1
jmp short loc_00454d1e  ; jmp 0x454d1e

loc_00454cd9:
mov edx, dword [_gWindowHandle]  ; mov edx, dword [0x48a0d4]
push edx
push ebx
push ebx
push ref_0046652e  ; push 0x46652e
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454d1b  ; jne 0x454d1b
mov byte [ref_0046cb04], 1  ; mov byte [0x46cb04], 1
push eax
push 0x28
lea eax, [esp + 8]
push eax
push ref_00466542  ; push 0x466542
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
mov eax, esp
push eax
call _atoi  ; call 0x4584db
add esp, 4
lea ebx, [eax - 2]

loc_00454d1b:
or bl, 0x80

loc_00454d1e:
mov byte [ref_0047e772], bl  ; mov byte [0x47e772], bl

loc_00454d24:
add esp, 0x50
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00454d2c:
push ebx
cmp byte [ref_0047e770], 0  ; cmp byte [0x47e770], 0
jne short loc_00454d5d  ; jne 0x454d5d
test byte [ref_0047e772], 0x80  ; test byte [0x47e772], 0x80
je short loc_00454d4b  ; je 0x454d4b
push 0
call fcn_00454d91  ; call 0x454d91
add esp, 4
pop ebx
ret

loc_00454d4b:
mov ebx, dword [_gWindowHandle]  ; mov ebx, dword [0x48a0d4]
push ebx
push 0
push 0
push ref_004664de  ; push 0x4664de
jmp short loc_00454d88  ; jmp 0x454d88

loc_00454d5d:
test byte [ref_0047e772], 0x80  ; test byte [0x47e772], 0x80
je short loc_00454d78  ; je 0x454d78
mov ecx, dword [_gWindowHandle]  ; mov ecx, dword [0x48a0d4]
push ecx
push 0
push 0
push ref_0046655f  ; push 0x46655f
jmp short loc_00454d88  ; jmp 0x454d88

loc_00454d78:
mov edx, dword [_gWindowHandle]  ; mov edx, dword [0x48a0d4]
push edx
push 0
push 0
push ref_004664de  ; push 0x4664de

loc_00454d88:
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
pop ebx
ret

fcn_00454d91:
push ebx
push esi
push edi
push ebp
sub esp, 0x3c
cmp dword [esp + 0x50], 0
je short loc_00454dac  ; je 0x454dac
mov al, byte [esp + 0x50]
dec al
mov byte [ref_0047e771], al  ; mov byte [0x47e771], al
jmp short loc_00454dc5  ; jmp 0x454dc5

loc_00454dac:
mov ah, byte [ref_0047e771]  ; mov ah, byte [0x47e771]
inc ah
mov byte [ref_0047e771], ah  ; mov byte [0x47e771], ah
mov dl, ah
and dl, 7
mov byte [ref_0047e771], dl  ; mov byte [0x47e771], dl

loc_00454dc5:
cmp byte [(_global_rich4_cfg + 2)], 0  ; cmp byte [0x49715a], 0
je near loc_00454ec8  ; je 0x454ec8
cmp byte [ref_0047e770], 0  ; cmp byte [0x47e770], 0
jne near loc_00454e84  ; jne 0x454e84
call fcn_00454acb  ; call 0x454acb
mov ebx, 1
xor eax, eax
mov al, byte [ref_0047e771]  ; mov al, byte [0x47e771]
mov esi, dword [eax*4 + ref_0047e773]  ; mov esi, dword [eax*4 + 0x47e773]
push esi
push ref_004664a4  ; push 0x4664a4
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
je short loc_00454e5c  ; je 0x454e5c
xor eax, eax
mov al, byte [ref_0047e771]  ; mov al, byte [0x47e771]
mov edi, dword [eax*4 + ref_0047e773]  ; mov edi, dword [eax*4 + 0x47e773]
push edi
push ref_00476374  ; push 0x476374
push ref_004664c0  ; push 0x4664c0
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454ec8  ; jne 0x454ec8

loc_00454e5c:
test ebx, ebx
je short loc_00454ec8  ; je 0x454ec8
mov ebp, dword [_gWindowHandle]  ; mov ebp, dword [0x48a0d4]
push ebp
push 0
push 0
push ref_004664de  ; push 0x4664de
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454ec8  ; jne 0x454ec8
mov byte [ref_0046cb03], 1  ; mov byte [0x46cb03], 1
jmp short loc_00454ec8  ; jmp 0x454ec8

loc_00454e84:
call fcn_00454af5  ; call 0x454af5
xor eax, eax
mov al, byte [ref_0047e771]  ; mov al, byte [0x47e771]
add eax, 2
push eax
push ref_0046657a  ; push 0x46657a
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov ecx, dword [_gWindowHandle]  ; mov ecx, dword [0x48a0d4]
push ecx
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454ec8  ; jne 0x454ec8
mov byte [ref_0046cb04], 1  ; mov byte [0x46cb04], 1

loc_00454ec8:
mov al, byte [ref_0047e771]  ; mov al, byte [0x47e771]
or al, 0x80
mov byte [ref_0047e772], al  ; mov byte [0x47e772], al
add esp, 0x3c
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00454edc:
cmp byte [ref_0047e770], 0  ; cmp byte [0x47e770], 0
jne short loc_00454eec  ; jne 0x454eec
call fcn_00454acb  ; call 0x454acb
jmp short loc_00454ef1  ; jmp 0x454ef1

loc_00454eec:
call fcn_00454af5  ; call 0x454af5

loc_00454ef1:
xor edx, edx
mov dword [ref_0047e7d7], edx  ; mov dword [0x47e7d7], edx
ret

fcn_00454efa:
push ebx
sub esp, 0x14
xor ebx, ebx
cmp byte [ref_0046cb03], 0  ; cmp byte [0x46cb03], 0
jne short loc_00454f10  ; jne 0x454f10
xor eax, eax
add esp, 0x14
pop ebx
ret

loc_00454f10:
push ebx
push 0x14
lea eax, [esp + 8]
push eax
push ref_00466596  ; push 0x466596

loc_00454f1d:
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
push ref_004665a6  ; push 0x4665a6
lea eax, [esp + 4]
push eax
call _libc_stricmp  ; call 0x4585bc
add esp, 8
test eax, eax
jne short loc_00454f3f  ; jne 0x454f3f
mov ebx, 1

loc_00454f3f:
mov eax, ebx
add esp, 0x14
pop ebx
ret

fcn_00454f46:
push ebx
sub esp, 0x14
xor ebx, ebx
push ebx
push 0x14
lea eax, [esp + 8]
push eax
push ref_004665ae  ; push 0x4665ae
jmp short loc_00454f1d  ; jmp 0x454f1d

fcn_00454f5b:
push ebx
sub esp, 0x28
xor ebx, ebx
cmp byte [(_global_rich4_cfg + 2)], 0  ; cmp byte [0x49715a], 0
je short loc_00454fac  ; je 0x454fac
mov dl, byte [ref_0047e772]  ; mov dl, byte [0x47e772]
test dl, 0x80
je short loc_00454fac  ; je 0x454fac
cmp byte [ref_0047e770], 0  ; cmp byte [0x47e770], 0
jne short loc_00454f86  ; jne 0x454f86
mov bl, dl
and bl, 7
inc ebx
jmp short loc_00454fac  ; jmp 0x454fac

loc_00454f86:
push ebx
push 0x28
lea eax, [esp + 8]
push eax
push ref_00466542  ; push 0x466542
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
jne short loc_00454fac  ; jne 0x454fac
mov eax, esp
push eax
call _atoi  ; call 0x4584db
add esp, 4
lea ebx, [eax - 1]

loc_00454fac:
mov eax, ebx
add esp, 0x28
pop ebx
ret

section .data

ref_004662d0:
db 'RICH08.MID',0x00

ref_004662db:
db 'RICH16.MID',0x00

ref_004662e6:
db 'RICH17.MID',0x00

ref_004662f1:
db 'RICH18.MID',0x00

ref_004662fc:
db 'RICH19.MID',0x00

ref_00466307:
db 'RICH20.MID',0x00

ref_00466312:
db 'RICH21.MID',0x00

ref_0046631d:
db 'RICH22.MID',0x00

ref_00466328:
db 'MIDI01.MID',0x00

ref_00466333:
db 'MIDI02.MID',0x00

ref_0046633e:
db 'MIDI03.MID',0x00

ref_00466349:
db 'MIDI04.MID',0x00

ref_00466354:
db 'MIDI05.MID',0x00

ref_0046635f:
db 'MIDI06.MID',0x00

ref_0046636a:
db 'MIDI07.MID',0x00

ref_00466375:
db 'MIDI08.MID',0x00

ref_00466380:
db 'MIDI09.MID',0x00

ref_0046638b:
db 'MIDI10.MID',0x00

ref_00466396:
db 'MIDI11.MID',0x00

ref_004663a1:
db 'MIDI12.MID',0x00

ref_004663ac:
db 'MIDI13.MID',0x00

ref_004663b7:
db 'MIDI14-1.MID',0x00

ref_004663c4:
db 'MIDI14-2.MID',0x00

ref_004663d1:
db 'MIDI15.MID',0x00

ref_004663dc:
db 'MIDI16.MID',0x00

ref_004663e7:
db 'open cdaudio!%s alias cdtrack wait',0x00

ref_0046640a:
db 'set cdtrack time format tmsf',0x00

ref_00466427:
db 'status cdtrack number of tracks',0x00

ref_00466447:
db 'sequencer',0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

ref_00466458:
dd 0xcccccccd
dd 0x3feccccc

ref_00466460:
dd 0x9999999a
dd 0x3fe99999

ref_00466468:
dd 0x33333333
dd 0x3fe33333

ref_00466470:
db 'close mid wait',0x00

ref_0046647f:
db 'stop cdtrack wait',0x00

ref_00466491:
db 'close cdtrack wait',0x00

ref_004664a4:
db 'open sequencer!%s alias mid',0x00

ref_004664c0:
db 'open sequencer!%s%s alias mid',0x00

ref_004664de:
db 'play mid from 0 notify',0x00

ref_004664f5:
db 'status mid position',0x00

ref_00466509:
db 'stop cdtrack',0x00

ref_00466516:
db 'play mid from %d notify',0x00

ref_0046652e:
db 'play cdtrack notify',0x00

ref_00466542:
db 'status cdtrack current track',0x00

ref_0046655f:
db 'play cdtrack from 2 notify',0x00

ref_0046657a:
db 'play cdtrack from %d notify',0x00

ref_00466596:
db 'status mid mode',0x00

ref_004665a6:
db 'playing',0x00

ref_004665ae:
db 'status cdtrack mode',0x00,0x00,0x00



ref_0047e773:
dd ref_004662d0
dd ref_004662db
dd ref_004662e6
dd ref_004662f1
dd ref_004662fc
dd ref_00466307
dd ref_00466312
dd ref_0046631d

ref_0047e793:
dd ref_00466328
dd ref_00466333
dd ref_0046633e
dd ref_00466349
dd ref_00466354
dd ref_0046635f
dd ref_0046636a
dd ref_00466375
dd ref_00466380
dd ref_0046638b
dd ref_00466396
dd ref_004663a1
dd ref_004663ac
dd ref_004663b7
dd ref_004663c4
dd ref_004663d1
dd ref_004663dc

ref_0047e7d7:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7db:
db 0xff
db 0xff
db 0x00
db 0x00

ref_0047e7df:
db 0xff
db 0xff
db 0x00
db 0x00

ref_0047e7e3:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7e7:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7eb:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7ef:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7f3:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7f7:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7fb:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e7ff:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e803:
db 0x00
db 0x00
db 0x00
db 0x00

ref_0047e807:
db 0x00
dd 0x00000000
