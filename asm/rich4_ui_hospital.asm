extern _Post_0402_Message
extern _Wait_0402_Message
extern __imp__BeginPaint@8
extern __imp__DefWindowProcA@16
extern __imp__EndPaint@8
extern __imp__InvalidateRect@12
extern __imp__KillTimer@8
extern __imp__PostMessageA@16
extern __imp__SetTimer@16
extern _rich4_all_players_state
extern _callbackSize
extern _rich4_current_player
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
extern _rich4_update_hostility
extern _rich4_release_player_from_hospital
extern fcn_00440cac
extern fcn_0044ec30
extern fcn_0044ecb6
extern fcn_0044ee18
extern fcn_0044ef3b
extern fcn_00451a5a
extern fcn_00451a97
extern _rich4_string_strip_spaces
extern _rich4_ui_yesno
extern fcn_004549cf
extern fcn_00454bcc
extern fcn_004563f5
extern fcn_00456418
extern fcn_0045643d
extern ref_004651f9
extern ref_00465202
extern ref_00465207
extern ref_0046caec
extern ref_0046caf4
extern ref_0046cb01
extern _special_player_strings
extern ref_00475c64
extern ref_00475c68
extern ref_00475ca4
extern ref_00475cc4
extern ref_00475ccc
extern ref_00475cd0
extern ref_00475cd4
extern ref_00475cd8
extern ref_00475cdb
extern _rich4_special_player_names
extern _rich4_panel_mkf
extern ref_0048a068
extern ref_0048a08c
extern _rich4_ddraw_primary_sf_ptr
extern _rich4_ddraw_offscreen_sf_ptr
extern ref_0048c4cc
extern ref_0048c4d0
extern ref_0048c4d4
extern ref_0048c4d8
extern ref_0048c4dc
extern ref_0048c4e0
extern ref_0048c4e4
extern ref_0048c4e8
extern ref_0048c4ec
extern ref_0048c4f0
extern ref_0048c4f1
extern ref_0048c4f2
extern ref_0048c4f3
extern ref_0048c4f4
extern ref_0048c4f5
extern ref_0048c4f6
extern ref_00496b60
extern _rich4_price_index

global _rich4_ui_hospital_entry

section .text

fcn_0043d88f:
push ebx
push esi
push edi
push ebp
sub esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0
push 0
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0x6e
push 0x68
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x3c
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
xor ebx, ebx
jmp short loc_0043d8f2  ; jmp 0x43d8f2

loc_0043d8e8:
inc ebx
cmp ebx, 8
jge near loc_0043d97d  ; jge 0x43d97d

loc_0043d8f2:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043d8e8  ; je 0x43d8e8
mov eax, ebx
shl eax, 3
cmp ebx, 4
jge short loc_0043d94c  ; jge 0x43d94c
mov edx, dword [eax + ref_00475c68]  ; mov edx, dword [eax + 0x475c68]
push edx
mov ecx, dword [eax + ref_00475c64]  ; mov ecx, dword [eax + 0x475c64]
push ecx
imul eax, ebx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
lea edx, [eax + 0xe]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0xc
add eax, edx
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi

loc_0043d942:
call fcn_00456418  ; call 0x456418
add esp, 0x10
jmp short loc_0043d8e8  ; jmp 0x43d8e8

loc_0043d94c:
mov esi, dword [eax + ref_00475c68]  ; mov esi, dword [eax + 0x475c68]
push esi
mov edi, dword [eax + ref_00475c64]  ; mov edi, dword [eax + 0x475c64]
push edi
lea edx, [ebx + 0x16]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0xc
add eax, edx
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
jmp short loc_0043d942  ; jmp 0x43d942

