extern __imp__CreateWindowExA@48
extern __imp__DefWindowProcA@16
extern __imp__DestroyWindow@4
extern __imp__DispatchMessageA@4
extern __imp__GetStockObject@4
extern __imp__GetSystemMetrics@4
extern __imp__LoadCursorA@8
extern __imp__LoadIconA@8
extern __imp__PeekMessageA@20
extern __imp__PostMessageA@16
extern __imp__PostQuitMessage@4
extern __imp__RegisterClassA@4
extern __imp__SetFocus@4
extern __imp__ShowWindow@8
extern __imp__TranslateMessage@4
extern __imp__UpdateWindow@4
extern __imp__mciSendStringA@16
extern _callbackSize
extern _gWindowHandle
extern _rich4_ddraw_primary_sf_ptr
extern _rich4_current_player
extern _rich4_finalize
extern _rich4_free_panel_resources
extern _rich4_init_new_game
extern _rich4_init_panel_resources
extern _rich4_initialize
extern _rich4_load_map
extern _rich4_show_loading_scene
extern _rich4_ui_load_game
extern _rich4_ui_main_entry
extern _windowCallbacks
extern fcn_004075c1
extern fcn_0040d7c4
extern fcn_00415872
extern fcn_00417e26
extern fcn_00418c55
extern fcn_004192f7
extern fcn_004291d6
extern fcn_00451677
extern fcn_0045174a
extern fcn_00451b36
extern fcn_00454d2c
extern fcn_00454d91
extern fcn_00454edc
extern ref_00463069
extern ref_00463074
extern ref_0046307f
extern ref_00463093
extern ref_0046309d
extern ref_004630a7
extern ref_004630b4
extern ref_004630bf
extern ref_004630c5
extern ref_0046cadc
extern ref_0046caf8
extern ref_0046caf9
extern ref_0046cafa
extern ref_0046cafc
extern ref_0046cb01
extern ref_0046cb02
extern ref_0046cb03
extern ref_0046cb04
extern ref_0046cb06
extern ref_0046cb0b
extern ref_00475110
extern ref_0048a064
extern ref_00498ea0
extern ref_00498ea2
extern ref_004990f0
extern ref_004991b6
extern ref_004991b8

global _WinMain

section .text

_rich4_start_game_loop:
push ebx
mov edx, dword [_callbackSize]  ; mov edx, dword [0x46cad8]
inc edx
mov dword [_callbackSize], edx  ; mov dword [0x46cad8], edx
mov dword [edx*4 + _windowCallbacks], fcn_00417e26  ; mov dword [edx*4 + 0x48a010], 0x417e26
push 0
push 0
push 0x401
mov ebx, dword [_gWindowHandle]  ; mov ebx, dword [0x48a0d4]
push ebx
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
or byte [eax + ref_00498ea0], 0x80  ; or byte [eax + 0x498ea0], 0x80
cmp dword [esp + 8], 0
je short loc_004019d0  ; je 0x4019d0
push 0
call fcn_00454d91  ; call 0x454d91
add esp, 4

loc_004019d0:
pop ebx
ret

fcn_004019d2:
dec dword [_callbackSize]  ; dec dword [0x46cad8]
jmp near fcn_00454edc  ; jmp 0x454edc

_rich4_main_window_proc:
push ebx
push esi
push edi
push ebp
mov eax, dword [esp + 0x18]
mov edx, dword [esp + 0x1c]
xor ebx, ebx
cmp eax, 0x1c
jb short loc_00401a02  ; jb 0x401a02
jbe short loc_00401a10  ; jbe 0x401a10
cmp eax, 0x3b9
je near loc_00401b08  ; je 0x401b08
jmp near loc_00401b33  ; jmp 0x401b33

loc_00401a02:
cmp eax, 2
je near loc_00401b24  ; je 0x401b24
jmp near loc_00401b33  ; jmp 0x401b33

loc_00401a10:
test edx, edx
je near loc_00401a9f  ; je 0x401a9f
cmp dword [ref_0046cb0b], 0  ; cmp dword [0x46cb0b], 0
je short loc_00401a87  ; je 0x401a87
mov esi, dword [_rich4_ddraw_primary_sf_ptr]  ; mov esi, dword [0x48a0dc]
test esi, esi
je short loc_00401a31  ; je 0x401a31
mov edx, dword [esi]
push esi
call dword [edx + 0x6c]  ; ucall

loc_00401a31:
cmp byte [ref_0046cb02], 0  ; cmp byte [0x46cb02], 0
je short loc_00401a4c  ; je 0x401a4c
push 0
push 0
push 0
push ref_00463069  ; push 0x463069
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]

