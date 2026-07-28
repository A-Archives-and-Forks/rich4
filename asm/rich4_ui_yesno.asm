extern _Post_0402_Message
extern _Wait_0402_Message
extern __imp__BeginPaint@8
extern __imp__DefWindowProcA@16
extern __imp__EndPaint@8
extern __imp__InvalidateRect@12
extern __imp__SetCursorPos@8
extern _g_ddraw_sf1_ptr
extern _g_ddraw_sf2_ptr
extern _global_rich4_cfg
extern _libc_free
extern _read_mkf
extern _rich4_data_mkf
extern fcn_00402250
extern fcn_0040235d
extern fcn_00402460
extern fcn_004024a1
extern fcn_00451e7e
extern fcn_00451edb
extern fcn_004542ce
extern fcn_004563f5
extern ref_0048231a
extern ref_0048232a
extern ref_00482332
extern ref_0048a068
extern ref_0048a08c

global _rich4_ui_yesno

section .text

fcn_0045367e:
push ebx
push esi
push edi
push ebp
sub esp, 0x40
mov esi, dword [esp + 0x54]
mov eax, dword [esp + 0x58]
mov edx, dword [esp + 0x5c]
mov ebx, dword [esp + 0x60]
cmp eax, 0x200
jb short loc_004536cb  ; jb 0x4536cb
jbe near loc_00453745  ; jbe 0x453745
cmp eax, 0x205
jb short loc_004536bb  ; jb 0x4536bb
jbe near loc_004539a2  ; jbe 0x4539a2
cmp eax, 0x401
je short loc_004536f6  ; je 0x4536f6
jmp near loc_00453a22  ; jmp 0x453a22

loc_004536bb:
cmp eax, 0x202
je near loc_00453892  ; je 0x453892
jmp near loc_00453a22  ; jmp 0x453a22

loc_004536cb:
cmp eax, 0x100
jb short loc_004536e8  ; jb 0x4536e8
jbe near loc_00453948  ; jbe 0x453948
cmp eax, 0x101
je near loc_0045393a  ; je 0x45393a
jmp near loc_00453a22  ; jmp 0x453a22

loc_004536e8:
cmp eax, 0xf
je near loc_004539ca  ; je 0x4539ca
jmp near loc_00453a22  ; jmp 0x453a22

loc_004536f6:
xor edx, edx
mov dword [ref_0048cad8], edx  ; mov dword [0x48cad8], edx
xor edx, edx
mov word [ref_0048cadc], dx  ; mov word [0x48cadc], dx
mov eax, dword [ref_0048cac8]  ; mov eax, dword [0x48cac8]
add eax, 0x16
push eax
mov eax, dword [ref_0048cac4]  ; mov eax, dword [0x48cac4]
add eax, 0x16
push eax
call dword [cs:__imp__SetCursorPos@8]  ; ucall: call dword cs:[0x46231c]
push 1
call fcn_00402460  ; call 0x402460
add esp, 4
push 0
push ref_0048cac4  ; push 0x48cac4
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_00453739:
xor eax, eax

loc_0045373b:
add esp, 0x40
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

loc_00453745:
xor edx, edx
mov dx, bx
sub edx, dword [ref_0048cac4]  ; sub edx, dword [0x48cac4]
mov eax, ebx
shr eax, 0x10
and eax, 0xffff
xor ebx, ebx
mov bx, ax
sub ebx, dword [ref_0048cac8]  ; sub ebx, dword [0x48cac8]
test edx, edx
jl near loc_00453827  ; jl 0x453827
mov eax, dword [ref_0048cad4]  ; mov eax, dword [0x48cad4]
movsx ecx, word [eax + 0xc]
cmp edx, ecx
jge near loc_00453827  ; jge 0x453827
test ebx, ebx
jl near loc_00453827  ; jl 0x453827
movsx eax, word [eax + 0xe]
cmp ebx, eax
jge near loc_00453827  ; jge 0x453827
sar ecx, 1
mov eax, edx
sar edx, 0x1f
idiv ecx
lea ebx, [eax + 1]
cmp ebx, dword [ref_0048cad8]  ; cmp ebx, dword [0x48cad8]
je short loc_00453739  ; je 0x453739
push 0
push ref_0048231a  ; push 0x48231a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebp, dword [ref_0048cac8]  ; mov ebp, dword [0x48cac8]
push ebp
mov eax, dword [ref_0048cac4]  ; mov eax, dword [0x48cac4]
push eax
mov ecx, dword [ref_0048cad4]  ; mov ecx, dword [0x48cad4]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
add ecx, 0xc
add eax, ecx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push ref_0048cac4  ; push 0x48cac4
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0045381c:
mov dword [ref_0048cad8], ebx  ; mov dword [0x48cad8], ebx
jmp near loc_00453739  ; jmp 0x453739

loc_00453827:
cmp dword [ref_0048cad8], 0  ; cmp dword [0x48cad8], 0
je near loc_00453739  ; je 0x453739
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [ref_0048cac8]  ; mov eax, dword [0x48cac8]
push eax
mov edx, dword [ref_0048cac4]  ; mov edx, dword [0x48cac4]
push edx
mov eax, dword [ref_0048cad4]  ; mov eax, dword [0x48cad4]
add eax, 0xc
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push ref_0048cac4  ; push 0x48cac4
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
xor ebx, ebx
jmp short loc_0045381c  ; jmp 0x45381c

