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
extern _global_rich4_cfg
extern _libc_free
extern _libc_rand
extern _libc_sprintf
extern _memset
extern _rich4_num_players
extern _read_mkf
extern _rich4_create_font
extern _rich4_draw_text
extern _strcmp
extern fcn_00402250
extern fcn_0040235d
extern fcn_00402460
extern fcn_0040a4e1
extern fcn_0041d2c6
extern fcn_0041d476
extern fcn_0044ec30
extern fcn_0044ecb6
extern fcn_0044ee18
extern fcn_0044ef3b
extern fcn_00451a5a
extern fcn_00451a97
extern fcn_004521cb
extern _rich4_rect_union
extern fcn_004528b9
extern fcn_00454176
extern fcn_00454240
extern fcn_004542ce
extern fcn_004549cf
extern fcn_00454bcc
extern fcn_004563f5
extern fcn_00456418
extern fcn_0045643d
extern fcn_00456495
extern fcn_0045663e
extern _strcpy
extern __round_toward_zero
extern ref_00465020
extern ref_00465028
extern ref_0046502c
extern ref_00465030
extern ref_00465034
extern ref_00465038
extern ref_00465050
extern ref_00465055
extern ref_0046505e
extern ref_00465063
extern ref_0046507d
extern ref_00465098
extern ref_004650a6
extern ref_004650b0
extern ref_0046caec
extern ref_0046caf4
extern ref_0046cb01
extern ref_004751f0
extern _rich4_panel_mkf
extern ref_0048a068
extern ref_0048a08c
extern _rich4_ddraw_primary_sf_ptr
extern _rich4_ddraw_offscreen_sf_ptr
extern _rich4_land_info_ptr
extern _rich4_facility_info_ptr
extern _rich4_num_facilities
extern _rich4_num_lands
extern _rich4_price_index
extern ref_00499110
extern ref_004991b6
extern ref_004991b8

global _rich4_ui_auction_entry

section .text

fcn_00439f0d:
push ebx
push esi
push edi
push ebp
sub esp, 0x1c
mov ebx, dword [esp + 0x34]
xor edi, edi
xor ebp, ebp
call _libc_rand  ; call 0x456f2d
mov dword [esp + 0x18], eax
fild dword [esp + 0x18]
fdiv dword [ref_00465014]  ; fdiv dword [0x465014]
fmul qword [ref_00465018]  ; fmul qword [0x465018]
fadd qword [ref_00465020]  ; fadd qword [0x465020]
fstp dword [esp + 8]
cmp ebx, 0x7d0
jle near loc_0043a054  ; jle 0x43a054
cmp ebx, 0xfa0
jge near loc_0043a054  ; jge 0x43a054
sub ebx, 0x7d0
imul ebx, ebx, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
lea eax, [esi + ebx]
mov dword [esp + 0x14], eax
mov ebx, 1

loc_00439f72:
add esi, 0x34
cmp ebx, dword [_rich4_num_lands]  ; cmp ebx, dword [0x498e98]
jg short loc_00439fab  ; jg 0x439fab
xor eax, eax
mov al, byte [esi + 0x19]
cmp eax, dword [esp + 0x30]
jne short loc_00439fa1  ; jne 0x439fa1
mov eax, dword [esp + 0x14]
add eax, 4
push eax
lea eax, [esi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_00439fa1  ; jne 0x439fa1
inc ebp

loc_00439fa1:
cmp byte [esi + 0x19], 0
jne short loc_00439fa8  ; jne 0x439fa8
inc edi

loc_00439fa8:
inc ebx
jmp short loc_00439f72  ; jmp 0x439f72

loc_00439fab:
mov dword [esp + 0x18], edi
fild dword [esp + 0x18]
fild dword [_rich4_num_lands]  ; fild dword [0x498e98]
fdivp st1  ; fdivp st(1)
fmul dword [ref_00465028]  ; fmul dword [0x465028]
fsubr dword [ref_0046502c]  ; fsubr dword [0x46502c]
fstp dword [esp]
xor eax, eax
mov ebx, dword [esp + 0x14]
mov al, byte [ebx + 0x1a]
sar eax, 1
inc eax
add eax, ebp
imul eax, dword [ref_0048c488]  ; imul eax, dword [0x48c488]
mov ecx, dword [_rich4_price_index]  ; mov ecx, dword [0x4990e8]
imul eax, ecx
mov dword [esp + 0x18], eax
fild dword [esp + 0x18]
fmul dword [esp]
fmul dword [esp + 8]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0x10]
xor eax, eax
mov ax, word [ebx + 0x1c]
imul eax, ecx
mov dword [esp + 0x18], eax
fild dword [esp + 0x18]
fstp dword [esp + 4]
call _libc_rand  ; call 0x456f2d
mov dword [esp + 0x18], eax
fild dword [esp + 0x18]
fmul dword [ref_00465030]  ; fmul dword [0x465030]
fadd dword [ref_00465034]  ; fadd dword [0x465034]
fmul dword [esp + 4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0xc]
mov eax, dword [esp + 0x10]
mov esi, dword [esp + 0xc]
cmp eax, esi
jle near loc_0043a131  ; jle 0x43a131
mov dword [esp + 0x10], esi
jmp near loc_0043a131  ; jmp 0x43a131

loc_0043a054:
lea eax, [ebx - 0xfa0]
shl eax, 3
mov ebx, eax
shl eax, 3
sub eax, ebx
mov ebp, dword [_rich4_facility_info_ptr]  ; mov ebp, dword [0x498e88]
add ebp, eax
mov ebx, 1

loc_0043a071:
cmp ebx, dword [_rich4_num_facilities]  ; cmp ebx, dword [0x498e8c]
jg short loc_0043a097  ; jg 0x43a097
mov eax, ebx
shl eax, 3
mov esi, eax
shl eax, 3
sub eax, esi
mov esi, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
cmp byte [esi + eax + 0x19], 0
jne short loc_0043a094  ; jne 0x43a094
inc edi

loc_0043a094:
inc ebx
jmp short loc_0043a071  ; jmp 0x43a071

loc_0043a097:
mov dword [esp + 0x18], edi
fild dword [esp + 0x18]
fild dword [_rich4_num_facilities]  ; fild dword [0x498e8c]
fdivp st1  ; fdivp st(1)
fmul dword [ref_00465028]  ; fmul dword [0x465028]
fsubr dword [ref_0046502c]  ; fsubr dword [0x46502c]
fstp dword [esp]
xor eax, eax
mov al, byte [ebp + 0x1a]
sar eax, 1
inc eax
imul eax, dword [ref_0048c488]  ; imul eax, dword [0x48c488]
mov ebx, dword [_rich4_price_index]  ; mov ebx, dword [0x4990e8]
imul eax, ebx
mov dword [esp + 0x18], eax
fild dword [esp + 0x18]
fmul dword [esp]
fmul dword [esp + 8]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0x10]
xor eax, eax
mov ax, word [ebp + 0x22]
imul eax, ebx
mov dword [esp + 0x18], eax
fild dword [esp + 0x18]
fstp dword [esp + 4]
call _libc_rand  ; call 0x456f2d
mov dword [esp + 0x18], eax
fild dword [esp + 0x18]
fmul dword [ref_00465030]  ; fmul dword [0x465030]
fadd dword [ref_00465034]  ; fadd dword [0x465034]
fmul dword [esp + 4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0xc]
mov eax, dword [esp + 0x10]
mov edi, dword [esp + 0xc]
cmp eax, edi
jle short loc_0043a131  ; jle 0x43a131
mov dword [esp + 0x10], edi

loc_0043a131:
mov ebx, dword [esp + 0x30]
dec ebx
imul ebx, ebx, 0x68
mov eax, dword [ebx + (_rich4_all_players_state + 28)]  ; mov eax, dword [ebx + 0x496b84]
cmp eax, dword [esp + 0x10]
jge short loc_0043a149  ; jge 0x43a149
mov dword [esp + 0x10], eax

loc_0043a149:
mov eax, dword [esp + 0x10]
add esp, 0x1c
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0043a155:
push ebx
push esi
push edi
push ebp
sub esp, 0x20
mov ebx, dword [esp + 0x3c]
mov eax, dword [esp + 0x38]
shl eax, 3
mov esi, eax
shl eax, 4
sub eax, esi
lea esi, [eax + 0x50]
mov edx, dword [esp + 0x38]
mov eax, edx
shl eax, 2
add eax, edx
mov ax, word [eax*4 + ref_0048c434]  ; mov ax, word [eax*4 + 0x48c434]
and eax, 0xffff
dec eax
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
lea edx, [eax + 0x4e]
mov ecx, dword [ref_0048c49c]  ; mov ecx, dword [0x48c49c]
mov edi, edx
shl edi, 2
sub edi, edx
shl edi, 2
lea eax, [ecx + edi]
movsx edx, word [eax + 0x10]
mov ecx, 0x24e
sub ecx, edx
mov dword [esp], ecx
movsx edx, word [eax + 0x12]
mov ecx, esi
sub ecx, edx
mov dword [esp + 4], ecx
movsx edx, word [eax + 0xc]
mov ecx, dword [esp]
add ecx, edx
mov dword [esp + 8], ecx
movsx eax, word [eax + 0xe]
mov edx, dword [esp + 4]
add edx, eax
mov dword [esp + 0xc], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
cmp dword [esp + 0x40], 0
jne short loc_0043a234  ; jne 0x43a234
mov eax, dword [esp + 0xc]
mov edi, dword [esp + 4]
sub eax, edi
push eax
mov eax, dword [esp + 0xc]
mov ebp, dword [esp + 4]
sub eax, ebp
push eax
push edi
push ebp
push edi
push ebp
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
jmp short loc_0043a254  ; jmp 0x43a254

loc_0043a234:
push esi
push 0x24e
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
add edi, eax
push edi
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10

loc_0043a254:
test ebx, ebx
je short loc_0043a2b2  ; je 0x43a2b2
push esi
push 0x24e
push 0
push ebx
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045663e  ; call 0x45663e
add esp, 0x14
movsx eax, word [ebx + 0x10]
mov edx, 0x24e
sub edx, eax
mov dword [esp + 0x10], edx
movsx eax, word [ebx + 0x12]
sub esi, eax
mov dword [esp + 0x14], esi
movsx eax, word [ebx + 0xc]
add edx, eax
mov dword [esp + 0x18], edx
movsx eax, word [ebx + 0xe]
lea edx, [esi + eax]
mov dword [esp + 0x1c], edx
mov eax, esp
push eax
lea eax, [esp + 0x14]
push eax
lea eax, [esp + 8]
push eax
call _rich4_rect_union  ; call 0x452808
add esp, 0xc

loc_0043a2b2:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 4]
push eax
mov edx, dword [esp + 0x3c]
push edx
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
add esp, 0x20
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0043a2dd:
push ebx
push esi
push edi
push ebp
sub esp, 0xe8
mov ebp, dword [esp + 0xfc]
mov eax, dword [esp + 0x100]
mov ebx, dword [esp + 0x104]
cmp eax, 0x202
jb short loc_0043a343  ; jb 0x43a343
jbe near loc_0043bc59  ; jbe 0x43bc59
cmp eax, 0x401
jb short loc_0043a333  ; jb 0x43a333
jbe short loc_0043a365  ; jbe 0x43a365
cmp eax, 0x405
jb near loc_0043bdb9  ; jb 0x43bdb9
jbe near loc_0043a3e6  ; jbe 0x43a3e6
cmp eax, 0x407
je near loc_0043a3fc  ; je 0x43a3fc
jmp near loc_0043bdb9  ; jmp 0x43bdb9

loc_0043a333:
cmp eax, 0x203

loc_0043a338:
je near loc_0043bb25  ; je 0x43bb25
jmp near loc_0043bdb9  ; jmp 0x43bdb9