loc_0043d97d:
push 0x1b0
push 8
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x174
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
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ax, word [eax + (_rich4_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
push eax
call _libc_itoa  ; call 0x457d61
add esp, 0xc
push 6
push 0x1c4
push 0x58
lea eax, [esp + 0xc]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
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

endloc_0043da09:
db 0x8b
db 0xc0

ref_0043da0b:  ; may contain a jump table
dd loc_0043dba7
dd loc_0043dbb3
dd loc_0043df8b
dd loc_0043dbd6
dd loc_0043dba7
dd loc_0043ded8
dd loc_0043df68

_rich4_ui_hospital_callback:
push ebx
push esi
push edi
push ebp
sub esp, 0x78
mov ebp, dword [esp + 0x8c]
mov eax, dword [esp + 0x90]
mov esi, dword [esp + 0x98]
mov ebx, esi
shr ebx, 0x10
and ebx, 0xffff
cmp eax, 0x202
jb short loc_0043da84  ; jb 0x43da84
jbe near loc_0043e658  ; jbe 0x43e658
cmp eax, 0x401
jb short loc_0043da74  ; jb 0x43da74
jbe short loc_0043daaf  ; jbe 0x43daaf
cmp eax, 0x405
je near loc_0043db41  ; je 0x43db41
jmp near loc_0043e98d  ; jmp 0x43e98d

loc_0043da74:
cmp eax, 0x205
je near loc_0043e7c7  ; je 0x43e7c7
jmp near loc_0043e98d  ; jmp 0x43e98d

loc_0043da84:
cmp eax, 0x113
jb short loc_0043daa1  ; jb 0x43daa1
jbe near loc_0043db59  ; jbe 0x43db59
cmp eax, 0x200
je near loc_0043e35b  ; je 0x43e35b
jmp near loc_0043e98d  ; jmp 0x43e98d

loc_0043daa1:
cmp eax, 0xf
je near loc_0043e92f  ; je 0x43e92f
jmp near loc_0043e98d  ; jmp 0x43e98d

loc_0043daaf:
mov byte [ref_0048c4f0], 0xff  ; mov byte [0x48c4f0], 0xff
xor dh, dh
mov byte [ref_0048c4f1], dh  ; mov byte [0x48c4f1], dh
mov byte [ref_0048c4f2], dh  ; mov byte [0x48c4f2], dh
mov byte [ref_0048c4f3], dh  ; mov byte [0x48c4f3], dh
mov byte [ref_0048c4f4], dh  ; mov byte [0x48c4f4], dh
mov byte [ref_0048c4f6], dh  ; mov byte [0x48c4f6], dh
push 0
push 0x64
mov ecx, dword [_callbackSize]  ; mov ecx, dword [0x46cad8]
push ecx
push ebp
call dword [cs:__imp__SetTimer@16]  ; ucall: call dword cs:[0x462324]
mov dword [ref_0048c4ec], eax  ; mov dword [0x48c4ec], eax
push 1
call fcn_00402460  ; call 0x402460
add esp, 4
push 0
push 0x101010
push 0
push 0
push 8
push 8
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x24
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
push 0
push 0
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
push 0
push 0x405
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]

loc_0043db35:
xor eax, eax

loc_0043db37:
add esp, 0x78
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

loc_0043db41:
mov byte [ref_0048c4f2], 1  ; mov byte [0x48c4f2], 1
mov edx, dword [ref_00475cc4]  ; mov edx, dword [0x475cc4]

loc_0043db4e:
push edx
call fcn_0044ecb6  ; call 0x44ecb6

loc_0043db54:
add esp, 4
jmp short loc_0043db35  ; jmp 0x43db35

loc_0043db59:
cmp byte [ref_0048c4f2], 0  ; cmp byte [0x48c4f2], 0
je short loc_0043db35  ; je 0x43db35
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je short loc_0043db35  ; je 0x43db35
mov eax, dword [esp + 0x94]
cmp eax, dword [_callbackSize]  ; cmp eax, dword [0x46cad8]
jne short loc_0043db35  ; jne 0x43db35
push 0
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
test eax, eax
je near loc_0043df8b  ; je 0x43df8b
mov al, byte [ref_0048c4f2]  ; mov al, byte [0x48c4f2]
dec al
cmp al, 6
ja near loc_0043df8b  ; ja 0x43df8b
and eax, 0xff
jmp dword [eax*4 + ref_0043da0b]  ; ujmp: jmp dword [eax*4 + 0x43da0b]

loc_0043dba7:
mov byte [ref_0048c4f2], 2  ; mov byte [0x48c4f2], 2
jmp near loc_0043df8b  ; jmp 0x43df8b

loc_0043dbb3:
cmp byte [ref_0048c4f6], 0  ; cmp byte [0x48c4f6], 0
je near loc_0043df8b  ; je 0x43df8b
push 0
push 0
push 0x205
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
jmp near loc_0043df8b  ; jmp 0x43df8b

loc_0043dbd6:
mov byte [ref_0048c4f2], 2  ; mov byte [0x48c4f2], 2
xor edx, edx
mov dl, byte [ref_0048c4f5]  ; mov dl, byte [0x48c4f5]
mov eax, dword [edx*8 + ref_00475c64]  ; mov eax, dword [edx*8 + 0x475c64]
mov dword [esp + 0x68], eax
mov eax, dword [edx*8 + ref_00475c68]  ; mov eax, dword [edx*8 + 0x475c68]
mov dword [esp + 0x6c], eax
mov eax, dword [esp + 0x68]
add eax, 0x93
mov dword [esp + 0x70], eax
mov eax, dword [esp + 0x6c]
add eax, 0x66
mov dword [esp + 0x74], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x66
push 0x93
mov ebx, dword [esp + 0x74]
push ebx
mov esi, dword [esp + 0x74]
push esi
push ebx
push esi
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov bl, byte [ref_0048c4f5]  ; mov bl, byte [0x48c4f5]
cmp bl, 4
jb near loc_0043de56  ; jb 0x43de56
mov byte [ref_0048c4f2], 6  ; mov byte [0x48c4f2], 6
xor eax, eax
mov al, bl
lea edx, [eax - 4]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, dword [ref_0048c4d0]  ; mov edx, dword [0x48c4d0]
movsx eax, word [edx + eax*4 + 0x10]
mov edx, 0x1a4
sub edx, eax
mov dword [ref_0048c4d8], edx  ; mov dword [0x48c4d8], edx
xor eax, eax
mov al, bl
lea edx, [eax - 4]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, dword [ref_0048c4d0]  ; mov edx, dword [0x48c4d0]
movsx edx, word [edx + eax*4 + 0xc]
mov eax, dword [ref_0048c4d8]  ; mov eax, dword [0x48c4d8]
add eax, edx
mov dword [ref_0048c4e0], eax  ; mov dword [0x48c4e0], eax
xor eax, eax
mov al, bl
lea edx, [eax - 4]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c4d0]  ; mov eax, dword [0x48c4d0]
movsx eax, word [edx + eax + 0x12]
mov edx, 0x1c2
sub edx, eax
mov dword [ref_0048c4dc], edx  ; mov dword [0x48c4dc], edx
xor edx, edx
mov dl, bl
sub edx, 4
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, dword [ref_0048c4d0]  ; mov edx, dword [0x48c4d0]
movsx eax, word [edx + eax*4 + 0xe]
mov edx, dword [ref_0048c4dc]  ; mov edx, dword [0x48c4dc]
add eax, edx
mov dword [ref_0048c4e4], eax  ; mov dword [0x48c4e4], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov eax, dword [eax]
push 0
push 1
mov edx, ref_0048a068  ; mov edx, 0x48a068
push edx
push 0
mov esi, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov esi, dword [0x48a0e0]
push esi
call dword [eax + 0x64]  ; ucall
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
mov dword [ref_0046caf4], eax  ; mov dword [0x46caf4], eax
xor eax, eax
mov al, byte [ref_0048c4f5]  ; mov al, byte [0x48c4f5]
lea edx, [eax - 4]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, dword [ref_0048c4d0]  ; mov edx, dword [0x48c4d0]
movsx eax, word [edx + eax*4 + 0xe]
push eax
xor eax, eax
mov al, byte [ref_0048c4f5]  ; mov al, byte [0x48c4f5]
lea edx, [eax - 4]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, dword [ref_0048c4d0]  ; mov edx, dword [0x48c4d0]
movsx eax, word [edx + eax*4 + 0xc]
push eax
mov edi, dword [ref_0048c4dc]  ; mov edi, dword [0x48c4dc]
push edi
mov eax, dword [ref_0048c4d8]  ; mov eax, dword [0x48c4d8]
push eax
push 0
mov eax, ref_0046caec  ; mov eax, 0x46caec
push eax
call fcn_00451a97  ; call 0x451a97
add esp, 0x18
mov dword [ref_0048c4e8], eax  ; mov dword [0x48c4e8], eax
push 0x1c2
push 0x1a4
xor eax, eax
mov al, byte [ref_0048c4f5]  ; mov al, byte [0x48c4f5]
lea edx, [eax - 4]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c4d0]  ; mov eax, dword [0x48c4d0]
add eax, 0xc
add edx, eax
push edx
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov eax, dword [eax]
push 0
mov ecx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
call dword [eax + 0x80]  ; ucall
push 0
mov eax, ref_0048c4d8  ; mov eax, 0x48c4d8
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
push 0x101010
push 0xfffffffffffffffa
push 0
push 0xc8
push 0xc8
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x18
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
xor eax, eax
mov al, byte [ref_0048c4f5]  ; mov al, byte [0x48c4f5]
mov ebx, dword [eax*4 + (_special_player_strings - 16)]  ; mov ebx, dword [eax*4 + 0x475be4]
push ebx
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
xor eax, eax
mov al, byte [ref_0048c4f5]  ; mov al, byte [0x48c4f5]
push eax
call _rich4_release_player_from_hospital  ; call 0x43ee6e
add esp, 4
jmp short loc_0043deae  ; jmp 0x43deae

