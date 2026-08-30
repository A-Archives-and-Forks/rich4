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
extern _global_rich4_cfg
extern _libc_free
extern _libc_rand
extern _libc_sprintf
extern _memset
extern _rich4_num_players
extern _read_mkf
extern _rich4_create_font
extern _rich4_draw_text
extern _strcat
extern _strlen
extern fcn_004021f8
extern fcn_00402250
extern fcn_0040235d
extern fcn_00402460
extern fcn_0041d3f4
extern fcn_0044ec30
extern fcn_0044ecb6
extern fcn_0044ee18
extern fcn_0044ef3b
extern fcn_00450ced
extern fcn_00450f04
extern _rich4_num_to_currency_string
extern fcn_0045285e
extern fcn_00454176
extern fcn_00454240
extern fcn_004542ce
extern fcn_004549cf
extern fcn_00454bcc
extern fcn_004552e7
extern fcn_004563f5
extern fcn_00456418
extern fcn_0045643d
extern fcn_00456495
extern ref_004645d4
extern ref_004645d9
extern ref_0046caec
extern ref_0046caf4
extern ref_0046cb01
extern ref_004755f8
extern ref_004755fc
extern ref_00475600
extern ref_00475610
extern ref_00475614
extern ref_00475618
extern ref_0047561c
extern ref_00475620
extern ref_00475624
extern ref_00475628
extern ref_0047562c
extern ref_00475630
extern ref_00475660
extern ref_00475663
extern ref_00475667
extern ref_0047566b
extern ref_0047567b
extern ref_00475683
extern ref_00482332
extern _rich4_panel_mkf
extern ref_0048a068
extern ref_0048a08c
extern _rich4_ddraw_primary_sf_ptr
extern _rich4_ddraw_offscreen_sf_ptr
extern ref_0048bad8
extern ref_0048c34c
extern ref_0048c350
extern ref_0048c351
extern ref_0048c354
extern ref_0048c358
extern ref_0048c35c
extern ref_0048c360
extern ref_0048c364
extern ref_0048c368
extern ref_0048c36c
extern ref_0048c370
extern ref_0048c371
extern ref_0048c372
extern ref_0048c373
extern ref_0048c377
extern ref_0048c37b
extern ref_0048c37c
extern ref_0048c37d
extern ref_0048c37e
extern ref_00499080
extern ref_004990b7
extern ref_004990b8

extern _rich4_ui_letou_bar_entry
extern _rich4_ui_letou_kaijiang_entry

section .text

ref_0042f30c:
dd 0x00000010
dd 0x00000154
dd 0x00000010
dd 0x0000019a
dd 0x00000148
dd 0x00000154
dd 0x00000148
dd 0x0000019a

fcn_0042f32c:
push ebx
push esi
push edi
xor esi, esi
mov ebx, 0x1f
mov edi, 0x110
jmp short loc_0042f343  ; jmp 0x42f343

loc_0042f33d:
inc esi
cmp esi, 0x24
jge short loc_0042f37a  ; jge 0x42f37a

loc_0042f343:
cmp byte [esi + ref_004990b8], 0  ; cmp byte [esi + 0x4990b8], 0
je short loc_0042f365  ; je 0x42f365
push 0xfffffffffffffff6
push 0x2e
push 0x3e
push edi
push ebx
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0xc
push eax
call fcn_004552e7  ; call 0x4552e7
add esp, 0x18

loc_0042f365:
add ebx, 0x40
cmp ebx, 0x25f
jne short loc_0042f33d  ; jne 0x42f33d
mov ebx, 0x1f
add edi, 0x30
jmp short loc_0042f33d  ; jmp 0x42f33d

loc_0042f37a:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov ebx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [ebx + 0x64]  ; ucall
push 0
push 0
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0xfffffffffffffffb
push 0xd2
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x18
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov ebx, dword [eax]
push 0
push eax
call dword [ebx + 0x80]  ; ucall
push 0
push 0x101010
push 0
push 0x14
push 0x14
push 0x168
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x6c
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
push 5
push 8
push 8
mov ebx, dword [ref_0048c364]  ; mov ebx, dword [0x48c364]
push ebx
call fcn_00450ced  ; call 0x450ced
add esp, 0x10
pop edi
pop esi
pop ebx
ret

fcn_0042f417:
push ebx
push esi
push edi
push ebp
sub esp, 0x7c
mov ecx, 8
lea edi, [esp + 0x4c]
mov esi, ref_0042f30c  ; mov esi, 0x42f30c
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
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
xor edx, edx
mov dword [esp + 0x70], edx
mov dword [esp + 0x74], edx

loc_0042f458:
mov eax, dword [esp + 0x70]
cmp eax, dword [_rich4_num_players]  ; cmp eax, dword [0x499114]
jge near loc_0042f6ab  ; jge 0x42f6ab
imul esi, eax, 0x68
cmp byte [esi + (_rich4_all_players_state + 21)], 0  ; cmp byte [esi + 0x496b7d], 0
je near loc_0042f6a2  ; je 0x42f6a2
push 0xfffffffffffffff0
push 0x3c
push 0x128
mov ebx, dword [esp + 0x80]
mov ebp, dword [esp + ebx*8 + 0x5c]
push ebp
mov eax, dword [esp + ebx*8 + 0x5c]
push eax
push ref_0046caec  ; push 0x46caec
call fcn_004552e7  ; call 0x4552e7
add esp, 0x18
mov eax, dword [esp + ebx*8 + 0x50]
add eax, 0x1e
push eax
mov eax, dword [esp + ebx*8 + 0x50]
add eax, 0x14
push eax
xor eax, eax
mov al, byte [esi + (_rich4_all_players_state + 19)]  ; mov al, byte [esi + 0x496b7b]
lea edx, [eax + 0x19]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c360]  ; mov edx, dword [0x48c360]
add edx, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
xor dl, dl
mov byte [esp], dl
xor edi, edi
jmp short loc_0042f4ee  ; jmp 0x42f4ee

loc_0042f4e8:
inc edi
cmp edi, 0x24
jge short loc_0042f52c  ; jge 0x42f52c

loc_0042f4ee:
xor edx, edx
mov dl, byte [edi + ref_004990b8]  ; mov dl, byte [edi + 0x4990b8]
mov eax, dword [esp + 0x70]
inc eax
cmp edx, eax
jne short loc_0042f4e8  ; jne 0x42f4e8
lea eax, [edi + 1]
push eax
push ref_004645d4  ; push 0x4645d4
lea eax, [esp + 0x80]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
lea eax, [esp + 0x78]
push eax
lea eax, [esp + 4]
push eax
call _strcat  ; call 0x4582fc
add esp, 8
jmp short loc_0042f4e8  ; jmp 0x42f4e8

loc_0042f52c:
mov eax, esp
push eax
call _strlen  ; call 0x45825d
add esp, 4
mov edi, eax
test eax, eax
je near loc_0042f69e  ; je 0x42f69e
cmp eax, 0xc
jg near loc_0042f5df  ; jg 0x42f5df
xor ebx, ebx
mov eax, dword [esp + 0x74]
mov esi, dword [esp + eax*8 + 0x4c]
add esi, 0x36
mov ebp, dword [esp + 0x74]

loc_0042f55b:
cmp ebx, edi
jge near loc_0042f69e  ; jge 0x42f69e
mov eax, dword [esp + ebp*8 + 0x50]
add eax, 0x1e
push eax
push esi
xor edx, edx
mov dl, byte [esp + ebx + 8]
sub edx, 0x30
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c368]  ; mov edx, dword [0x48c368]
add edx, 0xc
add eax, edx
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [esp + ebp*8 + 0x50]
add eax, 0x1e
push eax
lea eax, [esi + 0x10]
push eax
xor eax, eax
mov al, byte [esp + ebx + 9]
lea edx, [eax - 0x30]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c368]  ; mov eax, dword [0x48c368]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
add ebx, 2
add esi, 0x28
jmp near loc_0042f55b  ; jmp 0x42f55b

loc_0042f5df:
cmp eax, 0x18
jle short loc_0042f5e9  ; jle 0x42f5e9
mov edi, 0x18

loc_0042f5e9:
xor ebx, ebx
mov eax, dword [esp + 0x74]
mov esi, dword [esp + eax*8 + 0x4c]
add esi, 0x36
mov dword [esp + 0x6c], 0xf

