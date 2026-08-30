extern _Post_0402_Message
extern _Wait_0402_Message
extern __imp__BeginPaint@8
extern __imp__DefWindowProcA@16
extern __imp__EndPaint@8
extern __imp__InvalidateRect@12
extern __imp__KillTimer@8
extern __imp__PostMessageA@16
extern __imp__SetTimer@16
extern __round_toward_zero
extern _callbackSize
extern _card_table
extern _rich4_ddraw_primary_sf_ptr
extern _rich4_ddraw_offscreen_sf_ptr
extern _global_rich4_cfg
extern _libc_free
extern _libc_itoa
extern _libc_rand
extern _libc_sprintf
extern _memcpy
extern _memset
extern _qsort
extern _read_mkf
extern _rich4_all_players_state
extern _rich4_consume_card
extern _rich4_create_font
extern _rich4_current_player
extern _rich4_draw_text
extern _rich4_on_map_commercial_ptr
extern _rich4_panel_mkf
extern _rich4_player_card_num
extern _rich4_player_cards
extern _rich4_player_receive_random_card
extern _rich4_player_tool_amount
extern _rich4_receive_card
extern _rich4_receive_random_tool
extern _rich4_receive_tool
extern _rich4_remain_card_amount
extern _rich4_remain_tool_amount
extern _strcpy
extern _tool_table
extern fcn_00402250
extern fcn_0040235d
extern fcn_00402460
extern fcn_00440cac
extern fcn_00441b0a
extern fcn_00447c6e
extern fcn_0044ec30
extern fcn_0044ecb6
extern fcn_0044ee18
extern fcn_0044ef3b
extern fcn_0044f230
extern fcn_00451a5a
extern fcn_00451b9e
extern fcn_00451d4e
extern fcn_004549cf
extern fcn_00454bcc
extern fcn_004563f5
extern fcn_00456418
extern fcn_0045643d
extern ref_0046cb01
extern ref_0048a068
extern ref_0048a08c
extern ref_0048c548

global _rich4_ui_shop_entry

section .text

_rich4_compare_card_price_gt:			; card_price_gt
push ebx
sub esp, 4
xor eax, eax
mov edx, dword [esp + 0xc]
mov dl, byte [edx]
mov byte [esp], dl
mov edx, dword [esp + 0x10]
mov dl, byte [edx]
xor ecx, ecx
mov cl, byte [esp]
xor ebx, ebx
mov bl, dl
mov cl, byte [ecx*8 + (_card_table + 5)]  ; mov cl, byte [ecx*8 + 0x47fdf7]
cmp cl, byte [ebx*8 + (_card_table + 5)]  ; cmp cl, byte [ebx*8 + 0x47fdf7]
jbe short loc_0042d122  ; jbe 0x42d122
mov eax, 0xffffffff

loc_0042d122:
xor ebx, ebx
mov bl, byte [esp]
xor ecx, ecx
mov cl, dl
mov dl, byte [ebx*8 + (_card_table + 5)]  ; mov dl, byte [ebx*8 + 0x47fdf7]
cmp dl, byte [ecx*8 + (_card_table + 5)]  ; cmp dl, byte [ecx*8 + 0x47fdf7]
jae short loc_0042d140  ; jae 0x42d140
mov eax, 1

loc_0042d140:
add esp, 4
pop ebx
ret

fcn_0042d145:
sub esp, 0x10
mov edx, dword [esp + 0x18]
push edx
mov ecx, dword [esp + 0x18]
push ecx
call _rich4_consume_card  ; call 0x441343
add esp, 8
imul ecx, dword [esp + 0x14], 0x68
mov edx, dword [esp + 0x18]
xor eax, eax
mov al, byte [edx*8 + (_card_table - 3)]  ; mov al, byte [edx*8 + 0x47fdef]
mov dword [esp + 0xc], eax
fild word [esp + 0xc]
fmul qword [ref_00464364]  ; fmul qword [0x464364]
xor eax, eax
mov ax, word [ecx + (_rich4_all_players_state + 48)]  ; mov ax, word [ecx + 0x496b98]
mov dword [esp + 8], eax
fild dword [esp + 8]
fstp qword [esp]
fadd qword [esp]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 8]
mov eax, dword [esp + 8]
mov word [ecx + (_rich4_all_players_state + 48)], ax  ; mov word [ecx + 0x496b98], ax
xor eax, eax
mov al, byte [edx*8 + (_card_table - 3)]  ; mov al, byte [edx*8 + 0x47fdef]
add esp, 0x10
ret

fcn_0042d1b2:
push ebx
push esi
sub esp, 0xc
mov ecx, dword [esp + 0x1c]
mov eax, ecx
xor ebx, ebx
mov bl, byte [ecx*8 + (_tool_table + -3)]  ; mov bl, byte [ecx*8 + 0x47fedf]
imul ebx, dword [esp + 0x20]
mov esi, dword [esp + 0x18]
imul edx, esi, 0x68
mov dword [esp + 8], ebx
fild dword [esp + 8]
fmul qword [ref_0046436c]  ; fmul qword [0x46436c]
xor eax, ecx
mov ax, word [edx + (_rich4_all_players_state + 48)]  ; mov ax, word [edx + 0x496b98]
mov dword [esp + 8], eax
fild dword [esp + 8]
fstp qword [esp]
fadd qword [esp]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 8]
mov eax, dword [esp + 8]
mov word [edx + (_rich4_all_players_state + 48)], ax  ; mov word [edx + 0x496b98], ax
mov eax, esi
shl eax, 2
add eax, esi
mov edx, eax
shl eax, 2
sub eax, edx
mov dl, byte [esp + 0x20]
sub byte [ecx + eax + (_rich4_player_tool_amount - 1)], dl  ; sub byte [ecx + eax + 0x49915b], dl
cmp ecx, 8
jg short loc_0042d22f  ; jg 0x42d22f
add byte [ecx + (_rich4_remain_tool_amount - 1)], dl  ; add byte [ecx + 0x49731f], dl

loc_0042d22f:
mov eax, ebx
add esp, 0xc
pop esi
pop ebx
ret

_rich4_player_buy_card:
push ebx
mov edx, dword [esp + 0xc]
push edx
mov ecx, dword [esp + 0xc]
push ecx
call _rich4_receive_card  ; call 0x4412e4
add esp, 8
imul edx, dword [esp + 8], 0x68
mov eax, dword [esp + 0xc]
xor bh, bh
mov bl, byte [eax*8 + (_card_table - 3)]  ; mov bl, byte [eax*8 + 0x47fdef]

loc_0042d25c:
sub word [edx + (_rich4_all_players_state + 48)], bx  ; sub word [edx + 0x496b98], bx
xor edx, edx
mov dl, bl
mov eax, edx
shl eax, 2
add eax, edx
add eax, eax
pop ebx
ret

_rich4_player_buy_tool:
push ebx
mov edx, dword [esp + 0xc]
push edx
mov ecx, dword [esp + 0xc]
push ecx
call _rich4_receive_tool  ; call 0x445a4d
add esp, 8
imul edx, dword [esp + 8], 0x68
mov eax, dword [esp + 0xc]
xor bh, bh
mov bl, byte [eax*8 + (_tool_table + -3)]  ; mov bl, byte [eax*8 + 0x47fedf]
jmp short loc_0042d25c  ; jmp 0x42d25c

fcn_0042d299:
push ebx
push esi
push edi
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
test edx, edx
jne short loc_0042d2f2  ; jne 0x42d2f2
push edx
push edx
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0xf0
push 0x140
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x24
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
jmp short loc_0042d32c  ; jmp 0x42d32c

loc_0042d2f2:
push 0
push 0
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xcc
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0xf0
push 0x140
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xe4
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx

loc_0042d32c:
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0x101010
push 0
push 0xffffffffffffffec
push 0xa
push 0x78
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc0
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
pop edi
pop esi
pop ebx
ret

endloc_0042d36a:
db 0x90

ref_0042d36b:  ; may contain a jump table
dd loc_0042d8ab
dd loc_0042d8ee
dd loc_0042d9a3
dd loc_0042da31
dd loc_0042daf1

fcn_0042d37f:
push ebx
push esi
push edi
push ebp
sub esp, 0x60
mov edi, dword [esp + 0x74]
mov eax, dword [esp + 0x78]
mov edx, dword [esp + 0x80]
cmp eax, 0x205
jb short loc_0042d3e7  ; jb 0x42d3e7
jbe near loc_0042e888  ; jbe 0x42e888
cmp eax, 0x40c
jb short loc_0042d3ca  ; jb 0x42d3ca
jbe near loc_0042d5fe  ; jbe 0x42d5fe
cmp eax, 0x40d
jbe near loc_0042d821  ; jbe 0x42d821
cmp eax, 0x40e
je near loc_0042d499  ; je 0x42d499
jmp near loc_0042e91a  ; jmp 0x42e91a

loc_0042d3ca:
cmp eax, 0x401
jb near loc_0042e91a  ; jb 0x42e91a
jbe short loc_0042d423  ; jbe 0x42d423
cmp eax, 0x405
je near loc_0042d56d  ; je 0x42d56d
jmp near loc_0042e91a  ; jmp 0x42e91a