loc_0043de56:
xor eax, eax
mov al, bl
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 53)]  ; mov al, byte [eax + 0x496b9d]
and al, 0x7f
and eax, 0xff
jne short loc_0043de71  ; jne 0x43de71
mov eax, 1

loc_0043de71:
imul eax, eax, 0x64
imul eax, dword [_rich4_price_index]  ; imul eax, dword [0x4990e8]
neg eax
push eax
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
xor eax, eax
mov al, byte [ref_0048c4f5]  ; mov al, byte [0x48c4f5]
push eax
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc
xor eax, eax
mov al, byte [ref_0048c4f5]  ; mov al, byte [0x48c4f5]
imul edx, eax, 0x68
mov byte [edx + (_rich4_all_players_state + 53)], 0x80  ; mov byte [edx + 0x496b9d], 0x80
xor cl, cl
mov byte [eax + ref_00496b60], cl  ; mov byte [eax + 0x496b60], cl

loc_0043deae:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dl, byte [ref_0048c4f5]  ; mov dl, byte [0x48c4f5]
mov dx, word [edx*4 + ref_00475ca4]  ; mov dx, word [edx*4 + 0x475ca4]
sub word [eax + (_rich4_all_players_state + 48)], dx  ; sub word [eax + 0x496b98], dx
mov byte [ref_0048c4f6], 1  ; mov byte [0x48c4f6], 1
jmp near loc_0043df8b  ; jmp 0x43df8b

loc_0043ded8:
mov byte [ref_0048c4f2], 2  ; mov byte [0x48c4f2], 2
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov esi, dword [ref_0048c4dc]  ; mov esi, dword [0x48c4dc]
push esi
mov edi, dword [ref_0048c4d8]  ; mov edi, dword [0x48c4d8]
push edi
mov eax, dword [ref_0048c4e8]  ; mov eax, dword [0x48c4e8]
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push ref_0048c4d8  ; push 0x48c4d8
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov ecx, dword [ref_0048c4e8]  ; mov ecx, dword [0x48c4e8]
push ecx
call _libc_free  ; call 0x456e11
add esp, 4
push 0
push 0x101010
push 0
push 0
push 8
push 8
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x24
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
jmp short loc_0043df8b  ; jmp 0x43df8b

loc_0043df68:
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov ebx, dword [ref_0048c4ec]  ; mov ebx, dword [0x48c4ec]
push ebx
push ebp
call dword [cs:__imp__KillTimer@8]  ; ucall: call dword cs:[0x4622fc]
push 0
call _Post_0402_Message  ; call 0x401966
add esp, 4

loc_0043df8b:
mov al, byte [ref_0048c4f3]  ; mov al, byte [0x48c4f3]
and al, 0xf
test al, al
jbe short loc_0043df9f  ; jbe 0x43df9f
cmp al, 1
je short loc_0043dfbd  ; je 0x43dfbd
jmp near loc_0043e0fb  ; jmp 0x43e0fb

loc_0043df9f:
call _libc_rand  ; call 0x456f2d
mov esi, eax
sar esi, 0xa
test esi, esi
jne near loc_0043e0fb  ; jne 0x43e0fb
or byte [ref_0048c4f3], 1  ; or byte [0x48c4f3], 1
jmp near loc_0043e0fb  ; jmp 0x43e0fb

loc_0043dfbd:
mov al, byte [ref_0048c4f3]  ; mov al, byte [0x48c4f3]
and al, 0xf0
movzx esi, al
sar esi, 4
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
cmp byte [ref_0048c4f4], 0  ; cmp byte [0x48c4f4], 0
jne near loc_0043e07c  ; jne 0x43e07c
mov edi, 0x8b
mov dword [esp + 0x68], edi
mov eax, 0x9e
mov dword [esp + 0x6c], eax
mov dword [esp + 0x70], 0xb3
mov dword [esp + 0x74], 0xb4
cmp esi, 3
jge short loc_0043e050  ; jge 0x43e050
push eax
push edi
xor edx, edx
mov dl, byte [esi + ref_00475cd8]  ; mov dl, byte [esi + 0x475cd8]