loc_0043a343:
cmp eax, 0x113
jb short loc_0043a357  ; jb 0x43a357
jbe near loc_0043a6d5  ; jbe 0x43a6d5
cmp eax, 0x201
jmp short loc_0043a338  ; jmp 0x43a338

loc_0043a357:
cmp eax, 0xf
je near loc_0043bd48  ; je 0x43bd48
jmp near loc_0043bdb9  ; jmp 0x43bdb9

loc_0043a365:
mov al, byte [esp + 0x108]
mov byte [ref_0048c4b1], al  ; mov byte [0x48c4b1], al
xor dl, dl
mov byte [ref_0048c4ac], dl  ; mov byte [0x48c4ac], dl
mov byte [ref_0048c4ad], dl  ; mov byte [0x48c4ad], dl
mov byte [ref_0048c4ae], dl  ; mov byte [0x48c4ae], dl
mov byte [ref_0048c4af], dl  ; mov byte [0x48c4af], dl
mov byte [ref_0048c4b0], dl  ; mov byte [0x48c4b0], dl
xor ecx, ecx
mov dword [ref_0048c4a4], ecx  ; mov dword [0x48c4a4], ecx
mov dword [ref_0048c4a8], 0xffffffff  ; mov dword [0x48c4a8], 0xffffffff
push ecx
push 0x64
mov esi, dword [_callbackSize]  ; mov esi, dword [0x46cad8]
push esi
push ebp
call dword [cs:__imp__SetTimer@16]  ; ucall: call dword cs:[0x462324]
mov dword [ref_0048c4a0], eax  ; mov dword [0x48c4a0], eax
push 0
push 0
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
push 0
push 0x405
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]

loc_0043a3d7:
xor eax, eax

loc_0043a3d9:
add esp, 0xe8
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

loc_0043a3e6:
push ref_00465038  ; push 0x465038
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
mov byte [ref_0048c4ac], 1  ; mov byte [0x48c4ac], 1
jmp short loc_0043a3d7  ; jmp 0x43a3d7

loc_0043a3fc:
push 0
push ref_00475bc2  ; push 0x475bc2
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
test ebx, ebx
jbe short loc_0043a426  ; jbe 0x43a426
cmp ebx, 6
je short loc_0043a43a  ; je 0x43a43a
jmp short loc_0043a478  ; jmp 0x43a478

loc_0043a426:
mov word [eax + ref_0048c436], 1  ; mov word [eax + 0x48c436], 1
or word [ref_0048c4a4], 0x110  ; or word [0x48c4a4], 0x110
jmp short loc_0043a3d7  ; jmp 0x43a3d7

loc_0043a43a:
push 0
mov edx, dword [eax + ref_0048c440]  ; mov edx, dword [eax + 0x48c440]
push edx
mov ecx, dword [ref_0048c4a4]  ; mov ecx, dword [0x48c4a4]
push ecx
push ebp
call fcn_0043a155  ; call 0x43a155
add esp, 0x10
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
mov eax, edx
shl eax, 2
add eax, edx
xor edx, edx
mov word [eax*4 + ref_0048c434], dx  ; mov word [eax*4 + 0x48c434], dx
or word [ref_0048c4a4], 0x120  ; or word [0x48c4a4], 0x120
jmp near loc_0043a3d7  ; jmp 0x43a3d7

loc_0043a478:
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
mov eax, edx
shl eax, 2
add eax, edx
mov ax, word [eax*4 + ref_0048c434]  ; mov ax, word [eax*4 + 0x48c434]
and eax, 0xffff
dec eax
imul edx, eax, 0x68
mov eax, dword [ref_0048c488]  ; mov eax, dword [0x48c488]
add eax, dword [ebx*4 + ref_00475ba2]  ; add eax, dword [ebx*4 + 0x475ba2]
cmp eax, dword [edx + (_rich4_all_players_state + 28)]  ; cmp eax, dword [edx + 0x496b84]
jg near loc_0043a3d7  ; jg 0x43a3d7
mov dword [ref_0048c488], eax  ; mov dword [0x48c488], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0
push 3
push 0x101010
push 0xf0d020
push 0x12
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov dword [esp + 0xd0], 0x208
mov dword [esp + 0xd8], 0x26c
xor ebx, ebx
mov esi, 0x50
jmp short loc_0043a50d  ; jmp 0x43a50d

loc_0043a500:
add esi, 0x78
inc ebx
cmp ebx, 4
jge near loc_0043a5eb  ; jge 0x43a5eb

loc_0043a50d:
mov eax, ebx
shl eax, 2
add eax, ebx
cmp word [eax*4 + ref_0048c434], 0  ; cmp word [eax*4 + 0x48c434], 0
je short loc_0043a500  ; je 0x43a500
mov eax, dword [ref_0048c4a8]  ; mov eax, dword [0x48c4a8]
and eax, 3
cmp eax, ebx
jne short loc_0043a580  ; jne 0x43a580
lea eax, [esi + 0x19]
mov dword [esp + 0xd4], eax
lea eax, [esi + 0x2d]
mov dword [esp + 0xdc], eax
push 0x14
push 0x64
mov edi, dword [esp + 0xdc]
push edi
push 0x208
push edi
push 0x208
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043a580:
mov eax, dword [ref_0048c4a4]  ; mov eax, dword [0x48c4a4]
and eax, 3
cmp eax, ebx
jne near loc_0043a500  ; jne 0x43a500
lea edi, [esi + 0x19]
mov dword [esp + 0xd4], edi
lea eax, [esi + 0x2d]
mov dword [esp + 0xdc], eax
mov ecx, dword [ref_0048c488]  ; mov ecx, dword [0x48c488]
push ecx
push ref_00465050  ; push 0x465050
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 1
push edi
push 0x26c
lea eax, [esp + 0xc]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0043a500  ; jmp 0x43a500

loc_0043a5eb:
mov ebx, 0xb4
mov dword [esp + 0xd0], ebx
mov esi, 0x104
mov dword [esp + 0xd4], esi
mov edi, 0x118
mov dword [esp + 0xd8], edi
mov dword [esp + 0xdc], edi
push 0x14
push 0x64
push esi
push ebx
push esi
push ebx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0
push 3
push 0x101010
push 0xffffff
push 0x12
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov ecx, dword [ref_0048c488]  ; mov ecx, dword [0x48c488]
push ecx
push ref_00465050  ; push 0x465050
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 1
push 0x106
push 0x110
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
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov eax, dword [ref_0048c4a4]  ; mov eax, dword [0x48c4a4]
mov dword [ref_0048c4a8], eax  ; mov dword [0x48c4a8], eax
xor ebx, ebx

loc_0043a6b0:
mov esi, ebx
mov eax, ebx
shl eax, 2
add eax, ebx
xor esi, ebx
mov word [eax*4 + ref_0048c436], si  ; mov word [eax*4 + 0x48c436], si
inc ebx
cmp ebx, 4
jl short loc_0043a6b0  ; jl 0x43a6b0
or byte [ref_0048c4a5], 1  ; or byte [0x48c4a5], 1
jmp near loc_0043a3d7  ; jmp 0x43a3d7

loc_0043a6d5:
cmp byte [ref_0048c4ac], 0  ; cmp byte [0x48c4ac], 0
je near loc_0043a3d7  ; je 0x43a3d7
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je near loc_0043a3d7  ; je 0x43a3d7
cmp ebx, dword [_callbackSize]  ; cmp ebx, dword [0x46cad8]
jne near loc_0043a3d7  ; jne 0x43a3d7
test byte [ref_0048c4a5], 0xff  ; test byte [0x48c4a5], 0xff
je near loc_0043ab5a  ; je 0x43ab5a
mov ebx, dword [ref_0048c4a4]  ; mov ebx, dword [0x48c4a4]
sar ebx, 8
mov ecx, dword [ref_0048c4a4]  ; mov ecx, dword [0x48c4a4]
and ecx, 3
mov eax, ecx
shl eax, 2
add eax, ecx
mov esi, dword [eax*4 + ref_0048c43c]  ; mov esi, dword [eax*4 + 0x48c43c]
mov esi, dword [esi + 4]
mov eax, ecx
shl eax, 3
mov edx, eax
shl eax, 4
sub eax, edx
add eax, 0x50
mov dword [esp + 0xe4], eax
mov edi, dword [ref_0048c4a4]  ; mov edi, dword [0x48c4a4]
sar edi, 4
and edi, 3
cmp ebx, 1
jne near loc_0043a8c4  ; jne 0x43a8c4
test edi, edi
jne short loc_0043a766  ; jne 0x43a766
push edi
push edi
push ecx
push ebp
call fcn_0043a155  ; call 0x43a155
add esp, 0x10

loc_0043a766:
mov dword [esp + 0xd0], 0x196
mov eax, dword [esp + 0xe4]
sub eax, 0x4a
mov dword [esp + 0xd4], eax
mov dword [esp + 0xd8], 0x224
mov eax, dword [esp + 0xe4]
add eax, 0x27
mov dword [esp + 0xdc], eax
push 0
push 2
push 0
push 0x101010
push 0x10
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
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
push 0x71
push 0x8e
mov ecx, dword [esp + 0xdc]
push ecx
mov eax, dword [esp + 0xdc]
push eax
mov edx, dword [ref_0048c484]  ; mov edx, dword [0x48c484]
push edx
push ref_0046caec  ; push 0x46caec
call fcn_00451a97  ; call 0x451a97
add esp, 0x18
mov eax, dword [esp + 0xe4]
sub eax, 0xf
mov dword [esp + 0xe0], eax
push eax
push 0x1e0
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x18
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
cmp edi, 1
jb short loc_0043a83a  ; jb 0x43a83a
jbe short loc_0043a86d  ; jbe 0x43a86d
cmp edi, 2
je short loc_0043a885  ; je 0x43a885
jmp short loc_0043a8a2  ; jmp 0x43a8a2

loc_0043a83a:
test edi, edi
jne short loc_0043a8a2  ; jne 0x43a8a2
mov eax, dword [ref_0048c488]  ; mov eax, dword [0x48c488]
push eax
push ref_00465050  ; push 0x465050
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 2
mov edx, dword [esp + 0xe4]
push edx
push 0x1e0
lea eax, [esp + 0xc]
push eax
push edi
jmp short loc_0043a89a  ; jmp 0x43a89a

loc_0043a86d:
push 2
mov ecx, dword [esp + 0xe4]
push ecx
push 0x1e0
push ref_00465055  ; push 0x465055
push 0
jmp short loc_0043a89a  ; jmp 0x43a89a

loc_0043a885:
push edi
mov edx, dword [esp + 0xe4]
push edx
push 0x1e0
push ref_0046505e  ; push 0x46505e
push 0

loc_0043a89a:
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14

loc_0043a8a2:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043a8c4:
cmp ebx, esi
jg near loc_0043aa9a  ; jg 0x43aa9a
test edi, edi
jne near loc_0043aa9a  ; jne 0x43aa9a
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
and edx, 3
mov eax, edx
shl eax, 2
add eax, edx
mov ecx, dword [eax*4 + ref_0048c43c]  ; mov ecx, dword [eax*4 + 0x48c43c]
lea edx, [ebx - 1]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
add eax, ecx
movsx edx, word [eax + 0x10]
mov ecx, 0x24e
sub ecx, edx
mov dword [esp + 0xd0], ecx
movsx edx, word [eax + 0x12]
mov ecx, dword [esp + 0xe4]
sub ecx, edx
mov dword [esp + 0xd4], ecx
movsx edx, word [eax + 0xc]
mov ecx, dword [esp + 0xd0]
add ecx, edx
mov dword [esp + 0xd8], ecx
movsx eax, word [eax + 0xe]
mov edx, dword [esp + 0xd4]
add edx, eax
mov dword [esp + 0xdc], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push edi
push 1
push ref_0048a068  ; push 0x48a068
push edi
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0xdc]
mov ecx, dword [esp + 0xd4]
sub eax, ecx
push eax
mov eax, dword [esp + 0xdc]
mov edi, dword [esp + 0xd4]
sub eax, edi
push eax
push ecx
push edi
push ecx
push edi
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
and edx, 3
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
cmp ebx, esi
jne short loc_0043a9c3  ; jne 0x43a9c3
xor ebx, esi
mov edx, dword [esp + 0xe4]
push edx
push 0x24e
push 0
jmp short loc_0043a9d1  ; jmp 0x43a9d1