loc_00401a4c:
cmp byte [ref_0046cb03], 0  ; cmp byte [0x46cb03], 0
je short loc_00401a67  ; je 0x401a67
push 0
push 0
push 0
push ref_00463074  ; push 0x463074
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]

loc_00401a67:
cmp byte [ref_0046cb04], 0  ; cmp byte [0x46cb04], 0
je short loc_00401a87  ; je 0x401a87
mov edi, dword [_gWindowHandle]  ; mov edi, dword [0x48a0d4]
push edi
push 0
push 0
push ref_0046307f  ; push 0x46307f
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]

loc_00401a87:
mov ebp, dword [esp + 0x14]
push ebp
call dword [cs:__imp__SetFocus@4]  ; ucall: call dword cs:[0x462320]
mov byte [ref_0046cb01], 1  ; mov byte [0x46cb01], 1
jmp near loc_00401b6e  ; jmp 0x401b6e

loc_00401a9f:
mov dword [ref_0046cb0b], 1  ; mov dword [0x46cb0b], 1
xor dl, dl
mov byte [ref_0046cb01], dl  ; mov byte [0x46cb01], dl
cmp byte [ref_0046cb02], 0  ; cmp byte [0x46cb02], 0
je short loc_00401ac9  ; je 0x401ac9
push ebx
push ebx
push ebx
push ref_00463093  ; push 0x463093
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]

loc_00401ac9:
cmp byte [ref_0046cb03], 0  ; cmp byte [0x46cb03], 0
je short loc_00401ae4  ; je 0x401ae4
push 0
push 0
push 0
push ref_0046309d  ; push 0x46309d
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]

loc_00401ae4:
cmp byte [ref_0046cb04], 0  ; cmp byte [0x46cb04], 0
je near loc_00401b6e  ; je 0x401b6e
push 0
push 0
push 0
push ref_004630a7  ; push 0x4630a7
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
jmp near loc_00401b6e  ; jmp 0x401b6e

loc_00401b08:
cmp edx, 1
jne short loc_00401b6e  ; jne 0x401b6e
cmp byte [ref_0046cb02], 0  ; cmp byte [0x46cb02], 0
je short loc_00401b1d  ; je 0x401b1d
call fcn_0045174a  ; call 0x45174a
jmp short loc_00401b6e  ; jmp 0x401b6e

loc_00401b1d:
call fcn_00454d2c  ; call 0x454d2c
jmp short loc_00401b6e  ; jmp 0x401b6e

loc_00401b24:
call _rich4_finalize  ; call 0x401815
push ebx
call dword [cs:__imp__PostQuitMessage@4]  ; ucall: call dword cs:[0x462314]
jmp short loc_00401b6e  ; jmp 0x401b6e

loc_00401b33:
mov ebx, dword [_callbackSize]  ; mov ebx, dword [0x46cad8]
shl ebx, 2
cmp dword [ebx + _windowCallbacks], 0  ; cmp dword [ebx + 0x48a010], 0
je short loc_00401b59  ; je 0x401b59
mov edi, dword [esp + 0x20]
push edi
push edx
push eax
mov ebp, dword [esp + 0x20]
push ebp
call dword [ebx + _windowCallbacks]  ; ucall: call dword [ebx + 0x48a010]
jmp short loc_00401b6c  ; jmp 0x401b6c

loc_00401b59:
mov ebx, dword [esp + 0x20]
push ebx
push edx
push eax
mov esi, dword [esp + 0x20]
push esi
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]

loc_00401b6c:
mov ebx, eax

loc_00401b6e:
mov eax, ebx
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

endloc_00401b77:
db 0x90

ref_00401b78:  ; may contain a jump table
dd loc_00401cc8
dd loc_00401d08
dd loc_00401d2b
dd loc_00401d18
dd loc_00401cbf

ref_00401b8c:  ; may contain a jump table
dd loc_00401c8c
dd loc_00401def
dd loc_00401e25
dd loc_00401e2f