loc_0043e01e:
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0xc
add eax, edx
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
add byte [ref_0048c4f3], 0x10  ; add byte [0x48c4f3], 0x10
jmp near loc_0043e0dc  ; jmp 0x43e0dc

loc_0043e050:
push 0x16
push 0x28
push 0x30
push 0x23
push eax
push edi
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x3c
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
xor cl, cl
mov byte [ref_0048c4f3], cl  ; mov byte [0x48c4f3], cl
jmp short loc_0043e0dc  ; jmp 0x43e0dc

loc_0043e07c:
mov edi, 0xa5
mov dword [esp + 0x68], edi
mov eax, 0x9e
mov dword [esp + 0x6c], eax
mov dword [esp + 0x70], 0xcd
mov dword [esp + 0x74], 0xb7
cmp esi, 3
jge short loc_0043e0b2  ; jge 0x43e0b2
push eax
push edi
xor edx, edx
mov dl, byte [esi + ref_00475cdb]  ; mov dl, byte [esi + 0x475cdb]
jmp near loc_0043e01e  ; jmp 0x43e01e

loc_0043e0b2:
push 0x19
push 0x28
push 0x2e
push 0x4a
push eax
push edi
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x78
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
xor bl, bl
mov byte [ref_0048c4f3], bl  ; mov byte [0x48c4f3], bl

loc_0043e0dc:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043e0fb:
call fcn_0044ef3b  ; call 0x44ef3b
test eax, eax
jne short loc_0043e111  ; jne 0x43e111
cmp byte [ref_0048c4f1], 0  ; cmp byte [0x48c4f1], 0
je near loc_0043db35  ; je 0x43db35

loc_0043e111:
cmp byte [ref_0048c4f2], 6  ; cmp byte [0x48c4f2], 6
je near loc_0043db35  ; je 0x43db35
mov al, byte [ref_0048c4f1]  ; mov al, byte [0x48c4f1]
dec al
cmp byte [ref_0048c4f4], 0  ; cmp byte [0x48c4f4], 0
jne near loc_0043e26e  ; jne 0x43e26e
mov dword [esp + 0x68], 0x8b
mov dword [esp + 0x6c], 0xb4
mov dword [esp + 0x70], 0xb3
mov dword [esp + 0x74], 0xc6
cmp byte [ref_0048c4f1], 0  ; cmp byte [0x48c4f1], 0
je short loc_0043e1b5  ; je 0x43e1b5
mov byte [ref_0048c4f1], al  ; mov byte [0x48c4f1], al
test al, al
jne near loc_0043db35  ; jne 0x43db35
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edi, dword [esp + 0x6c]
push edi
mov eax, dword [esp + 0x6c]
push eax
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x6c
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx

loc_0043e198:
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
jmp near loc_0043e25a  ; jmp 0x43e25a

loc_0043e1b5:
call _libc_rand  ; call 0x456f2d
mov esi, eax
sar esi, 0xb
cmp esi, 4
jge near loc_0043db35  ; jge 0x43db35
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
call _libc_rand  ; call 0x456f2d
test al, 1
je short loc_0043e20b  ; je 0x43e20b
mov ecx, dword [esp + 0x6c]
push ecx
mov ebx, dword [esp + 0x6c]
push ebx
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x60
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
jmp short loc_0043e235  ; jmp 0x43e235

loc_0043e20b:
push 0x12
push 0x28
push 0x46
push 0x23
mov edi, dword [esp + 0x7c]
push edi
mov eax, dword [esp + 0x7c]
push eax
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x3c
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx

loc_0043e22d:
call fcn_0045643d  ; call 0x45643d
add esp, 0x20

loc_0043e235:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
call _libc_rand  ; call 0x456f2d
and al, 7
mov byte [ref_0048c4f1], al  ; mov byte [0x48c4f1], al
jne short loc_0043e25a  ; jne 0x43e25a
mov byte [ref_0048c4f1], 1  ; mov byte [0x48c4f1], 1

loc_0043e25a:
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0043db35  ; jmp 0x43db35

loc_0043e26e:
mov dword [esp + 0x68], 0xa5
mov dword [esp + 0x6c], 0xb7
mov dword [esp + 0x70], 0xcd
mov dword [esp + 0x74], 0xc6
cmp byte [ref_0048c4f1], 0  ; cmp byte [0x48c4f1], 0
je short loc_0043e2da  ; je 0x43e2da
mov byte [ref_0048c4f1], al  ; mov byte [0x48c4f1], al
test al, al
jne near loc_0043db35  ; jne 0x43db35
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov esi, dword [esp + 0x6c]
push esi
mov edi, dword [esp + 0x6c]
push edi
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0xa8
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
jmp near loc_0043e198  ; jmp 0x43e198

loc_0043e2da:
call _libc_rand  ; call 0x456f2d
mov esi, eax
sar esi, 0xb
cmp esi, 4
jge near loc_0043db35  ; jge 0x43db35
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
call _libc_rand  ; call 0x456f2d
test al, 1
je short loc_0043e335  ; je 0x43e335
mov edx, dword [esp + 0x6c]
push edx
mov ecx, dword [esp + 0x6c]
push ecx
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x9c
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
jmp near loc_0043e235  ; jmp 0x43e235

loc_0043e335:
push 0xf
push 0x28
push 0x47
push 0x4a
mov esi, dword [esp + 0x7c]
push esi
mov edi, dword [esp + 0x7c]
push edi
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x78
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
jmp near loc_0043e22d  ; jmp 0x43e22d

loc_0043e35b:
call fcn_0044ef3b  ; call 0x44ef3b
test eax, eax
jne near loc_0043db35  ; jne 0x43db35
and esi, 0xffff
xor edi, edi
mov di, bx
xor ebx, ebx
jmp short loc_0043e381  ; jmp 0x43e381

