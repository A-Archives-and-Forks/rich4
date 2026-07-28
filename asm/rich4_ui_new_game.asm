extern __imp__InvalidateRect@12
extern _g_ddraw_sf2_ptr
extern _libc_sprintf
extern _rich4_create_font
extern _rich4_draw_text
extern fcn_004561be
extern fcn_00456280
extern fcn_004562a5
extern fcn_004563f5
extern fcn_0045643d
extern _strcpy
extern ref_0046cb3c
extern ref_0046cb40
extern ref_0046cb44
extern ref_0046cb48
extern ref_0046cb4c
extern ref_0046cb50
extern ref_0046cb54
extern ref_0046cbd0
extern ref_0046cc00
extern ref_0046cc80
extern ref_0046cc88
extern ref_0046cc8a
extern ref_0046cc8c
extern ref_0046cc8e
extern ref_0046ccb8
extern ref_0048a068
extern ref_0048a08c
extern ref_0048a3a0
extern ref_0048a3b4
extern ref_0048a3b8
extern ref_004991b6

extern ref_0046ccb8
global ref_0046cb94
global _rich4_draw_game_config_menu
global fcn_0040482c

section .text

_rich4_draw_game_config_menu:
push ebx
push esi
push edi
push ebp
sub esp, 0x1c
push 0
push 3
push 0x101010
push 0xffffff
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 0
push 0
movsx edx, word [ref_004991b6]  ; movsx edx, word [0x4991b6]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
lea edx, [eax + 1]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048a3b8]  ; mov eax, dword [0x48a3b8]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a3a0]  ; mov edx, dword [0x48a3a0]
push edx
call fcn_00456280  ; call 0x456280
add esp, 0x10
mov eax, dword [ref_0046cb54]  ; mov eax, dword [0x46cb54]
movsx eax, word [eax*2 + ref_0046cc80]  ; movsx eax, word [eax*2 + 0x46cc80]
push eax
push 0x96
mov eax, dword [ref_0048a3b8]  ; mov eax, dword [0x48a3b8]
add eax, 0x6c
push eax
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call fcn_004562a5  ; call 0x4562a5
add esp, 0x10
push 5
push 0xe4
push 8
push ref_00463138  ; push 0x463138
mov ebx, dword [ref_0048a3a0]  ; mov ebx, dword [0x48a3a0]
push ebx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 5
push 0x108
push 8
push ref_00463141  ; push 0x463141
mov esi, dword [ref_0048a3a0]  ; mov esi, dword [0x48a3a0]
push esi
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 5
push 0x12c
push 8
push ref_0046314a  ; push 0x46314a
mov edi, dword [ref_0048a3a0]  ; mov edi, dword [0x48a3a0]
push edi
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 5
push 0x150
push 8
push ref_00463153  ; push 0x463153
mov ebp, dword [ref_0048a3a0]  ; mov ebp, dword [0x48a3a0]
push ebp
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 5
push 0x174
push 8
push ref_0046315c  ; push 0x46315c
mov eax, dword [ref_0048a3a0]  ; mov eax, dword [0x48a3a0]
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 5
push 0x198
push 8
push ref_00463165  ; push 0x463165
mov edx, dword [ref_0048a3a0]  ; mov edx, dword [0x48a3a0]
push edx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 1
push 2
push 0x101010
push 0x101010
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov eax, dword [ref_0046cb40]  ; mov eax, dword [0x46cb40]
mov ecx, dword [eax*4 + ref_0046cb94]  ; mov ecx, dword [eax*4 + 0x46cb94]
push ecx
push ref_0046316e  ; push 0x46316e
lea eax, [esp + 0x18]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 6
push 0x108
push 0x9b
lea eax, [esp + 0x1c]
push eax
mov ebx, dword [ref_0048a3a0]  ; mov ebx, dword [0x48a3a0]
push ebx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [ref_0046cb40]  ; mov eax, dword [0x46cb40]
mov edx, dword [ref_0046cb50]  ; mov edx, dword [0x46cb50]
mov eax, dword [eax*4 + ref_0046cb94]  ; mov eax, dword [eax*4 + 0x46cb94]
imul eax, dword [edx*4 + ref_0046cc00]  ; imul eax, dword [edx*4 + 0x46cc00]
test eax, eax
je short loc_004046c3  ; je 0x4046c3
push eax
push ref_0046316e  ; push 0x46316e
lea eax, [esp + 0x18]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
jmp short loc_004046d5  ; jmp 0x4046d5