loc_0042f5fe:
cmp ebx, edi
jge near loc_0042f69e  ; jge 0x42f69e
mov ebp, dword [esp + 0x74]
shl ebp, 3
mov eax, dword [esp + ebp + 0x50]
add eax, dword [esp + 0x6c]
push eax
push esi
xor eax, eax
mov al, byte [esp + ebx + 8]
lea edx, [eax - 0x30]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c368]  ; mov eax, dword [0x48c368]
add eax, 0xc
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [esp + ebp + 0x50]
add eax, dword [esp + 0x6c]
push eax
lea eax, [esi + 0x10]
push eax
xor eax, eax
mov al, byte [esp + ebx + 9]
lea edx, [eax - 0x30]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c368]  ; mov eax, dword [0x48c368]
add eax, 0xc
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
cmp ebx, 0xa
jne short loc_0042f693  ; jne 0x42f693
mov esi, dword [esp + ebp + 0x4c]
add esi, 0xe
add dword [esp + 0x6c], 0x1e

loc_0042f693:
add ebx, 2
add esi, 0x28
jmp near loc_0042f5fe  ; jmp 0x42f5fe

loc_0042f69e:
inc dword [esp + 0x74]

loc_0042f6a2:
inc dword [esp + 0x70]
jmp near loc_0042f458  ; jmp 0x42f458

loc_0042f6ab:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
add esp, 0x7c
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0042f6c3:
push ebx
push esi
sub esp, 0x4c
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
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
push 0x42
push 0x1d8
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x18
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x42
push 7
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x30
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0
push 2
push 0
push 0x4f35b1
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 2
push 0xc1
push 0x4d
push ref_004645d9  ; push 0x4645d9
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 0
push 2
push 0
push 0xff0000
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov byte [esp], 0x24
mov esi, dword [ref_00499080]  ; mov esi, dword [0x499080]
push esi
lea eax, [esp + 5]
push eax
call _rich4_num_to_currency_string  ; call 0x452793
add esp, 8
push 2
push 0xe4
push 0x4d
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
push 0x101010
push 0
push 0xfffffffffffffff6
push 0x2f
push 0x12c
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x114
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
call fcn_0042f417  ; call 0x42f417
add esp, 0x4c
pop esi
pop ebx
ret

endloc_0042f7e7:
db 0x90

ref_0042f7e8:  ; may contain a jump table
dd loc_0042fa88
dd loc_0042fac5
dd loc_0042fa9e
dd loc_0042fae5
dd loc_0042faf8

fcn_0042f7fc:
push ebx
push esi
push edi
push ebp
sub esp, 0x5c
mov ebp, dword [esp + 0x70]
mov eax, dword [esp + 0x74]
mov ebx, dword [esp + 0x78]
mov edi, dword [esp + 0x7c]
cmp eax, 0x203
jb short loc_0042f85a  ; jb 0x42f85a
jbe near loc_0042fe8c  ; jbe 0x42fe8c
cmp eax, 0x401
jb short loc_0042f84a  ; jb 0x42f84a
jbe short loc_0042f885  ; jbe 0x42f885
cmp eax, 0x405
jb near loc_004300c0  ; jb 0x4300c0
jbe near loc_0042f930  ; jbe 0x42f930
cmp eax, 0x406
je near loc_0042f94f  ; je 0x42f94f
jmp near loc_004300c0  ; jmp 0x4300c0

loc_0042f84a:
cmp eax, 0x205
je near loc_0043003d  ; je 0x43003d
jmp near loc_004300c0  ; jmp 0x4300c0

loc_0042f85a:
cmp eax, 0x113
jb short loc_0042f877  ; jb 0x42f877
jbe near loc_0042fa2f  ; jbe 0x42fa2f
cmp eax, 0x201
je near loc_0042fe8c  ; je 0x42fe8c
jmp near loc_004300c0  ; jmp 0x4300c0

loc_0042f877:
cmp eax, 0xf
je near loc_00430062  ; je 0x430062
jmp near loc_004300c0  ; jmp 0x4300c0

loc_0042f885:
xor bh, bh
mov byte [ref_0048c370], bh  ; mov byte [0x48c370], bh
mov byte [ref_0048c371], bh  ; mov byte [0x48c371], bh
xor eax, eax
mov dword [ref_0048c34c], eax  ; mov dword [0x48c34c], eax
mov dword [ref_0048c350], eax  ; mov dword [0x48c350], eax
xor ch, ch
mov byte [ref_0048c372], ch  ; mov byte [0x48c372], ch
call fcn_0042f32c  ; call 0x42f32c
push 0
push 0x64
mov ecx, dword [_callbackSize]  ; mov ecx, dword [0x46cad8]
push ecx
push ebp
call dword [cs:__imp__SetTimer@16]  ; ucall: call dword cs:[0x462324]
mov dword [ref_0048c36c], eax  ; mov dword [0x48c36c], eax
push 0
push 0
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp dword [eax + (_rich4_all_players_state + 28)], 0x3e8  ; cmp dword [eax + 0x496b84], 0x3e8
jge short loc_0042f8f6  ; jge 0x42f8f6
push 4
push 4

loc_0042f8e7:
push 0x405
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
jmp short loc_0042f90c  ; jmp 0x42f90c

loc_0042f8f6:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0042f905  ; je 0x42f905
push 0
push 1
jmp short loc_0042f8e7  ; jmp 0x42f8e7

loc_0042f905:
mov byte [ref_0048c370], 3  ; mov byte [0x48c370], 3

loc_0042f90c:
push 0
push 1
push 0x1c
call fcn_004021f8  ; call 0x4021f8
add esp, 0xc
push 1
call fcn_00402460  ; call 0x402460

loc_0042f921:
add esp, 4

loc_0042f924:
xor eax, eax

loc_0042f926:
add esp, 0x5c

loc_0042f929:
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

loc_0042f930:
mov byte [ref_0048c370], bl  ; mov byte [0x48c370], bl
mov ebp, dword [edi*4 + ref_004755f8]  ; mov ebp, dword [edi*4 + 0x4755f8]
push ebp
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
mov byte [ref_0048c372], 2  ; mov byte [0x48c372], 2
jmp short loc_0042f924  ; jmp 0x42f924

loc_0042f94f:
call fcn_0044ef3b  ; call 0x44ef3b
test eax, eax
je short loc_0042f974  ; je 0x42f974
push 1
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
cmp byte [ref_0048c370], 3  ; cmp byte [0x48c370], 3
jbe short loc_0042f974  ; jbe 0x42f974
mov byte [ref_0048c370], 5  ; mov byte [0x48c370], 5
jmp short loc_0042f924  ; jmp 0x42f924

loc_0042f974:
mov dword [esp + 0x40], 0x9a
xor ecx, ecx
mov dword [esp + 0x44], ecx
mov dword [esp + 0x48], 0x1c2
mov edi, 0x101
mov dword [esp + 0x4c], edi
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push ecx
push 1
push ref_0048a068  ; push 0x48a068
push ecx
push eax
call dword [edx + 0x64]  ; ucall
push edi
push 0xe6
mov eax, dword [esp + 0x4c]
push eax
mov eax, dword [esp + 0x4c]
add eax, 0x42
push eax
mov edx, dword [esp + 0x54]
push edx
push eax
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0xc
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0xfffffffffffffff8
push 0x9a
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x24
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
lea eax, [esp + 0x44]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov byte [ref_0048c370], 5  ; mov byte [0x48c370], 5
mov edi, dword [ebx*4 + ref_004755f8]  ; mov edi, dword [ebx*4 + 0x4755f8]
push edi
call fcn_0044ecb6  ; call 0x44ecb6
jmp near loc_0042f921  ; jmp 0x42f921

loc_0042fa2f:
cmp byte [ref_0048c370], 0  ; cmp byte [0x48c370], 0
je near loc_0042f924  ; je 0x42f924
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je near loc_0042f924  ; je 0x42f924
cmp ebx, dword [_callbackSize]  ; cmp ebx, dword [0x46cad8]
jne near loc_0042f924  ; jne 0x42f924
xor eax, eax
mov al, byte [ref_0048c372]  ; mov al, byte [0x48c372]
push eax
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
test eax, eax
je near loc_0042fa9e  ; je 0x42fa9e
mov al, byte [ref_0048c370]  ; mov al, byte [0x48c370]
dec al
cmp al, 4
ja near loc_0042fa9e  ; ja 0x42fa9e
and eax, 0xff
jmp dword [eax*4 + ref_0042f7e8]  ; ujmp: jmp dword [eax*4 + 0x42f7e8]

loc_0042fa88:
mov byte [ref_0048c370], 2  ; mov byte [0x48c370], 2
mov ecx, dword [ref_004755fc]  ; mov ecx, dword [0x4755fc]
push ecx
call fcn_0044ecb6  ; call 0x44ecb6

loc_0042fa9b:
add esp, 4