loc_0043e377:
inc ebx
cmp ebx, 8
jge near loc_0043e5a0  ; jge 0x43e5a0

loc_0043e381:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043e377  ; je 0x43e377
mov eax, ebx
shl eax, 3
mov ecx, dword [eax + ref_00475c64]  ; mov ecx, dword [eax + 0x475c64]
cmp esi, ecx
jl short loc_0043e377  ; jl 0x43e377
lea edx, [ecx + 0x93]
cmp esi, edx
jg short loc_0043e377  ; jg 0x43e377
mov edx, dword [eax + ref_00475c68]  ; mov edx, dword [eax + 0x475c68]
cmp edi, edx
jl short loc_0043e377  ; jl 0x43e377
lea eax, [edx + 0x66]
cmp edi, eax
jg short loc_0043e377  ; jg 0x43e377
xor eax, eax
mov al, byte [ref_0048c4f0]  ; mov al, byte [0x48c4f0]
cmp eax, ebx
je near loc_0043e5a0  ; je 0x43e5a0
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
cmp byte [ref_0048c4f0], 0xff  ; cmp byte [0x48c4f0], 0xff
je short loc_0043e456  ; je 0x43e456
xor edx, edx
mov dl, byte [ref_0048c4f0]  ; mov dl, byte [0x48c4f0]
mov eax, dword [edx*8 + ref_00475c64]  ; mov eax, dword [edx*8 + 0x475c64]
sub eax, 0x50
mov dword [esp + 0x68], eax
mov eax, dword [edx*8 + ref_00475c68]  ; mov eax, dword [edx*8 + 0x475c68]
mov dword [esp + 0x6c], eax
mov eax, dword [ref_0048c4cc]  ; mov eax, dword [0x48c4cc]
movsx edx, word [eax]
mov ecx, dword [esp + 0x68]
add ecx, edx
mov dword [esp + 0x70], ecx
movsx edx, word [eax + 2]
mov ecx, dword [esp + 0x6c]
add ecx, edx
mov dword [esp + 0x74], ecx
mov ecx, dword [esp + 0x6c]
push ecx
mov esi, dword [esp + 0x6c]
push esi
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043e456:
mov byte [ref_0048c4f0], bl  ; mov byte [0x48c4f0], bl
mov eax, dword [ebx*8 + ref_00475c64]  ; mov eax, dword [ebx*8 + 0x475c64]
sub eax, 0x50
mov dword [esp + 0x68], eax
mov eax, dword [ebx*8 + ref_00475c68]  ; mov eax, dword [ebx*8 + 0x475c68]
mov dword [esp + 0x6c], eax
mov eax, dword [ref_0048c4cc]  ; mov eax, dword [0x48c4cc]
movsx edx, word [eax]
mov ecx, dword [esp + 0x68]
add ecx, edx
mov dword [esp + 0x70], ecx
movsx edx, word [eax + 2]
mov ecx, dword [esp + 0x6c]
add ecx, edx
mov dword [esp + 0x74], ecx
movsx edx, word [eax + 2]
push edx
movsx edx, word [eax]
push edx
mov edx, dword [esp + 0x74]
push edx
mov ecx, dword [esp + 0x74]
push ecx
push eax
push ref_0046caec  ; push 0x46caec
call fcn_00451a97  ; call 0x451a97
add esp, 0x18
mov esi, dword [esp + 0x6c]
push esi
mov edi, dword [esp + 0x6c]
push edi
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x30
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
add eax, 0x29
mov edx, dword [esp + 0x6c]
add edx, 0x1a
cmp ebx, 4
jge short loc_0043e50f  ; jge 0x43e50f
push 2
push edx
push eax
imul eax, ebx, 0x68
mov ecx, dword [eax + _rich4_all_players_state]  ; mov ecx, dword [eax + 0x496b68]
push ecx
jmp short loc_0043e51b  ; jmp 0x43e51b

loc_0043e50f:
push 2
push edx
push eax
mov edx, dword [ebx*4 + (_rich4_special_player_names - 16)]  ; mov edx, dword [ebx*4 + 0x47ed5a]
push edx

loc_0043e51b:
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 2
mov eax, dword [esp + 0x70]
add eax, 0x30
push eax
mov eax, dword [esp + 0x70]
add eax, 0x29
push eax
push ref_004651f9  ; push 0x4651f9
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov esi, dword [ebx*4 + ref_00475ca4]  ; mov esi, dword [ebx*4 + 0x475ca4]
push esi
push ref_00465202  ; push 0x465202
lea eax, [esp + 0x48]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 2
mov eax, dword [esp + 0x70]
add eax, 0x46
push eax
mov eax, dword [esp + 0x70]
add eax, 0x29
push eax
lea eax, [esp + 0x4c]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043e5a0:
cmp ebx, 8
jne near loc_0043db35  ; jne 0x43db35
cmp byte [ref_0048c4f0], 0xff  ; cmp byte [0x48c4f0], 0xff
je near loc_0043db35  ; je 0x43db35
xor edx, edx
mov dl, byte [ref_0048c4f0]  ; mov dl, byte [0x48c4f0]
mov eax, dword [edx*8 + ref_00475c64]  ; mov eax, dword [edx*8 + 0x475c64]
sub eax, 0x50
mov dword [esp + 0x68], eax
mov eax, dword [edx*8 + ref_00475c68]  ; mov eax, dword [edx*8 + 0x475c68]
mov dword [esp + 0x6c], eax
mov eax, dword [ref_0048c4cc]  ; mov eax, dword [0x48c4cc]
movsx edx, word [eax]
mov ecx, dword [esp + 0x68]
add ecx, edx
mov dword [esp + 0x70], ecx
movsx eax, word [eax + 2]
mov edx, dword [esp + 0x6c]
add edx, eax
mov dword [esp + 0x74], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edi, dword [esp + 0x6c]
push edi
mov eax, dword [esp + 0x6c]
push eax
mov edx, dword [ref_0048c4cc]  ; mov edx, dword [0x48c4cc]
push edx
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov byte [ref_0048c4f0], 0xff  ; mov byte [0x48c4f0], 0xff
jmp near loc_0043db35  ; jmp 0x43db35