loc_0043a9c3:
mov edx, dword [esp + 0xe4]
push edx
push 0x24e
push ebx

loc_0043a9d1:
mov ecx, dword [eax + ref_0048c43c]  ; mov ecx, dword [eax + 0x48c43c]
push ecx
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_0045663e  ; call 0x45663e
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
and edx, 3
mov eax, edx
shl eax, 2
add eax, edx
mov ecx, dword [eax*4 + ref_0048c43c]  ; mov ecx, dword [eax*4 + 0x48c43c]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
add eax, ecx
movsx edx, word [eax + 0x10]
mov ecx, 0x24e
sub ecx, edx
mov dword [esp + 0xc0], ecx
movsx edx, word [eax + 0x12]
mov ecx, dword [esp + 0xe4]
sub ecx, edx
mov dword [esp + 0xc4], ecx
movsx edx, word [eax + 0xc]
mov ecx, dword [esp + 0xc0]
add ecx, edx
mov dword [esp + 0xc8], ecx
movsx eax, word [eax + 0xe]
mov edx, dword [esp + 0xc4]
add edx, eax
mov dword [esp + 0xcc], edx
lea eax, [esp + 0xd0]
push eax
lea eax, [esp + 0xc4]
push eax
lea eax, [esp + 0xd8]
push eax
call _rich4_rect_union  ; call 0x452808
add esp, 0xc
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043aa9a:
cmp ebx, esi
jle near loc_0043ab50  ; jle 0x43ab50
cmp ebx, 0xa
jl near loc_0043ab50  ; jl 0x43ab50
mov dword [esp + 0xd0], 0x196
mov eax, dword [esp + 0xe4]
sub eax, 0x4a
mov dword [esp + 0xd4], eax
mov dword [esp + 0xd8], 0x224
mov eax, dword [esp + 0xe4]
add eax, 0x27
mov dword [esp + 0xdc], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebx, dword [esp + 0xd4]
push ebx
mov esi, dword [esp + 0xd4]
push esi
mov edi, dword [ref_0048c484]  ; mov edi, dword [0x48c484]
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
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
and dword [ref_0048c4a4], 3  ; and dword [0x48c4a4], 3
mov byte [ref_0048c4ac], 5  ; mov byte [0x48c4ac], 5
jmp short loc_0043ab5a  ; jmp 0x43ab5a

loc_0043ab50:
add dword [ref_0048c4a4], 0x100  ; add dword [0x48c4a4], 0x100

loc_0043ab5a:
test byte [ref_0048c4a6], 0xff  ; test byte [0x48c4a6], 0xff
je near loc_0043aeb7  ; je 0x43aeb7
mov ebx, dword [ref_0048c4a4]  ; mov ebx, dword [0x48c4a4]
sar ebx, 0x10
dec ebx
mov edx, dword [ref_0048c4a8]  ; mov edx, dword [0x48c4a8]
mov eax, edx
shl eax, 2
add edx, eax
shl edx, 2
mov esi, dword [edx + ref_0048c444]  ; mov esi, dword [edx + 0x48c444]
mov esi, dword [esi + 4]
mov eax, dword [ref_0048c4a8]  ; mov eax, dword [0x48c4a8]
shl eax, 3
mov edi, eax
shl eax, 4
sub eax, edi
add eax, 0x50
mov dword [esp + 0xe4], eax
test ebx, ebx
jne near loc_0043ad4e  ; jne 0x43ad4e
mov eax, dword [edx + ref_0048c43c]  ; mov eax, dword [edx + 0x48c43c]
movsx edx, word [eax + 0x10]
mov ecx, 0x24e
sub ecx, edx
mov dword [esp + 0xd0], ecx
movsx edx, word [eax + 0x12]
mov ecx, dword [esp + 0xe4]
sub ecx, edx
mov dword [esp + 0xd4], ecx
movsx edx, word [eax + 0xc]
mov ecx, dword [esp + 0xd0]
add ecx, edx
mov dword [esp + 0xd8], ecx
movsx eax, word [eax + 0xe]
mov edx, dword [esp + 0xd4]
add edx, eax
mov dword [esp + 0xdc], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push ebx
push 1
push ref_0048a068  ; push 0x48a068
push ebx
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0xdc]
mov ebx, dword [esp + 0xd4]
sub eax, ebx
push eax
mov eax, dword [esp + 0xdc]
mov esi, dword [esp + 0xd4]
sub eax, esi
push eax
push ebx
push esi
push ebx
push esi
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov esi, dword [esp + 0xe4]
push esi
push 0x24e
push 0
mov edx, dword [ref_0048c4a8]  ; mov edx, dword [0x48c4a8]
mov eax, edx
shl eax, 2
add eax, edx
mov edi, dword [eax*4 + ref_0048c444]  ; mov edi, dword [eax*4 + 0x48c444]
push edi
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045663e  ; call 0x45663e
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
lea eax, [esp + 0xd0]
push eax
lea eax, [esp + 0xc4]
push eax
lea eax, [esp + 0xd8]
push eax
call _rich4_rect_union  ; call 0x452808
add esp, 0xc
mov edx, dword [ref_0048c4a8]  ; mov edx, dword [0x48c4a8]
mov eax, edx
shl eax, 2
add eax, edx
mov eax, dword [eax*4 + ref_0048c444]  ; mov eax, dword [eax*4 + 0x48c444]
movsx edx, word [eax + 0x10]
mov ecx, 0x24e
sub ecx, edx
mov dword [esp + 0xc0], ecx
movsx edx, word [eax + 0x12]
mov ecx, esi

loc_0043acdf:
sub ecx, edx
mov dword [esp + 0xc4], ecx
movsx edx, word [eax + 0xc]
mov ecx, dword [esp + 0xc0]
add ecx, edx
mov dword [esp + 0xc8], ecx
movsx eax, word [eax + 0xe]
mov edx, dword [esp + 0xc4]
add edx, eax
mov dword [esp + 0xcc], edx
lea eax, [esp + 0xd0]
push eax
lea eax, [esp + 0xc4]
push eax
lea eax, [esp + 0xd8]
push eax
call _rich4_rect_union  ; call 0x452808
add esp, 0xc
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
inc word [ref_0048c4a6]  ; inc word [0x48c4a6]
jmp near loc_0043aeb7  ; jmp 0x43aeb7

loc_0043ad4e:
cmp ebx, 0x3c
jge near loc_0043aeae  ; jge 0x43aeae
mov eax, ebx
mov edx, ebx
sar edx, 0x1f
idiv esi
mov ebx, edx
mov edi, edx
test edx, edx
jne short loc_0043ad6a  ; jne 0x43ad6a
mov edi, esi

loc_0043ad6a:
mov edx, dword [ref_0048c4a8]  ; mov edx, dword [0x48c4a8]
mov eax, edx
shl eax, 2
add eax, edx
mov eax, dword [eax*4 + ref_0048c444]  ; mov eax, dword [eax*4 + 0x48c444]
lea ecx, [edi - 1]
mov edx, ecx
shl edx, 2
sub edx, ecx
shl edx, 2
add eax, edx
movsx edx, word [eax + 0x10]
mov ecx, 0x24e
sub ecx, edx
mov dword [esp + 0xd0], ecx
movsx edx, word [eax + 0x12]
mov ecx, dword [esp + 0xe4]
sub ecx, edx
mov dword [esp + 0xd4], ecx
movsx edx, word [eax + 0xc]
mov ecx, dword [esp + 0xd0]
add ecx, edx
mov dword [esp + 0xd8], ecx
movsx eax, word [eax + 0xe]
mov edx, dword [esp + 0xd4]
add edx, eax
mov dword [esp + 0xdc], edx
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0xdc]
mov ecx, dword [esp + 0xd4]
sub eax, ecx
push eax
mov eax, dword [esp + 0xdc]
mov esi, dword [esp + 0xd4]
sub eax, esi
push eax
push ecx
push esi
push ecx
push esi
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov edi, dword [esp + 0xe4]
push edi
push 0x24e
push ebx
mov edx, dword [ref_0048c4a8]  ; mov edx, dword [0x48c4a8]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [eax*4 + ref_0048c444]  ; mov edx, dword [eax*4 + 0x48c444]
push edx
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_0045663e  ; call 0x45663e
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov edx, dword [ref_0048c4a8]  ; mov edx, dword [0x48c4a8]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [eax*4 + ref_0048c444]  ; mov edx, dword [eax*4 + 0x48c444]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
add eax, edx
movsx edx, word [eax + 0x10]
mov ecx, 0x24e
sub ecx, edx
mov dword [esp + 0xc0], ecx
movsx edx, word [eax + 0x12]
mov ecx, edi
jmp near loc_0043acdf  ; jmp 0x43acdf

loc_0043aeae:
xor edi, edi
mov word [ref_0048c4a6], di  ; mov word [0x48c4a6], di

loc_0043aeb7:
push 0
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
test eax, eax
je near loc_0043b5dd  ; je 0x43b5dd
mov al, byte [ref_0048c4ac]  ; mov al, byte [0x48c4ac]
cmp al, 5
jb short loc_0043aefc  ; jb 0x43aefc
jbe near loc_0043b262  ; jbe 0x43b262
cmp al, 0xa
jb short loc_0043aeef  ; jb 0x43aeef
jbe near loc_0043b4d8  ; jbe 0x43b4d8
cmp al, 0xb
je near loc_0043b5b5  ; je 0x43b5b5
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043aeef:
cmp al, 9
je near loc_0043b412  ; je 0x43b412
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043aefc:
cmp al, 1
jb near loc_0043b5dd  ; jb 0x43b5dd
jbe short loc_0043af13  ; jbe 0x43af13
cmp al, 2
je near loc_0043afa1  ; je 0x43afa1
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043af13:
xor ebx, ebx
mov esi, 0xffffffff
mov dword [ref_0048c4a4], esi  ; mov dword [0x48c4a4], esi
mov esi, dword [ref_0048c4a4]  ; mov esi, dword [0x48c4a4]
jmp short loc_0043af2e  ; jmp 0x43af2e

loc_0043af28:
inc ebx
cmp ebx, 4
jge short loc_0043af4b  ; jge 0x43af4b

loc_0043af2e:
mov eax, ebx
shl eax, 2
add eax, ebx
cmp word [eax*4 + ref_0048c434], 0  ; cmp word [eax*4 + 0x48c434], 0
je short loc_0043af28  ; je 0x43af28
cmp esi, 0xffffffff
jne short loc_0043af28  ; jne 0x43af28
mov dword [ref_0048c4a4], ebx  ; mov dword [0x48c4a4], ebx

loc_0043af4b:
cmp dword [ref_0048c4a4], 0xffffffff  ; cmp dword [0x48c4a4], 0xffffffff
jne short loc_0043af75  ; jne 0x43af75
push ref_00465063  ; push 0x465063
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
mov byte [ref_0048c4ac], 0xb  ; mov byte [0x48c4ac], 0xb
xor edx, edx
mov dword [ref_0048c4a4], edx  ; mov dword [0x48c4a4], edx
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043af75:
mov byte [ref_0048c4ac], 2  ; mov byte [0x48c4ac], 2
mov eax, dword [ref_0048c488]  ; mov eax, dword [0x48c488]
push eax
push ref_0046507d  ; push 0x46507d