loc_004046c3:
push ref_00463171  ; push 0x463171
lea eax, [esp + 0x14]
push eax
call _strcpy  ; call 0x457d96
add esp, 8

loc_004046d5:
push 6
push 0x198
push 0x9b
lea eax, [esp + 0x1c]
push eax
mov edi, dword [ref_0048a3a0]  ; mov edi, dword [0x48a3a0]
push edi
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 6
push 0xe4
push 0x9b
mov eax, dword [ref_0046cb3c]  ; mov eax, dword [0x46cb3c]
mov ebp, dword [eax*4 + ref_0046cb88]  ; mov ebp, dword [eax*4 + 0x46cb88]
push ebp
mov eax, dword [ref_0048a3a0]  ; mov eax, dword [0x48a3a0]
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 6
push 0x12c
push 0x9b
mov eax, dword [ref_0046cb44]  ; mov eax, dword [0x46cb44]
mov edx, dword [eax*4 + ref_0046cbac]  ; mov edx, dword [eax*4 + 0x46cbac]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 6
push 0x150
push 0x9b
mov eax, dword [ref_0046cb48]  ; mov eax, dword [0x46cb48]
mov ebx, dword [eax*4 + ref_0046cbb8]  ; mov ebx, dword [eax*4 + 0x46cbb8]
push ebx
mov esi, dword [ref_0048a3a0]  ; mov esi, dword [0x48a3a0]
push esi
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 6
push 0x174
push 0x9b
mov eax, dword [ref_0046cb4c]  ; mov eax, dword [0x46cb4c]
mov edi, dword [eax*4 + ref_0046cbd0]  ; mov edi, dword [eax*4 + 0x46cbd0]
push edi
mov ebp, dword [ref_0048a3a0]  ; mov ebp, dword [0x48a3a0]
push ebp
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0xa
push 0x1bd
mov eax, dword [ref_0048a3a0]  ; mov eax, dword [0x48a3a0]
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
mov dword [esp], 0x1bd
mov dword [esp + 8], 0x27d
mov dword [esp + 4], 0xa
mov dword [esp + 0xc], 0x1d7
push 0
lea eax, [esp + 4]
push eax
mov ebp, dword [ref_0048a3b4]  ; mov ebp, dword [0x48a3b4]
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
add esp, 0x1c
pop ebp
pop edi
pop esi
pop ebx
ret

endloc_00404812:
db 0x8b
db 0xc0

ref_00404814:  ; may contain a jump table
dd loc_004048cb
dd loc_00404950
dd loc_004049ec
dd loc_00404a71
dd loc_00404af6
dd loc_00404b7a

fcn_0040482c:
push ebx
push esi
push edi
push ebp
sub esp, 0x94
mov ebx, dword [esp + 0xa8]
movsx eax, word [ebx*8 + ref_0046cc8a]  ; movsx eax, word [ebx*8 + 0x46cc8a]
sub eax, 0xa
push eax
movsx eax, word [ebx*8 + ref_0046cc88]  ; movsx eax, word [ebx*8 + 0x46cc88]
sub eax, 0x1bd
push eax
movsx edx, word [ebx*2 + ref_0046ccb8]  ; movsx edx, word [ebx*2 + 0x46ccb8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048a3b8]  ; mov edx, dword [0x48a3b8]
add edx, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a3a0]  ; mov edx, dword [0x48a3a0]
push edx
call fcn_00456280  ; call 0x456280
add esp, 0x10
movsx eax, word [ebx*8 + ref_0046cc88]  ; movsx eax, word [ebx*8 + 0x46cc88]
lea edx, [eax - 0x1bb]
mov dword [esp + 0x90], edx
movsx edi, word [ebx*8 + ref_0046cc8c]  ; movsx edi, word [ebx*8 + 0x46cc8c]
mov ebp, edi
sub ebp, eax
sub ebp, 3
sub edi, 0x1bf
movsx esi, word [ebx*8 + ref_0046cc8a]  ; movsx esi, word [ebx*8 + 0x46cc8a]
sub esi, 5
cmp ebx, 5
ja near loc_00404c37  ; ja 0x404c37
mov eax, ebx
jmp dword [eax*4 + ref_00404814]  ; ujmp: jmp dword [eax*4 + 0x404814]