loc_0042fa9e:
cmp byte [ref_0048c370], 5  ; cmp byte [0x48c370], 5
je near loc_0042fd5f  ; je 0x42fd5f
mov eax, dword [ref_0048c350]  ; mov eax, dword [0x48c350]
and eax, 0xf
test eax, eax
jbe short loc_0042fb2a  ; jbe 0x42fb2a
cmp eax, 1
je near loc_0042fb48  ; je 0x42fb48
jmp near loc_0042fc24  ; jmp 0x42fc24

loc_0042fac5:
mov byte [ref_0048c370], 3  ; mov byte [0x48c370], 3
mov edx, dword [ref_00475600]  ; mov edx, dword [0x475600]
push edx
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
xor bl, bl
mov byte [ref_0048c372], bl  ; mov byte [0x48c372], bl
jmp short loc_0042fa9e  ; jmp 0x42fa9e

loc_0042fae5:
push 0
push 5
push 0x406
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
jmp short loc_0042fa9e  ; jmp 0x42fa9e

loc_0042faf8:
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
push 0
push 1
push 0x29
call fcn_004021f8  ; call 0x4021f8
add esp, 0xc
mov eax, dword [ref_0048c36c]  ; mov eax, dword [0x48c36c]
push eax
push ebp
call dword [cs:__imp__KillTimer@8]  ; ucall: call dword cs:[0x4622fc]
push 0
call _Post_0402_Message  ; call 0x401966
jmp near loc_0042fa9b  ; jmp 0x42fa9b

loc_0042fb2a:
call _libc_rand  ; call 0x456f2d
mov esi, eax
sar esi, 0xa
test esi, esi
jne near loc_0042fc24  ; jne 0x42fc24
or byte [ref_0048c350], 1  ; or byte [0x48c350], 1
jmp near loc_0042fc24  ; jmp 0x42fc24

loc_0042fb48:
mov esi, dword [ref_0048c350]  ; mov esi, dword [0x48c350]
and esi, 0xf0
sar esi, 4
mov dword [esp + 0x40], 0x111
mov edi, 0x3f
mov dword [esp + 0x44], edi
mov dword [esp + 0x48], 0x157
mov dword [esp + 0x4c], 0x69
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
cmp esi, 3
jge short loc_0042fbd4  ; jge 0x42fbd4
mov edi, dword [esp + 0x44]
push edi
mov eax, dword [esp + 0x44]
push eax
xor edx, edx
mov dl, byte [esi + ref_00475660]  ; mov dl, byte [esi + 0x475660]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
add dword [ref_0048c350], 0x10  ; add dword [0x48c350], 0x10
jmp short loc_0042fc05  ; jmp 0x42fc05

loc_0042fbd4:
push 0x2a
push 0x46
push 0x44
push edi
mov ecx, dword [esp + 0x54]
push ecx
mov ebx, dword [esp + 0x54]
push ebx
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x18
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
xor ch, ch
mov byte [ref_0048c350], ch  ; mov byte [0x48c350], ch

loc_0042fc05:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x44]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0042fc24:
call fcn_0044ef3b  ; call 0x44ef3b
test eax, eax
jne short loc_0042fc3a  ; jne 0x42fc3a
cmp dword [ref_0048c34c], 0  ; cmp dword [0x48c34c], 0
je near loc_0042fd5f  ; je 0x42fd5f

loc_0042fc3a:
mov dword [esp + 0x40], 0x111
mov dword [esp + 0x44], 0x69
mov dword [esp + 0x48], 0x157
mov dword [esp + 0x4c], 0x7b
mov ecx, dword [ref_0048c34c]  ; mov ecx, dword [0x48c34c]
test ecx, ecx
je short loc_0042fcc3  ; je 0x42fcc3
dec ecx
mov dword [ref_0048c34c], ecx  ; mov dword [0x48c34c], ecx
jne near loc_0042fd5f  ; jne 0x42fd5f
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push ecx
push 1
push ref_0048a068  ; push 0x48a068
push ecx
push eax
call dword [edx + 0x64]  ; ucall
push 0x12
push 0x46
push 0x6e
push 0x3f
mov esi, dword [esp + 0x54]
push esi
mov edi, dword [esp + 0x54]
push edi
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x18
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
jmp near loc_0042fd50  ; jmp 0x42fd50

loc_0042fcc3:
call _libc_rand  ; call 0x456f2d
mov esi, eax
sar esi, 0xb
cmp esi, 4
jge near loc_0042fd5f  ; jge 0x42fd5f
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
mov esi, dword [esp + 0x44]
push esi
call _libc_rand  ; call 0x456f2d
and eax, 1
lea edx, [eax + 5]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0xc
add eax, edx
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
call _libc_rand  ; call 0x456f2d
and eax, 7
mov dword [ref_0048c34c], eax  ; mov dword [0x48c34c], eax
jne short loc_0042fd50  ; jne 0x42fd50
mov dword [ref_0048c34c], 1  ; mov dword [0x48c34c], 1

loc_0042fd50:
push 0
lea eax, [esp + 0x44]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0042fd5f:
call fcn_00450f04  ; call 0x450f04
cmp byte [ref_0048c371], 0  ; cmp byte [0x48c371], 0
jne near loc_0042f924  ; jne 0x42f924
mov byte [ref_0048c371], 1  ; mov byte [0x48c371], 1
mov byte [esp + 0x50], 0x24
mov edx, dword [ref_00499080]  ; mov edx, dword [0x499080]
push edx
lea eax, [esp + 0x55]
push eax
call _rich4_num_to_currency_string  ; call 0x452793
add esp, 8
mov dword [esp + 0x40], 0x1c
mov dword [esp + 0x44], 0x1b
mov dword [esp + 0x48], 0xc8
mov dword [esp + 0x4c], 0x37
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
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x78
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
lea eax, [esp + 0x50]
push eax
call _strlen  ; call 0x45825d
add esp, 4
lea ebx, [eax - 1]
mov esi, 0xb8

loc_0042fdfe:
test ebx, ebx
jl short loc_0042fe68  ; jl 0x42fe68
mov cl, byte [esp + ebx + 0x50]
cmp cl, 0x30
jb short loc_0042fe1b  ; jb 0x42fe1b
cmp cl, 0x39
ja short loc_0042fe1b  ; ja 0x42fe1b
xor ecx, ecx
mov cl, byte [esp + ebx + 0x50]
sub ecx, 0x30
jmp short loc_0042fe36  ; jmp 0x42fe36

loc_0042fe1b:
cmp byte [esp + ebx + 0x50], 0x2c
jne short loc_0042fe31  ; jne 0x42fe31
mov ecx, 0xa
mov edi, 0xc
add esi, 6
jmp short loc_0042fe3b  ; jmp 0x42fe3b

loc_0042fe31:
mov ecx, 0xb

loc_0042fe36:
mov edi, 0x12

loc_0042fe3b:
push 0x29
push esi
mov edx, dword [ref_0048c368]  ; mov edx, dword [0x48c368]
mov eax, ecx
shl eax, 2
sub eax, ecx
shl eax, 2
lea ecx, [edx + 0xc]
add eax, ecx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
sub esi, edi
dec ebx
jmp short loc_0042fdfe  ; jmp 0x42fdfe

loc_0042fe68:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x44]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0042f924  ; jmp 0x42f924

loc_0042fe8c:
mov dl, byte [ref_0048c370]  ; mov dl, byte [0x48c370]
cmp dl, 3
ja near loc_0042f924  ; ja 0x42f924
jae short loc_0042feae  ; jae 0x42feae
push 1
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
mov byte [ref_0048c370], 3  ; mov byte [0x48c370], 3

loc_0042feae:
xor esi, esi
mov si, di
mov eax, edi
shr eax, 0x10
and eax, 0xffff
xor ecx, ecx
mov cx, ax
cmp esi, 0x1e
jl near loc_0042f924  ; jl 0x42f924
cmp esi, 0x25e
jg near loc_0042f924  ; jg 0x42f924
cmp ecx, 0x10f
jl near loc_0042f924  ; jl 0x42f924
cmp ecx, 0x1cf
jg near loc_0042f924  ; jg 0x42f924
lea edx, [esi - 0x1e]
mov eax, edx
sar edx, 0x1f
shl edx, 6
sbb eax, edx
sar eax, 6
mov esi, eax
lea edx, [ecx - 0x10f]
mov ecx, 0x30
mov eax, edx
sar edx, 0x1f
idiv ecx
mov ecx, eax
shl eax, 3
add eax, ecx
lea ebx, [eax + esi]
cmp byte [ebx + ref_004990b8], 0  ; cmp byte [ebx + 0x4990b8], 0
jne near loc_0042f924  ; jne 0x42f924
shl esi, 6
lea eax, [esi + 0x1e]
mov dword [esp + 0x40], eax
mov eax, ecx
shl eax, 2
sub eax, ecx
shl eax, 4
lea edx, [eax + 0x10f]
mov dword [esp + 0x44], edx
add esi, 0x5e
mov dword [esp + 0x48], esi
add eax, 0x13f
mov dword [esp + 0x4c], eax
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0x44]
add eax, 0x18
push eax
mov eax, dword [esp + 0x44]
add eax, 0x20
push eax
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x60
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456418  ; call 0x456418
add esp, 0x10
cmp ebx, 2
je short loc_0042ffa0  ; je 0x42ffa0
cmp ebx, 3
jne short loc_0042ffd1  ; jne 0x42ffd1