_WinMain:			; rich4_main
push ebx
push esi
push ebp
sub esp, 0x44
mov eax, dword [esp + 0x54]
mov dword [ref_0048a064], eax  ; mov dword [0x48a064], eax
xor edx, edx
mov dword [esp], edx
mov dword [esp + 4], _rich4_main_window_proc  ; mov dword [esp + 4], 0x4019dd
xor ebx, ebx
mov dword [esp + 8], edx
mov dword [esp + 0xc], edx
mov dword [esp + 0x10], eax
push ref_004630b4  ; push 0x4630b4
push eax
call dword [cs:__imp__LoadIconA@8]  ; ucall: call dword cs:[0x462304]
mov dword [esp + 0x14], eax
push 0x7f00
push ebx
call dword [cs:__imp__LoadCursorA@8]  ; ucall: call dword cs:[0x462300]
mov dword [esp + 0x18], eax
push 4
call dword [cs:__imp__GetStockObject@4]  ; ucall: call dword cs:[0x4622a4]
mov dword [esp + 0x1c], eax
mov dword [esp + 0x20], ebx
mov ebp, ref_004630bf  ; mov ebp, 0x4630bf
mov dword [esp + 0x24], ebp
mov eax, esp
push eax
call dword [cs:__imp__RegisterClassA@4]  ; ucall: call dword cs:[0x462318]
test ax, ax
jne short loc_00401c1b  ; jne 0x401c1b
mov eax, 0xffffffff
jmp near loc_00401e50  ; jmp 0x401e50

loc_00401c1b:
push ebx
mov eax, dword [ref_0048a064]  ; mov eax, dword [0x48a064]
push eax
push ebx
push ebx
push 1
call dword [cs:__imp__GetSystemMetrics@4]  ; ucall: call dword cs:[0x4622f0]
push eax
push ebx
call dword [cs:__imp__GetSystemMetrics@4]  ; ucall: call dword cs:[0x4622f0]
push eax
push ebx
push ebx
push 0x80000000
push ebp
push ebp
push ebx
call dword [cs:__imp__CreateWindowExA@48]  ; ucall: call dword cs:[0x4622d4]
mov dword [_gWindowHandle], eax  ; mov dword [0x48a0d4], eax
call _rich4_initialize  ; call 0x4015d6
test eax, eax
je near loc_00401e50  ; je 0x401e50
push 5
mov edx, dword [_gWindowHandle]  ; mov edx, dword [0x48a0d4]
push edx
call dword [cs:__imp__ShowWindow@8]  ; ucall: call dword cs:[0x462330]
mov ecx, dword [_gWindowHandle]  ; mov ecx, dword [0x48a0d4]
push ecx
call dword [cs:__imp__UpdateWindow@4]  ; ucall: call dword cs:[0x46233c]
push 1
push ref_0046cadc  ; push 0x46cadc
push ref_004630c5  ; push 0x4630c5
call fcn_00451677  ; call 0x451677
add esp, 0xc

loc_00401c8c:
xor edx, edx
mov word [ref_004991b8], dx  ; mov word [0x4991b8], dx
mov word [ref_004991b6], dx  ; mov word [0x4991b6], dx
xor ebx, ebx
mov dword [ref_004990f0], ebx  ; mov dword [0x4990f0], ebx
xor ah, ah
mov byte [ref_0046cafc], ah  ; mov byte [0x46cafc], ah
call _rich4_ui_main_entry  ; call 0x4029fd
mov ebx, eax

loc_00401cb3:
cmp ebx, 4
ja short loc_00401d2b  ; ja 0x401d2b

loc_00401cb8:
jmp dword [ebx*4 + ref_00401b78]  ; ujmp: jmp dword [ebx*4 + 0x401b78]

loc_00401cbf:
mov word [ref_004991b6], 1  ; mov word [0x4991b6], 1

loc_00401cc8:
xor eax, eax
mov al, byte [ref_0046cafc]  ; mov al, byte [0x46cafc]
push eax
call _rich4_init_new_game  ; call 0x406de7
add esp, 4
test eax, eax
je short loc_00401c8c  ; je 0x401c8c
call _rich4_show_loading_scene  ; call 0x401543
call _rich4_load_map  ; call 0x407ad2
call _rich4_init_panel_resources  ; call 0x4190cf
call fcn_004291d6  ; call 0x4291d6
call fcn_00415872  ; call 0x415872
mov byte [ref_0046cafc], 1  ; mov byte [0x46cafc], 1
push 0

loc_00401cfe:
call _rich4_start_game_loop  ; call 0x401981
add esp, 4
jmp short loc_00401d2b  ; jmp 0x401d2b

loc_00401d08:
call _rich4_init_panel_resources  ; call 0x4190cf
mov byte [ref_0046cafc], 1  ; mov byte [0x46cafc], 1
push 1
jmp short loc_00401cfe  ; jmp 0x401cfe

loc_00401d18:
call _rich4_finalize  ; call 0x401815
mov esi, dword [_gWindowHandle]  ; mov esi, dword [0x48a0d4]
push esi