loc_004048cb:
xor ebx, ebx
jmp short loc_004048fa  ; jmp 0x4048fa

loc_004048cf:
push 6
lea eax, [esi + 8]
push eax
push edi
mov edx, dword [ebx*4 + ref_0046cb88]  ; mov edx, dword [ebx*4 + 0x46cb88]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc ebx
add esi, 0x17
cmp ebx, 3
jge near loc_00404c37  ; jge 0x404c37

loc_004048fa:
cmp ebx, dword [esp + 0xac]
je short loc_0040491d  ; je 0x40491d
push 1
push 2
push 0x101010
push 0x101010

loc_00404911:
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
jmp short loc_004048cf  ; jmp 0x4048cf

loc_0040491d:
push 0xaa0000
push 0x14
push ebp
lea eax, [esi - 3]
push eax
mov edx, dword [esp + 0xa0]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call fcn_004561be  ; call 0x4561be
add esp, 0x18
push 1
push 2
push 0x101010
push 0xffffff
jmp short loc_00404911  ; jmp 0x404911

loc_00404950:
xor ebx, ebx
jmp short loc_0040497c  ; jmp 0x40497c

loc_00404954:
push 6
lea eax, [esi + 8]
push eax
push edi
lea eax, [esp + 0xc]
push eax
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc ebx
add esi, 0x17
cmp ebx, 6
jge near loc_00404c37  ; jge 0x404c37

loc_0040497c:
mov edx, dword [ebx*4 + ref_0046cb94]  ; mov edx, dword [ebx*4 + 0x46cb94]
push edx
push ref_0046316e  ; push 0x46316e
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
cmp ebx, dword [esp + 0xac]
je short loc_004049b9  ; je 0x4049b9
push 1
push 2
push 0x101010
push 0x101010

loc_004049ad:
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
jmp short loc_00404954  ; jmp 0x404954

loc_004049b9:
push 0xaa0000
push 0x14
push ebp
lea eax, [esi - 3]
push eax
mov eax, dword [esp + 0xa0]
push eax
mov edx, dword [ref_0048a3a0]  ; mov edx, dword [0x48a3a0]
push edx
call fcn_004561be  ; call 0x4561be
add esp, 0x18
push 1
push 2
push 0x101010
push 0xffffff
jmp short loc_004049ad  ; jmp 0x4049ad

loc_004049ec:
xor ebx, ebx
jmp short loc_00404a1b  ; jmp 0x404a1b

loc_004049f0:
push 6
lea eax, [esi + 8]
push eax
push edi
mov edx, dword [ebx*4 + ref_0046cbac]  ; mov edx, dword [ebx*4 + 0x46cbac]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc ebx
add esi, 0x17
cmp ebx, 3
jge near loc_00404c37  ; jge 0x404c37

loc_00404a1b:
cmp ebx, dword [esp + 0xac]
je short loc_00404a3e  ; je 0x404a3e
push 1
push 2
push 0x101010
push 0x101010

loc_00404a32:
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
jmp short loc_004049f0  ; jmp 0x4049f0

loc_00404a3e:
push 0xaa0000
push 0x14
push ebp
lea eax, [esi - 3]
push eax
mov edx, dword [esp + 0xa0]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call fcn_004561be  ; call 0x4561be
add esp, 0x18
push 1
push 2
push 0x101010
push 0xffffff
jmp short loc_00404a32  ; jmp 0x404a32

loc_00404a71:
xor ebx, ebx
jmp short loc_00404aa0  ; jmp 0x404aa0