loc_0042ffa0:
push 0x1e
push 0x40
push 0x10c
push 0
push 0x107
push 0xd2
mov eax, dword [ref_0048c35c]  ; mov eax, dword [0x48c35c]
add eax, 0x18
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456495  ; call 0x456495
add esp, 0x20
sub dword [esp + 0x44], 0x1e

loc_0042ffd1:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x44]
push eax
push ebp
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
mov al, byte [_rich4_current_player]  ; mov al, byte [0x49910c]
inc al
mov byte [ebx + ref_004990b8], al  ; mov byte [ebx + 0x4990b8], al
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
push 0
push 3
push 0x406
push ebp
sub dword [eax + (_rich4_all_players_state + 28)], 0x3e8  ; sub dword [eax + 0x496b84], 0x3e8
add dword [ref_00499080], 0x3e8  ; add dword [0x499080], 0x3e8
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
push 0
push ref_0047566b  ; push 0x47566b
call fcn_004542ce  ; call 0x4542ce
add esp, 8
jmp near loc_0042f924  ; jmp 0x42f924

loc_0043003d:
push 0
push ref_00482332  ; push 0x482332
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
push 5
push 0x406
push ebp
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
jmp near loc_0042f924  ; jmp 0x42f924

loc_00430062:
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
jmp near loc_0042f924  ; jmp 0x42f924

loc_004300c0:
push edi
push ebx
push eax
push ebp
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp near loc_0042f926  ; jmp 0x42f926

ref_004300d0:  ; may contain a jump table
dd loc_00430236
dd loc_0043036c
dd loc_0043024c
dd loc_00430485
dd loc_0043024c
dd loc_004306ff
dd loc_004308e0
dd loc_004308f3
dd loc_00430aa3
dd loc_00430ab5

ref_004300f8:  ; may contain a jump table
dd loc_00431117
dd loc_00431157
dd loc_00431222
dd loc_004312d8
dd loc_00431383

fcn_0043010c:
push ebx
push esi
push edi
push ebp
sub esp, 0x84
mov esi, dword [esp + 0x98]
mov eax, dword [esp + 0x9c]
cmp eax, 0x113
jb short loc_0043014a  ; jb 0x43014a
jbe near loc_004301e8  ; jbe 0x4301e8
cmp eax, 0x401
jb near loc_004315ae  ; jb 0x4315ae
jbe short loc_00430158  ; jbe 0x430158
cmp eax, 0x405
je short loc_004301b0  ; je 0x4301b0
jmp near loc_004315ae  ; jmp 0x4315ae

loc_0043014a:
cmp eax, 0xf
je near loc_00431570  ; je 0x431570
jmp near loc_004315ae  ; jmp 0x4315ae

loc_00430158:
xor bl, bl
mov byte [ref_0048c37b], bl  ; mov byte [0x48c37b], bl
xor ecx, ecx
mov dword [ref_0048c34c], ecx  ; mov dword [0x48c34c], ecx
xor ebx, ebx
mov dword [ref_0048c350], ecx  ; mov dword [0x48c350], ecx
mov dword [ref_0048c377], ecx  ; mov dword [0x48c377], ecx
call fcn_0042f6c3  ; call 0x42f6c3
push ebx
push 0x32
mov ebp, dword [_callbackSize]  ; mov ebp, dword [0x46cad8]
push ebp
push esi
call dword [cs:__imp__SetTimer@16]  ; ucall: call dword cs:[0x462324]
mov dword [ref_0048c373], eax  ; mov dword [0x48c373], eax
push ebx
push ebx
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push ebx
push ebx
push 0x405
push esi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
jmp near loc_004301db  ; jmp 0x4301db

loc_004301b0:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_004301d4  ; je 0x4301d4
mov byte [ref_0048c37b], 1  ; mov byte [0x48c37b], 1
mov edx, dword [ref_00475610]  ; mov edx, dword [0x475610]
push edx
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
jmp near loc_004301db  ; jmp 0x4301db

loc_004301d4:
mov byte [ref_0048c37b], 2  ; mov byte [0x48c37b], 2

loc_004301db:
xor eax, eax

loc_004301dd:
add esp, 0x84
jmp near loc_0042f929  ; jmp 0x42f929

loc_004301e8:
cmp byte [ref_0048c37b], 0  ; cmp byte [0x48c37b], 0
je short loc_004301db  ; je 0x4301db
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je short loc_004301db  ; je 0x4301db
mov eax, dword [esp + 0xa0]
cmp eax, dword [_callbackSize]  ; cmp eax, dword [0x46cad8]
jne short loc_004301db  ; jne 0x4301db
push 0
call fcn_0044ee18  ; call 0x44ee18
add esp, 4
test eax, eax
je near loc_0043024c  ; je 0x43024c
mov al, byte [ref_0048c37b]  ; mov al, byte [0x48c37b]
dec al
cmp al, 9
ja near loc_0043024c  ; ja 0x43024c
and eax, 0xff
jmp dword [eax*4 + ref_004300d0]  ; ujmp: jmp dword [eax*4 + 0x4300d0]

loc_00430236:
mov byte [ref_0048c37b], 2  ; mov byte [0x48c37b], 2
mov ecx, dword [ref_00475614]  ; mov ecx, dword [0x475614]

loc_00430243:
push ecx

loc_00430244:
call fcn_0044ecb6  ; call 0x44ecb6

loc_00430249:
add esp, 4

loc_0043024c:
cmp byte [ref_0048c37b], 3  ; cmp byte [0x48c37b], 3
jne near loc_00430f43  ; jne 0x430f43
mov dh, byte [ref_0048c37c]  ; mov dh, byte [0x48c37c]
inc dh
mov byte [ref_0048c37c], dh  ; mov byte [0x48c37c], dh
cmp dh, 0x14
jb near loc_00430f43  ; jb 0x430f43
jne near loc_00430322  ; jne 0x430322
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x50
push 0x50
push 0xab
push 0x1a2
push 0xab
push 0x1a2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x5a
push 0x26
push 0x33
push 0
push 0x75
push 0x1d8
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x18
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456495  ; call 0x456495
add esp, 0x20
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov dword [esp + 0x64], 0x1a2
mov dword [esp + 0x68], 0x75
mov dword [esp + 0x6c], 0x1fe
mov dword [esp + 0x70], 0xfb
push 0
lea eax, [esp + 0x68]
push eax
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_00430322:
mov dword [esp + 0x64], 0xb7
mov dword [esp + 0x68], 0x4b
mov dword [esp + 0x6c], 0x1ca
mov dword [esp + 0x70], 0x159
push 0
lea eax, [esp + 0x68]
push eax
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
call fcn_00450f04  ; call 0x450f04
test eax, eax
jne near loc_00430f43  ; jne 0x430f43
xor ebx, ebx
mov dword [esp + 0x80], eax
jmp near loc_00430b0d  ; jmp 0x430b0d

loc_0043036c:
mov byte [ref_0048c37b], 3  ; mov byte [0x48c37b], 3
xor al, al
mov byte [ref_0048c37c], al  ; mov byte [0x48c37c], al
push 8
push 0x4b
push 0xb7
mov ebx, dword [ref_0048c358]  ; mov ebx, dword [0x48c358]
push ebx
call fcn_00450ced  ; call 0x450ced
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x82
push 0x260
push 0x154
push 0x10
push 0x154
push 0x10
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x5a
push 0x2d
push 0x74
push 0x1d8
push 0x74
push 0x1d8
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x42
push 0x1a2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x24
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x82
push 0x86
push 0x112
push 0
push 0x154
push 7
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x30
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456495  ; call 0x456495
add esp, 0x20
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
call fcn_0042f417  ; call 0x42f417
push 0
push 0
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
push 0
push ref_0047567b  ; push 0x47567b

loc_00430478:
call fcn_004542ce  ; call 0x4542ce
add esp, 8
jmp near loc_0043024c  ; jmp 0x43024c