loc_0043e658:
cmp byte [ref_0048c4f2], 2  ; cmp byte [0x48c4f2], 2
je short loc_0043e66d  ; je 0x43e66d

loc_0043e661:
push 1
call fcn_0044ee18  ; call 0x44ee18
jmp near loc_0043db54  ; jmp 0x43db54

loc_0043e66d:
and esi, 0xffff
xor edi, edi
mov di, bx
xor ebx, ebx
jmp short loc_0043e686  ; jmp 0x43e686

loc_0043e67c:
inc ebx
cmp ebx, 8
jge near loc_0043db35  ; jge 0x43db35

loc_0043e686:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043e67c  ; je 0x43e67c
mov eax, ebx
shl eax, 3
mov ecx, dword [eax + ref_00475c64]  ; mov ecx, dword [eax + 0x475c64]
cmp esi, ecx
jl short loc_0043e67c  ; jl 0x43e67c
lea edx, [ecx + 0x93]
cmp esi, edx
jg short loc_0043e67c  ; jg 0x43e67c
mov edx, dword [eax + ref_00475c68]  ; mov edx, dword [eax + 0x475c68]
cmp edi, edx
jl short loc_0043e67c  ; jl 0x43e67c
lea eax, [edx + 0x66]
cmp edi, eax
jg short loc_0043e67c  ; jg 0x43e67c
cmp byte [ref_0048c4f0], 0xff  ; cmp byte [0x48c4f0], 0xff
je near loc_0043e763  ; je 0x43e763
xor edx, edx
mov dl, byte [ref_0048c4f0]  ; mov dl, byte [0x48c4f0]
mov eax, dword [edx*8 + ref_00475c64]  ; mov eax, dword [edx*8 + 0x475c64]
sub eax, 0x50
mov dword [esp + 0x68], eax
mov eax, dword [edx*8 + ref_00475c68]  ; mov eax, dword [edx*8 + 0x475c68]
mov dword [esp + 0x6c], eax
mov eax, dword [ref_0048c4cc]  ; mov eax, dword [0x48c4cc]
movsx edx, word [eax]
mov ecx, dword [esp + 0x68]
add ecx, edx
mov dword [esp + 0x70], ecx
movsx eax, word [eax + 2]
mov edx, dword [esp + 0x6c]
add edx, eax
mov dword [esp + 0x74], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ecx, dword [esp + 0x6c]
push ecx
mov eax, dword [esp + 0x6c]
push eax
mov edx, dword [ref_0048c4cc]  ; mov edx, dword [0x48c4cc]
push edx
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov byte [ref_0048c4f0], 0xff  ; mov byte [0x48c4f0], 0xff

loc_0043e763:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dx, word [eax + (_rich4_all_players_state + 48)]  ; mov dx, word [eax + 0x496b98]
cmp edx, dword [ebx*4 + ref_00475ca4]  ; cmp edx, dword [ebx*4 + 0x475ca4]
jl short loc_0043e7b8  ; jl 0x43e7b8
push 0xf0
push 0x140
call _rich4_ui_yesno  ; call 0x453a32
add esp, 8
cmp eax, 1
jne near loc_0043e67c  ; jne 0x43e67c
mov byte [ref_0048c4f5], bl  ; mov byte [0x48c4f5], bl
mov byte [ref_0048c4f2], 4  ; mov byte [0x48c4f2], 4
mov edx, dword [ref_00475ccc]  ; mov edx, dword [0x475ccc]
push edx

loc_0043e7ab:
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
jmp near loc_0043e67c  ; jmp 0x43e67c

loc_0043e7b8:
mov byte [ref_0048c4f2], 5  ; mov byte [0x48c4f2], 5
mov eax, dword [ref_00475cd4]  ; mov eax, dword [0x475cd4]
push eax
jmp short loc_0043e7ab  ; jmp 0x43e7ab

loc_0043e7c7:
cmp byte [ref_0048c4f2], 2  ; cmp byte [0x48c4f2], 2
jne near loc_0043e661  ; jne 0x43e661
mov ah, byte [ref_0048c4f0]  ; mov ah, byte [0x48c4f0]
cmp ah, 0xff
je near loc_0043e87b  ; je 0x43e87b
xor edx, edx
mov dl, ah
mov eax, dword [edx*8 + ref_00475c64]  ; mov eax, dword [edx*8 + 0x475c64]
sub eax, 0x50
mov dword [esp + 0x68], eax
mov eax, dword [edx*8 + ref_00475c68]  ; mov eax, dword [edx*8 + 0x475c68]
mov dword [esp + 0x6c], eax
mov eax, dword [ref_0048c4cc]  ; mov eax, dword [0x48c4cc]
movsx edx, word [eax]
mov ebx, dword [esp + 0x68]
add ebx, edx
mov dword [esp + 0x70], ebx
movsx eax, word [eax + 2]
mov edx, dword [esp + 0x6c]
add edx, eax
mov dword [esp + 0x74], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebx, dword [esp + 0x6c]
push ebx
mov esi, dword [esp + 0x6c]
push esi
mov edi, dword [ref_0048c4cc]  ; mov edi, dword [0x48c4cc]
push edi
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov byte [ref_0048c4f0], 0xff  ; mov byte [0x48c4f0], 0xff