loc_0042d3e7:
cmp eax, 0x113
jb short loc_0042d415  ; jb 0x42d415
jbe near loc_0042d847  ; jbe 0x42d847
cmp eax, 0x201
jb near loc_0042e91a  ; jb 0x42e91a
jbe near loc_0042de09  ; jbe 0x42de09
cmp eax, 0x202
je near loc_0042e62b  ; je 0x42e62b
jmp near loc_0042e91a  ; jmp 0x42e91a

loc_0042d415:
cmp eax, 0xf
je near loc_0042e8bc  ; je 0x42e8bc
jmp near loc_0042e91a  ; jmp 0x42e91a

loc_0042d423:
xor ebp, ebp
mov dword [ref_0048c310], ebp  ; mov dword [0x48c310], ebp
mov dword [ref_0048c314], ebp  ; mov dword [0x48c314], ebp
xor bl, bl
mov byte [ref_0048c347], bl  ; mov byte [0x48c347], bl
xor bh, bh
mov byte [ref_0048c348], bh  ; mov byte [0x48c348], bh
mov dword [ref_0048c343], ebp  ; mov dword [0x48c343], ebp
mov al, byte [(_global_rich4_cfg + 1)]  ; mov al, byte [0x497159]
xor al, 1
mov byte [ref_0048c349], al  ; mov byte [0x48c349], al
mov byte [ref_0048c34a], al  ; mov byte [0x48c34a], al
call fcn_0042d299  ; call 0x42d299
push ebp
push 0x32
mov ecx, dword [_callbackSize]  ; mov ecx, dword [0x46cad8]
push ecx
push edi
call dword [cs:__imp__SetTimer@16]  ; ucall: call dword cs:[0x462324]
mov dword [ref_0048c32b], eax  ; mov dword [0x48c32b], eax
push ebp
push ebp
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push ebp
push ebp
push 0x405

loc_0042d485:
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]

loc_0042d48d:
xor eax, eax

loc_0042d48f:
add esp, 0x60
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

loc_0042d499:
mov dword [esp + 0x40], 0xe6
mov dword [esp + 0x44], 0xf6
mov dword [esp + 0x48], 0x140
mov dword [esp + 0x4c], 0x11e
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebp, dword [esp + 0x44]
push ebp
mov eax, dword [esp + 0x44]
push eax
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x1c8
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
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
lea eax, [esp + 0x54]
push eax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ax, word [eax + (_rich4_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
push eax
call _libc_itoa  ; call 0x457d61
add esp, 0xc
push 1
push 0x101
push 0x136
lea eax, [esp + 0x5c]
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
lea eax, [esp + 0x44]
push eax

loc_0042d560:
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042d56d:
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
cmp byte [eax + ref_0048c349], 0  ; cmp byte [eax + 0x48c349], 0
jne short loc_0042d5ba  ; jne 0x42d5ba
xor edi, edi
mov dword [ref_0048c318], edi  ; mov dword [0x48c318], edi
mov dword [ref_0048c333], 0xffffff22  ; mov dword [0x48c333], 0xffffff22
mov dword [ref_0048c337], 0x280  ; mov dword [0x48c337], 0x280
mov edx, eax
shl eax, 2
sub eax, edx
mov ecx, dword [eax*8 + ref_004755c0]  ; mov ecx, dword [eax*8 + 0x4755c0]
push ecx
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
jmp short loc_0042d5d8  ; jmp 0x42d5d8

loc_0042d5ba:
mov dword [ref_0048c318], 1  ; mov dword [0x48c318], 1
mov dword [ref_0048c333], 5  ; mov dword [0x48c333], 5
mov dword [ref_0048c337], 0xe3  ; mov dword [0x48c337], 0xe3

loc_0042d5d8:
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
add eax, 3
mov dword [ref_0048c32f], eax  ; mov dword [0x48c32f], eax
mov dword [ref_0048c33b], 0x28  ; mov dword [0x48c33b], 0x28
mov dword [ref_0048c33f], 0x50  ; mov dword [0x48c33f], 0x50
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042d5fe:
mov eax, dword [ref_0048c33b]  ; mov eax, dword [0x48c33b]
mov esi, dword [ref_0048c333]  ; mov esi, dword [0x48c333]
add esi, eax
mov dword [ref_0048c333], esi  ; mov dword [0x48c333], esi
mov eax, dword [ref_0048c33f]  ; mov eax, dword [0x48c33f]
sub dword [ref_0048c337], eax  ; sub dword [0x48c337], eax
sub dword [ref_0048c33b], 3  ; sub dword [0x48c33b], 3
sub dword [ref_0048c33f], 7  ; sub dword [0x48c33f], 7
cmp esi, 5
jle short loc_0042d639  ; jle 0x42d639
mov dword [ref_0048c333], 5  ; mov dword [0x48c333], 5

loc_0042d639:
cmp dword [ref_0048c337], 0xe3  ; cmp dword [0x48c337], 0xe3
jge short loc_0042d64f  ; jge 0x42d64f
mov dword [ref_0048c337], 0xe3  ; mov dword [0x48c337], 0xe3

loc_0042d64f:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [ref_0048c333]  ; mov eax, dword [0x48c333]
cmp eax, 5
jne near loc_0042d75e  ; jne 0x42d75e
cmp dword [ref_0048c337], 0xe3  ; cmp dword [0x48c337], 0xe3
jne near loc_0042d75e  ; jne 0x42d75e
push 0x1d6
push eax
push 0xa
push 0
push 0xa
push 0
mov ecx, dword [ref_0048c308]  ; mov ecx, dword [0x48c308]
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 6
add ecx, 0xc
add eax, ecx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0xb6
push 0xa
push 0x124
push 0x276
push 0x124
push 0x276
mov ecx, dword [ref_0048c308]  ; mov ecx, dword [0x48c308]
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 6
add ecx, 0xc
add eax, ecx
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0xd
push 0x21e
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
shl eax, 4
lea edx, [eax + 0xd]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add eax, edx
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0xf6
push 0x22c
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x1b0
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_00456418  ; call 0x456418
add esp, 0x10

loc_0042d75e:
push 0xa
mov eax, dword [ref_0048c333]  ; mov eax, dword [0x48c333]
push eax
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
shl eax, 4
lea edx, [eax + 1]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0x125
mov ecx, dword [ref_0048c337]  ; mov ecx, dword [0x48c337]
push ecx
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
mov ebx, dword [eax*4 + ref_0048c300]  ; mov ebx, dword [eax*4 + 0x48c300]
push ebx
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
cmp dword [ref_0048c333], 5  ; cmp dword [0x48c333], 5
jne near loc_0042d48d  ; jne 0x42d48d
cmp dword [ref_0048c337], 0xe3  ; cmp dword [0x48c337], 0xe3
jne near loc_0042d48d  ; jne 0x42d48d
mov dword [ref_0048c318], 2  ; mov dword [0x48c318], 2
push 0
push 0
push 0x40d
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
push 0
push 0
push 0x40e
jmp near loc_0042d485  ; jmp 0x42d485

loc_0042d821:
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
cmp byte [eax + ref_0048c349], 0  ; cmp byte [eax + 0x48c349], 0
jne near loc_0042d48d  ; jne 0x42d48d
mov edx, eax
shl eax, 2
sub eax, edx
mov ebx, dword [eax*8 + ref_004755c4]  ; mov ebx, dword [eax*8 + 0x4755c4]

loc_0042d841:
push ebx
jmp near loc_0042e459  ; jmp 0x42e459

loc_0042d847:
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je near loc_0042d48d  ; je 0x42d48d
mov eax, dword [esp + 0x7c]
cmp eax, dword [_callbackSize]  ; cmp eax, dword [0x46cad8]
jne near loc_0042d48d  ; jne 0x42d48d
cmp dword [ref_0048c318], 1  ; cmp dword [0x48c318], 1
jne short loc_0042d87e  ; jne 0x42d87e
push 0
push 0
push 0x40c
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]

loc_0042d87e:
mov ch, byte [ref_0048c348]  ; mov ch, byte [0x48c348]
xor ch, 1
mov byte [ref_0048c348], ch  ; mov byte [0x48c348], ch
je near loc_0042d48d  ; je 0x42d48d
mov eax, dword [ref_0048c32f]  ; mov eax, dword [0x48c32f]
and eax, 0xf
cmp eax, 4
ja near loc_0042dbac  ; ja 0x42dbac
jmp dword [eax*4 + ref_0042d36b]  ; ujmp: jmp dword [eax*4 + 0x42d36b]

loc_0042d8ab:
call _libc_rand  ; call 0x456f2d
mov esi, eax
sar esi, 0xa
test esi, esi
jne short loc_0042d8d3  ; jne 0x42d8d3
test byte [ref_0048c330], 0xf  ; test byte [0x48c330], 0xf
je short loc_0042d8d3  ; je 0x42d8d3
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
inc eax
or dword [ref_0048c32f], eax  ; or dword [0x48c32f], eax
jmp near loc_0042dbac  ; jmp 0x42dbac

loc_0042d8d3:
cmp esi, 1
jne near loc_0042dbac  ; jne 0x42dbac
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
add eax, 3
mov dword [ref_0048c32f], eax  ; mov dword [0x48c32f], eax
jmp near loc_0042dbac  ; jmp 0x42dbac

loc_0042d8ee:
mov esi, dword [ref_0048c32f]  ; mov esi, dword [0x48c32f]
and esi, 0xf0
sar esi, 4
cmp esi, 4
jne short loc_0042d911  ; jne 0x42d911
mov dword [ref_0048c32f], 0x200  ; mov dword [0x48c32f], 0x200
jmp near loc_0042dbac  ; jmp 0x42dbac

loc_0042d911:
mov dword [esp + 0x40], 0x195
mov dword [esp + 0x44], 0x3c
mov dword [esp + 0x48], 0x1c7
mov dword [esp + 0x4c], 0x5d
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebp, dword [esp + 0x44]
push ebp
mov eax, dword [esp + 0x44]
push eax
xor edx, edx
mov dl, byte [esi + ref_004755b8]  ; mov dl, byte [esi + 0x4755b8]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx

loc_0042d977:
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x44]
push eax
push edi
add dword [ref_0048c32f], 0x10  ; add dword [0x48c32f], 0x10
jmp near loc_0042dba5  ; jmp 0x42dba5