loc_00430485:
mov byte [ref_0048c37b], 5  ; mov byte [0x48c37b], 5
xor bh, bh
mov byte [ref_0048c37c], bh  ; mov byte [0x48c37c], bh
push 1
push 0
push 0xcd
mov edi, dword [ref_0048c354]  ; mov edi, dword [0x48c354]
push edi
call fcn_00450ced  ; call 0x450ced
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x82
push 0x260
push 0x154
push 0x10
push 0x154
push 0x10
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x19e
push 0xa8
push 0x42
push 0x1d8
push 0x42
push 0x1d8
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x19e
push 0x8c
push 0x42
push 7
push 0x42
push 7
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0
push 0
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x54
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x42
push 0x1f9
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x48
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0xc8
push 0x140
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x12c
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x11e
xor edx, edx
mov dl, byte [ref_0048c37d]  ; mov dl, byte [0x48c37d]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x166
xor edx, edx
mov dl, byte [ref_0048c37e]  ; mov dl, byte [0x48c37e]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c360]  ; mov edx, dword [0x48c360]
add edx, 0xc
add eax, edx
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0
push 2
push 0
push 0x4f35b1
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 2
push 0x13
push 0x5b
push ref_004645d9  ; push 0x4645d9
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 0
push 2
push 0
push 0xff0000
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov byte [esp + 0x74], 0x24
mov edx, dword [ref_00499080]  ; mov edx, dword [0x499080]
push edx
lea eax, [esp + 0x79]
push eax
call _rich4_num_to_currency_string  ; call 0x452793
add esp, 8
push 2
push 0x38
push 0x5b
lea eax, [esp + 0x80]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 4
push 3
push 0x400000
push 0xff0000
push 0x1c
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 2
push 0xb4
push 0x140
mov eax, dword [ref_0048c377]  ; mov eax, dword [0x48c377]
dec eax
imul eax, eax, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
mov ecx, dword [eax*4 + ref_00475630]  ; mov ecx, dword [eax*4 + 0x475630]
push ecx
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
call fcn_0042f417  ; call 0x42f417
push 0
push ref_00475683  ; push 0x475683
jmp near loc_00430478  ; jmp 0x430478

loc_004306ff:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x82
push 0x260
push 0x154
push 0x10
push 0x154
push 0x10
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x1e0
push 0xa0
push 0
push 0
push 0
push 0
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x1e0
push 0x96
push 0
push 0x1ea
push 0
push 0x1ea
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x42
push 0x1d8
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x18
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x42
push 7
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x30
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x11e
xor edx, edx
mov dl, byte [ref_0048c37d]  ; mov dl, byte [0x48c37d]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x166
xor edx, edx
mov dl, byte [ref_0048c37e]  ; mov dl, byte [0x48c37e]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0
push 2
push 0
push 0x4f35b1
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 2
push 0xc1
push 0x4d
push ref_004645d9  ; push 0x4645d9
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push 0
push 2
push 0
push 0xff0000
push 0x14
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov byte [esp + 0x74], 0x24
mov esi, dword [ref_00499080]  ; mov esi, dword [0x499080]
push esi
lea eax, [esp + 0x79]
push eax
call _rich4_num_to_currency_string  ; call 0x452793
add esp, 8
push 2
push 0xe4
push 0x4d
lea eax, [esp + 0x80]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
call fcn_0042f417  ; call 0x42f417
mov byte [ref_0048c37b], 8  ; mov byte [0x48c37b], 8
jmp near loc_004301db  ; jmp 0x4301db

loc_004308e0:
mov byte [ref_0048c37b], 8  ; mov byte [0x48c37b], 8
mov ebx, dword [ref_00475624]  ; mov ebx, dword [0x475624]
push ebx
jmp near loc_00430244  ; jmp 0x430244

loc_004308f3:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x82
push 0x260
push 0x154
push 0x10
push 0x154
push 0x10
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x16c
push 0x97
push 0x74
push 0x1e9
push 0x74
push 0x1e9
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x82
push 0x86
push 0x112
push 0
push 0x154
push 7
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x30
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456495  ; call 0x456495
add esp, 0x20
push 0x42
push 0x1d8
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x18
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x28
push 0x32
push 0x17
push 0x2d
push 0x59
push 0x34
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x30
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x195
push 0x11e
xor edx, edx
mov dl, byte [ref_0048c37d]  ; mov dl, byte [0x48c37d]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x166
xor edx, edx
mov dl, byte [ref_0048c37e]  ; mov dl, byte [0x48c37e]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
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
push 0
push 0
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
call fcn_0042f417  ; call 0x42f417
push 0
push 0x101010
push 0
push 0xfffffffffffffff6
push 0x2f
push 0x12c
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x114
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
mov byte [ref_0048c37b], 9  ; mov byte [0x48c37b], 9
mov ecx, dword [ref_00475628]  ; mov ecx, dword [0x475628]
jmp near loc_00430243  ; jmp 0x430243

loc_00430aa3:
mov byte [ref_0048c37b], 0xa  ; mov byte [0x48c37b], 0xa
mov eax, dword [ref_0047562c]  ; mov eax, dword [0x47562c]
push eax
jmp near loc_00430244  ; jmp 0x430244

loc_00430ab5:
mov ecx, dword [ref_0048c373]  ; mov ecx, dword [0x48c373]
push ecx
push esi
call dword [cs:__imp__KillTimer@8]  ; ucall: call dword cs:[0x4622fc]
mov ebx, dword [ref_0048c377]  ; mov ebx, dword [0x48c377]
test ebx, ebx
je short loc_00430afb  ; je 0x430afb
push 1
mov edi, dword [ref_00499080]  ; mov edi, dword [0x499080]
push edi
lea eax, [ebx - 1]
push eax
call fcn_0041d3f4  ; call 0x41d3f4
add esp, 0xc
xor ebp, ebp
mov dword [ref_00499080], ebp  ; mov dword [0x499080], ebp
push 0x24
push ebp
push ref_004990b8  ; push 0x4990b8
call _memset  ; call 0x456f60
add esp, 0xc

loc_00430afb:
push 0
call _Post_0402_Message  ; call 0x401966
jmp near loc_00430249  ; jmp 0x430249

loc_00430b07:
inc eax
cmp eax, 0x24
jge short loc_00430b2a  ; jge 0x430b2a

loc_00430b0d:
mov cl, byte [eax + ref_004990b8]  ; mov cl, byte [eax + 0x4990b8]
test cl, cl
je short loc_00430b07  ; je 0x430b07
xor edx, edx
mov dl, cl
inc byte [esp + edx + 0x7f]
mov dl, al
inc dl
mov byte [esp + ebx + 0x40], dl
inc ebx
jmp short loc_00430b07  ; jmp 0x430b07

loc_00430b2a:
cmp byte [esp + 0x80], 0xa
ja short loc_00430b52  ; ja 0x430b52
cmp byte [esp + 0x81], 0xa
ja short loc_00430b52  ; ja 0x430b52
cmp byte [esp + 0x82], 0xa
ja short loc_00430b52  ; ja 0x430b52
cmp byte [esp + 0x83], 0xa
jbe short loc_00430b66  ; jbe 0x430b66

loc_00430b52:
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv ebx
xor ebx, ebx
mov bl, byte [esp + edx + 0x40]
jmp short loc_00430b7a  ; jmp 0x430b7a

loc_00430b66:
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ebx, 0x24
sar edx, 0x1f
idiv ebx
lea ebx, [edx + 1]