loc_0043af87:
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax

loc_0043af97:
call fcn_0044ecb6  ; call 0x44ecb6
jmp near loc_0043b5da  ; jmp 0x43b5da

loc_0043afa1:
mov dword [esp + 0xd0], 0x16b
mov dword [esp + 0xd4], 0x72
mov dword [esp + 0xd8], 0x1c9
mov dword [esp + 0xdc], 0x1c0
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
mov eax, edx
shl eax, 2
add eax, edx
mov ax, word [eax*4 + ref_0048c434]  ; mov ax, word [eax*4 + 0x48c434]
and eax, 0xffff
dec eax
imul eax, eax, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne near loc_0043b0a0  ; jne 0x43b0a0
xor ebx, ebx

loc_0043b010:
mov esi, dword [ebx*4 + ref_00475b84]  ; mov esi, dword [ebx*4 + 0x475b84]
push esi
push 0x196
lea eax, [ebx + ebx]
lea esi, [eax + 4]
mov eax, esi
shl eax, 2
sub eax, esi
shl eax, 2
mov edx, dword [ref_0048c49c]  ; mov edx, dword [0x48c49c]
add edx, 0xc
add eax, edx
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456418  ; call 0x456418
add esp, 0x10
inc ebx
cmp ebx, 7
jl short loc_0043b010  ; jl 0x43b010
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
mov eax, edx
shl eax, 2
add eax, edx
mov ax, word [eax*4 + ref_0048c434]  ; mov ax, word [eax*4 + 0x48c434]
and eax, 0xffff
dec eax
imul eax, eax, 0x68
mov edx, dword [ref_0048c488]  ; mov edx, dword [0x48c488]
cmp edx, dword [eax + (_rich4_all_players_state + 28)]  ; cmp edx, dword [eax + 0x496b84]
jle short loc_0043b08a  ; jle 0x43b08a
mov byte [ref_0048c4ac], 4  ; mov byte [0x48c4ac], 4
push 0
push 6
jmp near loc_0043b22e  ; jmp 0x43b22e

loc_0043b08a:
mov byte [ref_0048c4ac], 3  ; mov byte [0x48c4ac], 3
push 1
call fcn_00402460  ; call 0x402460
add esp, 4
jmp near loc_0043b23b  ; jmp 0x43b23b

loc_0043b0a0:
mov eax, dword [esp + 0xdc]
mov edx, dword [esp + 0xd4]
sub eax, edx
push eax
mov eax, dword [esp + 0xdc]
mov ecx, dword [esp + 0xd4]
sub eax, ecx
push eax
push edx
push ecx
push edx
push ecx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov byte [ref_0048c4ac], 4  ; mov byte [0x48c4ac], 4
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
xor edx, edx
mov dx, word [eax + ref_0048c434]  ; mov dx, word [eax + 0x48c434]
dec edx
imul edx, edx, 0x68
mov ecx, dword [ref_0048c488]  ; mov ecx, dword [0x48c488]
cmp ecx, dword [edx + (_rich4_all_players_state + 28)]  ; cmp ecx, dword [edx + 0x496b84]
jle short loc_0043b124  ; jle 0x43b124
mov ebx, 6
jmp near loc_0043b219  ; jmp 0x43b219

loc_0043b124:
lea edx, [ecx + 0x2710]
mov esi, dword [eax + ref_0048c438]  ; mov esi, dword [eax + 0x48c438]
cmp edx, esi
jg short loc_0043b13b  ; jg 0x43b13b
mov ebx, 5
jmp short loc_0043b183  ; jmp 0x43b183

loc_0043b13b:
lea edx, [ecx + 0x1388]
cmp edx, esi
jg short loc_0043b14c  ; jg 0x43b14c
mov ebx, 4
jmp short loc_0043b183  ; jmp 0x43b183

loc_0043b14c:
lea edx, [ecx + 0x3e8]
cmp edx, esi
jg short loc_0043b15d  ; jg 0x43b15d
mov ebx, 3
jmp short loc_0043b183  ; jmp 0x43b183

loc_0043b15d:
lea edx, [ecx + 0x1f4]
cmp edx, esi
jg short loc_0043b16e  ; jg 0x43b16e
mov ebx, 2
jmp short loc_0043b183  ; jmp 0x43b183

loc_0043b16e:
lea edx, [ecx + 0x64]
cmp edx, esi
jg short loc_0043b17c  ; jg 0x43b17c
mov ebx, 1
jmp short loc_0043b183  ; jmp 0x43b183

loc_0043b17c:
xor ebx, ebx
jmp near loc_0043b219  ; jmp 0x43b219

loc_0043b183:
mov edi, dword [ref_0048c4a8]  ; mov edi, dword [0x48c4a8]
cmp edi, 0xffffffff
je near loc_0043b219  ; je 0x43b219
mov esi, dword [ref_0048c488]  ; mov esi, dword [0x48c488]
add esi, dword [ebx*4 + ref_00475ba2]  ; add esi, dword [ebx*4 + 0x475ba2]
mov eax, edi
shl eax, 2
add eax, edi
mov ax, word [eax*4 + ref_0048c434]  ; mov ax, word [eax*4 + 0x48c434]
and eax, 0xffff
dec eax
imul eax, eax, 0x68
mov edi, dword [eax + (_rich4_all_players_state + 28)]  ; mov edi, dword [eax + 0x496b84]
add edi, 0x1f4
cmp esi, edi
jle short loc_0043b219  ; jle 0x43b219
sub edi, dword [ref_0048c488]  ; sub edi, dword [0x48c488]
cmp edi, 0x3e8
jle short loc_0043b1e4  ; jle 0x43b1e4
cmp edi, 0x1388
jg short loc_0043b1e4  ; jg 0x43b1e4
mov ebx, 4
jmp short loc_0043b219  ; jmp 0x43b219

loc_0043b1e4:
cmp edi, 0x1f4
jle short loc_0043b1fb  ; jle 0x43b1fb
cmp edi, 0x3e8
jg short loc_0043b1fb  ; jg 0x43b1fb
mov ebx, 3
jmp short loc_0043b219  ; jmp 0x43b219

loc_0043b1fb:
cmp edi, 0x64
jle short loc_0043b20f  ; jle 0x43b20f
cmp edi, 0x1f4
jg short loc_0043b20f  ; jg 0x43b20f
mov ebx, 2
jmp short loc_0043b219  ; jmp 0x43b219

loc_0043b20f:
cmp edi, 0x64
jg short loc_0043b219  ; jg 0x43b219
mov ebx, 1

loc_0043b219:
cmp byte [ref_0048c4b1], 1  ; cmp byte [0x48c4b1], 1
jne short loc_0043b22b  ; jne 0x43b22b
test ebx, ebx
je short loc_0043b22b  ; je 0x43b22b
mov ebx, 1

loc_0043b22b:
push 0
push ebx

loc_0043b22e:
push 0x407
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]

loc_0043b23b:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043b262:
mov edx, dword [ref_0048c4a4]  ; mov edx, dword [0x48c4a4]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 2
cmp word [eax + ref_0048c434], 0  ; cmp word [eax + 0x48c434], 0
je short loc_0043b295  ; je 0x43b295
push 0
mov edx, dword [eax + ref_0048c43c]  ; mov edx, dword [eax + 0x48c43c]
push edx
mov ecx, dword [ref_0048c4a4]  ; mov ecx, dword [0x48c4a4]
push ecx
push ebp
call fcn_0043a155  ; call 0x43a155
add esp, 0x10

loc_0043b295:
xor ebx, ebx
xor esi, esi
xor edi, edi
jmp short loc_0043b2a3  ; jmp 0x43b2a3

loc_0043b29d:
inc ebx
cmp ebx, 4
jge short loc_0043b2c5  ; jge 0x43b2c5

loc_0043b2a3:
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 2
cmp word [eax + ref_0048c434], 0  ; cmp word [eax + 0x48c434], 0
je short loc_0043b29d  ; je 0x43b29d
inc esi
cmp word [eax + ref_0048c436], 0  ; cmp word [eax + 0x48c436], 0
je short loc_0043b29d  ; je 0x43b29d
inc edi
jmp short loc_0043b29d  ; jmp 0x43b29d

loc_0043b2c5:
test esi, esi
je short loc_0043b2cd  ; je 0x43b2cd
cmp esi, edi
jne short loc_0043b2e6  ; jne 0x43b2e6

loc_0043b2cd:
push ref_00465063  ; push 0x465063
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
mov byte [ref_0048c4ac], 0xb  ; mov byte [0x48c4ac], 0xb
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043b2e6:
cmp esi, 1
je short loc_0043b2f6  ; je 0x43b2f6
sub esi, edi
cmp esi, 1
jne near loc_0043b3c2  ; jne 0x43b3c2

loc_0043b2f6:
cmp dword [ref_0048c4a8], 0xffffffff  ; cmp dword [0x48c4a8], 0xffffffff
je near loc_0043b3c2  ; je 0x43b3c2
mov dword [esp + 0xd0], 0x16b
mov dword [esp + 0xd4], 0x72
mov dword [esp + 0xd8], 0x1c9
mov dword [esp + 0xdc], 0x1c0
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0xdc]
mov esi, dword [esp + 0xd4]
sub eax, esi
push eax
mov eax, dword [esp + 0xdc]
mov edi, dword [esp + 0xd4]
sub eax, edi
push eax
push esi
push edi
push esi
push edi
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
or byte [ref_0048c4a6], 1  ; or byte [0x48c4a6], 1
mov byte [ref_0048c4ac], 9  ; mov byte [0x48c4ac], 9
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043b3c2:
mov edi, dword [ref_0048c4a4]  ; mov edi, dword [0x48c4a4]
inc edi
mov dword [ref_0048c4a4], edi  ; mov dword [0x48c4a4], edi
mov eax, edi
and eax, 3
mov dword [ref_0048c4a4], eax  ; mov dword [0x48c4a4], eax
mov edx, eax
shl eax, 2
add eax, edx
shl eax, 2
cmp word [eax + ref_0048c434], 0  ; cmp word [eax + 0x48c434], 0
je short loc_0043b3c2  ; je 0x43b3c2
push 1
mov edx, dword [eax + ref_0048c43c]  ; mov edx, dword [eax + 0x48c43c]
push edx
mov ecx, dword [ref_0048c4a4]  ; mov ecx, dword [0x48c4a4]
push ecx
push ebp
call fcn_0043a155  ; call 0x43a155
add esp, 0x10
mov byte [ref_0048c4ac], 2  ; mov byte [0x48c4ac], 2
jmp near loc_0043b5dd  ; jmp 0x43b5dd

loc_0043b412:
mov byte [ref_0048c4ac], 0xa  ; mov byte [0x48c4ac], 0xa
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0xa0
push 0x9a
push 0x18
push 0x7b
push 0x18
push 0x7b
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x1b
push 0x7c
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x108
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x3f
push 0x43
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xd8
push eax
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
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
push ref_00475bba  ; push 0x475bba
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov byte [ref_0048c4b0], 1  ; mov byte [0x48c4b0], 1
mov edi, dword [ref_0048c488]  ; mov edi, dword [0x48c488]
push edi
push ref_00465098  ; push 0x465098
jmp near loc_0043af87  ; jmp 0x43af87