loc_0042d9a3:
mov esi, dword [ref_0048c32f]  ; mov esi, dword [0x48c32f]
and esi, 0xf0
sar esi, 4
cmp esi, 4
jne short loc_0042d9c6  ; jne 0x42d9c6
mov dword [ref_0048c32f], 0x100  ; mov dword [0x48c32f], 0x100
jmp near loc_0042dbac  ; jmp 0x42dbac

loc_0042d9c6:
mov dword [esp + 0x40], 0x1a1
mov dword [esp + 0x44], 0x32
mov dword [esp + 0x48], 0x1e7
mov dword [esp + 0x4c], 0x5e
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edx, dword [esp + 0x44]
push edx
mov ecx, dword [esp + 0x44]
push ecx
xor edx, edx
mov dl, byte [esi + ref_004755bc]  ; mov dl, byte [esi + 0x4755bc]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add edx, eax
push edx
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
jmp near loc_0042d977  ; jmp 0x42d977

loc_0042da31:
call _libc_rand  ; call 0x456f2d
mov edx, eax
shl eax, 2
sub eax, edx
sar eax, 0xf
lea esi, [eax + 1]
mov ebp, dword [ref_0048c32f]  ; mov ebp, dword [0x48c32f]
and ebp, 0xf00
sar ebp, 8
cmp esi, ebp
je near loc_0042dbac  ; je 0x42dbac
mov dword [esp + 0x40], 0x195
mov dword [esp + 0x44], 0x3c
mov dword [esp + 0x48], 0x1c7
mov dword [esp + 0x4c], 0x5d
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebx, dword [esp + 0x44]
push ebx
mov ebp, dword [esp + 0x44]
push ebp
lea edx, [esi + 3]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add eax, edx
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
and word [ref_0048c32f], 0xf0f0  ; and word [0x48c32f], 0xf0f0
shl esi, 8
or dword [ref_0048c32f], esi  ; or dword [0x48c32f], esi
push 0
lea eax, [esp + 0x44]
push eax
push edi
jmp near loc_0042dba5  ; jmp 0x42dba5

loc_0042daf1:
call _libc_rand  ; call 0x456f2d
and eax, 1
lea esi, [eax + 1]
mov ebp, dword [ref_0048c32f]  ; mov ebp, dword [0x48c32f]
and ebp, 0xf00
sar ebp, 8
cmp esi, ebp
je near loc_0042dbac  ; je 0x42dbac
mov dword [esp + 0x40], 0x1a1
mov dword [esp + 0x44], 0x32
mov dword [esp + 0x48], 0x1e7
mov dword [esp + 0x4c], 0x5e
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0x44]
push eax
mov edx, dword [esp + 0x44]
push edx
lea edx, [esi + 0x16]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c308]  ; mov edx, dword [0x48c308]
add edx, 0xc
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
and word [ref_0048c32f], 0xf0f0  ; and word [0x48c32f], 0xf0f0
shl esi, 8
or dword [ref_0048c32f], esi  ; or dword [0x48c32f], esi
push 0
lea eax, [esp + 0x44]
push eax
push edi

loc_0042dba5:
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0042dbac:
push 0
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
test eax, eax
je near loc_0042dc36  ; je 0x42dc36
mov eax, dword [ref_0048c318]  ; mov eax, dword [0x48c318]
cmp eax, 2
jb short loc_0042dbd1  ; jb 0x42dbd1
jbe short loc_0042dbf0  ; jbe 0x42dbf0
cmp eax, 4
je short loc_0042dc0f  ; je 0x42dc0f
jmp short loc_0042dc36  ; jmp 0x42dc36

loc_0042dbd1:
test eax, eax
jne short loc_0042dc36  ; jne 0x42dc36
push eax
push eax
push 0x40c
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
mov dword [ref_0048c318], 1  ; mov dword [0x48c318], 1
jmp short loc_0042dc36  ; jmp 0x42dc36

loc_0042dbf0:
mov dword [ref_0048c318], 3  ; mov dword [0x48c318], 3
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
mov byte [eax + ref_0048c349], 1  ; mov byte [eax + 0x48c349], 1
push 1
call fcn_00402460  ; call 0x402460
jmp short loc_0042dc33  ; jmp 0x42dc33

loc_0042dc0f:
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov ebp, dword [ref_0048c32b]  ; mov ebp, dword [0x48c32b]
push ebp
push edi
call dword [cs:__imp__KillTimer@8]  ; ucall: call dword cs:[0x4622fc]
mov eax, dword [ref_0048c343]  ; mov eax, dword [0x48c343]
push eax
call _Post_0402_Message  ; call 0x401966

loc_0042dc33:
add esp, 4

loc_0042dc36:
call fcn_0044ef3b  ; call 0x44ef3b
test eax, eax
jne short loc_0042dc4c  ; jne 0x42dc4c
cmp dword [ref_0048c314], 0  ; cmp dword [0x48c314], 0
je near loc_0042d48d  ; je 0x42d48d

loc_0042dc4c:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov esi, dword [ref_0048c314]  ; mov esi, dword [0x48c314]
test esi, esi
je near loc_0042dd03  ; je 0x42dd03
lea edx, [esi - 1]
mov dword [ref_0048c314], edx  ; mov dword [0x48c314], edx
test edx, edx
jne near loc_0042ddf4  ; jne 0x42ddf4
cmp dword [ref_0048c310], 0  ; cmp dword [0x48c310], 0
jne short loc_0042dcc0  ; jne 0x42dcc0
mov ebx, 0x195
mov dword [esp + 0x40], ebx
mov esi, 0x5b
mov dword [esp + 0x44], esi
mov dword [esp + 0x48], 0x1c7
mov dword [esp + 0x4c], 0x6e
push esi
push ebx
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x78
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
jmp short loc_0042dcf6  ; jmp 0x42dcf6

loc_0042dcc0:
mov esi, 0x1a1
mov dword [esp + 0x40], esi
mov ebp, 0x59
mov dword [esp + 0x44], ebp
mov dword [esp + 0x48], 0x1e7
mov dword [esp + 0x4c], 0x6e
push ebp
push esi
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x138
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx

loc_0042dcf6:
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
jmp near loc_0042dde5  ; jmp 0x42dde5

loc_0042dd03:
call _libc_rand  ; call 0x456f2d
mov esi, eax
sar esi, 0xb
cmp esi, 4
jge near loc_0042ddf4  ; jge 0x42ddf4
cmp dword [ref_0048c310], 0  ; cmp dword [0x48c310], 0
jne short loc_0042dd6e  ; jne 0x42dd6e
mov ebp, 0x195
mov dword [esp + 0x40], ebp
mov eax, 0x5b
mov dword [esp + 0x44], eax
mov dword [esp + 0x48], 0x1c7
mov dword [esp + 0x4c], 0x6e
push eax
push ebp
call _libc_rand  ; call 0x456f2d
and eax, 1
lea edx, [eax + 0xa]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add eax, edx
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
jmp short loc_0042ddbb  ; jmp 0x42ddbb

loc_0042dd6e:
mov eax, 0x1a1
mov dword [esp + 0x40], eax
mov edx, 0x59
mov dword [esp + 0x44], edx
mov dword [esp + 0x48], 0x1e7
mov dword [esp + 0x4c], 0x6e
push edx
push eax
call _libc_rand  ; call 0x456f2d
and eax, 1
lea edx, [eax + 0x1a]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add eax, edx
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi

loc_0042ddbb:
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
call _libc_rand  ; call 0x456f2d
and eax, 7
mov esi, dword [ref_0048c314]  ; mov esi, dword [0x48c314]
or esi, eax
mov dword [ref_0048c314], esi  ; mov dword [0x48c314], esi
jne short loc_0042dde5  ; jne 0x42dde5
mov dword [ref_0048c314], 1  ; mov dword [0x48c314], 1