loc_00430b7a:
push ebx
push ref_004645d4  ; push 0x4645d4
lea eax, [esp + 0x7c]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov al, byte [esp + 0x74]
sub al, 0xb
mov byte [ref_0048c37d], al  ; mov byte [0x48c37d], al
mov al, byte [esp + 0x75]
sub al, 0xb
mov byte [ref_0048c37e], al  ; mov byte [0x48c37e], al
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x82
push 0x260
push 0x154
push 0x10
push 0x154
push 0x10
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x82
push 0x86
push 0x112
push 0
push 0x154
push 7
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x30
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_00456495  ; call 0x456495
add esp, 0x20
push 0x195
push 0x11e
xor edx, edx
mov dl, byte [ref_0048c37d]  ; mov dl, byte [0x48c37d]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x166
xor edx, edx
mov dl, byte [ref_0048c37e]  ; mov dl, byte [0x48c37e]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0xdc
push 0x12c
xor eax, eax
mov al, byte [ref_0048c37d]  ; mov al, byte [0x48c37d]
lea edx, [eax - 0x1d]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048bad8]  ; mov eax, dword [0x48bad8]
add eax, 0xc
add eax, edx
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0xdc
push 0x154
xor eax, eax
mov al, byte [ref_0048c37e]  ; mov al, byte [0x48c37e]
lea edx, [eax - 0x1d]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048bad8]  ; mov eax, dword [0x48bad8]
add eax, 0xc
add eax, edx
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
mov dword [esp + 0x64], 0xf4
mov dword [esp + 0x68], 0xb4
mov dword [esp + 0x6c], 0x18a
mov dword [esp + 0x70], 0x1bc
call fcn_0042f417  ; call 0x42f417
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x68]
push ecx
mov edi, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov edi, dword [0x48a0e0]
push edi
mov ebp, dword [esp + 0x74]
push ebp
mov ecx, dword [esp + 0x74]
push ecx
push eax
call dword [edx + 0x1c]  ; ucall
cmp byte [ebx + ref_004990b7], 0  ; cmp byte [ebx + 0x4990b7], 0
je short loc_00430d85  ; je 0x430d85
mov byte [ref_0048c37b], 4  ; mov byte [0x48c37b], 4
mov ebp, dword [ref_00475618]  ; mov ebp, dword [0x475618]
push ebp
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4
xor eax, eax
mov al, byte [ebx + ref_004990b7]  ; mov al, byte [ebx + 0x4990b7]
mov dword [ref_0048c377], eax  ; mov dword [0x48c377], eax
jmp near loc_00430f43  ; jmp 0x430f43

loc_00430d85:
push 0x1f4
call fcn_0045285e  ; call 0x45285e
add esp, 4
mov byte [ref_0048c37b], 7  ; mov byte [0x48c37b], 7
push 0
push 0x101010
push 0
push 0
push 0xc8
push 0x140
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x120
push eax
call fcn_0044ec30  ; call 0x44ec30
add esp, 0x1c
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x82
push 0x260
push 0x154
push 0x10
push 0x154
push 0x10
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x1e0
push 0xa9
push 0
push 0x1d8
push 0
push 0x1d8
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x82
push 0x86
push 0x112
push 0
push 0x154
push 7
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x30
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_00456495  ; call 0x456495
add esp, 0x20
push 0x195
push 0x11e
xor edx, edx
mov dl, byte [ref_0048c37d]  ; mov dl, byte [0x48c37d]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x166
xor edx, edx
mov dl, byte [ref_0048c37e]  ; mov dl, byte [0x48c37e]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x74
push 0x1e9
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x3c
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x59
push 0x34
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x108
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
call fcn_0042f417  ; call 0x42f417
mov edi, dword [ref_00475620]  ; mov edi, dword [0x475620]
push edi
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4

loc_00430f43:
cmp byte [ref_0048c37b], 5  ; cmp byte [0x48c37b], 5
jne near loc_004310eb  ; jne 0x4310eb
mov dl, byte [ref_0048c37c]  ; mov dl, byte [0x48c37c]
inc dl
mov byte [ref_0048c37c], dl  ; mov byte [0x48c37c], dl
cmp dl, 0x1e
jbe near loc_004310eb  ; jbe 0x4310eb
call fcn_00450f04  ; call 0x450f04
test eax, eax
jne near loc_004310eb  ; jne 0x4310eb
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x82
push 0x260
push 0x154
push 0x10
push 0x154
push 0x10
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x168
push 0x14a
push 0
push 0x96
push 0
push 0x96
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
push 0x78
push 0xa2
push 0x154
push 0
push 0x154
push 0
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x54
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456495  ; call 0x456495
add esp, 0x20
push 0x82
push 0x7c
push 0x112
push 0
push 0x154
push 0x1f9
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x48
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_00456495  ; call 0x456495
add esp, 0x20
push 0x195
push 0x11e
xor edx, edx
mov dl, byte [ref_0048c37d]  ; mov dl, byte [0x48c37d]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c360]  ; mov edx, dword [0x48c360]
add edx, 0xc
add eax, edx
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_00456418  ; call 0x456418
add esp, 0x10
push 0x195
push 0x166
xor edx, edx
mov dl, byte [ref_0048c37e]  ; mov dl, byte [0x48c37e]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
push 0
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
call fcn_0042f417  ; call 0x42f417
mov byte [ref_0048c37b], 6  ; mov byte [0x48c37b], 6
mov eax, dword [ref_0047561c]  ; mov eax, dword [0x47561c]
push eax
call fcn_0044ecb6  ; call 0x44ecb6
add esp, 4

loc_004310eb:
mov bh, byte [ref_0048c37b]  ; mov bh, byte [0x48c37b]
cmp bh, 4
jb short loc_004310ff  ; jb 0x4310ff
cmp bh, 8
jbe near loc_004301db  ; jbe 0x4301db

loc_004310ff:
mov eax, dword [ref_0048c350]  ; mov eax, dword [0x48c350]
and eax, 0xf
cmp eax, 4
ja near loc_00431431  ; ja 0x431431
jmp dword [eax*4 + ref_004300f8]  ; ujmp: jmp dword [eax*4 + 0x4300f8]

loc_00431117:
call _libc_rand  ; call 0x456f2d
mov ebx, eax
sar ebx, 9
mov eax, dword [ref_0048c350]  ; mov eax, dword [0x48c350]
and al, 0xf0
test ebx, ebx
jne short loc_00431138  ; jne 0x431138
or al, 1

loc_0043112e:
mov dword [ref_0048c350], eax  ; mov dword [0x48c350], eax
jmp near loc_00431431  ; jmp 0x431431

loc_00431138:
cmp ebx, 1
jne short loc_00431141  ; jne 0x431141
or al, 2
jmp short loc_0043112e  ; jmp 0x43112e

loc_00431141:
cmp ebx, 4
jge short loc_0043114a  ; jge 0x43114a
or al, 3
jmp short loc_0043112e  ; jmp 0x43112e

loc_0043114a:
cmp ebx, 6
jge near loc_00431431  ; jge 0x431431
or al, 4
jmp short loc_0043112e  ; jmp 0x43112e

loc_00431157:
mov ebx, dword [ref_0048c350]  ; mov ebx, dword [0x48c350]
and ebx, 0xf0
sar ebx, 4
mov dword [esp + 0x64], 0x200
mov dword [esp + 0x68], 0x66
mov dword [esp + 0x6c], 0x232
mov dword [esp + 0x70], 0x76
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ecx, dword [esp + 0x68]
push ecx
mov edi, dword [esp + 0x68]
push edi
xor edx, edx
mov dl, byte [ebx + ref_00475663]  ; mov dl, byte [ebx + 0x475663]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c360]  ; mov edx, dword [0x48c360]
add edx, 0xc
add eax, edx
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
add dword [ref_0048c350], 0x10  ; add dword [0x48c350], 0x10
mov bh, byte [ref_0048c350]  ; mov bh, byte [0x48c350]
and bh, 0x3f
mov byte [ref_0048c350], bh  ; mov byte [0x48c350], bh
test bh, 0x30
jne short loc_004311fe  ; jne 0x4311fe
or byte [ref_0048c351], 0x10  ; or byte [0x48c351], 0x10
mov al, bh
and al, 0xf0
mov byte [ref_0048c350], al  ; mov byte [0x48c350], al

loc_004311fe:
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x68]
push eax
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_00431431  ; jmp 0x431431

loc_00431222:
mov ebx, dword [ref_0048c350]  ; mov ebx, dword [0x48c350]
and ebx, 0xf00
sar ebx, 8
mov dword [esp + 0x64], 0x34
mov dword [esp + 0x68], 0x59
mov dword [esp + 0x6c], 0x66
mov dword [esp + 0x70], 0x73
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ebp, dword [esp + 0x68]
push ebp
mov eax, dword [esp + 0x68]
push eax
xor edx, edx
mov dl, byte [ebx + ref_00475667]  ; mov dl, byte [ebx + 0x475667]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
add dword [ref_0048c350], 0x100  ; add dword [0x48c350], 0x100
mov ah, byte [ref_0048c351]  ; mov ah, byte [0x48c351]
and ah, 0xf3
mov byte [ref_0048c351], ah  ; mov byte [0x48c351], ah
test ah, 3
jne near loc_004311fe  ; jne 0x4311fe
mov dh, ah
or dh, 0x20
mov byte [ref_0048c351], dh  ; mov byte [0x48c351], dh
and byte [ref_0048c350], 0xf0  ; and byte [0x48c350], 0xf0
jmp near loc_004311fe  ; jmp 0x4311fe