loc_0043b4d8:
mov byte [ref_0048c4ac], 0xb  ; mov byte [0x48c4ac], 0xb
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0xa6
push 0xc7
push 0x1b
push 0x7c
push 0x1b
push 0x7c
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x18
push 0x7b
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x138
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x3f
push 0x43
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xd8
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
xor dh, dh
mov byte [ref_0048c4b0], dh  ; mov byte [0x48c4b0], dh
mov edx, dword [ref_0048c4a8]  ; mov edx, dword [0x48c4a8]
mov eax, edx
shl eax, 2
add eax, edx
mov ax, word [eax*4 + ref_0048c434]  ; mov ax, word [eax*4 + 0x48c434]
and eax, 0xffff
dec eax
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
mov edx, dword [eax*4 + ref_00475b54]  ; mov edx, dword [eax*4 + 0x475b54]
push edx
jmp near loc_0043af97  ; jmp 0x43af97

loc_0043b5b5:
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov edx, dword [ref_0048c4a0]  ; mov edx, dword [0x48c4a0]
push edx
push ebp
call dword [cs:__imp__KillTimer@8]  ; ucall: call dword cs:[0x4622fc]
mov ecx, dword [ref_0048c4a8]  ; mov ecx, dword [0x48c4a8]
push ecx
call _Post_0402_Message  ; call 0x401966

loc_0043b5da:
add esp, 4

loc_0043b5dd:
mov al, byte [ref_0048c4ae]  ; mov al, byte [0x48c4ae]
and al, 0xf
cmp al, 1
jb short loc_0043b5f7  ; jb 0x43b5f7
jbe short loc_0043b637  ; jbe 0x43b637
cmp al, 2
je near loc_0043b74c  ; je 0x43b74c
jmp near loc_0043b853  ; jmp 0x43b853

loc_0043b5f7:
test al, al
jne near loc_0043b853  ; jne 0x43b853
call _libc_rand  ; call 0x456f2d
mov edi, eax
sar edi, 0xa
test edi, edi
jne short loc_0043b622  ; jne 0x43b622
cmp byte [ref_0048c4b0], 0  ; cmp byte [0x48c4b0], 0
jne short loc_0043b622  ; jne 0x43b622
or byte [ref_0048c4ae], 1  ; or byte [0x48c4ae], 1
jmp near loc_0043b853  ; jmp 0x43b853

loc_0043b622:
cmp edi, 1
jne near loc_0043b853  ; jne 0x43b853
or byte [ref_0048c4ae], 2  ; or byte [0x48c4ae], 2
jmp near loc_0043b853  ; jmp 0x43b853

loc_0043b637:
cmp byte [ref_0048c4b0], 0  ; cmp byte [0x48c4b0], 0
jne near loc_0043b853  ; jne 0x43b853
mov al, byte [ref_0048c4ae]  ; mov al, byte [0x48c4ae]
and al, 0x30
movzx edi, al
sar edi, 4
mov dword [esp + 0xd0], 0xa3
mov dword [esp + 0xd4], 0x2d
mov dword [esp + 0xd8], 0xbf
mov dword [esp + 0xdc], 0x3c
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
cmp edi, 3
jge short loc_0043b6d7  ; jge 0x43b6d7
mov esi, dword [esp + 0xd4]
push esi
mov eax, dword [esp + 0xd4]
push eax
xor edx, edx
mov dl, byte [edi + ref_00475ba0]  ; mov dl, byte [edi + 0x475ba0]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c49c]  ; mov edx, dword [0x48c49c]
add edx, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
jmp short loc_0043b709  ; jmp 0x43b709

loc_0043b6d7:
push 0xf
push 0x1c
push 0x15
push 0x28
mov edx, dword [esp + 0xe4]
push edx
mov ecx, dword [esp + 0xe4]
push ecx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x138
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456495  ; call 0x456495
add esp, 0x20

loc_0043b709:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov cl, byte [ref_0048c4ae]  ; mov cl, byte [0x48c4ae]
add cl, 0x10
mov byte [ref_0048c4ae], cl  ; mov byte [0x48c4ae], cl
mov ch, cl
and ch, 0x3f
mov byte [ref_0048c4ae], ch  ; mov byte [0x48c4ae], ch
test ch, 0x30
jne near loc_0043b841  ; jne 0x43b841
mov ah, ch
and ah, 0xf0
mov byte [ref_0048c4ae], ah  ; mov byte [0x48c4ae], ah
jmp near loc_0043b841  ; jmp 0x43b841

loc_0043b74c:
mov al, byte [ref_0048c4ae]  ; mov al, byte [0x48c4ae]
and al, 0xc0
movzx edi, al
sar edi, 6
mov dword [esp + 0xd0], 0x7f
mov dword [esp + 0xd4], 0x5a
mov dword [esp + 0xd8], 0x8f
mov dword [esp + 0xdc], 0x68
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
cmp edi, 3
jge short loc_0043b7e0  ; jge 0x43b7e0
mov esi, dword [esp + 0xd4]
push esi
mov eax, dword [esp + 0xd4]
push eax
xor edx, edx
mov dl, byte [edi + ref_00475ba3]  ; mov dl, byte [edi + 0x475ba3]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
jmp short loc_0043b812  ; jmp 0x43b812

loc_0043b7e0:
push 0xe
push 0x10
push 0x1d
push 0x3d
mov edx, dword [esp + 0xe4]
push edx
mov ecx, dword [esp + 0xe4]
push ecx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xd8
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20

loc_0043b812:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov dl, byte [ref_0048c4ae]  ; mov dl, byte [0x48c4ae]
add dl, 0x40
mov byte [ref_0048c4ae], dl  ; mov byte [0x48c4ae], dl
test dl, 0xc0
jne short loc_0043b841  ; jne 0x43b841
mov bl, dl
and bl, 0xf0
mov byte [ref_0048c4ae], bl  ; mov byte [0x48c4ae], bl

loc_0043b841:
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043b853:
call fcn_0044ef3b  ; call 0x44ef3b
test eax, eax
jne short loc_0043b869  ; jne 0x43b869
cmp byte [ref_0048c4ad], 0  ; cmp byte [0x48c4ad], 0
je near loc_0043a3d7  ; je 0x43a3d7

loc_0043b869:
mov al, byte [ref_0048c4ad]  ; mov al, byte [0x48c4ad]
dec al
cmp byte [ref_0048c4b0], 0  ; cmp byte [0x48c4b0], 0
je near loc_0043b9fb  ; je 0x43b9fb
mov dword [esp + 0xd0], 0xb7
mov dword [esp + 0xd4], 0x41
mov dword [esp + 0xd8], 0xdf
mov dword [esp + 0xdc], 0x5f
cmp byte [ref_0048c4ad], 0  ; cmp byte [0x48c4ad], 0
je near loc_0043b945  ; je 0x43b945
mov byte [ref_0048c4ad], al  ; mov byte [0x48c4ad], al
test al, al
jne near loc_0043a3d7  ; jne 0x43a3d7
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x1e
push 0x28
mov edi, dword [esp + 0xdc]
push edi
mov eax, dword [esp + 0xdc]
push eax
push edi
push eax
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov esi, dword [esp + 0xd4]
push esi
mov edi, dword [esp + 0xd4]
push edi
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x114
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax

loc_0043b928:
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
jmp near loc_0043b9e4  ; jmp 0x43b9e4

loc_0043b945:
call _libc_rand  ; call 0x456f2d
mov edi, eax
sar edi, 0xb
cmp edi, 4
jge near loc_0043a3d7  ; jge 0x43a3d7
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x1e
push 0x28
mov ebx, dword [esp + 0xdc]
push ebx
mov esi, dword [esp + 0xdc]
push esi
push ebx
push esi
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov ecx, dword [esp + 0xd4]
push ecx
mov ebx, dword [esp + 0xd4]
push ebx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x120
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi

loc_0043b9be:
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
call _libc_rand  ; call 0x456f2d
and al, 7
inc al
mov byte [ref_0048c4ad], al  ; mov byte [0x48c4ad], al

loc_0043b9e4:
push 0
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0043a3d7  ; jmp 0x43a3d7

loc_0043b9fb:
mov dword [esp + 0xd0], 0xa3
mov dword [esp + 0xd4], 0x3c
mov dword [esp + 0xd8], 0xc1
mov dword [esp + 0xdc], 0x55
cmp byte [ref_0048c4ad], 0  ; cmp byte [0x48c4ad], 0
je short loc_0043baa7  ; je 0x43baa7
mov byte [ref_0048c4ad], al  ; mov byte [0x48c4ad], al
test al, al
jne near loc_0043a3d7  ; jne 0x43a3d7
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x19
push 0x1e
mov ecx, dword [esp + 0xdc]
push ecx
mov ebx, dword [esp + 0xdc]
push ebx
push ecx
push ebx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov edx, dword [esp + 0xd4]
push edx
mov ecx, dword [esp + 0xd4]
push ecx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x15c
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
jmp near loc_0043b928  ; jmp 0x43b928

loc_0043baa7:
call _libc_rand  ; call 0x456f2d
mov edi, eax
sar edi, 0xb
cmp edi, 4
jge near loc_0043a3d7  ; jge 0x43a3d7
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x19
push 0x1e
mov eax, dword [esp + 0xdc]
push eax
mov edx, dword [esp + 0xdc]
push edx
push eax
push edx
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov edi, dword [esp + 0xd4]
push edi
mov eax, dword [esp + 0xd4]
push eax
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x168
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
jmp near loc_0043b9be  ; jmp 0x43b9be

loc_0043bb25:
push 1
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
cmp byte [ref_0048c4ac], 3  ; cmp byte [0x48c4ac], 3
jne near loc_0043a3d7  ; jne 0x43a3d7
test dword [ref_0048c4a4], 0xffff00  ; test dword [0x48c4a4], 0xffff00
jne near loc_0043a3d7  ; jne 0x43a3d7
xor edi, edi
mov di, word [esp + 0x108]
mov eax, dword [esp + 0x108]
shr eax, 0x10
and eax, 0xffff
and eax, 0xffff
mov dword [esp + 0xe4], eax
xor ebx, ebx
mov ecx, dword [esp + 0xe4]
jmp short loc_0043bb86  ; jmp 0x43bb86

loc_0043bb7c:
inc ebx
cmp ebx, 7
jge near loc_0043a3d7  ; jge 0x43a3d7

loc_0043bb86:
cmp edi, 0x16b
jl short loc_0043bb7c  ; jl 0x43bb7c
cmp edi, 0x1c1
jg short loc_0043bb7c  ; jg 0x43bb7c
mov esi, ebx
shl esi, 2
mov edx, dword [esi + ref_00475b84]  ; mov edx, dword [esi + 0x475b84]
sub edx, 0x13
cmp edx, dword [esp + 0xe4]
jg short loc_0043bb7c  ; jg 0x43bb7c
mov eax, dword [esi + ref_00475b84]  ; mov eax, dword [esi + 0x475b84]
add eax, 0x13
cmp eax, ecx
jl short loc_0043bb7c  ; jl 0x43bb7c
mov dword [esp + 0xd0], 0x16b
mov dword [esp + 0xd4], edx
mov dword [esp + 0xd8], 0x1c1
mov dword [esp + 0xdc], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ecx, dword [esi + ref_00475b84]  ; mov ecx, dword [esi + 0x475b84]
push ecx
push 0x196
lea edx, [ebx + ebx + 3]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
add eax, edx
push eax
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
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
inc bl
mov byte [ref_0048c4af], bl  ; mov byte [0x48c4af], bl
jmp near loc_0043a3d7  ; jmp 0x43a3d7