loc_0042dde5:
push 0
lea eax, [esp + 0x44]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0042ddf4:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042de09:
cmp dword [ref_0048c318], 3  ; cmp dword [0x48c318], 3
je short loc_0042de4c  ; je 0x42de4c
push 1
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
cmp dword [ref_0048c318], 1  ; cmp dword [0x48c318], 1
jg near loc_0042d48d  ; jg 0x42d48d
mov dword [ref_0048c318], 1  ; mov dword [0x48c318], 1
mov dword [ref_0048c333], 5  ; mov dword [0x48c333], 5
mov dword [ref_0048c337], 0xe3  ; mov dword [0x48c337], 0xe3
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042de4c:
xor esi, esi
mov si, dx
mov eax, edx
shr eax, 0x10
and eax, 0xffff
movzx ebp, ax
cmp esi, 0x21e
jl near loc_0042df31  ; jl 0x42df31
cmp esi, 0x273
jg near loc_0042df31  ; jg 0x42df31
cmp ebp, 0xd
jl near loc_0042df31  ; jl 0x42df31
cmp ebp, 0x62
jg near loc_0042df31  ; jg 0x42df31
mov dword [esp + 0x40], 0x21e
mov dword [esp + 0x44], 0xd
mov dword [esp + 0x48], 0x273
mov dword [esp + 0x4c], 0x62
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov eax, dword [eax]
push 0
push 1
mov edx, ref_0048a068  ; mov edx, 0x48a068
push edx
push 0
mov ecx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
call dword [eax + 0x64]  ; ucall
mov ebx, dword [esp + 0x44]
push ebx
mov esi, dword [esp + 0x44]
push esi
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
shl eax, 4
lea edx, [eax + 0xe]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xc
add eax, edx
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov eax, dword [eax]
push 0
mov edx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov edx, dword [0x48a0e0]
push edx
call dword [eax + 0x80]  ; ucall
push 0
lea eax, [esp + 0x44]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov byte [ref_0048c347], 1  ; mov byte [0x48c347], 1
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042df31:
cmp esi, 0x22c
jl near loc_0042dfe6  ; jl 0x42dfe6
cmp esi, 0x27c
jg near loc_0042dfe6  ; jg 0x42dfe6
cmp ebp, 0xf6
jl near loc_0042dfe6  ; jl 0x42dfe6
cmp ebp, 0x11e
jg near loc_0042dfe6  ; jg 0x42dfe6
mov dword [esp + 0x40], 0x22c
mov dword [esp + 0x44], 0xf6
mov dword [esp + 0x48], 0x27c
mov dword [esp + 0x4c], 0x11e
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edx, dword [esp + 0x44]
push edx
mov ecx, dword [esp + 0x44]
push ecx
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x1bc
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x44]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov byte [ref_0048c347], 2  ; mov byte [0x48c347], 2
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042dfe6:
cmp esi, 0xe8
jle near loc_0042e148  ; jle 0x42e148
cmp esi, 0x278
jge near loc_0042e148  ; jge 0x42e148
cmp ebp, 0x12a
jle near loc_0042e148  ; jle 0x42e148
cmp ebp, 0x1d2
jge near loc_0042e148  ; jge 0x42e148
lea edx, [ebp - 0x12a]
mov ebx, 0x38
mov eax, edx
sar edx, 0x1f
idiv ebx
mov edi, eax
lea edx, [esi - 0xe8]
mov ecx, 0x50
mov eax, edx
sar edx, 0x1f
idiv ecx
mov edx, eax
mov ebx, edi
mov eax, ebx
shl eax, 2
add eax, ebx
lea ebx, [eax + edx]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 4
lea edx, [eax + 0xe9]
mov dword [esp + 0x40], edx
add eax, 0x137
mov dword [esp + 0x48], eax
shl edi, 3
mov eax, edi
shl eax, 3
sub eax, edi
lea edx, [eax + 0x12b]
mov dword [esp + 0x44], edx
add eax, 0x161
mov dword [esp + 0x4c], eax
cmp dword [ref_0048c310], 0  ; cmp dword [0x48c310], 0
jne short loc_0042e100  ; jne 0x42e100
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
add ebx, eax
mov dl, byte [ebx + _rich4_player_cards]  ; mov dl, byte [ebx + 0x499120]
test dl, dl
je near loc_0042d48d  ; je 0x42d48d
xor eax, eax
mov al, dl
push eax
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
call fcn_0042d145  ; call 0x42d145
add esp, 8
add dword [ref_0048c343], eax  ; add dword [0x48c343], eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
mov edx, dword [ref_0048c30c]  ; mov edx, dword [0x48c30c]
push edx
mov ecx, dword [ref_0048c300]  ; mov ecx, dword [0x48c300]
push ecx
call fcn_00441b0a  ; call 0x441b0a

loc_0042e0e4:
add esp, 0xc
lea eax, [esp + 0x40]
push eax
call fcn_00451b9e  ; call 0x451b9e
add esp, 4
mov byte [ref_0048c347], 3  ; mov byte [0x48c347], 3
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042e100:
cmp byte [ebx + ref_0048c548], 0  ; cmp byte [ebx + 0x48c548], 0
je near loc_0042d48d  ; je 0x42d48d
push 1
xor eax, eax
mov al, byte [ebx + ref_0048c548]  ; mov al, byte [ebx + 0x48c548]
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call fcn_0042d1b2  ; call 0x42d1b2
add esp, 0xc
add dword [ref_0048c343], eax  ; add dword [0x48c343], eax
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
mov ebx, dword [ref_0048c30c]  ; mov ebx, dword [0x48c30c]
push ebx
mov esi, dword [ref_0048c304]  ; mov esi, dword [0x48c304]
push esi
call fcn_00447c6e  ; call 0x447c6e
jmp short loc_0042e0e4  ; jmp 0x42e0e4

