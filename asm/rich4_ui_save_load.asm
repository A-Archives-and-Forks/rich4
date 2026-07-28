extern fcn_00402250
extern fcn_0040235d
extern fcn_00402460
extern fcn_0041906a
extern fcn_00451e7e
extern fcn_00451edb
extern fcn_0045285e
extern fcn_004542ce
extern fcn_00454acb
extern fcn_00454d91
extern fcn_0045620f
extern fcn_004563f5
extern fcn_00456418
extern _g_ddraw_sf1_ptr
extern _g_ddraw_sf2_ptr
extern __imp__BeginPaint@8
extern __imp__DefWindowProcA@16
extern __imp__EndPaint@8
extern __imp__InvalidateRect@12
extern _libc_fclose
extern _libc_fopen
extern _libc_fread
extern _libc_free
extern _libc_itoa
extern _libc_sprintf
extern _read_mkf
extern ref_004630d8
extern ref_004630e3
extern ref_004630e9
extern ref_004630ee
extern ref_0046cadc
extern ref_0046cae0
extern ref_0046caec
extern ref_0046caf4
extern ref_0046cb06
extern ref_0048231a
extern ref_0048232a
extern ref_00482332
extern ref_0048a068
extern ref_0048a078
extern ref_0048a08c
extern ref_0048a188
extern ref_0048a19b
extern ref_0048a328
extern ref_0048a32c
extern ref_0048a330
extern ref_0048a334
extern ref_0048a338
extern ref_0048a33c
extern ref_0048a340
extern ref_0048a344
extern ref_0048a34a
extern ref_0048a34e
extern _rich4_create_font
extern _rich4_data_mkf
extern _rich4_draw_text
extern _rich4_load_game_from_file
extern _rich4_save_game_to_file
extern _rich4_scan_save_files
extern _Post_0402_Message
extern _Wait_0402_Message

global _rich4_ui_load_game
global _rich4_ui_save_game

section .text

fcn_0040363a:
push ebx
push esi
push edi
push ebp
sub esp, 0x50
mov ebx, dword [esp + 0x64]
mov eax, dword [esp + 0x68]
mov ecx, dword [esp + 0x70]
cmp eax, 0x201
jb short loc_00403683  ; jb 0x403683
jbe near loc_004038eb  ; jbe 0x4038eb
cmp eax, 0x205
jb short loc_00403673  ; jb 0x403673
jbe near loc_00403934  ; jbe 0x403934
cmp eax, 0x401
je short loc_0040369e  ; je 0x40369e
jmp near loc_004039a9  ; jmp 0x4039a9

loc_00403673:
cmp eax, 0x203
je near loc_004038eb  ; je 0x4038eb
jmp near loc_004039a9  ; jmp 0x4039a9

loc_00403683:
cmp eax, 0xf
jb near loc_004039a9  ; jb 0x4039a9
jbe near loc_00403951  ; jbe 0x403951
cmp eax, 0x200
je short loc_004036c3  ; je 0x4036c3
jmp near loc_004039a9  ; jmp 0x4039a9

loc_0040369e:
mov dword [ref_0048a34a], 0xffffffff  ; mov dword [0x48a34a], 0xffffffff
push 1
call fcn_00402460  ; call 0x402460
add esp, 4
push 0
push 0
push ebx
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_00403865  ; jmp 0x403865

loc_004036c3:
xor edx, edx
mov dx, cx
mov eax, ecx
shr eax, 0x10
and eax, 0xffff
and eax, 0xffff
cmp edx, 0x81
jle near loc_0040386c  ; jle 0x40386c
cmp edx, 0x241
jge near loc_0040386c  ; jge 0x40386c
cmp eax, 0x18
jle near loc_0040386c  ; jle 0x40386c
cmp eax, 0x1c8
jge near loc_0040386c  ; jge 0x40386c
lea edx, [eax - 0x18]
mov ebx, 0x48
mov eax, edx
sar edx, 0x1f
idiv ebx
mov ebx, eax
cmp eax, dword [ref_0048a34a]  ; cmp eax, dword [0x48a34a]
je near loc_00403865  ; je 0x403865
push 0
push ref_0048231a  ; push 0x48231a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov dword [esp + 0x40], 0x7f
mov dword [esp + 0x48], 0x243
mov ecx, dword [ref_0048a34a]  ; mov ecx, dword [0x48a34a]
cmp ecx, 0xffffffff
je short loc_0040379f  ; je 0x40379f
mov eax, ecx
shl eax, 3
add eax, ecx
shl eax, 3
lea edx, [eax + 0x16]
mov dword [esp + 0x44], edx
add eax, 0x62
mov dword [esp + 0x4c], eax
lea eax, [esp + 0x40]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x44]
push ecx
mov esi, dword [_g_ddraw_sf2_ptr]  ; mov esi, dword [0x48a0e0]
push esi
mov edi, dword [esp + 0x50]
push edi
mov ebp, dword [esp + 0x50]
push ebp
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 0x40]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4