loc_0043e87b:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x165
push 0x86
push 0x6e
push 0x68
push 0x6e
push 0x68
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x70
push 0x5b
mov eax, dword [ref_0048c4d4]  ; mov eax, dword [0x48c4d4]
add eax, 0x78
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov dword [esp + 0x68], 0x5b
mov dword [esp + 0x6c], 0x6e
mov dword [esp + 0x70], 0x107
mov dword [esp + 0x74], 0x1d3
push 0
lea eax, [esp + 0x6c]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov byte [ref_0048c4f2], 7  ; mov byte [0x48c4f2], 7
mov byte [ref_0048c4f4], 1  ; mov byte [0x48c4f4], 1
mov edx, dword [ref_00475cd0]  ; mov edx, dword [0x475cd0]
jmp near loc_0043db4e  ; jmp 0x43db4e

loc_0043e92f:
mov eax, esp
push eax
push ebp
call dword [cs:__imp__BeginPaint@8]  ; ucall: call dword cs:[0x4622cc]
lea eax, [esp + 8]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov eax, dword [eax]
push 0x10
lea edx, [esp + 0xc]
push edx
mov ebx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov ebx, dword [0x48a0e0]
push ebx
mov esi, dword [esp + 0x18]
push esi
mov edi, dword [esp + 0x18]
push edi
mov edx, dword [_rich4_ddraw_primary_sf_ptr]  ; mov edx, dword [0x48a0dc]
push edx
call dword [eax + 0x1c]  ; ucall
lea eax, [esp + 8]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov eax, esp
push eax
push ebp
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_0043db35  ; jmp 0x43db35

loc_0043e98d:
push esi
mov ecx, dword [esp + 0x98]
push ecx
push eax
push ebp
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp near loc_0043db37  ; jmp 0x43db37

_rich4_ui_hospital_entry:
push ebx
push esi
push edi
push ebp
sub esp, 0x9c
xor ebx, ebx
jmp short loc_0043e9b8  ; jmp 0x43e9b8

loc_0043e9b2:
inc ebx
cmp ebx, 8
jge short loc_0043e9c1  ; jge 0x43e9c1

loc_0043e9b8:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043e9b2  ; je 0x43e9b2

loc_0043e9c1:
cmp ebx, 8
je near loc_0043ec34  ; je 0x43ec34
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne near loc_0043ea84  ; jne 0x43ea84
push 0
push 0
push 0x41
mov ebx, dword [_rich4_panel_mkf]  ; mov ebx, dword [0x48a05c]
push ebx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c4d4], eax  ; mov dword [0x48c4d4], eax
push 0
push 0
push 0x40
mov esi, dword [_rich4_panel_mkf]  ; mov esi, dword [0x48a05c]
push esi
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c4d0], eax  ; mov dword [0x48c4d0], eax
push 0
push 0
mov edx, dword [ref_0048c4d4]  ; mov edx, dword [0x48c4d4]
movsx eax, word [edx + 0x32]
push eax
movsx eax, word [edx + 0x30]
push eax
call fcn_00451a5a  ; call 0x451a5a
add esp, 0x10
mov dword [ref_0048c4cc], eax  ; mov dword [0x48c4cc], eax
call fcn_0043d88f  ; call 0x43d88f
push 0x10
call fcn_004549cf  ; call 0x4549cf
add esp, 4
push 0
push _rich4_ui_hospital_callback  ; push 0x43da27
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
call fcn_00454bcc  ; call 0x454bcc
mov edi, dword [ref_0048c4d4]  ; mov edi, dword [0x48c4d4]
push edi
call _libc_free  ; call 0x456e11
add esp, 4
mov ebp, dword [ref_0048c4d0]  ; mov ebp, dword [0x48c4d0]
push ebp
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, dword [ref_0048c4cc]  ; mov eax, dword [0x48c4cc]
push eax
call _libc_free  ; call 0x456e11
jmp near loc_0043ec31  ; jmp 0x43ec31

loc_0043ea84:
call _libc_rand  ; call 0x456f2d
test al, 1
je near loc_0043ec34  ; je 0x43ec34
xor esi, esi
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
mov dl, byte [edx + (_rich4_all_players_state + 23)]  ; mov dl, byte [edx + 0x496b7f]
cmp dl, 1
jb short loc_0043eab5  ; jb 0x43eab5
jbe short loc_0043eade  ; jbe 0x43eade
cmp dl, 2
je near loc_0043eb30  ; je 0x43eb30
jmp near loc_0043eb50  ; jmp 0x43eb50

loc_0043eab5:
test dl, dl
jne near loc_0043eb50  ; jne 0x43eb50
xor ebx, ebx
jmp short loc_0043eacb  ; jmp 0x43eacb

loc_0043eac1:
inc ebx
cmp ebx, 4
jge near loc_0043eb50  ; jge 0x43eb50

loc_0043eacb:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043eac1  ; je 0x43eac1
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043eac1  ; jmp 0x43eac1

loc_0043eade:
xor ebx, ebx
jmp short loc_0043eae8  ; jmp 0x43eae8

loc_0043eae2:
inc ebx
cmp ebx, 4
jge short loc_0043eafb  ; jge 0x43eafb

loc_0043eae8:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043eae2  ; je 0x43eae2
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043eae2  ; jmp 0x43eae2

loc_0043eafb:
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ebx, 3
sar edx, 0x1f
idiv ebx
test edx, edx
jne short loc_0043eb50  ; jne 0x43eb50
mov ebx, 4
jmp short loc_0043eb1d  ; jmp 0x43eb1d

loc_0043eb17:
inc ebx
cmp ebx, 8
jge short loc_0043eb50  ; jge 0x43eb50

loc_0043eb1d:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043eb17  ; je 0x43eb17
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043eb17  ; jmp 0x43eb17

loc_0043eb30:
mov ebx, 4
jmp short loc_0043eb3d  ; jmp 0x43eb3d

loc_0043eb37:
inc ebx
cmp ebx, 8
jge short loc_0043eb50  ; jge 0x43eb50