loc_0042e148:
cmp dword [ref_0048c310], 0  ; cmp dword [0x48c310], 0
jne near loc_0042e39c  ; jne 0x42e39c
cmp esi, 0xe
jl near loc_0042e39c  ; jl 0x42e39c
cmp esi, 0xd7
jg near loc_0042e39c  ; jg 0x42e39c
cmp ebp, 0x51
jl near loc_0042e39c  ; jl 0x42e39c
cmp ebp, 0x1b9
jg near loc_0042e39c  ; jg 0x42e39c
lea edx, [ebp - 0x51]
mov ebx, 0x18
mov eax, edx
sar edx, 0x1f
idiv ebx
mov ebx, eax
cmp byte [eax + ref_0048c31c], 0  ; cmp byte [eax + 0x48c31c], 0
je near loc_0042d48d  ; je 0x42d48d
xor eax, eax
mov al, byte [ebx + ref_0048c31c]  ; mov al, byte [ebx + 0x48c31c]
xor edx, edx
mov dl, byte [eax*8 + (_card_table - 3)]  ; mov dl, byte [eax*8 + 0x47fdef]
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul eax, ecx, 0x68
mov ax, word [eax + (_rich4_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
cmp eax, edx
jge short loc_0042e1eb  ; jge 0x42e1eb
mov dword [ref_0048c318], 2  ; mov dword [0x48c318], 2
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
mov eax, edx
shl eax, 2
sub eax, edx
mov edi, dword [eax*8 + ref_004755c8]  ; mov edi, dword [eax*8 + 0x4755c8]
push edi
jmp near loc_0042e459  ; jmp 0x42e459

loc_0042e1eb:
push ecx
call _rich4_player_card_num  ; call 0x441262
add esp, 4
cmp eax, 0xf
jge near loc_0042e43a  ; jge 0x42e43a
xor eax, eax
mov al, byte [ebx + ref_0048c31c]  ; mov al, byte [ebx + 0x48c31c]
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call _rich4_player_buy_card  ; call 0x42d237
add esp, 8
add dword [ref_0048c343], eax  ; add dword [0x48c343], eax
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
mov eax, dword [ref_0048c30c]  ; mov eax, dword [0x48c30c]
push eax
mov edx, dword [ref_0048c300]  ; mov edx, dword [0x48c300]
push edx
call fcn_00441b0a  ; call 0x441b0a
add esp, 0xc
push 0
push 3
push 0x101010
push 0xa0a0a0
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov dword [esp + 0x40], 0xe
mov edx, ebx
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov dword [esp + 0x5c], eax
add eax, 0x51
mov dword [esp + 0x44], eax
mov dword [esp + 0x48], 0xd7
mov eax, dword [esp + 0x5c]
add eax, 0x69
mov dword [esp + 0x4c], eax
push 2
mov eax, dword [esp + 0x60]
add eax, 0x53
push eax
push 0x5a
xor eax, eax
mov al, byte [ebx + ref_0048c31c]  ; mov al, byte [ebx + 0x48c31c]
mov edx, dword [eax*8 + (_card_table - 8)]  ; mov edx, dword [eax*8 + 0x47fdea]
push edx
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x18
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
xor eax, eax
mov al, byte [ebx + ref_0048c31c]  ; mov al, byte [ebx + 0x48c31c]
mov al, byte [eax*8 + (_card_table - 3)]  ; mov al, byte [eax*8 + 0x47fdef]
and eax, 0xff
push eax
push ref_00464374  ; push 0x464374
lea eax, [esp + 0x58]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 1
mov eax, dword [esp + 0x60]
add eax, 0x4b
push eax
push 0xc2
lea eax, [esp + 0x5c]
push eax
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x18
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x18
push 0xc9
mov eax, dword [esp + 0x4c]
sub eax, 0xa
push eax
mov eax, dword [esp + 0x4c]
sub eax, 5
push eax
mov ecx, dword [esp + 0x54]
push ecx
mov eax, dword [esp + 0x54]
push eax
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x18
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x125
push 0xe3
mov ecx, dword [ref_0048c300]  ; mov ecx, dword [0x48c300]
push ecx
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
xor dl, dl
mov byte [ebx + ref_0048c31c], dl  ; mov byte [ebx + 0x48c31c], dl
push 0
push 0
push 0x40e
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
push 0
push 0
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0042e39c:
cmp dword [ref_0048c310], 0  ; cmp dword [0x48c310], 0
je near loc_0042d48d  ; je 0x42d48d
cmp esi, 0xc
jl near loc_0042d48d  ; jl 0x42d48d
cmp esi, 0xd5
jg near loc_0042d48d  ; jg 0x42d48d
cmp ebp, 0x50
jl near loc_0042d48d  ; jl 0x42d48d
cmp ebp, 0x1d0
jg near loc_0042d48d  ; jg 0x42d48d
lea edx, [ebp - 0x50]
mov ebx, 0x30
mov eax, edx
sar edx, 0x1f
idiv ebx
mov ebx, eax
mov dh, byte [eax + ref_0048c2f8]  ; mov dh, byte [eax + 0x48c2f8]
test dh, dh
je near loc_0042d48d  ; je 0x42d48d
movzx ebp, dh
xor ecx, ecx
mov cl, byte [ebp*8 + (_tool_table + -3)]  ; mov cl, byte [ebp*8 + 0x47fedf]
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ax, word [eax + (_rich4_all_players_state + 48)]  ; mov ax, word [eax + 0x496b98]
and eax, 0xffff
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
mov esi, edx
shl esi, 2
sub esi, edx
shl esi, 3
cmp ecx, eax
jle short loc_0042e466  ; jle 0x42e466
mov dword [ref_0048c318], 2  ; mov dword [0x48c318], 2
mov ebx, dword [esi + ref_004755c8]  ; mov ebx, dword [esi + 0x4755c8]
jmp near loc_0042d841  ; jmp 0x42d841

loc_0042e43a:
mov dword [ref_0048c318], 2  ; mov dword [0x48c318], 2
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
mov eax, edx
shl eax, 2
sub eax, edx
mov ecx, dword [eax*8 + ref_004755cc]  ; mov ecx, dword [eax*8 + 0x4755cc]

loc_0042e458:
push ecx

loc_0042e459:
call fcn_0044ecb6  ; call 0x44ecb6

loc_0042e45e:
add esp, 4
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042e466:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [eax + ebp + (_rich4_player_tool_amount - 1)], 9  ; cmp byte [eax + ebp + 0x49915b], 9
jae near loc_0042e616  ; jae 0x42e616
push ebp
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call _rich4_player_buy_tool  ; call 0x42d272
add esp, 8
add dword [ref_0048c343], eax  ; add dword [0x48c343], eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
mov edx, dword [ref_0048c30c]  ; mov edx, dword [0x48c30c]
push edx
mov ecx, dword [ref_0048c304]  ; mov ecx, dword [0x48c304]
push ecx
call fcn_00447c6e  ; call 0x447c6e
add esp, 0xc
push 0
push 3
push 0x101010
push 0xa0a0a0
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov dword [esp + 0x40], 0xc
mov edx, ebx
mov esi, edx
shl esi, 2
sub esi, edx
shl esi, 4
lea eax, [esi + 0x50]
mov dword [esp + 0x44], eax
mov dword [esp + 0x48], 0xdc
lea eax, [esi + 0x80]
mov dword [esp + 0x4c], eax
push 2
lea eax, [esi + 0x5c]
push eax
push 0x5a
xor eax, eax
mov al, byte [ebx + ref_0048c2f8]  ; mov al, byte [ebx + 0x48c2f8]
mov edx, dword [eax*8 + (_tool_table + -8)]  ; mov edx, dword [eax*8 + 0x47feda]
push edx
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xd8
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
xor eax, eax
mov al, byte [ebx + ref_0048c2f8]  ; mov al, byte [ebx + 0x48c2f8]
mov al, byte [eax*8 + (_tool_table + -3)]  ; mov al, byte [eax*8 + 0x47fedf]
and eax, 0xff
push eax
push ref_00464374  ; push 0x464374
lea eax, [esp + 0x58]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 1
add esi, 0x54
push esi
push 0xc2
lea eax, [esp + 0x5c]
push eax
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xd8
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x30
push 0xd0
mov eax, dword [esp + 0x4c]
sub eax, 0xa
push eax
mov eax, dword [esp + 0x4c]
sub eax, 5
push eax
mov ecx, dword [esp + 0x54]
push ecx
mov esi, dword [esp + 0x54]
push esi
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xd8
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x125
push 0xe3
mov eax, dword [ref_0048c304]  ; mov eax, dword [0x48c304]
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
xor ch, ch
mov byte [ebx + ref_0048c2f8], ch  ; mov byte [ebx + 0x48c2f8], ch
push 0
push 0
push 0x40e
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
push 0
push 0
jmp near loc_0042d560  ; jmp 0x42d560

loc_0042e616:
mov dword [ref_0048c318], 2  ; mov dword [0x48c318], 2
mov ecx, dword [esi + ref_004755cc]  ; mov ecx, dword [esi + 0x4755cc]
jmp near loc_0042e458  ; jmp 0x42e458

loc_0042e62b:
mov cl, byte [ref_0048c347]  ; mov cl, byte [0x48c347]
test cl, cl
je near loc_0042d48d  ; je 0x42d48d
mov al, cl
cmp cl, 2
jb short loc_0042e650  ; jb 0x42e650
jbe short loc_0042e686  ; jbe 0x42e686
cmp cl, 3
je near loc_0042e7ec  ; je 0x42e7ec
jmp near loc_0042e87c  ; jmp 0x42e87c

loc_0042e650:
cmp cl, 1
jne near loc_0042e87c  ; jne 0x42e87c
xor byte [ref_0048c310], cl  ; xor byte [0x48c310], cl
call fcn_0042d299  ; call 0x42d299
push 0
push 0
push 0x405
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
push 0
push 0
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0042e87c  ; jmp 0x42e87c

loc_0042e686:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
cmp dword [ref_0048c310], 0  ; cmp dword [0x48c310], 0
jne short loc_0042e6c7  ; jne 0x42e6c7
mov dword [esp + 0x40], 0x13c
mov dword [esp + 0x44], 0x5e
mov dword [esp + 0x48], 0x1a0
mov dword [esp + 0x4c], 0xe3
jmp short loc_0042e6e7  ; jmp 0x42e6e7

loc_0042e6c7:
mov dword [esp + 0x40], 0x136
mov dword [esp + 0x44], 0x17
mov dword [esp + 0x48], 0x19a
mov dword [esp + 0x4c], 0xc1

loc_0042e6e7:
mov eax, dword [esp + 0x4c]
mov ecx, dword [esp + 0x44]
sub eax, ecx
push eax
mov eax, dword [esp + 0x4c]
mov ebx, dword [esp + 0x44]
sub eax, ebx
push eax
push ecx
push ebx
push ecx
push ebx
mov ecx, dword [ref_0048c308]  ; mov ecx, dword [0x48c308]
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 6
add ecx, 0xc
add eax, ecx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0xf0
push 0x140
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
shl eax, 4
lea edx, [eax + 3]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c308]  ; mov edx, dword [0x48c308]
add edx, 0xc
add eax, edx
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov esi, 0x22c
mov dword [esp + 0x40], esi
mov ebp, 0xf6
mov dword [esp + 0x44], ebp
mov dword [esp + 0x48], 0x27c
mov dword [esp + 0x4c], 0x11e
push ebp
push esi
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x1b0
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
push 0
push 0
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov edx, dword [ref_0048c310]  ; mov edx, dword [0x48c310]
mov eax, edx
shl eax, 2
sub eax, edx
mov ebx, dword [eax*8 + ref_004755d0]  ; mov ebx, dword [eax*8 + 0x4755d0]
push ebx
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
mov dword [ref_0048c318], 4  ; mov dword [0x48c318], 4
jmp near loc_0042e87c  ; jmp 0x42e87c

loc_0042e7ec:
call fcn_00451d4e  ; call 0x451d4e
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x125
push 0xe3
mov eax, dword [ref_0048c310]  ; mov eax, dword [0x48c310]
mov ebp, dword [eax*4 + ref_0048c300]  ; mov ebp, dword [eax*4 + 0x48c300]
push ebp
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov dword [esp + 0x40], 0xe8
mov dword [esp + 0x48], 0x278
mov dword [esp + 0x44], 0x12a
mov dword [esp + 0x4c], 0x1d2
push 0
lea eax, [esp + 0x44]
push eax
push edi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
push 0
push 0x40e
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]

loc_0042e87c:
xor al, al
mov byte [ref_0048c347], al  ; mov byte [0x48c347], al
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042e888:
push 1
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov ebx, dword [ref_0048c32b]  ; mov ebx, dword [0x48c32b]
push ebx
push edi
call dword [cs:__imp__KillTimer@8]  ; ucall: call dword cs:[0x4622fc]
mov esi, dword [ref_0048c343]  ; mov esi, dword [0x48c343]
push esi
call _Post_0402_Message  ; call 0x401966
jmp near loc_0042e45e  ; jmp 0x42e45e

loc_0042e8bc:
mov eax, esp
push eax
push edi
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
mov ebp, dword [esp + 0x18]
push ebp
mov edx, dword [_rich4_ddraw_primary_sf_ptr]  ; mov edx, dword [0x48a0dc]
push edx
call dword [eax + 0x1c]  ; ucall
lea eax, [esp + 8]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov eax, esp
push eax
push edi
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_0042d48d  ; jmp 0x42d48d