loc_004312d8:
call _libc_rand  ; call 0x456f2d
mov ebx, eax
and ebx, 1
mov eax, dword [ref_0048c350]  ; mov eax, dword [0x48c350]
and eax, 0x1000
sar eax, 0xc
cmp ebx, eax
je near loc_0043142a  ; je 0x43142a
mov dword [esp + 0x64], 0x200
mov dword [esp + 0x68], 0x66
mov dword [esp + 0x6c], 0x232
mov dword [esp + 0x70], 0x76
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ecx, dword [esp + 0x68]
push ecx
mov edi, dword [esp + 0x68]
push edi
lea edx, [ebx + 9]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048c360]  ; mov edx, dword [0x48c360]
add edx, 0xc
add eax, edx
push eax
mov ebp, dword [ref_0048a08c]  ; mov ebp, dword [0x48a08c]
push ebp
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0
lea eax, [esp + 0x68]
push eax
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_0043142a  ; jmp 0x43142a

loc_00431383:
call _libc_rand  ; call 0x456f2d
mov ebx, eax
and ebx, 1
mov eax, dword [ref_0048c350]  ; mov eax, dword [0x48c350]
and eax, 0x2000
sar eax, 0xd
cmp ebx, eax
je near loc_0043142a  ; je 0x43142a
mov dword [esp + 0x64], 0x34
mov dword [esp + 0x68], 0x59
mov dword [esp + 0x6c], 0x66
mov dword [esp + 0x70], 0x73
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0x68]
push eax
mov edx, dword [esp + 0x68]
push edx
lea edx, [ebx + 0xe]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
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
push 0
lea eax, [esp + 0x68]
push eax
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]

loc_0043142a:
and byte [ref_0048c350], 0xf0  ; and byte [0x48c350], 0xf0

loc_00431431:
call fcn_0044ef3b  ; call 0x44ef3b
test eax, eax
jne short loc_00431447  ; jne 0x431447
cmp dword [ref_0048c34c], 0  ; cmp dword [0x48c34c], 0
je near loc_004301db  ; je 0x4301db

loc_00431447:
mov dword [esp + 0x64], 0x200
mov dword [esp + 0x68], 0x77
mov dword [esp + 0x6c], 0x232
mov dword [esp + 0x70], 0x8d
mov eax, dword [ref_0048c34c]  ; mov eax, dword [0x48c34c]
test eax, eax
je short loc_004314da  ; je 0x4314da
dec eax
mov dword [ref_0048c34c], eax  ; mov dword [0x48c34c], eax
jne near loc_004301db  ; jne 0x4301db
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov ecx, dword [esp + 0x68]
push ecx
mov ebx, dword [esp + 0x68]
push ebx
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0x90
push eax
mov edi, dword [ref_0048a08c]  ; mov edi, dword [0x48a08c]
push edi
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall

loc_004314c6:
push 0
lea eax, [esp + 0x68]
push eax
push esi
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_004301db  ; jmp 0x4301db

loc_004314da:
call _libc_rand  ; call 0x456f2d
mov ebx, eax
sar ebx, 0xb
cmp ebx, 4
jge near loc_004301db  ; jge 0x4301db
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov edx, dword [esp + 0x68]
push edx
mov ecx, dword [esp + 0x68]
push ecx
call _libc_rand  ; call 0x456f2d
and eax, 1
lea edx, [eax + 0xc]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048c360]  ; mov eax, dword [0x48c360]
add eax, 0xc
add eax, edx
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
call _libc_rand  ; call 0x456f2d
and eax, 0xf
mov dword [ref_0048c34c], eax  ; mov dword [0x48c34c], eax
jne near loc_004314c6  ; jne 0x4314c6
mov dword [ref_0048c34c], 1  ; mov dword [0x48c34c], 1
jmp near loc_004314c6  ; jmp 0x4314c6

loc_00431570:
mov eax, esp
push eax
push esi
call dword [cs:__imp__BeginPaint@8]  ; ucall: call dword cs:[0x4622cc]
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ebx, [esp + 0xc]
push ebx
mov edi, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov edi, dword [0x48a0e0]
push edi
mov ebp, dword [esp + 0x18]
push ebp
mov ecx, dword [esp + 0x18]
push ecx
push eax
call dword [edx + 0x1c]  ; ucall
mov eax, esp
push eax
push esi
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_004301db  ; jmp 0x4301db

loc_004315ae:
mov ecx, dword [esp + 0xa4]
push ecx
mov ebx, dword [esp + 0xa4]
push ebx
push eax
push esi
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp near loc_004301dd  ; jmp 0x4301dd

_rich4_ui_letou_bar_entry:
push ebx
push esi
push edi
push ebp
sub esp, 0x28
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne near loc_0043169e  ; jne 0x43169e
push ref_0047566b  ; push 0x47566b
call fcn_00454176  ; call 0x454176
add esp, 4
push 0
push 0
push 0xc
mov ebx, dword [_rich4_panel_mkf]  ; mov ebx, dword [0x48a05c]
push ebx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c35c], eax  ; mov dword [0x48c35c], eax
push 0
push 0
push 0xd
mov esi, dword [_rich4_panel_mkf]  ; mov esi, dword [0x48a05c]
push esi
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c368], eax  ; mov dword [0x48c368], eax
push 0
push 0
push 0xe
mov edi, dword [_rich4_panel_mkf]  ; mov edi, dword [0x48a05c]
push edi
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c364], eax  ; mov dword [0x48c364], eax
push 6
call fcn_004549cf  ; call 0x4549cf
add esp, 4
push 0
push fcn_0042f7fc  ; push 0x42f7fc
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
call fcn_00454bcc  ; call 0x454bcc
mov ebp, dword [ref_0048c35c]  ; mov ebp, dword [0x48c35c]
push ebp
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, dword [ref_0048c368]  ; mov eax, dword [0x48c368]
push eax
call _libc_free  ; call 0x456e11
add esp, 4
mov edx, dword [ref_0048c364]  ; mov edx, dword [0x48c364]
push edx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_0047566b  ; push 0x47566b
call fcn_00454240  ; call 0x454240
add esp, 4
jmp near loc_0043170a  ; jmp 0x43170a

loc_0043169e:
cmp dword [eax + (_rich4_all_players_state + 28)], 0x3e8  ; cmp dword [eax + 0x496b84], 0x3e8
jle short loc_0043170a  ; jle 0x43170a
xor eax, eax
xor ebx, ebx
jmp short loc_004316b6  ; jmp 0x4316b6

loc_004316b0:
inc eax
cmp eax, 0x24
jge short loc_004316c5  ; jge 0x4316c5

loc_004316b6:
cmp byte [eax + ref_004990b8], 0  ; cmp byte [eax + 0x4990b8], 0
jne short loc_004316b0  ; jne 0x4316b0
mov byte [esp + ebx], al
inc ebx
jmp short loc_004316b0  ; jmp 0x4316b0

loc_004316c5:
test ebx, ebx
je short loc_0043170a  ; je 0x43170a
mov al, byte [_rich4_current_player]  ; mov al, byte [0x49910c]
inc al
mov byte [esp + 0x24], al
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv ebx
xor eax, eax
mov al, byte [esp + edx]
mov dl, byte [esp + 0x24]
mov byte [eax + ref_004990b8], dl  ; mov byte [eax + 0x4990b8], dl
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
sub dword [eax + (_rich4_all_players_state + 28)], 0x3e8  ; sub dword [eax + 0x496b84], 0x3e8
add dword [ref_00499080], 0x3e8  ; add dword [0x499080], 0x3e8

loc_0043170a:
add esp, 0x28
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_ui_letou_kaijiang_entry:
push ebx
push esi
push edi
push ebp
xor eax, eax
jmp short loc_00431720  ; jmp 0x431720

loc_0043171a:
inc eax
cmp eax, 0x24
jge short loc_00431729  ; jge 0x431729

loc_00431720:
cmp byte [eax + ref_004990b8], 0  ; cmp byte [eax + 0x4990b8], 0
je short loc_0043171a  ; je 0x43171a