loc_0040379f:
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 3
lea edx, [eax + 0x16]
mov dword [esp + 0x44], edx
add eax, 0x62
mov dword [esp + 0x4c], eax
lea eax, [esp + 0x40]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [ref_0048a078]  ; mov eax, dword [0x48a078]
sar eax, 1
mov word [ref_0046caec], ax  ; mov word [0x46caec], ax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
mov dword [ref_0046caf4], eax  ; mov dword [0x46caf4], eax
push 0xffff00
push 0x4c
push 0x1c4
mov eax, dword [esp + 0x50]
push eax
mov edx, dword [esp + 0x50]
push edx
push ref_0046caec  ; push 0x46caec
call fcn_0045620f  ; call 0x45620f
add esp, 0x18
push 0xffff00
push 0x4a
push 0x1c2
mov eax, dword [esp + 0x50]
inc eax
push eax
mov eax, dword [esp + 0x50]
inc eax
push eax
push ref_0046caec  ; push 0x46caec
call fcn_0045620f  ; call 0x45620f
add esp, 0x18
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov word [ref_0046caec], 0x280  ; mov word [0x46caec], 0x280
lea eax, [esp + 0x40]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov dword [ref_0048a34a], ebx  ; mov dword [0x48a34a], ebx

loc_00403865:
xor eax, eax
jmp near loc_004039b8  ; jmp 0x4039b8

loc_0040386c:
mov esi, dword [ref_0048a34a]  ; mov esi, dword [0x48a34a]
cmp esi, 0xffffffff
je short loc_00403865  ; je 0x403865
mov dword [esp + 0x40], 0x7f
mov dword [esp + 0x48], 0x243
mov eax, esi
shl eax, 3
add eax, esi
shl eax, 3
lea edx, [eax + 0x16]
mov dword [esp + 0x44], edx
add eax, 0x62
mov dword [esp + 0x4c], eax
lea eax, [esp + 0x40]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x44]
push ecx
mov ecx, dword [_g_ddraw_sf2_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
mov ebx, dword [esp + 0x50]
push ebx
mov esi, dword [esp + 0x50]
push esi
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 0x40]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov dword [ref_0048a34a], 0xffffffff  ; mov dword [0x48a34a], 0xffffffff
jmp near loc_00403865  ; jmp 0x403865

loc_004038eb:
mov ecx, dword [ref_0048a34a]  ; mov ecx, dword [0x48a34a]
cmp ecx, 0xffffffff
je near loc_00403865  ; je 0x403865
cmp byte [ecx + ref_0048a344], 0  ; cmp byte [ecx + 0x48a344], 0
je near loc_00403865  ; je 0x403865
push 0
push ref_0048232a  ; push 0x48232a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov ebx, dword [ref_0048a34a]  ; mov ebx, dword [0x48a34a]
push ebx

loc_00403927:
call _Post_0402_Message  ; call 0x401966
add esp, 4
jmp near loc_00403865  ; jmp 0x403865

loc_00403934:
push 0
push ref_00482332  ; push 0x482332
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
push 0xffffffffffffffff
jmp short loc_00403927  ; jmp 0x403927

loc_00403951:
mov eax, esp
push eax
push ebx
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
mov esi, dword [esp + 0x18]
push esi
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
push ebx
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_00403865  ; jmp 0x403865

loc_004039a9:
push ecx
mov ebp, dword [esp + 0x70]
push ebp

loc_004039af:
push eax
push ebx
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]

loc_004039b8:
add esp, 0x50
pop ebp
pop edi
pop esi
pop ebx
ret 0x10

fcn_004039c2:
push ebx
push esi
push edi
push ebp
sub esp, 0x50
mov ebx, dword [esp + 0x64]
mov eax, dword [esp + 0x68]
mov ecx, dword [esp + 0x70]
cmp eax, 0x201
jb short loc_00403a0b  ; jb 0x403a0b
jbe near loc_00403c7f  ; jbe 0x403c7f
cmp eax, 0x205
jb short loc_004039fb  ; jb 0x4039fb
jbe near loc_00403cf4  ; jbe 0x403cf4
cmp eax, 0x401
je short loc_00403a26  ; je 0x403a26
jmp near loc_00403d69  ; jmp 0x403d69