loc_0042e91a:
push edx
mov ecx, dword [esp + 0x80]
push ecx
push eax
push edi
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp near loc_0042d48f  ; jmp 0x42d48f

_rich4_ui_shop_entry:
push ebx
push esi
push edi
push ebp
sub esp, 0x134
mov edx, dword [esp + 0x148]
cmp edx, 0x1770
jle near loc_0042ea2b  ; jle 0x42ea2b
cmp edx, 0x1f40
jge near loc_0042ea2b  ; jge 0x42ea2b
lea eax, [edx - 0x1770]
imul edx, eax, 0x34
mov eax, dword [_rich4_on_map_commercial_ptr]  ; mov eax, dword [0x498e7c]
add eax, edx
xor edx, edx
mov dl, byte [eax + 0x18]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne near loc_0042ea2b  ; jne 0x42ea2b
call _libc_rand  ; call 0x456f2d
test al, 1
je short loc_0042e9b9  ; je 0x42e9b9
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
call _rich4_receive_random_tool  ; call 0x445ada
add esp, 4
mov ebx, eax
shl ebx, 3
mov ebp, dword [ebx + (_tool_table + -8)]  ; mov ebp, dword [ebx + 0x47feda]
push ebp
lea eax, [esp + 0x124]
push eax
call _strcpy  ; call 0x457d96
add esp, 8
mov bl, byte [ebx + (_tool_table + -3)]  ; mov bl, byte [ebx + 0x47fedf]
jmp short loc_0042e9ea  ; jmp 0x42e9ea

loc_0042e9b9:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_player_receive_random_card  ; call 0x441e12
add esp, 4
mov ebx, eax
shl ebx, 3
mov esi, dword [ebx + (_card_table - 8)]  ; mov esi, dword [ebx + 0x47fdea]
push esi
lea eax, [esp + 0x124]
push eax
call _strcpy  ; call 0x457d96
add esp, 8
mov bl, byte [ebx + (_card_table - 3)]  ; mov bl, byte [ebx + 0x47fdef]

loc_0042e9ea:
and ebx, 0xff
lea eax, [esp + 0x120]
push eax
push ref_00464378  ; push 0x464378
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
push ebx
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call fcn_0044f230  ; call 0x44f230
add esp, 8

loc_0042ea2b:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne near loc_0042ed8d  ; jne 0x42ed8d
push 0
push 0
push 0xa
mov ebx, dword [_rich4_panel_mkf]  ; mov ebx, dword [0x48a05c]
push ebx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c308], eax  ; mov dword [0x48c308], eax
push 0
push 0
push 0xb
mov esi, dword [_rich4_panel_mkf]  ; mov esi, dword [0x48a05c]
push esi
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c30c], eax  ; mov dword [0x48c30c], eax
push 0
push 0
movsx edx, word [eax + 0xe]
push edx
movsx eax, word [eax + 0xc]
push eax
call fcn_00451a5a  ; call 0x451a5a
add esp, 0x10
mov dword [ref_0048c300], eax  ; mov dword [0x48c300], eax
push 0
push 0
mov eax, dword [ref_0048c30c]  ; mov eax, dword [0x48c30c]
movsx edx, word [eax + 0x1a]
push edx
movsx eax, word [eax + 0x18]
push eax
call fcn_00451a5a  ; call 0x451a5a
add esp, 0x10
mov dword [ref_0048c304], eax  ; mov dword [0x48c304], eax
push 0xf
push 0
push ref_0048c31c  ; push 0x48c31c
call _memset  ; call 0x456f60
add esp, 0xc
push 8
push 0
push ref_0048c2f8  ; push 0x48c2f8
call _memset  ; call 0x456f60
add esp, 0xc
push 0
push 3
push 0x101010
push 0xffffff
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 0x1e
push _rich4_remain_card_amount  ; push 0x499198
lea eax, [esp + 0x108]
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ebx, 0xa
sar edx, 0x1f
idiv ebx
lea ebp, [edx + 6]
xor edi, edi

loc_0042eb15:
cmp edi, ebp
jge near loc_0042ebfe  ; jge 0x42ebfe
xor ebx, ebx
mov dword [esp + 0x130], ebx
jmp short loc_0042eb37  ; jmp 0x42eb37

loc_0042eb28:
lea eax, [edx + 1]
mov dword [esp + 0x130], eax
cmp eax, 0x1e
jge short loc_0042eb61  ; jge 0x42eb61

loc_0042eb37:
xor esi, esi
mov edx, dword [esp + 0x130]

loc_0042eb40:
xor eax, eax
mov al, byte [esp + edx + 0x100]
cmp esi, eax
jge short loc_0042eb28  ; jge 0x42eb28
mov al, byte [esp + 0x130]
inc al
mov byte [esp + ebx + 0x80], al
inc ebx
inc esi
jmp short loc_0042eb40  ; jmp 0x42eb40

loc_0042eb61:
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv ebx
mov al, byte [esp + edx + 0x80]
mov byte [edi + ref_0048c31c], al  ; mov byte [edi + 0x48c31c], al
xor edx, edx
mov dl, al
push 2
mov ebx, edi
shl ebx, 2
sub ebx, edi
shl ebx, 3
dec byte [esp + edx + 0x103]
lea eax, [ebx + 0x53]
push eax
push 0x5a
mov ecx, dword [edx*8 + (_card_table - 8)]  ; mov ecx, dword [edx*8 + 0x47fdea]
push ecx
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x18
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
xor eax, eax
mov al, byte [edi + ref_0048c31c]  ; mov al, byte [edi + 0x48c31c]
mov al, byte [eax*8 + (_card_table - 3)]  ; mov al, byte [eax*8 + 0x47fdef]
and eax, 0xff
push eax
push ref_00464374  ; push 0x464374
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 1
add ebx, 0x4b
push ebx
push 0xc2
lea eax, [esp + 0xc]
push eax
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0x18
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc edi
jmp near loc_0042eb15  ; jmp 0x42eb15

loc_0042ebfe:
xor ecx, ecx
mov dword [esp + 0x130], ecx
xor esi, esi
jmp short loc_0042ec23  ; jmp 0x42ec23

loc_0042ec0b:
mov eax, dword [esp + 0x130]
inc eax
mov dword [esp + 0x130], eax
cmp eax, 8
jge near loc_0042ecbb  ; jge 0x42ecbb

loc_0042ec23:
mov eax, dword [esp + 0x130]
cmp byte [eax + _rich4_remain_tool_amount], 0  ; cmp byte [eax + 0x497320], 0
je short loc_0042ec0b  ; je 0x42ec0b
mov al, byte [esp + 0x130]
inc al
mov byte [esi + ref_0048c2f8], al  ; mov byte [esi + 0x48c2f8], al
push 2
mov edi, esi
shl edi, 2
sub edi, esi
shl edi, 4
lea eax, [edi + 0x5c]
push eax
push 0x5a
mov ebx, dword [esp + 0x13c]
mov ebp, dword [ebx*8 + (_tool_table + 0)]  ; mov ebp, dword [ebx*8 + 0x47fee2]
push ebp
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xd8
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
xor eax, eax
mov al, byte [ebx*8 + (_tool_table + 5)]  ; mov al, byte [ebx*8 + 0x47fee7]
push eax
push ref_00464374  ; push 0x464374
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 1
add edi, 0x54
push edi
push 0xc2
lea eax, [esp + 0xc]
push eax
mov eax, dword [ref_0048c308]  ; mov eax, dword [0x48c308]
add eax, 0xd8
push eax
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
inc esi
jmp near loc_0042ec0b  ; jmp 0x42ec0b

loc_0042ecbb:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
mov ebx, dword [ref_0048c30c]  ; mov ebx, dword [0x48c30c]
push ebx
mov esi, dword [ref_0048c300]  ; mov esi, dword [0x48c300]
push esi
call fcn_00441b0a  ; call 0x441b0a
add esp, 0xc
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
push edi
mov ebp, dword [ref_0048c30c]  ; mov ebp, dword [0x48c30c]
push ebp
mov eax, dword [ref_0048c304]  ; mov eax, dword [0x48c304]
push eax
call fcn_00447c6e  ; call 0x447c6e
add esp, 0xc
push 6
call fcn_004549cf  ; call 0x4549cf
add esp, 4
push 0
push fcn_0042d37f  ; push 0x42d37f
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
mov ebp, eax
call fcn_00454bcc  ; call 0x454bcc
mov edx, dword [ref_0048c308]  ; mov edx, dword [0x48c308]
push edx
call _libc_free  ; call 0x456e11
add esp, 4
mov ecx, dword [ref_0048c30c]  ; mov ecx, dword [0x48c30c]
push ecx
call _libc_free  ; call 0x456e11
add esp, 4
mov ebx, dword [ref_0048c300]  ; mov ebx, dword [0x48c300]
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
mov esi, dword [ref_0048c304]  ; mov esi, dword [0x48c304]
push esi
call _libc_free  ; call 0x456e11
add esp, 4

loc_0042ed50:
mov ebx, dword [esp + 0x148]
cmp ebx, 0x1770
jle short loc_0042ed82  ; jle 0x42ed82
cmp ebx, 0x1f40
jge short loc_0042ed82  ; jge 0x42ed82
lea edx, [ebx - 0x1770]
imul edx, edx, 0x34
mov eax, dword [_rich4_on_map_commercial_ptr]  ; mov eax, dword [0x498e7c]
add dword [edx + eax + 0x28], ebp
mov eax, dword [_rich4_on_map_commercial_ptr]  ; mov eax, dword [0x498e7c]
add dword [edx + eax + 0x2c], ebp