loc_0043bc59:
mov ch, byte [ref_0048c4af]  ; mov ch, byte [0x48c4af]
test ch, ch
je near loc_0043a3d7  ; je 0x43a3d7
mov dword [esp + 0xd0], 0x16b
mov al, ch
dec al
mov byte [ref_0048c4af], al  ; mov byte [0x48c4af], al
xor edx, edx
mov dl, al
mov eax, dword [edx*4 + ref_00475b84]  ; mov eax, dword [edx*4 + 0x475b84]
sub eax, 0x13
mov dword [esp + 0xd4], eax
mov dword [esp + 0xd8], 0x1c1
mov eax, dword [edx*4 + ref_00475b84]  ; mov eax, dword [edx*4 + 0x475b84]
add eax, 0x13
mov dword [esp + 0xdc], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
xor edx, edx
mov dl, byte [ref_0048c4af]  ; mov dl, byte [0x48c4af]
mov ecx, dword [edx*4 + ref_00475b84]  ; mov ecx, dword [edx*4 + 0x475b84]
push ecx
push 0x196
add edx, edx
add edx, 4
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
add eax, edx
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
lea eax, [esp + 0xd4]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
xor eax, eax
mov al, byte [ref_0048c4af]  ; mov al, byte [0x48c4af]
push eax
push 0x407
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
xor ah, ah
mov byte [ref_0048c4af], ah  ; mov byte [0x48c4af], ah
jmp near loc_0043a3d7  ; jmp 0x43a3d7

loc_0043bd48:
lea eax, [esp + 0x80]
push eax
push ebp
call dword [cs:__imp__BeginPaint@8]  ; ucall: call dword cs:[0x4622cc]
lea eax, [esp + 0x88]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x8c]
push ecx
mov ecx, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
mov ebx, dword [esp + 0x98]
push ebx
mov esi, dword [esp + 0x98]
push esi
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 0x88]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
lea eax, [esp + 0x80]
push eax
push ebp
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_0043a3d7  ; jmp 0x43a3d7

loc_0043bdb9:
mov edi, dword [esp + 0x108]
push edi
push ebx
push eax
push ebp
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp near loc_0043a3d9  ; jmp 0x43a3d9

endloc_0043bdd0:
db 0x90

ref_0043bdd1:  ; may contain a jump table
dd loc_0043c064
dd loc_0043c08d
dd loc_0043c08d
dd loc_0043c07a
dd loc_0043c08d

_rich4_ui_auction_entry:
push ebx
push esi
push edi
push ebp
sub esp, 0x98
xor edx, edx
mov dword [esp + 0x88], edx
mov dword [esp + 0x84], edx
mov ebx, dword [esp + 0xb0]
cmp ebx, 0x7d0
jle near loc_0043bf3a  ; jle 0x43bf3a
cmp ebx, 0xfa0
jge near loc_0043bf3a  ; jge 0x43bf3a
lea eax, [ebx - 0x7d0]
imul eax, eax, 0x34
mov edx, dword [_rich4_land_info_ptr]  ; mov edx, dword [0x498e84]
add edx, eax
mov dword [ref_0048c48c], edx  ; mov dword [0x48c48c], edx
xor eax, eax
mov al, byte [edx + 0x1a]
mov dword [esp + 0x94], eax
fild word [esp + 0x94]
fmul dword [ref_004650b0]  ; fmul dword [0x4650b0]
fld1
faddp st1  ; faddp st(1)
fstp dword [esp + 0x80]
xor eax, eax
mov ax, word [edx + 0x1c]
mov dword [esp + 0x90], eax
fild dword [esp + 0x90]
fmul dword [esp + 0x80]
call __round_toward_zero  ; call 0x457dbc
fistp dword [ref_0048c488]  ; fistp dword [0x48c488]
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
mov ebx, dword [ref_0048c488]  ; mov ebx, dword [0x48c488]
imul ebx, eax
mov dword [ref_0048c488], ebx  ; mov dword [0x48c488], ebx
cmp byte [edx + 0x1a], 0
jne short loc_0043bec7  ; jne 0x43bec7
mov ch, byte [edx + 0x19]
test ch, ch
je short loc_0043bebb  ; je 0x43bebb
xor eax, eax
mov al, ch
dec eax
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
add eax, 0x5b
jmp near loc_0043bf29  ; jmp 0x43bf29

loc_0043bebb:
mov dword [ref_0048c494], 0x5a  ; mov dword [0x48c494], 0x5a
jmp short loc_0043bf2e  ; jmp 0x43bf2e

loc_0043bec7:
cmp word [ref_004991b6], 0  ; cmp word [0x4991b6], 0
jne short loc_0043befd  ; jne 0x43befd
cmp byte [edx + 0x18], 0
jne short loc_0043bef1  ; jne 0x43bef1
xor ebx, ebx
mov bl, byte [edx + 0x1a]
movsx edx, word [ref_004991b8]  ; movsx edx, word [0x4991b8]
mov eax, edx
shl eax, 2
add eax, edx
add eax, ebx
add eax, 0x1d
jmp short loc_0043bf29  ; jmp 0x43bf29

loc_0043bef1:
mov dword [ref_0048c494], 0x32  ; mov dword [0x48c494], 0x32
jmp short loc_0043bf2e  ; jmp 0x43bf2e

loc_0043befd:
cmp byte [edx + 0x18], 0
jne short loc_0043bf1d  ; jne 0x43bf1d
xor ebx, ebx
mov bl, byte [edx + 0x1a]
movsx edx, word [ref_004991b8]  ; movsx edx, word [0x4991b8]
mov eax, edx
shl eax, 2
add eax, edx
add eax, ebx
add eax, 0x73
jmp short loc_0043bf29  ; jmp 0x43bf29

loc_0043bf1d:
movsx eax, word [ref_004991b8]  ; movsx eax, word [0x4991b8]
add eax, 0x83

loc_0043bf29:
mov dword [ref_0048c494], eax  ; mov dword [0x48c494], eax

loc_0043bf2e:
xor eax, eax
mov dword [ref_0048c490], eax  ; mov dword [0x48c490], eax
jmp near loc_0043c0d5  ; jmp 0x43c0d5

loc_0043bf3a:
mov edi, dword [esp + 0xb0]
cmp edi, 0xfa0
jle near loc_0043c0d5  ; jle 0x43c0d5
cmp edi, 0x1770
jge near loc_0043c0d5  ; jge 0x43c0d5
lea eax, [edi - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add edx, eax
mov dword [ref_0048c498], edx  ; mov dword [0x48c498], edx
mov ebx, edx
xor eax, eax
mov al, byte [edx + 0x1a]
mov dword [esp + 0x94], eax
fild word [esp + 0x94]
fmul dword [ref_004650b0]  ; fmul dword [0x4650b0]
fld1
faddp st1  ; faddp st(1)
fstp dword [esp + 0x80]
xor eax, eax
mov ax, word [edx + 0x22]
mov dword [esp + 0x90], eax
fild dword [esp + 0x90]
fmul dword [esp + 0x80]
call __round_toward_zero  ; call 0x457dbc
fistp dword [ref_0048c488]  ; fistp dword [0x48c488]
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
mov edx, dword [ref_0048c488]  ; mov edx, dword [0x48c488]
imul edx, eax
mov dword [ref_0048c488], edx  ; mov dword [0x48c488], edx
cmp byte [ebx + 0x1a], 0
jne short loc_0043c013  ; jne 0x43c013
mov dh, byte [ebx + 0x19]
test dh, dh
je short loc_0043c004  ; je 0x43c004
xor eax, eax
mov al, dh
dec eax
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
add eax, 0x68

loc_0043bffa:
mov dword [ref_0048c494], eax  ; mov dword [0x48c494], eax
jmp near loc_0043c0cb  ; jmp 0x43c0cb

loc_0043c004:
mov dword [ref_0048c494], 0x67  ; mov dword [0x48c494], 0x67
jmp near loc_0043c0cb  ; jmp 0x43c0cb

loc_0043c013:
cmp word [ref_004991b6], 0  ; cmp word [0x4991b6], 0
jne short loc_0043c04d  ; jne 0x43c04d
mov dl, byte [ebx + 0x18]
test dl, dl
je short loc_0043c03e  ; je 0x43c03e
xor eax, eax
mov al, dl
lea edx, [eax - 1]
mov eax, edx
shl eax, 2
add eax, edx
xor edx, edx
mov dl, byte [ebx + 0x1a]
add eax, edx
add eax, 0x33
jmp short loc_0043bffa  ; jmp 0x43bffa

loc_0043c03e:
mov dword [ref_0048c494], 0x33  ; mov dword [0x48c494], 0x33
jmp near loc_0043c0cb  ; jmp 0x43c0cb

loc_0043c04d:
mov al, byte [ebx + 0x18]
cmp al, 4
ja near loc_0043c0cb  ; ja 0x43c0cb
and eax, 0xff
jmp dword [eax*4 + ref_0043bdd1]  ; ujmp: jmp dword [eax*4 + 0x43bdd1]

loc_0043c064:
cmp word [ref_004991b8], 0  ; cmp word [0x4991b8], 0
jne short loc_0043c03e  ; jne 0x43c03e
mov dword [ref_0048c494], 0x97  ; mov dword [0x48c494], 0x97
jmp short loc_0043c0cb  ; jmp 0x43c0cb

loc_0043c07a:
movsx eax, word [ref_004991b8]  ; movsx eax, word [0x4991b8]
mov eax, dword [eax*4 + ref_00475be2]  ; mov eax, dword [eax*4 + 0x475be2]
jmp near loc_0043bffa  ; jmp 0x43bffa

loc_0043c08d:
mov eax, dword [ref_0048c498]  ; mov eax, dword [0x48c498]
xor ebx, ebx
mov bl, byte [eax + 0x18]
dec ebx
cmp ebx, 3
jne short loc_0043c0a2  ; jne 0x43c0a2
mov ebx, 2

loc_0043c0a2:
mov eax, dword [ref_0048c498]  ; mov eax, dword [0x48c498]
xor edx, edx
mov dl, byte [eax + 0x1a]
mov eax, ebx
shl eax, 2
add eax, ebx
add edx, eax
movsx eax, word [ref_004991b8]  ; movsx eax, word [0x4991b8]
mov eax, dword [eax*4 + ref_00475bd2]  ; mov eax, dword [eax*4 + 0x475bd2]
add edx, eax
mov dword [ref_0048c494], edx  ; mov dword [0x48c494], edx

loc_0043c0cb:
mov dword [ref_0048c490], 1  ; mov dword [0x48c490], 1

loc_0043c0d5:
push 0x50
push 0
push ref_0048c434  ; push 0x48c434
call _memset  ; call 0x456f60
add esp, 0xc
push 0
push 0
push 0x1a
mov edx, dword [_rich4_panel_mkf]  ; mov edx, dword [0x48a05c]
push edx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c49c], eax  ; mov dword [0x48c49c], eax
xor ebx, ebx
mov dword [esp + 0x8c], ebx
mov ebp, dword [esp + 0xac]

loc_0043c110:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge near loc_0043c2f5  ; jge 0x43c2f5
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je near loc_0043c2ef  ; je 0x43c2ef
mov eax, dword [eax + (_rich4_all_players_state + 28)]  ; mov eax, dword [eax + 0x496b84]
cmp eax, dword [ref_0048c488]  ; cmp eax, dword [0x48c488]
jg short loc_0043c152  ; jg 0x43c152
mov esi, dword [esp + 0x8c]
mov eax, esi
shl eax, 2
add eax, esi
mov word [eax*4 + ref_0048c436], 8  ; mov word [eax*4 + 0x48c436], 8

loc_0043c152:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 50)], 0  ; cmp byte [eax + 0x496b9a], 0
je short loc_0043c176  ; je 0x43c176
mov edx, dword [esp + 0x8c]
mov eax, edx
shl eax, 2
add eax, edx
mov word [eax*4 + ref_0048c436], 1  ; mov word [eax*4 + 0x48c436], 1

