extern _Post_0402_Message
extern _Wait_0402_Message
extern __imp__BeginPaint@8
extern __imp__DefWindowProcA@16
extern __imp__EndPaint@8
extern __imp__InvalidateRect@12
extern __imp__KillTimer@8
extern __imp__PostMessageA@16
extern __imp__SetTimer@16
extern _all_players_state
extern _callbackSize
extern _current_player
extern _libc_free
extern _libc_itoa
extern _libc_rand
extern _libc_sprintf
extern _read_mkf
extern _rich4_create_font
extern _rich4_draw_text
extern fcn_00402250
extern fcn_0040235d
extern fcn_00402460
extern fcn_0040df69
extern fcn_0043d7bf
extern fcn_00440cac
extern fcn_0044ec30
extern fcn_0044ecb6
extern fcn_0044ee18
extern fcn_00451a5a
extern fcn_00451a97
extern fcn_00452946
extern _rich4_ui_yesno
extern fcn_004549cf
extern fcn_00454bcc
extern fcn_004563f5
extern fcn_00456418
extern fcn_0045643d
extern ref_00465140
extern ref_00465149
extern ref_0046514e
extern ref_00465169
extern ref_0046caec
extern ref_0046caf4
extern ref_0046cb01
extern _special_player_strings
extern ref_00475c04
extern ref_00475c08
extern ref_00475c44
extern _rich4_special_player_names
extern _rich4_panel_mkf
extern ref_0048a068
extern ref_0048a08c
extern _g_ddraw_sf1_ptr
extern _g_ddraw_sf2_ptr
extern ref_0048c4b4
extern ref_0048c4b8
extern ref_0048c4bc
extern ref_0048c4c0
extern ref_0048c4c4
extern ref_0048c4c8
extern ref_0048c4c9
extern ref_00496b30
extern _rich4_price_index

global _rich4_ui_prison_entry

section .text

fcn_0043c8fb:
push ebx
push esi
push edi
push ebp
sub esp, 0x14
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0
push 0
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
xor ebx, ebx
jmp short loc_0043c9a1  ; jmp 0x43c9a1

loc_0043c938:
mov ebp, dword [eax + ref_00475c08]  ; mov ebp, dword [eax + 0x475c08]
push ebp
mov edx, dword [eax + ref_00475c04]  ; mov edx, dword [eax + 0x475c04]
push edx
lea edx, [ebx + 0xd]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0xc
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx

loc_0043c967:
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov edx, dword [ebx*8 + ref_00475c08]  ; mov edx, dword [ebx*8 + 0x475c08]
push edx
mov ecx, dword [ebx*8 + ref_00475c04]  ; mov ecx, dword [ebx*8 + 0x475c04]
push ecx
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0x30
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi

loc_0043c98f:
call fcn_00456418  ; call 0x456418
add esp, 0x10
inc ebx
cmp ebx, 8
jge near loc_0043ca19  ; jge 0x43ca19