loc_004039fb:
cmp eax, 0x203
je near loc_00403c7f  ; je 0x403c7f
jmp near loc_00403d69  ; jmp 0x403d69

loc_00403a0b:
cmp eax, 0xf
jb near loc_00403d69  ; jb 0x403d69
jbe near loc_00403d11  ; jbe 0x403d11
cmp eax, 0x200
je short loc_00403a50  ; je 0x403a50
jmp near loc_00403d69  ; jmp 0x403d69

loc_00403a26:
mov dword [ref_0048a34e], 0xffffffff  ; mov dword [0x48a34e], 0xffffffff
call _rich4_scan_save_files  ; call 0x403396
push 1
call fcn_00402460  ; call 0x402460
add esp, 4
push 0
push 0
push ebx
call dword [cs:__imp__InvalidateRect@12]  ; ucall: call dword cs:[0x4622f8]
jmp near loc_00403865  ; jmp 0x403865

loc_00403a50:
xor edx, edx
mov dx, cx
mov eax, ecx
shr eax, 0x10
and eax, 0xffff
and eax, 0xffff
cmp edx, 0x81
jle near loc_00403bfb  ; jle 0x403bfb
cmp edx, 0x241
jge near loc_00403bfb  ; jge 0x403bfb
cmp eax, 0x39
jle near loc_00403bfb  ; jle 0x403bfb
cmp eax, 0x1a1
jge near loc_00403bfb  ; jge 0x403bfb
lea edx, [eax - 0x39]
mov ebx, 0x48
mov eax, edx
sar edx, 0x1f
idiv ebx
mov ebx, eax
cmp ebx, dword [ref_0048a34e]  ; cmp ebx, dword [0x48a34e]
je near loc_00403865  ; je 0x403865
push 0
push ref_0048231a  ; push 0x48231a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov dword [esp + 0x40], 0x7f
mov dword [esp + 0x48], 0x243
mov esi, dword [ref_0048a34e]  ; mov esi, dword [0x48a34e]
cmp esi, 0xffffffff
je short loc_00403b2e  ; je 0x403b2e
mov eax, esi
shl eax, 3
add eax, esi
shl eax, 3
lea edx, [eax + 0x37]
mov dword [esp + 0x44], edx
add eax, 0x83
mov dword [esp + 0x4c], eax
lea eax, [esp + 0x40]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x44]
push ecx
mov edi, dword [_g_ddraw_sf2_ptr]  ; mov edi, dword [0x48a0e0]
push edi
mov ebp, dword [esp + 0x50]
push ebp
mov ecx, dword [esp + 0x50]
push ecx
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 0x40]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4

loc_00403b2e:
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 3
lea edx, [eax + 0x37]
mov dword [esp + 0x44], edx
add eax, 0x83
mov dword [esp + 0x4c], eax
lea eax, [esp + 0x40]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [ref_0048a078]  ; mov eax, dword [0x48a078]
sar eax, 1
mov word [ref_0046caec], ax  ; mov word [0x46caec], ax
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
mov dword [ref_0046caf4], eax  ; mov dword [0x46caf4], eax
push 0xffff00
push 0x4c
push 0x1c4
mov esi, dword [esp + 0x50]
push esi
mov edi, dword [esp + 0x50]
push edi
push ref_0046caec  ; push 0x46caec
call fcn_0045620f  ; call 0x45620f
add esp, 0x18
push 0xffff00
push 0x4a
push 0x1c2
mov eax, dword [esp + 0x50]
inc eax
push eax
mov eax, dword [esp + 0x50]
inc eax
push eax
push ref_0046caec  ; push 0x46caec
call fcn_0045620f  ; call 0x45620f
add esp, 0x18
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov word [ref_0046caec], 0x280  ; mov word [0x46caec], 0x280
lea eax, [esp + 0x40]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov dword [ref_0048a34e], ebx  ; mov dword [0x48a34e], ebx
jmp near loc_00403865  ; jmp 0x403865