loc_0043c176:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 51)], 0  ; cmp byte [eax + 0x496b9b], 0
je short loc_0043c19a  ; je 0x43c19a
mov edx, dword [esp + 0x8c]
mov eax, edx
shl eax, 2
add eax, edx
mov word [eax*4 + ref_0048c436], 2  ; mov word [eax*4 + 0x48c436], 2

loc_0043c19a:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 52)], 0  ; cmp byte [eax + 0x496b9c], 0
je short loc_0043c1be  ; je 0x43c1be
mov esi, dword [esp + 0x8c]
mov eax, esi
shl eax, 2
add eax, esi
mov word [eax*4 + ref_0048c436], 3  ; mov word [eax*4 + 0x48c436], 3

loc_0043c1be:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 53)], 0  ; cmp byte [eax + 0x496b9d], 0
je short loc_0043c1e2  ; je 0x43c1e2
mov edx, dword [esp + 0x8c]
mov eax, edx
shl eax, 2
add eax, edx
mov word [eax*4 + ref_0048c436], 4  ; mov word [eax*4 + 0x48c436], 4

loc_0043c1e2:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 54)], 0  ; cmp byte [eax + 0x496b9e], 0
je short loc_0043c206  ; je 0x43c206
mov edx, dword [esp + 0x8c]
mov eax, edx
shl eax, 2
add eax, edx
mov word [eax*4 + ref_0048c436], 5  ; mov word [eax*4 + 0x48c436], 5

loc_0043c206:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
je short loc_0043c22a  ; je 0x43c22a
mov edx, dword [esp + 0x8c]
mov eax, edx
shl eax, 2
add eax, edx
mov word [eax*4 + ref_0048c436], 6  ; mov word [eax*4 + 0x48c436], 6

loc_0043c22a:
cmp ebx, ebp
jne short loc_0043c246  ; jne 0x43c246
mov esi, dword [esp + 0x8c]
mov eax, esi
shl eax, 2
add eax, esi
mov word [eax*4 + ref_0048c436], 7  ; mov word [eax*4 + 0x48c436], 7