loc_0043c9a1:
mov eax, ebx
shl eax, 3
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043c9f6  ; je 0x43c9f6
cmp ebx, 4
jge short loc_0043c938  ; jge 0x43c938
mov esi, dword [eax + ref_00475c08]  ; mov esi, dword [eax + 0x475c08]
push esi
mov edi, dword [eax + ref_00475c04]  ; mov edi, dword [eax + 0x475c04]
push edi
imul eax, ebx, 0x68
mov al, byte [eax + (_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
lea edx, [eax + 5]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0xc
add eax, edx
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
jmp near loc_0043c967  ; jmp 0x43c967

loc_0043c9f6:
mov ecx, dword [eax + ref_00475c08]  ; mov ecx, dword [eax + 0x475c08]
push ecx
mov esi, dword [eax + ref_00475c04]  ; mov esi, dword [eax + 0x475c04]
push esi
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0x3c
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
jmp near loc_0043c98f  ; jmp 0x43c98f

loc_0043ca19:
push 0x1b0
push 0x21e
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0x108
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0
push 3
push 0x101010
push 0xffffff
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 0xa
lea eax, [esp + 4]
push eax
imul eax, dword [_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ax, word [eax + (_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
push eax
call _libc_itoa  ; call 0x457d61
add esp, 0xc
push 6
push 0x1c4
push 0x26e
lea eax, [esp + 0xc]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
add esp, 0x14
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_ui_prison_callback:
push ebx
push esi
push edi
push ebp
sub esp, 0x7c
mov edi, dword [esp + 0x90]
mov eax, dword [esp + 0x94]
mov edx, dword [esp + 0x9c]
cmp eax, 0x200
jb short loc_0043cb0d  ; jb 0x43cb0d
mov ebx, edx
shr ebx, 0x10
and ebx, 0xffff
cmp eax, 0x200
jbe near loc_0043cbf5  ; jbe 0x43cbf5
cmp eax, 0x205
jb short loc_0043cafd  ; jb 0x43cafd
jbe near loc_0043d266  ; jbe 0x43d266
cmp eax, 0x401
je short loc_0043cb28  ; je 0x43cb28
jmp near loc_0043d2ed  ; jmp 0x43d2ed

loc_0043cafd:
cmp eax, 0x202
je near loc_0043cef6  ; je 0x43cef6
jmp near loc_0043d2ed  ; jmp 0x43d2ed

loc_0043cb0d:
cmp eax, 0xf
jb near loc_0043d2ed  ; jb 0x43d2ed
jbe near loc_0043d295  ; jbe 0x43d295
cmp eax, 0x113
je short loc_0043cb73  ; je 0x43cb73
jmp near loc_0043d2ed  ; jmp 0x43d2ed

loc_0043cb28:
mov dword [ref_0048c4c4], 0xffffffff  ; mov dword [0x48c4c4], 0xffffffff
xor ah, ah
mov byte [ref_0048c4c8], ah  ; mov byte [0x48c4c8], ah
mov byte [ref_0048c4c9], ah  ; mov byte [0x48c4c9], ah
push 0
push 0x64
mov ecx, dword [_callbackSize]  ; mov ecx, dword [0x46cad8]
push ecx
push edi
call dword [cs:__imp__SetTimer@16]  ; ucall: call dword cs:[0x462324]
mov dword [ref_0048c4c0], eax  ; mov dword [0x48c4c0], eax
push 1
call fcn_00402460  ; call 0x402460
add esp, 4
push 0
push 0
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0043cbe9  ; jmp 0x43cbe9

loc_0043cb73:
cmp byte [ref_0048c4c8], 0  ; cmp byte [0x48c4c8], 0
je near loc_0043cbe9  ; je 0x43cbe9
push 0
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
test eax, eax
je near loc_0043cbe9  ; je 0x43cbe9
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je near loc_0043cbe9  ; je 0x43cbe9
mov eax, dword [esp + 0x98]
cmp eax, dword [_callbackSize]  ; cmp eax, dword [0x46cad8]
jne near loc_0043cbe9  ; jne 0x43cbe9
xor dl, dl
mov byte [ref_0048c4c8], dl  ; mov byte [0x48c4c8], dl
call fcn_0043c8fb  ; call 0x43c8fb
push 0
push 0
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
cmp byte [ref_0048c4c9], 0  ; cmp byte [0x48c4c9], 0
je near loc_0043cbe9  ; je 0x43cbe9
push 0
push 0
push 0x205
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]

loc_0043cbe9:
xor eax, eax

loc_0043cbeb:
add esp, 0x7c
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

loc_0043cbf5:
cmp byte [ref_0048c4c8], 0  ; cmp byte [0x48c4c8], 0
jne short loc_0043cbe9  ; jne 0x43cbe9
xor eax, eax
mov ax, dx
mov dword [esp + 0x78], eax
movzx ebp, bx
xor ebx, ebx
mov ecx, dword [esp + 0x78]
jmp short loc_0043cc1c  ; jmp 0x43cc1c

loc_0043cc12:
inc ebx
cmp ebx, 8
jge near loc_0043ce40  ; jge 0x43ce40

loc_0043cc1c:
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043cc12  ; je 0x43cc12
mov eax, ebx
shl eax, 3
mov edx, dword [esp + 0x78]
mov esi, dword [eax + ref_00475c04]  ; mov esi, dword [eax + 0x475c04]
cmp edx, esi
jl short loc_0043cc12  ; jl 0x43cc12
lea edx, [esi + 0x79]
cmp edx, ecx
jl short loc_0043cc12  ; jl 0x43cc12
mov esi, dword [eax + ref_00475c08]  ; mov esi, dword [eax + 0x475c08]
cmp ebp, esi
jl short loc_0043cc12  ; jl 0x43cc12
lea eax, [esi + 0x89]
cmp ebp, eax
jg short loc_0043cc12  ; jg 0x43cc12
cmp ebx, dword [ref_0048c4c4]  ; cmp ebx, dword [0x48c4c4]
je near loc_0043ce40  ; je 0x43ce40
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
mov dword [ref_0046caf4], eax  ; mov dword [0x46caf4], eax
mov eax, dword [ref_0048c4c4]  ; mov eax, dword [0x48c4c4]
cmp eax, 0xffffffff
je short loc_0043ccf4  ; je 0x43ccf4
mov edx, eax
mov eax, dword [eax*8 + ref_00475c04]  ; mov eax, dword [eax*8 + 0x475c04]
add eax, 0x14
mov dword [esp + 0x68], eax
mov eax, dword [edx*8 + ref_00475c08]  ; mov eax, dword [edx*8 + 0x475c08]
add eax, 0x78
mov dword [esp + 0x6c], eax
mov eax, dword [edx*8 + ref_00475c04]  ; mov eax, dword [edx*8 + 0x475c04]
add eax, 0x78
mov dword [esp + 0x70], eax
mov eax, dword [edx*8 + ref_00475c08]  ; mov eax, dword [edx*8 + 0x475c08]
add eax, 0xd7
mov dword [esp + 0x74], eax
mov edx, dword [esp + 0x6c]
push edx
mov ecx, dword [esp + 0x6c]
push ecx
mov esi, dword [ref_0048c4b8]  ; mov esi, dword [0x48c4b8]
push esi
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0
lea eax, [esp + 0x6c]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043ccf4:
mov dword [ref_0048c4c4], ebx  ; mov dword [0x48c4c4], ebx
mov eax, dword [ebx*8 + ref_00475c04]  ; mov eax, dword [ebx*8 + 0x475c04]
add eax, 0x14
mov dword [esp + 0x68], eax
mov eax, dword [ebx*8 + ref_00475c08]  ; mov eax, dword [ebx*8 + 0x475c08]
add eax, 0x78
mov dword [esp + 0x6c], eax
mov eax, dword [ebx*8 + ref_00475c04]  ; mov eax, dword [ebx*8 + 0x475c04]
add eax, 0x78
mov dword [esp + 0x70], eax
mov eax, dword [ebx*8 + ref_00475c08]  ; mov eax, dword [ebx*8 + 0x475c08]
add eax, 0xd7
mov dword [esp + 0x74], eax
push 0x5f
push 0x64
mov eax, dword [esp + 0x74]
push eax
mov edx, dword [esp + 0x74]
push edx
mov ecx, dword [ref_0048c4b8]  ; mov ecx, dword [0x48c4b8]
push ecx
push ref_0046caec  ; push 0x46caec
call fcn_00451a97  ; call 0x451a97
add esp, 0x18
mov esi, dword [esp + 0x6c]
push esi
mov ebp, dword [esp + 0x6c]
push ebp
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0x24
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0
push 2
push 0
push 0x101010
push 0x10
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov eax, dword [esp + 0x68]
add eax, 0x39
mov edx, dword [esp + 0x6c]
add edx, 0x1a
cmp ebx, 4
jge short loc_0043cdaf  ; jge 0x43cdaf
push 2
push edx
push eax
imul eax, ebx, 0x68
mov ecx, dword [eax + _all_players_state]  ; mov ecx, dword [eax + 0x496b68]
push ecx
jmp short loc_0043cdbb  ; jmp 0x43cdbb

loc_0043cdaf:
push 2
push edx
push eax
mov edx, dword [ebx*4 + (_rich4_special_player_names - 16)]  ; mov edx, dword [ebx*4 + 0x47ed5a]
push edx

loc_0043cdbb:
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 2
mov eax, dword [esp + 0x70]
add eax, 0x30
push eax
mov eax, dword [esp + 0x70]
add eax, 0x39
push eax
push ref_00465140  ; push 0x465140
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov esi, dword [ebx*4 + ref_00475c44]  ; mov esi, dword [ebx*4 + 0x475c44]
push esi
push ref_00465149  ; push 0x465149
lea eax, [esp + 0x48]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 2
mov eax, dword [esp + 0x70]
add eax, 0x46
push eax
mov eax, dword [esp + 0x70]
add eax, 0x39
push eax
lea eax, [esp + 0x4c]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043ce40:
cmp ebx, 8
jne near loc_0043cbe9  ; jne 0x43cbe9
mov ebp, dword [ref_0048c4c4]  ; mov ebp, dword [0x48c4c4]
cmp ebp, 0xffffffff
je near loc_0043cbe9  ; je 0x43cbe9
mov eax, dword [ebp*8 + ref_00475c04]  ; mov eax, dword [ebp*8 + 0x475c04]
add eax, 0x14
mov dword [esp + 0x68], eax
mov eax, dword [ebp*8 + ref_00475c08]  ; mov eax, dword [ebp*8 + 0x475c08]
add eax, 0x78
mov dword [esp + 0x6c], eax
mov eax, dword [ebp*8 + ref_00475c04]  ; mov eax, dword [ebp*8 + 0x475c04]
add eax, 0x78
mov dword [esp + 0x70], eax
mov eax, dword [ebp*8 + ref_00475c08]  ; mov eax, dword [ebp*8 + 0x475c08]
add eax, 0xd7
mov dword [esp + 0x74], eax
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0x6c]
push eax
mov edx, dword [esp + 0x6c]
push edx
mov ecx, dword [ref_0048c4b8]  ; mov ecx, dword [0x48c4b8]
push ecx
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov dword [ref_0048c4c4], 0xffffffff  ; mov dword [0x48c4c4], 0xffffffff
jmp near loc_0043cbe9  ; jmp 0x43cbe9

loc_0043cef6:
cmp byte [ref_0048c4c8], 0  ; cmp byte [0x48c4c8], 0
je short loc_0043cf0e  ; je 0x43cf0e
push 1
call fcn_0044ee18  ; call 0x44ee18

loc_0043cf06:
add esp, 4
jmp near loc_0043cbe9  ; jmp 0x43cbe9

loc_0043cf0e:
xor eax, eax
mov ax, dx
mov dword [esp + 0x78], eax
movzx ebp, bx
xor ebx, ebx
jmp near loc_0043cfdb  ; jmp 0x43cfdb

loc_0043cf21:
imul eax, ebx, 0x68
mov al, byte [eax + (_all_players_state + 52)]  ; mov al, byte [eax + 0x496b9c]
and al, 0x7f
and eax, 0xff
jne short loc_0043cf38  ; jne 0x43cf38
mov eax, 1

loc_0043cf38:
imul eax, eax, 0x64
imul eax, dword [_rich4_price_index]  ; imul eax, dword [0x4990e8]
neg eax
push eax
mov esi, dword [_current_player]  ; mov esi, dword [0x49910c]
push esi
push ebx
call fcn_0040df69  ; call 0x40df69
add esp, 0xc
push 0
push 0
push 0x205
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
imul eax, ebx, 0x68
mov byte [eax + (_all_players_state + 52)], 0x80  ; mov byte [eax + 0x496b9c], 0x80
xor dh, dh
mov byte [ebx + ref_00496b30], dh  ; mov byte [ebx + 0x496b30], dh

loc_0043cf78:
imul eax, dword [_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dx, word [ebx*4 + ref_00475c44]  ; mov dx, word [ebx*4 + 0x475c44]
sub word [eax + (_all_players_state + 48)], dx  ; sub word [eax + 0x496b98], dx
mov byte [ref_0048c4c9], 1  ; mov byte [0x48c4c9], 1
jmp short loc_0043cfd1  ; jmp 0x43cfd1

loc_0043cf97:
push 0
push 0x101010
push 0xfffffffffffffffa
push 0
push 0x12c
push 0xe6
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0x18
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
push ref_0046514e  ; push 0x46514e
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
mov byte [ref_0048c4c8], 1  ; mov byte [0x48c4c8], 1

loc_0043cfd1:
inc ebx
cmp ebx, 8
jge near loc_0043cbe9  ; jge 0x43cbe9

loc_0043cfdb:
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043cfd1  ; je 0x43cfd1
mov eax, ebx
shl eax, 3
mov edx, dword [esp + 0x78]
mov ecx, dword [eax + ref_00475c04]  ; mov ecx, dword [eax + 0x475c04]
cmp edx, ecx
jl short loc_0043cfd1  ; jl 0x43cfd1
lea edx, [ecx + 0x79]
cmp edx, dword [esp + 0x78]
jl short loc_0043cfd1  ; jl 0x43cfd1
mov edx, dword [eax + ref_00475c08]  ; mov edx, dword [eax + 0x475c08]
cmp ebp, edx
jl short loc_0043cfd1  ; jl 0x43cfd1
lea eax, [edx + 0x89]
cmp ebp, eax
jg short loc_0043cfd1  ; jg 0x43cfd1
mov ecx, dword [ref_0048c4c4]  ; mov ecx, dword [0x48c4c4]
cmp ecx, 0xffffffff
je near loc_0043d0bc  ; je 0x43d0bc
mov eax, dword [ecx*8 + ref_00475c04]  ; mov eax, dword [ecx*8 + 0x475c04]
add eax, 0x14
mov dword [esp + 0x68], eax
mov eax, dword [ecx*8 + ref_00475c08]  ; mov eax, dword [ecx*8 + 0x475c08]
add eax, 0x78
mov dword [esp + 0x6c], eax
mov eax, dword [ecx*8 + ref_00475c04]  ; mov eax, dword [ecx*8 + 0x475c04]
add eax, 0x78
mov dword [esp + 0x70], eax
mov eax, dword [ecx*8 + ref_00475c08]  ; mov eax, dword [ecx*8 + 0x475c08]
add eax, 0xd7
mov dword [esp + 0x74], eax
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov esi, dword [esp + 0x6c]
push esi
mov eax, dword [esp + 0x6c]
push eax
mov edx, dword [ref_0048c4b8]  ; mov edx, dword [0x48c4b8]
push edx
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
lea eax, [esp + 0x6c]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov dword [ref_0048c4c4], 0xffffffff  ; mov dword [0x48c4c4], 0xffffffff

loc_0043d0bc:
imul eax, dword [_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ax, word [eax + (_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
mov esi, ebx
shl esi, 2
cmp eax, dword [esi + ref_00475c44]  ; cmp eax, dword [esi + 0x475c44]
jl near loc_0043cf97  ; jl 0x43cf97
push 0xf0
push 0x140
call _rich4_ui_yesno  ; call 0x453a32
add esp, 8
cmp eax, 1
jne near loc_0043cfd1  ; jne 0x43cfd1
mov eax, dword [ebx*8 + ref_00475c04]  ; mov eax, dword [ebx*8 + 0x475c04]
mov dword [esp + 0x68], eax
mov eax, dword [ebx*8 + ref_00475c08]  ; mov eax, dword [ebx*8 + 0x475c08]
mov dword [esp + 0x6c], eax
mov eax, dword [esp + 0x68]
add eax, 0x8c
mov dword [esp + 0x70], eax
mov eax, dword [esp + 0x6c]
add eax, 0x89
mov dword [esp + 0x74], eax
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x89
push 0x8c
mov eax, dword [esp + 0x74]
push eax
mov edx, dword [esp + 0x74]
push edx
push eax
push edx
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov ecx, dword [esp + 0x6c]
push ecx
mov eax, dword [esp + 0x6c]
push eax
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0x3c
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
cmp ebx, 4
jl near loc_0043cf21  ; jl 0x43cf21
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x1c2
push 0x16d
lea edx, [ebx - 4]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c4bc]  ; mov edx, dword [0x48c4bc]
add edx, 0xc
add eax, edx
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
push 0x101010
push 0xfffffffffffffffa
push 0
push 0x96
push 0xd2
mov eax, dword [ref_0048c4b4]  ; mov eax, dword [0x48c4b4]
add eax, 0x18
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
mov edx, dword [esi + (_special_player_strings - 16)]  ; mov edx, dword [esi + 0x475be4]
push edx
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
mov byte [ref_0048c4c8], 1  ; mov byte [0x48c4c8], 1
push ebx
call fcn_0043d7bf  ; call 0x43d7bf
add esp, 4
jmp near loc_0043cf78  ; jmp 0x43cf78

loc_0043d266:
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov ebx, dword [ref_0048c4c0]  ; mov ebx, dword [0x48c4c0]
push ebx
push edi
call dword [cs:__imp__KillTimer@8]  ; ucall: call dword cs:[0x4622fc]
push 1
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
push 0
call _Post_0402_Message  ; call 0x401966
jmp near loc_0043cf06  ; jmp 0x43cf06

loc_0043d295:
mov eax, esp
push eax
push edi
call dword [cs:__imp__BeginPaint@8]  ; ucall: call dword cs:[0x4622cc]
lea eax, [esp + 8]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ebx, [esp + 0xc]
push ebx
mov ebp, dword [_g_ddraw_sf2_ptr]  ; mov ebp, dword [0x48a0e0]
push ebp
mov ecx, dword [esp + 0x18]
push ecx
mov ebx, dword [esp + 0x18]
push ebx
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 8]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov eax, esp
push eax
push edi
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_0043cbe9  ; jmp 0x43cbe9

loc_0043d2ed:
push edx
mov esi, dword [esp + 0x9c]
push esi
push eax
push edi
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp near loc_0043cbeb  ; jmp 0x43cbeb

_rich4_ui_prison_entry:
push ebx
push esi
push edi
push ebp
sub esp, 0x9c
xor ebx, ebx
jmp short loc_0043d318  ; jmp 0x43d318

loc_0043d312:
inc ebx
cmp ebx, 8
jge short loc_0043d321  ; jge 0x43d321

loc_0043d318:
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043d312  ; je 0x43d312

loc_0043d321:
cmp ebx, 8
je near loc_0043d588  ; je 0x43d588
imul eax, dword [_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne near loc_0043d3d8  ; jne 0x43d3d8
push 0
push 0
push 0x3f
mov ebx, dword [_rich4_panel_mkf]  ; mov ebx, dword [0x48a05c]
push ebx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c4b4], eax  ; mov dword [0x48c4b4], eax
push 0
push 0
push 0x40
mov esi, dword [_rich4_panel_mkf]  ; mov esi, dword [0x48a05c]
push esi
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c4bc], eax  ; mov dword [0x48c4bc], eax
push 0
push 0
push 0x5f
push 0x64
call fcn_00451a5a  ; call 0x451a5a
add esp, 0x10
mov dword [ref_0048c4b8], eax  ; mov dword [0x48c4b8], eax
call fcn_0043c8fb  ; call 0x43c8fb
push 0xf
call fcn_004549cf  ; call 0x4549cf
add esp, 4
push 0
push _rich4_ui_prison_callback  ; push 0x43caab
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
call fcn_00454bcc  ; call 0x454bcc
mov edi, dword [ref_0048c4b4]  ; mov edi, dword [0x48c4b4]
push edi
call _libc_free  ; call 0x456e11
add esp, 4
mov ebp, dword [ref_0048c4bc]  ; mov ebp, dword [0x48c4bc]
push ebp
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, dword [ref_0048c4b8]  ; mov eax, dword [0x48c4b8]
push eax
call _libc_free  ; call 0x456e11
jmp near loc_0043d585  ; jmp 0x43d585

loc_0043d3d8:
call _libc_rand  ; call 0x456f2d
test al, 1
je near loc_0043d588  ; je 0x43d588
xor esi, esi
imul edx, dword [_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
mov dl, byte [edx + (_all_players_state + 23)]  ; mov dl, byte [edx + 0x496b7f]
cmp dl, 1
jb short loc_0043d409  ; jb 0x43d409
jbe short loc_0043d432  ; jbe 0x43d432
cmp dl, 2
je near loc_0043d484  ; je 0x43d484
jmp near loc_0043d4a4  ; jmp 0x43d4a4

loc_0043d409:
test dl, dl
jne near loc_0043d4a4  ; jne 0x43d4a4
xor ebx, ebx
jmp short loc_0043d41f  ; jmp 0x43d41f

loc_0043d415:
inc ebx
cmp ebx, 4
jge near loc_0043d4a4  ; jge 0x43d4a4

loc_0043d41f:
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043d415  ; je 0x43d415
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043d415  ; jmp 0x43d415

loc_0043d432:
xor ebx, ebx
jmp short loc_0043d43c  ; jmp 0x43d43c

loc_0043d436:
inc ebx
cmp ebx, 4
jge short loc_0043d44f  ; jge 0x43d44f

loc_0043d43c:
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043d436  ; je 0x43d436
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043d436  ; jmp 0x43d436

loc_0043d44f:
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ebx, 3
sar edx, 0x1f
idiv ebx
test edx, edx
jne short loc_0043d4a4  ; jne 0x43d4a4
mov ebx, 4
jmp short loc_0043d471  ; jmp 0x43d471

loc_0043d46b:
inc ebx
cmp ebx, 8
jge short loc_0043d4a4  ; jge 0x43d4a4

loc_0043d471:
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043d46b  ; je 0x43d46b
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043d46b  ; jmp 0x43d46b

loc_0043d484:
mov ebx, 4
jmp short loc_0043d491  ; jmp 0x43d491

loc_0043d48b:
inc ebx
cmp ebx, 8
jge short loc_0043d4a4  ; jge 0x43d4a4

loc_0043d491:
cmp byte [ebx + ref_00496b30], 0  ; cmp byte [ebx + 0x496b30], 0
je short loc_0043d48b  ; je 0x43d48b
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043d48b  ; jmp 0x43d48b

loc_0043d4a4:
test esi, esi
je near loc_0043d588  ; je 0x43d588
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
xor ebx, ebx
mov bl, byte [esp + edx + 0x94]
mov esi, dword [ebx*4 + ref_00475c44]  ; mov esi, dword [ebx*4 + 0x475c44]
cmp ebx, 4
jge short loc_0043d4e4  ; jge 0x43d4e4
imul eax, dword [_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ax, word [eax + (_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
cmp eax, esi
jg short loc_0043d503  ; jg 0x43d503

loc_0043d4e4:
cmp ebx, 4
jl near loc_0043d588  ; jl 0x43d588
imul eax, dword [_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp word [eax + (_all_players_state + 48)], 0x2bc  ; cmp word [eax + 0x496b98], 0x2bc
jb near loc_0043d588  ; jb 0x43d588

loc_0043d503:
cmp ebx, 4
jge short loc_0043d514  ; jge 0x43d514
imul edx, ebx, 0x68
mov ebp, dword [edx + _all_players_state]  ; mov ebp, dword [edx + 0x496b68]
push ebp
jmp short loc_0043d51c  ; jmp 0x43d51c

loc_0043d514:
mov edi, dword [ebx*4 + (_rich4_special_player_names - 16)]  ; mov edi, dword [ebx*4 + 0x47ed5a]
push edi

loc_0043d51c:
lea eax, [esp + 0x84]
push eax
call fcn_00452946  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
push ref_00465169  ; push 0x465169
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
imul edx, dword [_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
sub word [edx + (_all_players_state + 48)], si  ; sub word [edx + 0x496b98], si
cmp ebx, 4
jge short loc_0043d57f  ; jge 0x43d57f
imul edx, ebx, 0x68
mov byte [edx + (_all_players_state + 52)], 0x80  ; mov byte [edx + 0x496b9c], 0x80
xor dl, dl
mov byte [ebx + ref_00496b30], dl  ; mov byte [ebx + 0x496b30], dl
jmp short loc_0043d588  ; jmp 0x43d588

loc_0043d57f:
push ebx
call fcn_0043d7bf  ; call 0x43d7bf

loc_0043d585:
add esp, 4

loc_0043d588:
add esp, 0x9c
pop ebp
pop edi
pop esi
pop ebx
ret

section .data

ref_00465140:
dd 0xc0c44fab
dd 0xc6bc49c2
db 0x00

ref_00465149:
db 0x25
db 0x64
db 0xc2
db 0x49
db 0x00

ref_0046514e:
db 0x23
db 0x30
dd 0xa9323030
dd 0xa170baea
dd 0x41a70a49
dd 0x49c2baaa
dd 0xa3a4c6bc
dd 0x49a1aca8
db 0x00

ref_00465169:
db 0xab
db 0x4f
db 0xc4
dd 0x007325c0


ref_00475c04:
dd 0x00000021

ref_00475c08:
dd 0x00000018
dd 0x000000b9
dd 0x00000018
dd 0x00000150
dd 0x00000018
dd 0x000001e7
dd 0x00000018
dd 0x00000021
dd 0x000000b7
dd 0x000000b9
dd 0x000000b7
dd 0x00000150
dd 0x000000b7
dd 0x000001e7
dd 0x000000b7

ref_00475c44:
dd 0x0000001e
dd 0x0000001e
dd 0x0000001e
dd 0x0000001e
dd 0x0000012c
dd 0x0000012c
dd 0x0000012c
dd 0x0000012c

section .bss

ref_0048c4b4:
resb 4

ref_0048c4b8:
resb 4

ref_0048c4bc:
resb 4

ref_0048c4c0:
resb 4

ref_0048c4c4:
resb 4

ref_0048c4c8:
resb 1

ref_0048c4c9:
resb 3