loc_00403bfb:
mov eax, dword [ref_0048a34e]  ; mov eax, dword [0x48a34e]
cmp eax, 0xffffffff
je near loc_00403865  ; je 0x403865
mov dword [esp + 0x40], 0x7f
mov dword [esp + 0x48], 0x243
mov edx, eax
shl eax, 3
add eax, edx
shl eax, 3
lea edx, [eax + 0x37]
mov dword [esp + 0x44], edx
add eax, 0x83
mov dword [esp + 0x4c], eax
lea eax, [esp + 0x40]
push eax
call fcn_0040235d  ; call 0x40235d
add esp, 4
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x44]
push ecx
mov ebx, dword [_g_ddraw_sf2_ptr]  ; mov ebx, dword [0x48a0e0]
push ebx
mov esi, dword [esp + 0x50]
push esi
mov edi, dword [esp + 0x50]
push edi
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 0x40]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov dword [ref_0048a34e], 0xffffffff  ; mov dword [0x48a34e], 0xffffffff
jmp near loc_00403865  ; jmp 0x403865

loc_00403c7f:
cmp dword [ref_0048a34e], 0xffffffff  ; cmp dword [0x48a34e], 0xffffffff
je near loc_00403865  ; je 0x403865
push 0
push ref_0048232a  ; push 0x48232a
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
mov eax, dword [ref_0048a34e]  ; mov eax, dword [0x48a34e]
inc eax
push eax
call _rich4_save_game_to_file  ; call 0x402fd1
add esp, 4
call _rich4_scan_save_files  ; call 0x403396
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
push ref_0046cadc  ; push 0x46cadc
mov ebx, dword [_g_ddraw_sf2_ptr]  ; mov ebx, dword [0x48a0e0]
push ebx
mov esi, dword [ref_0046cae0]  ; mov esi, dword [0x46cae0]
push esi
mov edi, dword [ref_0046cadc]  ; mov edi, dword [0x46cadc]
push edi
push eax
call dword [edx + 0x1c]  ; ucall
mov ebp, dword [ref_0048a34e]  ; mov ebp, dword [0x48a34e]
push ebp

loc_00403ce7:
call _Post_0402_Message  ; call 0x401966
add esp, 4
jmp near loc_00403865  ; jmp 0x403865

loc_00403cf4:
push 0
push ref_00482332  ; push 0x482332
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
push 0xffffffffffffffff
jmp short loc_00403ce7  ; jmp 0x403ce7

loc_00403d11:
mov eax, esp
push eax
push ebx
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
mov ebp, dword [_g_ddraw_sf2_ptr]  ; mov ebp, dword [0x48a0e0]
push ebp
mov ecx, dword [esp + 0x18]
push ecx
mov esi, dword [esp + 0x18]
push esi
push eax
call dword [edx + 0x1c]  ; ucall
lea eax, [esp + 8]
push eax
call fcn_00402250  ; call 0x402250
add esp, 4
mov eax, esp
push eax
push ebx
call dword [cs:__imp__EndPaint@8]  ; ucall: call dword cs:[0x4622e8]
jmp near loc_00403865  ; jmp 0x403865

loc_00403d69:
push ecx
mov edi, dword [esp + 0x70]
push edi
jmp near loc_004039af  ; jmp 0x4039af

_rich4_ui_load_game:
push ebx
push esi
push edi
push ebp
sub esp, 0x50
xor edx, edx
mov dword [esp + 0x48], edx
push edx
push edx
push 0x208
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048a338], eax  ; mov dword [0x48a338], eax
push 0
push 0
push 2
mov ebx, dword [_rich4_data_mkf]  ; mov ebx, dword [0x48a0e4]
push ebx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048a328], eax  ; mov dword [0x48a328], eax
cmp dword [esp + 0x64], 0
je short loc_00403dfa  ; je 0x403dfa
mov edi, 0x28
mov dword [esp + 0x28], edi
mov ebp, 0xf
mov dword [esp + 0x2c], ebp
mov eax, dword [ref_0048a338]  ; mov eax, dword [0x48a338]
movsx edx, word [eax + 0xc]
add edx, edi
mov dword [esp + 0x30], edx
movsx eax, word [eax + 0xe]
add eax, ebp
mov dword [esp + 0x34], eax
lea eax, [esp + 0x28]
push eax
call fcn_00451e7e  ; call 0x451e7e
add esp, 4
mov dword [ref_0048a334], eax  ; mov dword [0x48a334], eax

loc_00403dfa:
xor ebp, ebp
jmp short loc_00403e08  ; jmp 0x403e08

loc_00403dfe:
inc ebp
cmp ebp, 5
jg near loc_004040b0  ; jg 0x4040b0