loc_0042ed82:
add esp, 0x134
pop ebp
pop edi
pop esi
pop ebx
ret

loc_0042ed8d:
xor ebp, ebp
mov dword [esp + 0x130], ebp
jmp short loc_0042edac  ; jmp 0x42edac

loc_0042ed98:
mov edi, dword [esp + 0x130]
inc edi
mov dword [esp + 0x130], edi
cmp edi, 0xf
jge short loc_0042ee1d  ; jge 0x42ee1d

loc_0042edac:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
mov edi, dword [esp + 0x130]
add eax, edi
cmp byte [eax + _rich4_player_cards], 0  ; cmp byte [eax + 0x499120], 0
je short loc_0042ee1d  ; je 0x42ee1d
xor ebx, ebx
mov bl, byte [edi*8 + (_card_table + 7)]  ; mov bl, byte [edi*8 + 0x47fdf9]
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul edx, ecx, 0x68
mov dl, byte [edx + (_rich4_all_players_state + 23)]  ; mov dl, byte [edx + 0x496b7f]
and edx, 0xff
sub ebx, edx
cmp ebx, 2
jne short loc_0042ed98  ; jne 0x42ed98
mov al, byte [eax + _rich4_player_cards]  ; mov al, byte [eax + 0x499120]
and eax, 0xff
push eax
push ecx
call fcn_0042d145  ; call 0x42d145
add esp, 8
add ebp, eax
lea esi, [edi - 1]
mov dword [esp + 0x130], esi
jmp near loc_0042ed98  ; jmp 0x42ed98

loc_0042ee1d:
xor edx, edx
mov dword [esp + 0x130], edx
jmp short loc_0042ee3c  ; jmp 0x42ee3c

loc_0042ee28:
mov eax, dword [esp + 0x130]
inc eax
mov dword [esp + 0x130], eax
cmp eax, 0xd
jge short loc_0042eea4  ; jge 0x42eea4

loc_0042ee3c:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
mov ecx, dword [esp + 0x130]
add eax, ecx
cmp byte [eax + _rich4_player_tool_amount], 0  ; cmp byte [eax + 0x49915c], 0
je short loc_0042ee28  ; je 0x42ee28
xor ebx, ebx
mov bl, byte [ecx*8 + (_tool_table + 7)]  ; mov bl, byte [ecx*8 + 0x47fee9]
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
imul edx, esi, 0x68
mov dl, byte [edx + (_rich4_all_players_state + 23)]  ; mov dl, byte [edx + 0x496b7f]
and edx, 0xff
sub ebx, edx
cmp ebx, 2
jne short loc_0042ee28  ; jne 0x42ee28
mov al, byte [eax + _rich4_player_tool_amount]  ; mov al, byte [eax + 0x49915c]
and eax, 0xff
push eax
lea eax, [ecx + 1]
push eax
push esi
call fcn_0042d1b2  ; call 0x42d1b2
add esp, 0xc
add ebp, eax
jmp short loc_0042ee28  ; jmp 0x42ee28

loc_0042eea4:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp word [eax + (_rich4_all_players_state + 48)], 0x64  ; cmp word [eax + 0x496b98], 0x64
jae near loc_0042f025  ; jae 0x42f025
xor ebx, ebx
mov dword [esp + 0x130], ebx
mov esi, 0x2710
xor edi, edi
jmp short loc_0042eedf  ; jmp 0x42eedf

loc_0042eecb:
mov ecx, dword [esp + 0x130]
inc ecx
mov dword [esp + 0x130], ecx
cmp ecx, 0xf
jge short loc_0042ef1e  ; jge 0x42ef1e

loc_0042eedf:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
add eax, dword [esp + 0x130]
mov bh, byte [eax + _rich4_player_cards]  ; mov bh, byte [eax + 0x499120]
test bh, bh
je short loc_0042eecb  ; je 0x42eecb
xor edx, edx
mov dl, bh
mov al, byte [edx*8 + (_card_table - 3)]  ; mov al, byte [edx*8 + 0x47fdef]
and eax, 0xff
cmp eax, esi
jge short loc_0042eecb  ; jge 0x42eecb
mov esi, eax
mov edi, edx
jmp short loc_0042eecb  ; jmp 0x42eecb

loc_0042ef1e:
test edi, edi
je short loc_0042ef34  ; je 0x42ef34
push edi
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call fcn_0042d145  ; call 0x42d145
add esp, 8
add ebp, eax

loc_0042ef34:
xor edi, edi
mov dword [esp + 0x130], edi
jmp short loc_0042ef53  ; jmp 0x42ef53

loc_0042ef3f:
mov ebx, dword [esp + 0x130]
inc ebx
mov dword [esp + 0x130], ebx
cmp ebx, 0xd
jge short loc_0042ef9b  ; jge 0x42ef9b

loc_0042ef53:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
mov edx, dword [esp + 0x130]
add eax, edx
mov cl, byte [eax + _rich4_player_tool_amount]  ; mov cl, byte [eax + 0x49915c]
cmp cl, 1
jbe short loc_0042ef3f  ; jbe 0x42ef3f
mov al, cl
and eax, 0xff
dec eax
push eax
lea eax, [edx + 1]
push eax
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0042d1b2  ; call 0x42d1b2
add esp, 0xc
add ebp, eax
jmp short loc_0042ef3f  ; jmp 0x42ef3f

loc_0042ef9b:
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
imul eax, edi, 0x68
mov al, byte [eax + (_rich4_all_players_state + 17)]  ; mov al, byte [eax + 0x496b79]
and al, 3
cmp al, 1
jne short loc_0042efdd  ; jne 0x42efdd
mov eax, edi
shl eax, 2
add eax, edi
mov edx, eax
shl eax, 2
sub eax, edx
mov ch, byte [eax + (_rich4_player_tool_amount + 4)]  ; mov ch, byte [eax + 0x499160]
test ch, ch
je short loc_0042efdd  ; je 0x42efdd
mov al, ch
and eax, 0xff
push eax
push 5
push edi
call fcn_0042d1b2  ; call 0x42d1b2
add esp, 0xc
add ebp, eax

loc_0042efdd:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 17)]  ; mov al, byte [eax + 0x496b79]
and al, 3
cmp al, 2
jne short loc_0042f025  ; jne 0x42f025
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
mov dl, byte [eax + (_rich4_player_tool_amount + 5)]  ; mov dl, byte [eax + 0x499161]
test dl, dl
je short loc_0042f025  ; je 0x42f025
mov al, dl
and eax, 0xff
push eax
push 6
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0042d1b2  ; call 0x42d1b2
add esp, 0xc
add ebp, eax

loc_0042f025:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov bx, word [eax + (_rich4_all_players_state + 48)]  ; mov bx, word [eax + 0x496b98]
test bx, bx
je near loc_0042ed50  ; je 0x42ed50
mov eax, ebx
and eax, 0xffff
mov edi, eax
sar edi, 1
sub eax, edi
mov dword [esp + 0x12c], eax
xor esi, esi
mov dword [esp + 0x130], esi
xor ebx, ebx
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
jmp short loc_0042f077  ; jmp 0x42f077

loc_0042f063:
mov esi, dword [esp + 0x130]
inc esi
mov dword [esp + 0x130], esi
cmp esi, 0x1e
jge short loc_0042f0cc  ; jge 0x42f0cc

loc_0042f077:
xor esi, esi

loc_0042f079:
xor eax, eax
mov edx, dword [esp + 0x130]
mov al, byte [edx + _rich4_remain_card_amount]  ; mov al, byte [edx + 0x499198]
cmp esi, eax
jge short loc_0042f063  ; jge 0x42f063
mov eax, edx
shl eax, 3
xor edx, edx
mov dl, byte [eax + (_card_table + 5)]  ; mov dl, byte [eax + 0x47fdf7]
cmp edi, edx
jl short loc_0042f063  ; jl 0x42f063
xor edx, edx
mov dl, byte [eax + (_card_table + 7)]  ; mov dl, byte [eax + 0x47fdf9]
imul eax, ecx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 23)]  ; mov al, byte [eax + 0x496b7f]
and eax, 0xff
sub edx, eax
cmp edx, 2
je short loc_0042f063  ; je 0x42f063
mov al, byte [esp + 0x130]
mov byte [esp + ebx + 0x80], al
inc ebx
inc esi
jmp short loc_0042f079  ; jmp 0x42f079

loc_0042f0cc:
test ebx, ebx
je near loc_0042f16c  ; je 0x42f16c
push _rich4_compare_card_price_gt  ; push 0x42d0ef
push 1
push ebx
lea eax, [esp + 0x8c]
push eax
call _qsort  ; call 0x457e6c
add esp, 0x10
xor edx, edx
mov dword [esp + 0x130], edx