loc_0043eb3d:
cmp byte [ebx + ref_00496b60], 0  ; cmp byte [ebx + 0x496b60], 0
je short loc_0043eb37  ; je 0x43eb37
mov byte [esp + esi + 0x94], bl
inc esi
jmp short loc_0043eb37  ; jmp 0x43eb37

loc_0043eb50:
test esi, esi
je near loc_0043ec34  ; je 0x43ec34
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
xor ebx, ebx
mov bl, byte [esp + edx + 0x94]
mov esi, dword [ebx*4 + ref_00475ca4]  ; mov esi, dword [ebx*4 + 0x475ca4]
cmp ebx, 4
jge short loc_0043eb90  ; jge 0x43eb90
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ax, word [eax + (_rich4_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
cmp eax, esi
jg short loc_0043ebaf  ; jg 0x43ebaf

loc_0043eb90:
cmp ebx, 4
jl near loc_0043ec34  ; jl 0x43ec34
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp word [eax + (_rich4_all_players_state + 48)], 0x2bc  ; cmp word [eax + 0x496b98], 0x2bc
jb near loc_0043ec34  ; jb 0x43ec34

loc_0043ebaf:
cmp ebx, 4
jge short loc_0043ebc0  ; jge 0x43ebc0
imul eax, ebx, 0x68
mov ebp, dword [eax + _rich4_all_players_state]  ; mov ebp, dword [eax + 0x496b68]
push ebp
jmp short loc_0043ebc8  ; jmp 0x43ebc8

loc_0043ebc0:
mov edi, dword [ebx*4 + (_rich4_special_player_names - 16)]  ; mov edi, dword [ebx*4 + 0x47ed5a]
push edi

loc_0043ebc8:
lea eax, [esp + 0x84]
push eax
call _rich4_string_strip_spaces  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
push ref_00465207  ; push 0x465207
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
sub word [edx + (_rich4_all_players_state + 48)], si  ; sub word [edx + 0x496b98], si
cmp ebx, 4
jge short loc_0043ec2b  ; jge 0x43ec2b
imul eax, ebx, 0x68
mov byte [eax + (_rich4_all_players_state + 53)], 0x80  ; mov byte [eax + 0x496b9d], 0x80
xor dh, dh
mov byte [ebx + ref_00496b60], dh  ; mov byte [ebx + 0x496b60], dh
jmp short loc_0043ec34  ; jmp 0x43ec34

loc_0043ec2b:
push ebx
call _rich4_release_player_from_hospital  ; call 0x43ee6e

loc_0043ec31:
add esp, 4

loc_0043ec34:
add esp, 0x9c
pop ebp
pop edi
pop esi
pop ebx
ret

section .data


ref_00465170:
dd 0x32313023
dd 0xa67ab137
dd 0xbd49a16e
dd 0xb1ddb0d0
dd 0xb46ead7a
dd 0x0ad6bdc0
dd 0x7ab2ecbf
dd 0x7cb058a5
dd 0xf2c4e2a4
db 0xa1
db 0x48
db 0x00

ref_00465197:
db 0x23
dd 0x38323130
dd 0x79b5d0bd
dd 0x49a1e1ab
db 0x00

ref_004651a5:
db 0x23
db 0x30
db 0x31
dd 0xdda23932
dd 0x49a1d9a2
dd 0xbaaa7ab1
dd 0xcda442aa
dd 0x67b877a4
dd 0xa569a50a
dd 0xb058a548
dd 0xa146a47c
db 0x49
db 0x00

ref_004651ca:
db 0x23
db 0x30
dd 0xad303331
dd 0xad4fab6e
dd 0xc5ada8ab
dd 0xa1e1b3e9
db 0x49
db 0x00

ref_004651de:
db 0x23
db 0x30
dd 0xa9323030
dd 0xa170baea
dd 0x41a70a49
dd 0x49c2baaa
dd 0xa3a4c6bc
dd 0x49a1aca8
db 0x00

ref_004651f9:
db 0xab
db 0x4f
db 0xc4
dd 0xbc49c2c0
db 0xc6
db 0x00

ref_00465202:
db 0x25
db 0x64
db 0xc2
db 0x49
db 0x00

ref_00465207:
db 0xab
dd 0x25c0c44f
dd 0x00000073


ref_00475c64:
db ')',0x01,0x00,0x00

ref_00475c68:
dd 0x00000001
dd 0x00000129
dd 0x00000079
dd 0x00000129
dd 0x000000f1
dd 0x00000129
dd 0x00000169
dd 0x000001e1
dd 0x00000001
dd 0x000001e1
dd 0x00000079
dd 0x000001e1
dd 0x000000f1
dd 0x000001e1
dd 0x00000169

ref_00475ca4:
dd 0x0000001e
dd 0x0000001e
dd 0x0000001e
dd 0x0000001e
dd 0x0000012c
dd 0x0000012c
dd 0x0000012c
dd 0x0000012c

ref_00475cc4:
dd ref_00465170
dd ref_00465197

ref_00475ccc:
dd ref_004651a5

ref_00475cd0:
dd ref_004651ca

ref_00475cd4:
dd ref_004651de

ref_00475cd8:
db 0x05
db 0x06
db 0x05

ref_00475cdb:
db 0x0a
dd 0x00000a0b

section .bss

ref_0048c4cc:
resb 4

ref_0048c4d0:
resb 4

ref_0048c4d4:
resb 4

ref_0048c4d8:
resb 4

ref_0048c4dc:
resb 4

ref_0048c4e0:
resb 4

ref_0048c4e4:
resb 4

ref_0048c4e8:
resb 4

ref_0048c4ec:
resb 4

ref_0048c4f0:
resb 1

ref_0048c4f1:
resb 1

ref_0048c4f2:
resb 1

ref_0048c4f3:
resb 1

ref_0048c4f4:
resb 1

ref_0048c4f5:
resb 1

ref_0048c4f6:
resb 2