loc_00403e08:
xor ah, ah
mov byte [ebp + ref_0048a344], ah  ; mov byte [ebp + 0x48a344], ah
push ebp
push ref_004630d8  ; push 0x4630d8
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push ref_004630e3  ; push 0x4630e3
lea eax, [esp + 4]
push eax
call _libc_fopen  ; call 0x4573bf
mov ebx, eax
add esp, 8
mov dword [esp + 0x4c], eax
test eax, eax
je near loc_004040a6  ; je 0x4040a6
push eax
push 1
push 4
lea eax, [esp + 0x50]
push eax
call _libc_fread  ; call 0x4576d0
add esp, 0x10
cmp dword [esp + 0x44], 0x26
je short loc_00403e67  ; je 0x403e67
push ebx

loc_00403e5d:
call _libc_fclose  ; call 0x4578c5
add esp, 4
jmp short loc_00403dfe  ; jmp 0x403dfe

loc_00403e67:
cmp dword [esp + 0x48], 0
jne short loc_00403eb8  ; jne 0x403eb8
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0xf
push 0x28
mov eax, dword [ref_0048a338]  ; mov eax, dword [0x48a338]
add eax, 0xc
push eax
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call fcn_00456418  ; call 0x456418
add esp, 0x10
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov dword [esp + 0x48], 1

loc_00403eb8:
mov byte [ebp + ref_0048a344], 1  ; mov byte [ebp + 0x48a344], 1
mov esi, dword [esp + 0x4c]
push esi
push 1
push 4
push ref_0048a340  ; push 0x48a340
call _libc_fread  ; call 0x4576d0
add esp, 0x10
push esi
push 1
push 2
push ref_0048a33c  ; push 0x48a33c
call _libc_fread  ; call 0x4576d0
add esp, 0x10
push esi
push 1
push 2
push ref_0048a330  ; push 0x48a330
call _libc_fread  ; call 0x4576d0
add esp, 0x10
push esi
push 1
push 4
push ref_0048a32c  ; push 0x48a32c
call _libc_fread  ; call 0x4576d0
add esp, 0x10
push esi
push 4
push 0x68
push ref_0048a188  ; push 0x48a188
call _libc_fread  ; call 0x4576d0
add esp, 0x10
push 1
push 3
push 0x101010
push 0xf0f0f0
push 0x10
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, ebp
shl eax, 3
add eax, ebp
shl eax, 3
lea edi, [eax + 0x18]
push edi
push 0x81
mov eax, dword [ref_0048a338]  ; mov eax, dword [0x48a338]
add eax, 0x84
push eax
mov ebx, dword [ref_0048a08c]  ; mov ebx, dword [0x48a08c]
push ebx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
test ebp, ebp
jne short loc_00403f95  ; jne 0x403f95
push 2
lea eax, [edi + 0xf]
push eax
push 0xa5
push ref_004630e9  ; push 0x4630e9
push ebp
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14

loc_00403f95:
push 0xa
lea eax, [esp + 0x3c]
push eax
mov eax, dword [ref_0048a340]  ; mov eax, dword [0x48a340]
shr eax, 0x10
push eax
call _libc_itoa  ; call 0x457d61
add esp, 0xc
push 2
lea eax, [edi + 0x24]
push eax
push 0xa5
lea eax, [esp + 0x44]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov ebx, dword [ref_0048a340]  ; mov ebx, dword [0x48a340]
shr ebx, 8
and ebx, 0xff
mov esi, dword [ref_0048a340]  ; mov esi, dword [0x48a340]
and esi, 0xff
push esi
push ebx
push ref_004630ee  ; push 0x4630ee
lea eax, [esp + 0x44]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 2
lea eax, [edi + 0x39]
push eax
push 0xa5
lea eax, [esp + 0x44]
push eax
push 0
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
push edi
push 0xd1
mov edx, dword [ref_0048a33c]  ; mov edx, dword [0x48a33c]
add edx, 2
mov eax, dword [ref_0048a330]  ; mov eax, dword [0x48a330]
shl eax, 2
add edx, eax
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 2
mov eax, dword [ref_0048a338]  ; mov eax, dword [0x48a338]
add eax, 0xc
add eax, edx
push eax
mov esi, dword [ref_0048a08c]  ; mov esi, dword [0x48a08c]
push esi
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
xor ebx, ebx
mov esi, 0x121