loc_0042f0f5:
cmp ebx, dword [esp + 0x130]
jle short loc_0042f16c  ; jle 0x42f16c
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
push esi
call _rich4_player_card_num  ; call 0x441262
add esp, 4
cmp eax, 0xf
je short loc_0042f16c  ; je 0x42f16c
xor eax, eax
mov edx, dword [esp + 0x130]
mov al, byte [esp + edx + 0x80]
mov dl, byte [eax*8 + (_card_table + 5)]  ; mov dl, byte [eax*8 + 0x47fdf7]
and edx, 0xff
cmp edi, edx
jl short loc_0042f163  ; jl 0x42f163
inc eax
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call _rich4_player_buy_card  ; call 0x42d237
add esp, 8
add ebp, eax
xor eax, eax
mov edx, dword [esp + 0x130]
mov al, byte [esp + edx + 0x80]
mov al, byte [eax*8 + (_card_table + 5)]  ; mov al, byte [eax*8 + 0x47fdf7]
and eax, 0xff
sub edi, eax

loc_0042f163:
inc dword [esp + 0x130]
jmp short loc_0042f0f5  ; jmp 0x42f0f5

loc_0042f16c:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul eax, ecx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 17)]  ; mov al, byte [eax + 0x496b79]
and al, 3
cmp al, 1
je short loc_0042f1cc  ; je 0x42f1cc
mov eax, ecx
shl eax, 2
add eax, ecx
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [eax + (_rich4_player_tool_amount + 4)], 0  ; cmp byte [eax + 0x499160], 0
jne short loc_0042f1cc  ; jne 0x42f1cc
xor eax, eax
mov al, byte [(_tool_table + 37)]  ; mov al, byte [0x47ff07]
cmp eax, dword [esp + 0x12c]
jge short loc_0042f1cc  ; jge 0x42f1cc
cmp byte [(_rich4_remain_tool_amount + 4)], 0  ; cmp byte [0x497324], 0
je short loc_0042f1cc  ; je 0x42f1cc
push 5
push ecx
call _rich4_player_buy_tool  ; call 0x42d272
add esp, 8
add ebp, eax
xor eax, eax
mov al, byte [(_tool_table + 37)]  ; mov al, byte [0x47ff07]
sub dword [esp + 0x12c], eax

loc_0042f1cc:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 17)]  ; mov al, byte [eax + 0x496b79]
and al, 3
cmp al, 2
je short loc_0042f232  ; je 0x42f232
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [eax + (_rich4_player_tool_amount + 5)], 0  ; cmp byte [eax + 0x499161], 0
jne short loc_0042f232  ; jne 0x42f232
xor eax, eax
mov al, byte [(_tool_table + 45)]  ; mov al, byte [0x47ff0f]
cmp eax, dword [esp + 0x12c]
jge short loc_0042f232  ; jge 0x42f232
cmp byte [(_rich4_remain_tool_amount + 5)], 0  ; cmp byte [0x497325], 0
je short loc_0042f232  ; je 0x42f232
push 6
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_player_buy_tool  ; call 0x42d272
add esp, 8
add ebp, eax
xor eax, eax
mov al, byte [(_tool_table + 45)]  ; mov al, byte [0x47ff0f]
sub dword [esp + 0x12c], eax

loc_0042f232:
xor edi, edi
mov dword [esp + 0x130], edi
jmp short loc_0042f255  ; jmp 0x42f255

loc_0042f23d:
mov eax, dword [esp + 0x130]
inc eax
mov dword [esp + 0x130], eax
cmp eax, 6
jge near loc_0042ed50  ; jge 0x42ed50

loc_0042f255:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
mov edx, eax
xor eax, eax
mov ebx, dword [esp + 0x130]
mov al, byte [ebx + ref_004755f0]  ; mov al, byte [ebx + 0x4755f0]
cmp byte [edx + eax + _rich4_player_tool_amount], 9  ; cmp byte [edx + eax + 0x49915c], 9
jae short loc_0042f23d  ; jae 0x42f23d
mov edx, eax
shl edx, 3
movzx esi, byte [edx + (_tool_table + 7)]  ; movzx esi, byte [edx + 0x47fee9]
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul ebx, ecx, 0x68
mov bl, byte [ebx + (_rich4_all_players_state + 23)]  ; mov bl, byte [ebx + 0x496b7f]
and ebx, 0xff
sub esi, ebx
cmp esi, 2
je short loc_0042f23d  ; je 0x42f23d
mov dl, byte [edx + (_tool_table + 5)]  ; mov dl, byte [edx + 0x47fee7]
and edx, 0xff
mov ebx, dword [esp + 0x12c]
cmp edx, ebx
jg near loc_0042f23d  ; jg 0x42f23d
cmp byte [eax + _rich4_remain_tool_amount], 0  ; cmp byte [eax + 0x497320], 0
je near loc_0042f23d  ; je 0x42f23d
inc eax
push eax
push ecx
call _rich4_player_buy_tool  ; call 0x42d272
add esp, 8
add ebp, eax
xor eax, eax
mov edx, dword [esp + 0x130]
mov al, byte [edx + ref_004755f0]  ; mov al, byte [edx + 0x4755f0]
mov al, byte [eax*8 + (_tool_table + 5)]  ; mov al, byte [eax*8 + 0x47fee7]
and eax, 0xff
mov edi, ebx
sub edi, eax
mov dword [esp + 0x12c], edi
jmp near loc_0042f23d  ; jmp 0x42f23d

section .data

ref_0046423c:
dd 0x30303023
dd 0xa4b3a630
dd 0xa7f2bbb0
dd 0x0ae0afda
dd 0x41a7b0ac
dd 0xc8b041aa
dd 0xdcb6baaa
db 0xa1
db 0x48
db 0x00

ref_0046425b:
db 0x23
dd 0x31303030
dd 0x44acd0bd
dd 0x41a7efbf
dd 0x6ead51b7
dd 0xb449a70a
dd 0xa5baaaab
dd 0xa1f9a464
db 0x43
db 0x00

ref_0046427a:
db 0x23
db 0x30
dd 0xa9323030
dd 0xa170baea
dd 0x41a70a49
dd 0x49c2baaa
dd 0xa3a4c6bc
dd 0x49a1aca8
db 0x00

ref_00464295:
db 0x23
db 0x30
db 0x30
dd 0xefb93330
dd 0x5fb0a3a4
dd 0xb10a49a1
dd 0xa5baaa7a
dd 0xc4f9a464
dd 0xba77a4e6
dd 0x0049a1a1

ref_004642b4:
dd 0x30303023
dd 0xaa77c534
dd 0xa655a4ef
dd 0xa841a6b8
dd 0x0049a1d3

ref_004642c8:
dd 0x30303023
dd 0xaa77c535
dd 0xc1faa5ef
dd 0x44b90a7b
dd 0xb1a9e3a8
db 0xa1
db 0x49
db 0x00

ref_004642df:
db 0x23
dd 0x36303030
dd 0x6ead7ab1
dd 0xabb449a7
dd 0xbbb0a40a
dd 0xa844b9f2
dd 0x0048a1e3

ref_004642f8:
dd 0x30303023
dd 0xa4efb937
dd 0xa15fb0a3
dd 0x7ab10a41
dd 0x49c2baaa
dd 0xa3a4e9a8
dd 0x49a1f7b0
db 0x00

ref_00464315:
db 0x23
db 0x30
db 0x30
dd 0xdcab3830
dd 0x70baeaa9
dd 0x7ab149a1
dd 0xb90abaaa
dd 0xc4e3a844
dd 0xba77a4e6
dd 0x0049a1a1

ref_00464334:
dd 0x31303023
dd 0xc1c2c130
dd 0xc566b4c2
dd 0x0049a155

ref_00464344:
dd 0x30303023
dd 0xad6fb339
dd 0xa844b9d3
dd 0xad7cb7e3
dd 0x7ea40afb
dd 0x49a7e0af
dd 0x49a1abb4
dd 0x00000000

ref_00464364:
dd 0xcccccccd
dd 0x3feccccc

ref_0046436c:
dd 0xcccccccd
dd 0x3feccccc

ref_00464374:
db '$%d',0x00

ref_00464378:
dd 0xefaa77c5
dd 0xc6a8b3b8
dd 0xfaa5f8aa
dd 0x0a0a7bc1
dd 0x7ab165b0
dd 0x49a17325
dd 0x00000000


ref_004755b8:
dd 0x05070807

ref_004755bc:
dd 0x17151615

ref_004755c0:
dd ref_0046423c

ref_004755c4:
dd ref_0046425b

ref_004755c8:
dd ref_0046427a

ref_004755cc:
dd ref_00464295

ref_004755d0:
dd ref_004642b4
dd 0x00000000
dd ref_004642c8
dd ref_004642df
dd ref_004642f8
dd ref_00464315
dd ref_00464334
dd ref_00464344

ref_004755f0:
dd 0x00060107
dd 0x00000203

section .bss

ref_0048c2f8:
resb 8

ref_0048c300:
resb 4

ref_0048c304:
resb 4

ref_0048c308:
resb 4

ref_0048c30c:
resb 4

ref_0048c310:
resb 4

ref_0048c314:
resb 4

ref_0048c318:
resb 4

ref_0048c31c:
resb 15

ref_0048c32b:
resb 4

ref_0048c32f:
resb 1

ref_0048c330:
resb 3

ref_0048c333:
resb 4

ref_0048c337:
resb 4

ref_0048c33b:
resb 4

ref_0048c33f:
resb 4

ref_0048c343:
resb 4

ref_0048c347:
resb 1

ref_0048c348:
resb 1

ref_0048c349:
resb 1

ref_0048c34a:
resb 2