loc_00404a75:
push 6
lea eax, [esi + 8]
push eax
push edi
mov edx, dword [ebx*4 + ref_0046cbb8]  ; mov edx, dword [ebx*4 + 0x46cbb8]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc ebx
add esi, 0x17
cmp ebx, 6
jge near loc_00404c37  ; jge 0x404c37

loc_00404aa0:
cmp ebx, dword [esp + 0xac]
je short loc_00404ac3  ; je 0x404ac3
push 1
push 2
push 0x101010
push 0x101010

loc_00404ab7:
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
jmp short loc_00404a75  ; jmp 0x404a75

loc_00404ac3:
push 0xaa0000
push 0x14
push ebp
lea eax, [esi - 3]
push eax
mov edx, dword [esp + 0xa0]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call fcn_004561be  ; call 0x4561be
add esp, 0x18
push 1
push 2
push 0x101010
push 0xffffff
jmp short loc_00404ab7  ; jmp 0x404ab7

loc_00404af6:
xor ebx, ebx
jmp short loc_00404b25  ; jmp 0x404b25

loc_00404afa:
push 6
lea eax, [esi + 8]
push eax
push edi
mov edx, dword [ebx*4 + ref_0046cbd0]  ; mov edx, dword [ebx*4 + 0x46cbd0]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc ebx
add esi, 0x17
cmp ebx, 6
jge near loc_00404c37  ; jge 0x404c37

loc_00404b25:
cmp ebx, dword [esp + 0xac]
je short loc_00404b48  ; je 0x404b48
push 1
push 2
push 0x101010
push 0x101010

loc_00404b3c:
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
jmp short loc_00404afa  ; jmp 0x404afa

loc_00404b48:
push 0xaa0000
push 0x14
push ebp
lea eax, [esi - 3]
push eax
mov ecx, dword [esp + 0xa0]
push ecx
mov eax, dword [ref_0048a3a0]  ; mov eax, dword [0x48a3a0]
push eax
call fcn_004561be  ; call 0x4561be
add esp, 0x18
push 1
push 2
push 0x101010
push 0xffffff
jmp short loc_00404b3c  ; jmp 0x404b3c

loc_00404b7a:
xor ebx, ebx
jmp short loc_00404bd4  ; jmp 0x404bd4

loc_00404b7e:
push ref_00463171  ; push 0x463171
lea eax, [esp + 4]
push eax
call _strcpy  ; call 0x457d96
add esp, 8

loc_00404b90:
cmp ebx, dword [esp + 0xac]
je short loc_00404c01  ; je 0x404c01
push 1
push 2
push 0x101010
push 0x101010

loc_00404ba7:
push 0xf
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 6
lea eax, [esi + 8]
push eax
push edi
lea eax, [esp + 0xc]
push eax
mov eax, dword [ref_0048a3a0]  ; mov eax, dword [0x48a3a0]
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc ebx
add esi, 0x17
cmp ebx, 6
jge short loc_00404c37  ; jge 0x404c37

loc_00404bd4:
mov eax, dword [ref_0046cb40]  ; mov eax, dword [0x46cb40]
mov eax, dword [eax*4 + ref_0046cb94]  ; mov eax, dword [eax*4 + 0x46cb94]
imul eax, dword [ebx*4 + ref_0046cc00]  ; imul eax, dword [ebx*4 + 0x46cc00]
test eax, eax
je short loc_00404b7e  ; je 0x404b7e
push eax
push ref_0046316e  ; push 0x46316e
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
jmp short loc_00404b90  ; jmp 0x404b90

loc_00404c01:
push 0xaa0000
push 0x14
push ebp
lea eax, [esi - 3]
push eax
mov edx, dword [esp + 0xa0]
push edx
mov ecx, dword [ref_0048a3a0]  ; mov ecx, dword [0x48a3a0]
push ecx
call fcn_004561be  ; call 0x4561be
add esp, 0x18
push 1
push 2
push 0x101010
push 0xffffff
jmp near loc_00404ba7  ; jmp 0x404ba7