loc_00453892:
cmp dword [ref_0048cad8], 0  ; cmp dword [0x48cad8], 0
je near loc_00453739  ; je 0x453739
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebx, dword [ref_0048cac8]  ; mov ebx, dword [0x48cac8]
push ebx
mov edi, dword [ref_0048cac4]  ; mov edi, dword [0x48cac4]
push edi
mov eax, dword [ref_0048cad4]  ; mov eax, dword [0x48cad4]
add eax, 0xc
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push ref_0048cac4  ; push 0x48cac4
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
cmp dword [ref_0048cad8], 1  ; cmp dword [0x48cad8], 1
jne short loc_00453923  ; jne 0x453923
push 0
push ref_0048232a  ; push 0x48232a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov ebx, 1
jmp short loc_00453934  ; jmp 0x453934

loc_00453923:
push 0
push ref_00482332  ; push 0x482332
call fcn_004542ce  ; call 0x4542ce
add esp, 8
xor ebx, ebx

loc_00453934:
push ebx
jmp near loc_004539bd  ; jmp 0x4539bd

loc_0045393a:
xor ebx, ebx
mov word [ref_0048cadc], bx  ; mov word [0x48cadc], bx
jmp near loc_00453739  ; jmp 0x453739

loc_00453948:
cmp edx, 0x11
jne short loc_00453958  ; jne 0x453958
mov word [ref_0048cadc], 0x1100  ; mov word [0x48cadc], 0x1100
jmp short loc_0045395f  ; jmp 0x45395f

loc_00453958:
or word [ref_0048cadc], dx  ; or word [0x48cadc], dx

loc_0045395f:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 32)]  ; mov dx, word [0x497178]
xor eax, eax
mov ax, word [ref_0048cadc]  ; mov ax, word [0x48cadc]
cmp eax, edx
jne short loc_00453991  ; jne 0x453991
push 0
push ref_0048232a  ; push 0x48232a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
push 1
jmp short loc_004539bd  ; jmp 0x4539bd

loc_00453991:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 34)]  ; mov dx, word [0x49717a]
cmp eax, edx
jne near loc_00453739  ; jne 0x453739

loc_004539a2:
push 0
push ref_00482332  ; push 0x482332
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
push 0

loc_004539bd:
call _Post_0402_Message  ; call 0x401966
add esp, 4
jmp near loc_00453739  ; jmp 0x453739

loc_004539ca:
mov eax, esp
push eax
push esi
call dword [cs:__imp__BeginPaint@8]  ; ucall: call dword cs:[0x4622cc]
lea eax, [esp + 8]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0xc]
push ecx
mov ecx, dword [_g_ddraw_sf2_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
mov ebx, dword [esp + 0x18]
push ebx
mov edi, dword [esp + 0x18]
push edi
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 8]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov eax, esp
push eax
push esi
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_00453739  ; jmp 0x453739

loc_00453a22:
push ebx
push edx
push eax
push esi
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp near loc_0045373b  ; jmp 0x45373b

_rich4_ui_yesno:
push ebx
push esi
push edi
push ebp
call fcn_004024a1  ; call 0x4024a1
mov edi, eax
cmp eax, 1
jne short loc_00453a4c  ; jne 0x453a4c
push 0
call fcn_00402460  ; call 0x402460
add esp, 4

loc_00453a4c:
push 0
push 0
push 0x1b8
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048cad4], eax  ; mov dword [0x48cad4], eax
movsx edx, word [eax + 0xc]
sar edx, 1
mov ebx, dword [esp + 0x14]
sub ebx, edx
mov dword [ref_0048cac4], ebx  ; mov dword [0x48cac4], ebx
movsx edx, word [eax + 0xe]
sar edx, 1
mov ebx, dword [esp + 0x18]
sub ebx, edx
mov dword [ref_0048cac8], ebx  ; mov dword [0x48cac8], ebx
movsx edx, word [eax + 0xc]
mov ebx, dword [ref_0048cac4]  ; mov ebx, dword [0x48cac4]
add edx, ebx
mov dword [ref_0048cacc], edx  ; mov dword [0x48cacc], edx
movsx edx, word [eax + 0xe]
mov eax, dword [ref_0048cac8]  ; mov eax, dword [0x48cac8]
add eax, edx
mov dword [ref_0048cad0], eax  ; mov dword [0x48cad0], eax
push ref_0048cac4  ; push 0x48cac4
call fcn_00451e7e  ; call 0x451e7e
mov ebx, eax
add esp, 4
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ecx, dword [ref_0048cac8]  ; mov ecx, dword [0x48cac8]
push ecx
mov esi, dword [ref_0048cac4]  ; mov esi, dword [0x48cac4]
push esi
mov eax, dword [ref_0048cad4]  ; mov eax, dword [0x48cad4]
add eax, 0xc
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push fcn_0045367e  ; push 0x45367e
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
mov esi, eax
mov eax, dword [ref_0048cac8]  ; mov eax, dword [0x48cac8]
push eax
mov edx, dword [ref_0048cac4]  ; mov edx, dword [0x48cac4]
push edx
push ebx
call fcn_00451edb  ; call 0x451edb
add esp, 0xc
mov ecx, dword [ref_0048cad4]  ; mov ecx, dword [0x48cad4]
push ecx
call _libc_free  ; call 0x456e11
add esp, 4
cmp edi, 1
jne short loc_00453b4e  ; jne 0x453b4e
push edi
call fcn_00402460  ; call 0x402460
add esp, 4

loc_00453b4e:
mov eax, esi
pop ebp
pop edi
pop esi
pop ebx
ret

section .bss

ref_0048cac4:
resb 4

ref_0048cac8:
resb 4

ref_0048cacc:
resb 4

ref_0048cad0:
resb 4

ref_0048cad4:
resb 4

ref_0048cad8:
resb 4

ref_0048cadc:
resb 4