loc_00401d24:
call dword [cs:__imp__DestroyWindow@4]  ; ucall: call dword cs:[0x4622dc]

loc_00401d2b:
push 1
push 0
push 0
push 0
lea eax, [esp + 0x38]
push eax
call dword [cs:__imp__PeekMessageA@20]  ; ucall: call dword cs:[0x46230c]
test eax, eax
je short loc_00401d68  ; je 0x401d68
cmp dword [esp + 0x2c], 0x12
je near loc_00401e4c  ; je 0x401e4c
lea eax, [esp + 0x28]
push eax
call dword [cs:__imp__TranslateMessage@4]  ; ucall: call dword cs:[0x462334]
lea eax, [esp + 0x28]
push eax
call dword [cs:__imp__DispatchMessageA@4]  ; ucall: call dword cs:[0x4622e0]
jmp short loc_00401d2b  ; jmp 0x401d2b

loc_00401d68:
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je short loc_00401d2b  ; je 0x401d2b
cmp dword [ref_00475110], 0  ; cmp dword [0x475110], 0
je short loc_00401d7f  ; je 0x401d7f
call fcn_004192f7  ; call 0x4192f7

loc_00401d7f:
cmp byte [ref_0046cafa], 0  ; cmp byte [0x46cafa], 0
je short loc_00401d8d  ; je 0x401d8d
call fcn_0040d7c4  ; call 0x40d7c4

loc_00401d8d:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
cmp byte [eax + ref_00498ea2], 0  ; cmp byte [eax + 0x498ea2], 0
jne short loc_00401db8  ; jne 0x401db8
mov ch, byte [eax + ref_00498ea0]  ; mov ch, byte [eax + 0x498ea0]
test ch, 0x80
je short loc_00401db8  ; je 0x401db8
mov dl, ch
and dl, 0x7f
mov byte [eax + ref_00498ea0], dl  ; mov byte [eax + 0x498ea0], dl
call fcn_00418c55  ; call 0x418c55

loc_00401db8:
mov dh, byte [ref_0046caf8]  ; mov dh, byte [0x46caf8]
test dh, dh
je short loc_00401e03  ; je 0x401e03
xor bl, bl
mov byte [ref_0046cb06], bl  ; mov byte [0x46cb06], bl
xor ebx, ebx
mov bl, dh
call _rich4_free_panel_resources  ; call 0x419228
call fcn_004019d2  ; call 0x4019d2
xor cl, cl
mov byte [ref_0046caf8], cl  ; mov byte [0x46caf8], cl
lea eax, [ebx - 1]
cmp eax, 3
ja short loc_00401e03  ; ja 0x401e03
jmp dword [eax*4 + ref_00401b8c]  ; ujmp: jmp dword [eax*4 + 0x401b8c]

loc_00401def:
xor ebx, ebx
call fcn_004075c1  ; call 0x4075c1
cmp byte [ref_0046caf9], 0  ; cmp byte [0x46caf9], 0
je near loc_00401cb3  ; je 0x401cb3

loc_00401e03:
cmp byte [ref_0046caf9], 0  ; cmp byte [0x46caf9], 0
je near loc_00401d2b  ; je 0x401d2b
call fcn_00451b36  ; call 0x451b36
call _rich4_finalize  ; call 0x401815
mov eax, dword [_gWindowHandle]  ; mov eax, dword [0x48a0d4]
push eax
jmp near loc_00401d24  ; jmp 0x401d24

loc_00401e25:
call fcn_004075c1  ; call 0x4075c1
jmp near loc_00401c8c  ; jmp 0x401c8c

loc_00401e2f:
push 0
call _rich4_ui_load_game  ; call 0x403d74
add esp, 4
cmp eax, 0xffffffff
je near loc_00401c8c  ; je 0x401c8c
mov ebx, 1
jmp near loc_00401cb8  ; jmp 0x401cb8

loc_00401e4c:
mov eax, dword [esp + 0x30]

loc_00401e50:
add esp, 0x44
pop ebp
pop esi
pop ebx
ret 0x10

section .data

ref_00463069:
db 'resume vfw',0x00

ref_00463074:
db 'resume mid',0x00

ref_0046307f:
db 'play cdtrack notify',0x00

ref_00463093:
db 'pause vfw',0x00

ref_0046309d:
db 'pause mid',0x00

ref_004630a7:
db 'stop cdtrack',0x00

ref_004630b4:
db 'RICH4_ICON',0x00

ref_004630bf:
db 'Rich4',0x00

ref_004630c5:
db 'START.AVI',0x00,0x00