loc_00404056:
cmp ebx, dword [ref_0048a32c]  ; cmp ebx, dword [0x48a32c]
jge short loc_00404096  ; jge 0x404096
push edi
push esi
imul eax, ebx, 0x68
xor edx, edx
mov dl, byte [eax + ref_0048a19b]  ; mov dl, byte [eax + 0x48a19b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, dword [ref_0048a328]  ; mov edx, dword [0x48a328]
add edx, 0xc
add eax, edx
push eax
mov edx, dword [ref_0048a08c]  ; mov edx, dword [0x48a08c]
push edx
call fcn_004563f5  ; call 0x4563f5
add esp, 0x10
inc ebx
add esi, 0x48
jmp short loc_00404056  ; jmp 0x404056

loc_00404096:
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall

loc_004040a6:
mov ecx, dword [esp + 0x4c]
push ecx
jmp near loc_00403e5d  ; jmp 0x403e5d

loc_004040b0:
mov ebp, 0xffffffff
cmp dword [esp + 0x48], 0
je short loc_004040dd  ; je 0x4040dd
push 0
push fcn_0040363a  ; push 0x40363a
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
mov ebp, eax
cmp eax, 0xffffffff
je short loc_004040dd  ; je 0x4040dd
push eax
call _rich4_load_game_from_file  ; call 0x402ac5
add esp, 4
mov ebp, eax

loc_004040dd:
cmp dword [esp + 0x64], 0
je short loc_0040413d  ; je 0x40413d
cmp ebp, 0xffffffff
jne short loc_00404104  ; jne 0x404104
mov eax, dword [esp + 0x2c]
push eax
mov edx, dword [esp + 0x2c]
push edx
mov ecx, dword [ref_0048a334]  ; mov ecx, dword [0x48a334]
push ecx
call fcn_00451edb  ; call 0x451edb
add esp, 0xc
jmp short loc_0040413d  ; jmp 0x40413d

loc_00404104:
mov edi, dword [ref_0048a334]  ; mov edi, dword [0x48a334]
push edi
call _libc_free  ; call 0x456e11
add esp, 4
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
cmp byte [ref_0046cb06], 0  ; cmp byte [0x46cb06], 0
je short loc_00404133  ; je 0x404133
xor bl, bl
mov byte [ref_0046cb06], bl  ; mov byte [0x46cb06], bl
call fcn_00454acb  ; call 0x454acb

loc_00404133:
push 0
call fcn_00454d91  ; call 0x454d91
add esp, 4

loc_0040413d:
mov ebx, dword [ref_0048a338]  ; mov ebx, dword [0x48a338]
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
mov esi, dword [ref_0048a328]  ; mov esi, dword [0x48a328]
push esi
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, ebp
add esp, 0x50
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_ui_save_game:
push ebx
push esi
push edi
push ebp
sub esp, 0x10
push 0
push 0
push 0x208
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048a338], eax  ; mov dword [0x48a338], eax
push 0
push 0
push 2
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048a328], eax  ; mov dword [0x48a328], eax
mov ebx, 0x28
mov dword [esp], ebx
mov esi, 0x30
mov dword [esp + 4], esi
mov eax, dword [ref_0048a338]  ; mov eax, dword [0x48a338]
movsx edx, word [eax + 0x18]
add edx, ebx
mov dword [esp + 8], edx
movsx eax, word [eax + 0x1a]
add eax, esi
mov dword [esp + 0xc], eax
mov eax, esp
push eax
call fcn_00451e7e  ; call 0x451e7e
add esp, 4
mov dword [ref_0048a334], eax  ; mov dword [0x48a334], eax
push 0
push fcn_004039c2  ; push 0x4039c2
call _Wait_0402_Message  ; call 0x4018e7
add esp, 8
cmp eax, 0xffffffff
je short loc_004041fe  ; je 0x4041fe
push 0x1f4
call fcn_0045285e  ; call 0x45285e
add esp, 4

loc_004041fe:
mov edi, dword [esp + 4]
push edi
mov ebp, dword [esp + 4]
push ebp
mov eax, dword [ref_0048a334]  ; mov eax, dword [0x48a334]
push eax
call fcn_00451edb  ; call 0x451edb
add esp, 0xc
mov edx, dword [ref_0048a338]  ; mov edx, dword [0x48a338]
push edx
call _libc_free  ; call 0x456e11
add esp, 4
mov ecx, dword [ref_0048a328]  ; mov ecx, dword [0x48a328]
push ecx
call _libc_free  ; call 0x456e11
add esp, 4
add esp, 0x10
pop ebp
pop edi
pop esi
pop ebx
ret