loc_00404c37:
mov edx, dword [esp + 0xa8]
movsx eax, word [edx*8 + ref_0046cc88]  ; movsx eax, word [edx*8 + 0x46cc88]
mov dword [esp + 0x80], eax
movsx eax, word [edx*8 + ref_0046cc8a]  ; movsx eax, word [edx*8 + 0x46cc8a]
mov dword [esp + 0x84], eax
movsx eax, word [edx*8 + ref_0046cc8c]  ; movsx eax, word [edx*8 + 0x46cc8c]
mov dword [esp + 0x88], eax
movsx eax, word [edx*8 + ref_0046cc8e]  ; movsx eax, word [edx*8 + 0x46cc8e]
add eax, 2
mov dword [esp + 0x8c], eax
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0x8c]
mov ebx, dword [esp + 0x84]
sub eax, ebx
push eax
mov eax, dword [esp + 0x8c]
mov esi, dword [esp + 0x84]
sub eax, esi
push eax
lea eax, [ebx - 0xa]
push eax
lea eax, [esi - 0x1bd]
push eax
push ebx
push esi
mov eax, dword [ref_0048a3a0]  ; mov eax, dword [0x48a3a0]
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x84]
push eax
mov ecx, dword [ref_0048a3b4]  ; mov ecx, dword [0x48a3b4]
push ecx
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
add esp, 0x94
pop ebp
pop edi
pop esi
pop ebx
ret

section .data

ref_004630f4:
dd 0x48a447a4
db 0x00

ref_004630f9:
db 0xa4
db 0x54
db 0xa4
db 0x48
db 0x00

ref_004630fe:
db 0xa5
db 0x7c
db 0xa4
db 0x48
db 0x00

ref_00463103:
db 0xa8
dd 0x00e6a642

ref_00463108:
dd 0xaea8f7be
db 0x00

ref_0046310d:
db 0xa8
db 0x54
db 0xa8
db 0xae
db 0x00

ref_00463112:
db 0xb5
db 0x4c
dd 0xc1b4adad
db 0x00

ref_00463119:
db 0xa4
db 0x47
db 0xa6
db 0x7e
db 0x00

ref_0046311e:
db 0xa4
db 0x40
db 0xa6
db 0x7e
db 0x00

ref_00463123:
db 0xa4
dd 0xa4d3adbb
db 0xeb
db 0x00

ref_0046312a:
db 0xa4
db 0x54
dd 0xeba4d3ad
db 0x00

ref_00463131:
db 0xa4
db 0x40
db 0xad
dd 0x00eba4d3

ref_00463138:
dd 0xb8c043b9
dd 0xc6bc48a4
db 0x00

ref_00463141:
db 0xc1
db 0x60
db 0x20
dd 0xaa20eab8
db 0xf7
db 0x00

ref_0046314a:
db 0xa6
db 0xe6
dd 0xe8a469b6
db 0xa6
db 0xa1
db 0x00

ref_00463153:
db 0xa4
dd 0xc561a667
dd 0x00adad76

ref_0046315c:
dd 0xb8c043b9
dd 0xa1b6c9ae
db 0x00

ref_00463165:
db 0xb3
db 0xd3
db 0xa7
dd 0xa5f8b151
db 0xf3
db 0x00

ref_0046316e:
db 0x25
db 0x64
db 0x00

ref_00463171:
db 0xb5
db 0x4c
db 0xad
db 0xad
db 0x00

ref_0046cb88:
dd ref_004630f4
dd ref_004630f9
dd ref_004630fe

ref_0046cb94:
dd 0x000493e0
dd 0x00030d40
dd 0x000186a0
dd 0x0000c350
dd 0x00007530
dd 0x00002710

ref_0046cbac:
dd ref_00463103
dd ref_00463108
dd ref_0046310d

ref_0046cbb8:
dd ref_00463112
dd ref_00463119
dd ref_0046311e
dd ref_00463123
dd ref_0046312a
dd ref_00463131

ref_0046cbd0:
dd ref_00463112
dd ref_00463119
dd ref_0046311e
dd ref_00463123
dd ref_0046312a
dd ref_00463131