loc_00431729:
cmp eax, 0x24
je near loc_0043180d  ; je 0x43180d
push ref_0047567b  ; push 0x47567b
call fcn_00454176  ; call 0x454176
add esp, 4
push 0
push 0
push 0xf
mov edx, dword [_rich4_panel_mkf]  ; mov edx, dword [0x48a05c]
push edx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c360], eax  ; mov dword [0x48c360], eax
push 0
push 0
push 0xd
mov ecx, dword [_rich4_panel_mkf]  ; mov ecx, dword [0x48a05c]
push ecx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c368], eax  ; mov dword [0x48c368], eax
push 0
push 0
push 0x10
mov ebx, dword [_rich4_panel_mkf]  ; mov ebx, dword [0x48a05c]
push ebx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c358], eax  ; mov dword [0x48c358], eax
push 0
push 0
push 0x11
mov esi, dword [_rich4_panel_mkf]  ; mov esi, dword [0x48a05c]
push esi
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048c354], eax  ; mov dword [0x48c354], eax
push 8
call fcn_004549cf  ; call 0x4549cf
add esp, 4
push 0
push fcn_0043010c  ; push 0x43010c
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
call fcn_00454bcc  ; call 0x454bcc
mov edi, dword [ref_0048c360]  ; mov edi, dword [0x48c360]
push edi
call _libc_free  ; call 0x456e11
add esp, 4
mov ebp, dword [ref_0048c368]  ; mov ebp, dword [0x48c368]
push ebp
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, dword [ref_0048c358]  ; mov eax, dword [0x48c358]
push eax
call _libc_free  ; call 0x456e11
add esp, 4
mov edx, dword [ref_0048c354]  ; mov edx, dword [0x48c354]
push edx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_0047567b  ; push 0x47567b
call fcn_00454240  ; call 0x454240
add esp, 4

loc_0043180d:
pop ebp
pop edi
pop esi
pop ebx
ret

section .data

ref_00464394:
dd 0x31303023
dd 0xc5a2ab31
dd 0x0a49a16f
dd 0xe9a840a4
dd 0xe2a462a6
dd 0xa70a41a1
dd 0xb5e6b1c6
dd 0xa161bd4c
db 0x49
db 0x00

ref_004643b6:
db 0x23
db 0x30
dd 0xa5323130
dd 0xa46ead75
dd 0xa464a440
dd 0x0a41a1b8
dd 0xb3a64eb4
dd 0x6fb1f2c0
dd 0xfabc6aa4
dd 0xbebaaa0a
dd 0xa17cb7f7
db 0x49
db 0x00

ref_004643de:
db 0x23
db 0x30
dd 0xbd333130
dd 0xbfe9b0d0
dd 0xaa7ab1ef
dd 0xafa90aba
dd 0xb9b842b9
dd 0xe3a158bd
db 0x00

ref_004643f9:
db 0x23
db 0x30
db 0x30
dd 0xf4ab3431
dd 0x49a1f4ab
dd 0x7ab1acaf
dd 0xfabca4a4
db 0xa1
db 0x49
db 0x00

ref_0046440f:
db 0x23
dd 0x35313030
dd 0x69a5d3a4
dd 0x46a4a4b1
dd 0xb10a49a1
dd 0xb2baaa7a
dd 0xa4f7aa7b
dd 0xa1aca8a3
db 0xe3
db 0x00

ref_0046442e:
db 0x23
db 0x30
dd 0xa4363130
dd 0xa6b8a655
dd 0xa7d3a841
dd 0x0049a161

ref_00464440:
dd 0x31303023
dd 0xa1d9b637
dd 0x53a40a49
dd 0x46a4eca8
dd 0xeba443a8
dd 0xa451a40a
dd 0xbcb9b8ad
dd 0x0a7ab3d6
dd 0xfabc7db6
dd 0xa1b6c9ae
db 0xa1
db 0xe3
db 0x00

ref_0046446b:
db 0x23
dd 0x38313030
dd 0x62a67bb2
dd 0x57a4a8b0
dd 0x7ab1b0ac
dd 0xa57db60a
dd 0xa46fb358
dd 0xaac1b440
dd 0xb9b80aba
dd 0x44a158bd
dd 0x43a144a1
db 0x00

ref_00464495:
db 0x23
db 0x30
db 0x30
dd 0xbba53931
dd 0xf7a5eba4
dd 0x6fb1baaa
dd 0xac0a44a5
dd 0xa144a14f
dd 0xa144a144
db 0x43
db 0x00

ref_004644b2:
db 0x23
db 0x30
dd 0xae323330
dd 0xb1dfb3a5
dd 0xb157bf7a
dd 0xd2a90a6f
dd 0xfabcb3a6
dd 0x49a1f7aa
db 0x00

ref_004644cd:
db 0x23
db 0x30
db 0x30
dd 0x4f533333
dd 0xa1595252
dd 0xbba50a49
dd 0xf7a5eba4
dd 0xb3a653a8
dd 0xb10a48a4
dd 0xa1fabc6f
db 0xe3
db 0x00

ref_004644ee:
db 0x23
db 0x30
dd 0xbc343330
dd 0xb1f7aafa
dd 0xbfd6b24e
dd 0xeca80a6e
dd 0xd3ad55a4
dd 0x44a1eba4
dd 0xa144a10a
dd 0xa144a144
db 0x43
db 0x00

ref_00464512:
db 0x23
db 0x30
dd 0xa7353330
dd 0xa4e6b1c6
dd 0x0ab8a655
dd 0xfabc6fb1
dd 0x4eb4ccaa
dd 0xb14fac0a
dd 0x0049a17a

ref_00464530:
dd 0x33303023
dd 0xb0e6a636
dd 0xa76eadca
dd 0xa1e1b3d6
db 0x49
db 0x00

ref_00464542:
db 0x23
db 0x30
dd 0xac303230
dd 0xb3abbff9
db 0xec
db 0x00

ref_0046454e:
db 0x23
db 0x30
dd 0xa8313230
dd 0xa4a9b646
dd 0x00b5b4da

ref_0046455c:
dd 0x32303023
dd 0xa4d4a732
dd 0x00a6add3

ref_00464568:
dd 0x32303023
dd 0xa4fabf33
dd 0x0048a4d2

ref_00464574:
dd 0x32303023
dd 0xa4fcaa34
dd 0x0042a767

ref_00464580:
dd 0x32303023
dd 0xa9efb235
dd 0xa5bda4d4
db 0x44
db 0x00

ref_0046458e:
db 0x23
db 0x30
dd 0xae363230
dd 0xc4bba563
dd 0x00c3c25f

ref_0046459c:
dd 0x32303023
dd 0xbf7dbf37
db 0x7d
db 0x00

ref_004645a6:
db 0x23
db 0x30
dd 0xaf383230
dd 0x007dab51

ref_004645b0:
dd 0x32303023
dd 0xa45dae39
dd 0x00fcac70

ref_004645bc:
dd 0x33303023
dd 0xa470a430
dd 0x00a7a5a6

ref_004645c8:
dd 0x33303023
dd 0xa8f7aa31
dd 0x00a9a8a9

ref_004645d4:
db '%02d',0x00

ref_004645d9:
db 0xb2
db 0xd6
db 0xbf
dd 0xaafabc6e
dd 0x000000f7

ref_004755f8:
dd ref_00464394

ref_004755fc:
dd ref_004643b6

ref_00475600:
dd ref_004643de
dd ref_004643f9
dd ref_0046440f
dd ref_0046442e

ref_00475610:
dd ref_00464440

ref_00475614:
dd ref_0046446b

ref_00475618:
dd ref_00464495

ref_0047561c:
dd ref_004644b2

ref_00475620:
dd ref_004644cd

ref_00475624:
dd ref_004644ee

ref_00475628:
dd ref_00464512

ref_0047562c:
dd ref_00464530

ref_00475630:
dd ref_00464542
dd ref_0046454e
dd ref_0046455c
dd ref_00464568
dd ref_00464574
dd ref_00464580
dd ref_0046458e
dd ref_0046459c
dd ref_004645a6
dd ref_004645b0
dd ref_004645bc
dd ref_004645c8

ref_00475660:
db 0x03
db 0x04
db 0x03

ref_00475663:
db 0x08
db 0x07
db 0x08
db 0x0a

ref_00475667:
db 0x10
db 0x11
db 0x10
db 0x0f

ref_0047566b:
db 0x1f
dd 0x00000000
dd 0xff000000
dd 0x00ffffff
db 0x00
db 0x00
db 0x00

ref_0047567b:
db 0x39
dd 0x00000000
db 0x00
db 0x00
db 0x00

ref_00475683:
db 0x3a
dd 0x00000000
dd 0xff000000
dd 0x00ffffff
dd 0x00000000

section .bss

ref_0048c34c:
resb 4

ref_0048c350:
resb 1

ref_0048c351:
resb 3

ref_0048c354:
resb 4

ref_0048c358:
resb 4

ref_0048c35c:
resb 4

ref_0048c360:
resb 4

ref_0048c364:
resb 4

ref_0048c368:
resb 4

ref_0048c36c:
resb 4

ref_0048c370:
resb 1

ref_0048c371:
resb 1

ref_0048c372:
resb 1

ref_0048c373:
resb 4

ref_0048c377:
resb 4

ref_0048c37b:
resb 1

ref_0048c37c:
resb 1

ref_0048c37d:
resb 1

ref_0048c37e:
resb 2