loc_0043c246:
mov edx, ebx
inc edx
mov eax, dword [esp + 0x8c]
mov esi, eax
shl esi, 2
add esi, eax
mov word [esi*4 + ref_0048c434], dx  ; mov word [esi*4 + 0x48c434], dx
push 0
push 0
imul edi, ebx, 0x68
xor edx, edx
mov dl, byte [edi + (_rich4_all_players_state + 19)]  ; mov dl, byte [edi + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
add eax, 0x1b
push eax
mov eax, dword [_rich4_panel_mkf]  ; mov eax, dword [0x48a05c]
push eax
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [esi*4 + ref_0048c43c], eax  ; mov dword [esi*4 + 0x48c43c], eax
push 0
push 0
xor edx, edx
mov dl, byte [edi + (_rich4_all_players_state + 19)]  ; mov dl, byte [edi + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
add eax, 0x1c
push eax
mov edx, dword [_rich4_panel_mkf]  ; mov edx, dword [0x48a05c]
push edx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [esi*4 + ref_0048c440], eax  ; mov dword [esi*4 + 0x48c440], eax
push 0
push 0
xor edx, edx
mov dl, byte [edi + (_rich4_all_players_state + 19)]  ; mov dl, byte [edi + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
add eax, 0x1d
push eax
mov ecx, dword [_rich4_panel_mkf]  ; mov ecx, dword [0x48a05c]
push ecx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [esi*4 + ref_0048c444], eax  ; mov dword [esi*4 + 0x48c444], eax
inc dword [esp + 0x8c]

loc_0043c2ef:
inc ebx
jmp near loc_0043c110  ; jmp 0x43c110

loc_0043c2f5:
push 0
push 0
push 0x71
push 0x8e
call fcn_00451a5a  ; call 0x451a5a
add esp, 0x10
mov dword [ref_0048c484], eax  ; mov dword [0x48c484], eax
cmp dword [esp + 0x8c], 0
je near loc_0043c868  ; je 0x43c868
push 0
push 3
push 0x101010
push 0xffffff
push 0x12
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
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
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0x18
push 0x7b
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x138
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x3f
push 0x43
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xd8
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0xb4
push 0xe8
mov ebx, dword [ref_0048c49c]  ; mov ebx, dword [0x48c49c]
mov edx, dword [ref_0048c494]  ; mov edx, dword [0x48c494]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
lea eax, [ebx + 0xc]
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0
push 0xf2
push 0xb6
push ref_004650a6  ; push 0x4650a6
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov ebx, dword [ref_0048c488]  ; mov ebx, dword [0x48c488]
push ebx
push ref_00465050  ; push 0x465050
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 1
push 0x106
push 0x110
lea eax, [esp + 0xc]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
xor ebx, ebx
mov dword [esp + 0x8c], 0x50
xor ebp, ebp
xor edi, edi
jmp near loc_0043c5d9  ; jmp 0x43c5d9

loc_0043c43c:
mov ax, word [eax + ref_0048c434]  ; mov ax, word [eax + 0x48c434]
and eax, 0xffff
dec eax
imul eax, eax, 0x68
mov ecx, dword [eax + (_rich4_all_players_state + 28)]  ; mov ecx, dword [eax + 0x496b84]
push ecx
push ref_00465050  ; push 0x465050
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 6
push esi
push 0x26c

loc_0043c46d:
lea eax, [esp + 0xc]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 2
cmp word [eax + ref_0048c436], 7  ; cmp word [eax + 0x48c436], 7
je short loc_0043c4af  ; je 0x43c4af
mov edx, dword [esp + 0x8c]
push edx
push 0x24e
push 0
mov ecx, dword [eax + ref_0048c440]  ; mov ecx, dword [eax + 0x48c440]
push ecx
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
jmp short loc_0043c4cb  ; jmp 0x43c4cb

loc_0043c4af:
mov ecx, dword [esp + 0x8c]
push ecx
push 0x24e
push 0
mov esi, dword [eax + ref_0048c43c]  ; mov esi, dword [eax + 0x48c43c]
push esi
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax

loc_0043c4cb:
call fcn_0045663e  ; call 0x45663e
add esp, 0x14
mov edx, ebx
mov eax, ebx
shl eax, 2
add eax, ebx
xor esi, esi
mov word [eax*4 + ref_0048c434], si  ; mov word [eax*4 + 0x48c434], si
xor edx, ebx
mov word [eax*4 + ref_0048c436], dx  ; mov word [eax*4 + 0x48c436], dx
jmp near loc_0043c5c7  ; jmp 0x43c5c7

loc_0043c4f5:
inc edi
test ebp, ebp
jne short loc_0043c551  ; jne 0x43c551
mov ebp, 1
mov edx, dword [esp + 0x8c]
push edx
push 0x24e
mov ax, word [eax + ref_0048c434]  ; mov ax, word [eax + 0x48c434]
and eax, 0xffff
sub eax, ebp
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
lea edx, [eax + 0x4e]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0xc
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10

loc_0043c551:
mov esi, ebx
shl esi, 2
add esi, ebx
shl esi, 2
xor eax, eax
mov ax, word [esi + ref_0048c434]  ; mov ax, word [esi + 0x48c434]
dec eax
imul eax, eax, 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
push edx
push ref_00465050  ; push 0x465050
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 6
mov eax, dword [esp + 0x90]
add eax, 0xe
push eax
push 0x26c
lea eax, [esp + 0xc]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov ecx, dword [esp + 0x8c]
push ecx
push 0x24e
push 0
mov eax, dword [esi + ref_0048c43c]  ; mov eax, dword [esi + 0x48c43c]
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045663e  ; call 0x45663e
add esp, 0x14

loc_0043c5c7:
add dword [esp + 0x8c], 0x78

loc_0043c5cf:
inc ebx
cmp ebx, 4
jge near loc_0043c680  ; jge 0x43c680

loc_0043c5d9:
mov esi, ebx
shl esi, 2
add esi, ebx
shl esi, 2
mov ax, word [esi + ref_0048c434]  ; mov ax, word [esi + 0x48c434]
test ax, ax
je short loc_0043c5cf  ; je 0x43c5cf
xor edx, edx
mov dx, ax
lea eax, [edx - 1]
imul eax, eax, 0x68
test byte [eax + (_rich4_all_players_state + 21)], 6  ; test byte [eax + 0x496b7d], 6
je short loc_0043c624  ; je 0x43c624
cmp word [esi + ref_0048c436], 0  ; cmp word [esi + 0x48c436], 0
jne short loc_0043c624  ; jne 0x43c624
mov eax, dword [esp + 0xb0]
push eax
push edx
call fcn_00439f0d  ; call 0x439f0d
add esp, 8
mov dword [esi + ref_0048c438], eax  ; mov dword [esi + 0x48c438], eax

loc_0043c624:
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 2
cmp word [eax + ref_0048c436], 0  ; cmp word [eax + 0x48c436], 0
je near loc_0043c4f5  ; je 0x43c4f5
mov esi, dword [esp + 0x8c]
add esi, 0xe
mov dx, word [eax + ref_0048c436]  ; mov dx, word [eax + 0x48c436]
cmp dx, 8
je near loc_0043c43c  ; je 0x43c43c
mov eax, edx
and eax, 0xffff
mov edx, dword [eax*4 + (_player_state_strings - 4)]  ; mov edx, dword [eax*4 + 0x475b34]
push edx
lea eax, [esp + 4]
push eax
call _strcpy  ; call 0x457d96
add esp, 8
push 2
push esi
push 0x24e
jmp near loc_0043c46d  ; jmp 0x43c46d

loc_0043c680:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0x101010
push 0
push 0
push 0x3c
push 0x19a
mov eax, dword [ref_0048c49c]  ; mov eax, dword [0x48c49c]
add eax, 0x24
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
push ref_00475bba  ; push 0x475bba
call fcn_00454176  ; call 0x454176
add esp, 4
cmp dword [esp + 0xb4], 0
je short loc_0043c6db  ; je 0x43c6db
push 5
call fcn_004549cf  ; call 0x4549cf
add esp, 4
mov dword [esp + 0x84], eax

loc_0043c6db:
push edi
push fcn_0043a2dd  ; push 0x43a2dd
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
mov dword [esp + 0x8c], eax
cmp dword [esp + 0xb4], 0
je short loc_0043c709  ; je 0x43c709
cmp dword [esp + 0x84], 0
je short loc_0043c709  ; je 0x43c709
call fcn_00454bcc  ; call 0x454bcc

loc_0043c709:
push ref_00475bba  ; push 0x475bba
call fcn_00454240  ; call 0x454240
add esp, 4
mov esi, dword [esp + 0x8c]
cmp esi, 0xffffffff
je near loc_0043c868  ; je 0x43c868
mov eax, esi
shl eax, 2
add eax, esi
mov ax, word [eax*4 + ref_0048c434]  ; mov ax, word [eax*4 + 0x48c434]
and eax, 0xffff
mov dword [esp + 0x8c], eax
cmp dword [ref_0048c490], 0  ; cmp dword [0x48c490], 0
jne short loc_0043c751  ; jne 0x43c751
mov eax, dword [ref_0048c48c]  ; mov eax, dword [0x48c48c]
jmp short loc_0043c756  ; jmp 0x43c756

loc_0043c751:
mov eax, dword [ref_0048c498]  ; mov eax, dword [0x48c498]

loc_0043c756:
xor ebx, ebx
mov bl, byte [eax + 0x19]
movsx edx, word [eax]
movsx eax, word [eax + 2]
push 4
push eax
push edx
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0x3e8
call fcn_004528b9  ; call 0x4528b9
add esp, 4
cmp ebx, dword [esp + 0x8c]
je near loc_0043c83b  ; je 0x43c83b
mov eax, dword [ref_00499110]  ; mov eax, dword [0x499110]
shl eax, 2
cmp dword [ref_0048c490], 0  ; cmp dword [0x48c490], 0
jne short loc_0043c7d3  ; jne 0x43c7d3
cmp dword [ref_00499110], 0  ; cmp dword [0x499110], 0
je short loc_0043c7cc  ; je 0x43c7cc
mov edx, dword [ref_0048c48c]  ; mov edx, dword [0x48c48c]
cmp byte [edx + 0x19], 0
jne short loc_0043c7cc  ; jne 0x43c7cc
mov ebp, dword [eax + ref_004751f0]  ; mov ebp, dword [eax + 0x4751f0]
push ebp
mov eax, dword [(_global_rich4_cfg + 8)]  ; mov eax, dword [0x497160]
push eax
call fcn_004521cb  ; call 0x4521cb
add esp, 8
mov edx, dword [ref_0048c48c]  ; mov edx, dword [0x48c48c]
mov dword [edx + 0x30], eax

loc_0043c7cc:
mov eax, dword [ref_0048c48c]  ; mov eax, dword [0x48c48c]
jmp short loc_0043c80c  ; jmp 0x43c80c

loc_0043c7d3:
cmp dword [ref_00499110], 0  ; cmp dword [0x499110], 0
je short loc_0043c807  ; je 0x43c807
mov edx, dword [ref_0048c498]  ; mov edx, dword [0x48c498]
cmp byte [edx + 0x19], 0
jne short loc_0043c807  ; jne 0x43c807
mov ebx, dword [eax + ref_004751f0]  ; mov ebx, dword [eax + 0x4751f0]
push ebx
mov esi, dword [(_global_rich4_cfg + 8)]  ; mov esi, dword [0x497160]
push esi
call fcn_004521cb  ; call 0x4521cb
add esp, 8
mov edx, dword [ref_0048c498]  ; mov edx, dword [0x48c498]
mov dword [edx + 0x34], eax

loc_0043c807:
mov eax, dword [ref_0048c498]  ; mov eax, dword [0x48c498]

loc_0043c80c:
mov dl, byte [esp + 0x8c]
mov byte [eax + 0x19], dl
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0x3e8
call fcn_004528b9  ; call 0x4528b9
add esp, 4

loc_0043c83b:
push 0
mov edx, dword [ref_0048c488]  ; mov edx, dword [0x48c488]
push edx
mov ecx, dword [esp + 0xb4]
push ecx
mov eax, dword [esp + 0x98]
dec eax
push eax
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
mov dword [esp + 0x88], 1

loc_0043c868:
mov esi, dword [ref_0048c49c]  ; mov esi, dword [0x48c49c]
push esi
call _libc_free  ; call 0x456e11
add esp, 4
xor ebx, ebx
jmp short loc_0043c881  ; jmp 0x43c881

loc_0043c87b:
inc ebx
cmp ebx, 4
jge short loc_0043c8da  ; jge 0x43c8da

loc_0043c881:
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 2
mov edi, dword [eax + ref_0048c43c]  ; mov edi, dword [eax + 0x48c43c]
test edi, edi
je short loc_0043c89e  ; je 0x43c89e
push edi
call _libc_free  ; call 0x456e11
add esp, 4

loc_0043c89e:
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 2
mov edx, dword [eax + ref_0048c440]  ; mov edx, dword [eax + 0x48c440]
test edx, edx
je short loc_0043c8bb  ; je 0x43c8bb
push edx
call _libc_free  ; call 0x456e11
add esp, 4

loc_0043c8bb:
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 2
mov esi, dword [eax + ref_0048c444]  ; mov esi, dword [eax + 0x48c444]
test esi, esi
je short loc_0043c87b  ; je 0x43c87b
push esi
call _libc_free  ; call 0x456e11
add esp, 4
jmp short loc_0043c87b  ; jmp 0x43c87b

loc_0043c8da:
mov ebp, dword [ref_0048c484]  ; mov ebp, dword [0x48c484]
push ebp
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, dword [esp + 0x88]
add esp, 0x98
pop ebp
pop edi
pop esi
pop ebx
ret

section .data

ref_00464ea8:
dd 0x4ab1eda6
db 0xa4
db 0xa4
db 0x00

ref_00464eaf:
db 0xae
dd 0xa4a2a5f8
db 0xa4
db 0x00

ref_00464eb6:
db 0xa7
db 0xa4
dd 0xa4a463a8
db 0x00

ref_00464ebd:
db 0xa6
db 0xed
db 0xb0
dd 0x00a4a47c

ref_00464ec4:
dd 0x76af56a5
db 0xa4
db 0xa4
db 0x00

ref_00464ecb:
db 0xb9
dd 0xa443b9da
db 0xa4
db 0x00

ref_00464ed2:
db 0xbd
db 0xe6
db 0xa4
db 0xe8
db 0x00

ref_00464ed7:
db 0x23
dd 0x36333130
dd 0xdfb3a5ae
dd 0xabbff9ac
dd 0xcac1ecb3
dd 0xb9a66fb1
dd 0x49a161a6
db 0x00

ref_00464ef1:
db 0x23
db 0x30
db 0x31
dd 0xa5ae3733
dd 0x46a8dfb3
dd 0xdaa4a9b6
dd 0xcac1b5b4
dd 0xb9a66fb1
dd 0x49a161a6
db 0x00

ref_00464f0d:
db 0x23
db 0x30
db 0x31
dd 0xa5ae3833
dd 0xd4a7dfb3
dd 0xa6add3a4
dd 0x6fb1cac1
dd 0x61a6b9a6
db 0xa1
db 0x49
db 0x00

ref_00464f27:
db 0x23
dd 0x39333130
dd 0xdfb3a5ae
dd 0xd2a4fabf
dd 0xcac148a4
dd 0xb9a66fb1
dd 0x49a161a6
db 0x00

ref_00464f41:
db 0x23
db 0x30
db 0x31
dd 0xa5ae3034
dd 0xfcaadfb3
dd 0x42a767a4
dd 0x6fb1cac1
dd 0x61a6b9a6
db 0xa1
db 0x49
db 0x00

ref_00464f5b:
db 0x23
dd 0x31343130
dd 0xdfb3a5ae
dd 0xd4a9efb2
dd 0x44a5bda4
dd 0x6fb1cac1
dd 0x61a6b9a6
db 0xa1
db 0x49
db 0x00

ref_00464f77:
db 0x23
dd 0x32343130
dd 0xdfb3a5ae
dd 0xbba563ae
dd 0xc3c25fc4
dd 0x6fb1cac1
dd 0x61a6b9a6
db 0xa1
db 0x49
db 0x00

ref_00464f93:
db 0x23
dd 0x33343130
dd 0xdfb3a5ae
dd 0x7dbf7dbf
dd 0x6fb1cac1
dd 0x61a6b9a6
db 0xa1
db 0x49
db 0x00

ref_00464fab:
db 0x23
dd 0x34343130
dd 0xdfb3a5ae
dd 0x7dab51af
dd 0x6fb1cac1
dd 0x61a6b9a6
db 0xa1
db 0x49
db 0x00

ref_00464fc3:
db 0x23
dd 0x35343130
dd 0xdfb3a5ae
dd 0x70a45dae
dd 0xcac1fcac
dd 0xb9a66fb1
dd 0x49a161a6
db 0x00

ref_00464fdd:
db 0x23
db 0x30
db 0x31
dd 0xa5ae3634
dd 0x70a4dfb3
dd 0xa7a5a6a4
dd 0x6fb1cac1
dd 0x61a6b9a6
db 0xa1
db 0x49
db 0x00

ref_00464ff7:
db 0x23
dd 0x37343130
dd 0xdfb3a5ae
dd 0xa9a8f7aa
dd 0xcac1a9a8
dd 0xb9a66fb1
dd 0x49a161a6
dd 0x00000000

ref_00465014:
dd 0x46fffe00

ref_00465018:
dd 0x33333333
dd 0x3fd33333

ref_00465020:
dd 0x00000000
dd 0x3fe00000

ref_00465028:
dd 0x40800000

ref_0046502c:
dd 0x40c00000

ref_00465030:
dd 0x37800000

ref_00465034:
dd 0x40400000

ref_00465038:
dd 0x33313023
dd 0xb6bda431
dd 0xbde7a97d
dd 0xa667a4e6
dd 0xb340a461
dd 0x0043a142

ref_00465050:
dd 0xb8a46425
db 0x00

ref_00465055:
db 0xa2
db 0xde
db 0xa2
dd 0xa2e1a2cf
db 0xe1
db 0x00

ref_0046505e:
db 0xa9
db 0xf1
db 0xb1
db 0xf3
db 0x00

ref_00465063:
db 0x23
dd 0x38343130
dd 0x48a44cb5
dd 0xf9bb58a5
dd 0xc5ab41a1
dd 0x79ac47a7
dd 0x43a1d0bc
db 0x00

ref_0046507d:
db 0x23
db 0x30
db 0x31
dd 0xb3a93233
dd 0x6425f9bb
dd 0xbd0ab8a4
dd 0xaa4eb7d0
dd 0xbb58a5cc
dd 0x0043a1f9

ref_00465098:
dd 0x33313023
dd 0xa4642535
dd 0xa5a8a6b8
db 0xe6
db 0x00

ref_004650a6:
db 0xbc
db 0xd0
dd 0x47a1f9bb
dd 0x00000000

ref_004650b0:
dd 0x3f000000


_player_state_strings:
dd ref_00464ea8
dd ref_00464eaf
dd ref_00464eb6
dd ref_00464ebd
dd ref_00464ec4
dd ref_00464ecb
dd ref_00464ed2

ref_00475b54:
dd ref_00464ed7
dd ref_00464ef1
dd ref_00464f0d
dd ref_00464f27
dd ref_00464f41
dd ref_00464f5b
dd ref_00464f77
dd ref_00464f93
dd ref_00464fab
dd ref_00464fc3
dd ref_00464fdd
dd ref_00464ff7

ref_00475b84:
dd 0x00000085
dd 0x000000b5
dd 0x000000e5
dd 0x00000115
dd 0x00000145
dd 0x00000175
dd 0x000001a5

ref_00475ba0:
db 0x1a
db 0x1b

ref_00475ba2:
db 0x1a

ref_00475ba3:
db 0x12
dd 0x00641213
dd 0x01f40000
dd 0x03e80000
dd 0x13880000
dd 0x27100000
db 0x00
db 0x00

ref_00475bba:
db 0x1d
db 0x00
dd 0x00000000
db 0x00
db 0x00

ref_00475bc2:
db 0x3f
db 0x00
dd 0x00000000
dd 0xffff0000
dd 0x0000ffff
db 0x00
db 0x00

ref_00475bd2:
db 0x86
db 0x00
dd 0x00a70000
dd 0x00970000
dd 0x00330000
db 0x00
db 0x00

ref_00475be2:
db 0x96
db 0x00
dd 0x00b70000
dd 0x00a70000
dd 0x003e0000
dd 0x00000000

section .bss

ref_0048c434:
resb 2

ref_0048c436:
resb 2

ref_0048c438:
resb 4

ref_0048c43c:
resb 4

ref_0048c440:
resb 4

ref_0048c444:
resb 64

ref_0048c484:
resb 4

ref_0048c488:
resb 4

ref_0048c48c:
resb 4

ref_0048c490:
resb 4

ref_0048c494:
resb 4

ref_0048c498:
resb 4

ref_0048c49c:
resb 4

ref_0048c4a0:
resb 4

ref_0048c4a4:
resb 1

ref_0048c4a5:
resb 1

ref_0048c4a6:
resb 2

ref_0048c4a8:
resb 4

ref_0048c4ac:
resb 1

ref_0048c4ad:
resb 1

ref_0048c4ae:
resb 1

ref_0048c4af:
resb 1

ref_0048c4b0:
resb 1

ref_0048c4b1:
resb 3
