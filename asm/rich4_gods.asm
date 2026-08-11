extern _rich4_all_players_state
extern _card_table
extern _rich4_current_player
extern _global_rich4_cfg
extern _libc_free
extern _libc_rand
extern _libc_sprintf
extern _memcpy
extern _rich4_num_players
extern _read_mkf
extern _rich4_create_font
extern _rich4_draw_text
extern _rich4_player_say
extern fcn_0040829d
extern fcn_0040a4e1
extern fcn_0040ab4a
extern fcn_0040b066
extern fcn_0040b0cd
extern fcn_0040b110
extern fcn_0040df69
extern fcn_0040e14d
extern fcn_0041d2c6
extern fcn_0041d3f4
extern fcn_0041d476
extern fcn_00440706
extern fcn_00440cac
extern _rich4_player_receive_random_card
extern _rich4_player_drop_random_card
extern _rich4_player_drop_half_the_card
extern _rich4_player_sell_all_the_card
extern _rich4_player_sell_all_tools
extern fcn_0044f230
extern fcn_0044f354
extern fcn_0045144f
extern fcn_00451a97
extern fcn_004521cb
extern fcn_00452808
extern fcn_0045285e
extern fcn_004528b9
extern fcn_004542ce
extern fcn_0045643d
extern fcn_00456770
extern ref_00463250
extern ref_00463295
extern ref_004632cc
extern ref_004632fd
extern ref_0046330e
extern ref_00463353
extern ref_0046336c
extern ref_00463381
extern ref_0046338e
extern ref_004633ab
extern ref_004633c0
extern ref_004633d5
extern ref_004633f0
extern ref_00463419
extern ref_0046344e
extern ref_00463495
extern ref_004634c0
extern ref_004634d7
extern ref_004634f2
extern ref_0046350c
extern ref_00463510
extern ref_0046caec
extern ref_0046caf4
extern ref_0046caf8
extern ref_004749e2
extern ref_00474a06
extern ref_00474a2a
extern ref_004751f0
extern _rich4_god_names
extern ref_0047ed9a
extern _rich4_event_strings
extern ref_004823da
extern ref_004823e2
extern ref_0048a068
extern ref_0048a078
extern ref_0048a08c
extern _g_ddraw_sf1_ptr
extern _g_ddraw_sf2_ptr
extern _rich4_data_mkf
extern ref_0049692c
extern ref_00496d08
extern _rich4_map_node_ptr
extern _rich4_land_info_ptr
extern _rich4_facility_info_ptr
extern _rich4_price_index
extern ref_00499110

global _rich4_attach_god
global _rich4_detach_god
global fcn_0040ea62
global fcn_0040f381
global fcn_0040f8be

section .text

fcn_0040e2a2:
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
push 0
push 6
push 0x101010
push 0xffffff
push 0x1c
call _rich4_create_font  ; call 0x44f9d8
add esp, 0x14
push 7
push 0x1cc
push 0xdc
mov edx, dword [esp + 0x10]
push edx
push ref_0046caec  ; push 0x46caec
call _rich4_draw_text  ; call 0x44fabc
add esp, 0x14
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov word [ref_0046caec], 0x280  ; mov word [0x46caec], 0x280
push 0x960
call fcn_004528b9  ; call 0x4528b9
add esp, 4
ret

_rich4_detach_god:
push ebx
push esi
push edi
push ebp
sub esp, 0x30
imul ebx, dword [esp + 0x44], 0x68
xor eax, eax
mov al, byte [ebx + (_rich4_all_players_state + 63)]  ; mov al, byte [ebx + 0x496ba7]
dec eax
mov dword [esp + 0x2c], eax
mov edi, eax
shl edi, 2
sub edi, eax
shl edi, 3
movzx ebp, byte [edi + ref_00496d08]  ; movzx ebp, byte [edi + 0x496d08]
cmp dword [ebx + (_rich4_all_players_state + 50)], 0  ; cmp dword [ebx + 0x496b9a], 0
je short loc_0040e36e  ; je 0x40e36e
inc eax
push eax
call fcn_0040e14d  ; call 0x40e14d
add esp, 4
jmp near loc_0040e661  ; jmp 0x40e661

loc_0040e36e:
push 4
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
push eax
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 8)]  ; mov ax, word [ebx + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov esi, dword [ebp*4 + ref_0049692c]  ; mov esi, dword [ebp*4 + 0x49692c]
mov eax, dword [esp + 0x2c]
shl eax, 8
lea edx, [eax + 0x8100]
lea eax, [esp + 0x24]
push eax
lea eax, [esp + 0x2c]
push eax
lea eax, [esp + 0x28]
push eax
push edx
call fcn_0040b066  ; call 0x40b066
add esp, 0x10
xor edx, edx
mov word [edi + (ref_00496d08 + 2)], dx  ; mov word [edi + 0x496d0a], dx
push 0
push 0xffffffffffffffff
call fcn_0040829d  ; call 0x40829d
add esp, 8
mov ax, word [ebx + (_rich4_all_players_state + 12)]  ; mov ax, word [ebx + 0x496b74]
mov word [edi + (ref_00496d08 + 2)], ax  ; mov word [edi + 0x496d0a], ax
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
push 0x1b8
push 0x1b8
push 0x28
push 0
push 0
push ref_0046caec  ; push 0x46caec
call fcn_00451a97  ; call 0x451a97
add esp, 0x18
mov edi, eax
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov edx, dword [esp + 0x24]
mov eax, edx
shl eax, 2
sub eax, edx
movsx edx, word [esi + eax*4 + 0x10]
mov ecx, dword [esp + 0x20]
sub ecx, edx
mov dword [esp], ecx
movsx edx, word [esi + eax*4 + 0x12]
mov ecx, dword [esp + 0x28]
sub ecx, edx
mov dword [esp + 4], ecx
movsx edx, word [esi + eax*4 + 0xc]
mov ecx, dword [esp]
add ecx, edx
mov dword [esp + 8], ecx
movsx eax, word [esi + eax*4 + 0xe]
mov edx, dword [esp + 4]
add edx, eax
mov dword [esp + 0xc], edx
push 0
push ref_004823e2  ; push 0x4823e2
call fcn_004542ce  ; call 0x4542ce
add esp, 8
xor ebx, ebx
jmp near loc_0040e539  ; jmp 0x40e539

loc_0040e485:
lea eax, [esp + 0x10]
push eax
lea eax, [esp + 4]
push eax
lea eax, [esp + 0x18]
push eax
call fcn_00452808  ; call 0x452808
add esp, 0xc
mov eax, dword [_g_ddraw_sf1_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
lea ecx, [esp + 0x14]
push ecx
mov ecx, dword [_g_ddraw_sf2_ptr]  ; mov ecx, dword [0x48a0e0]
push ecx
mov ecx, dword [esp + 0x20]
push ecx
mov ecx, dword [esp + 0x20]
push ecx
push eax
call dword [edx + 0x1c]  ; ucall
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0x1c]
mov edx, dword [esp + 0x14]
sub eax, edx
push eax
mov eax, dword [esp + 0x1c]
mov ecx, dword [esp + 0x14]
sub eax, ecx
push eax
lea eax, [edx - 0x28]
push eax
push ecx
push edx
push ecx
push edi
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_0045643d  ; call 0x45643d
add esp, 0x20
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
push 0x10
lea eax, [esp + 0x14]
push eax
lea eax, [esp + 8]
push eax
call _memcpy  ; call 0x456de8
add esp, 0xc
push 0x3c
call fcn_0045285e  ; call 0x45285e
add esp, 4
inc ebx
cmp ebx, 0x18
jge near loc_0040e5f5  ; jge 0x40e5f5

loc_0040e539:
sub dword [esp + 0x28], 0xa
mov edx, dword [esp + 0x24]
inc edx
mov dword [esp + 0x24], edx
mov ecx, edx
and ecx, 7
mov dword [esp + 0x24], ecx
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
mov eax, dword [esp + 0x28]
push eax
mov edx, dword [esp + 0x24]
push edx
mov ecx, dword [esp + 0x2c]
push ecx
push esi
mov eax, dword [ref_0048a08c]  ; mov eax, dword [0x48a08c]
push eax
call fcn_00456770  ; call 0x456770
add esp, 0x14
mov eax, dword [_g_ddraw_sf2_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov edx, dword [esp + 0x24]
mov eax, edx
shl eax, 2
sub eax, edx
movsx edx, word [esi + eax*4 + 0x10]
mov ecx, dword [esp + 0x20]
sub ecx, edx
mov dword [esp + 0x10], ecx
movsx edx, word [esi + eax*4 + 0x12]
mov ecx, dword [esp + 0x28]
sub ecx, edx
mov dword [esp + 0x14], ecx
movsx edx, word [esi + eax*4 + 0xc]
mov ecx, dword [esp + 0x10]
add ecx, edx
mov dword [esp + 0x18], ecx
movsx eax, word [esi + eax*4 + 0xe]
mov edx, dword [esp + 0x14]
add edx, eax
mov dword [esp + 0x1c], edx
cmp dword [esp + 0x14], 0x28
jge short loc_0040e5ea  ; jge 0x40e5ea
mov dword [esp + 0x14], 0x28

loc_0040e5ea:
cmp dword [esp + 0x1c], 0x28
jge near loc_0040e485  ; jge 0x40e485

loc_0040e5f5:
push edi
call _libc_free  ; call 0x456e11
add esp, 4
mov eax, dword [esp + 0x2c]
inc eax
push eax
call fcn_0040e14d  ; call 0x40e14d
add esp, 4
push 0
push 0xffffffffffffffff
call fcn_0040829d  ; call 0x40829d
add esp, 8
cmp ebp, 5
je short loc_0040e631  ; je 0x40e631
cmp ebp, 6
je short loc_0040e631  ; je 0x40e631
cmp ebp, 7
je short loc_0040e631  ; je 0x40e631
cmp ebp, 8
je short loc_0040e631  ; je 0x40e631
cmp ebp, 0xf
jne short loc_0040e661  ; jne 0x40e661

loc_0040e631:
imul eax, dword [esp + 0x44], 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 92)]  ; mov ecx, dword [edx + eax*8 + 0x4808a6]
push ecx
push 2
mov ebx, dword [esp + 0x4c]
push ebx
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0040e661:
add esp, 0x30
pop ebp
pop edi
pop esi
pop ebx
ret


fcn_0040ea62:
xor edx, edx
mov ecx, dword [esp + 4]
test ecx, ecx
jne short loc_0040ea6f  ; jne 0x40ea6f
xor eax, eax
ret

loc_0040ea6f:
dec ecx
mov eax, ecx
shl eax, 2
sub eax, ecx
mov al, byte [eax*8 + ref_00496d08]  ; mov al, byte [eax*8 + 0x496d08]
and eax, 0xff
cmp eax, 0xc
jg short loc_0040ea8d  ; jg 0x40ea8d
cmp eax, 0xb
jne short loc_0040ea92  ; jne 0x40ea92

loc_0040ea8d:
cmp eax, 0xf
jne short loc_0040ea97  ; jne 0x40ea97

loc_0040ea92:
mov edx, 1

loc_0040ea97:
mov eax, edx
ret

endloc_0040ea9a:
db 0x90

ref_0040ea9b:  ; may contain a jump table
dd fcn_0040ec14
dd fcn_0040ecf1
dd fcn_0040ed8f
dd fcn_0040ee50
dd fcn_0040ef1b
dd fcn_0040efe4
dd fcn_0040f083
dd fcn_0040f155
dd fcn_0040f205
dd fcn_0040f258
dd fcn_0040ece6
dd fcn_0040f2a0
dd fcn_0040ece6
dd fcn_0040ece6
dd fcn_0040f2eb

_rich4_attach_god:
push ebx
push esi
push edi
push ebp
sub esp, 0x80
mov edx, dword [esp + 0x9c]
test edx, edx
je near fcn_0040ece6  ; je 0x40ece6
push edx
call fcn_0040ea62  ; call 0x40ea62
add esp, 4
test eax, eax
je near fcn_0040ece6  ; je 0x40ece6
mov ebx, dword [esp + 0x9c]
dec ebx
mov dword [esp + 0x9c], ebx
mov edx, ebx
mov eax, ebx
shl eax, 2
sub eax, ebx
movzx esi, byte [eax*8 + ref_00496d08]  ; movzx esi, byte [eax*8 + 0x496d08]
xor edx, ebx
mov word [eax*8 + (ref_00496d08 + 2)], dx  ; mov word [eax*8 + 0x496d0a], dx
mov edi, dword [esp + 0x94]
imul eax, edi, 0x68
cmp byte [eax + (_rich4_all_players_state + 63)], 0  ; cmp byte [eax + 0x496ba7], 0
je short loc_0040eb47  ; je 0x40eb47
push edi
call _rich4_detach_god  ; call 0x40e32c
add esp, 4

loc_0040eb47:
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov al, byte [esp + 0x9c]
inc al
imul ebx, dword [esp + 0x94], 0x68
mov byte [ebx + (_rich4_all_players_state + 63)], al  ; mov byte [ebx + 0x496ba7], al
mov edx, dword [esp + 0x9c]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov dx, word [ebx + (_rich4_all_players_state + 12)]  ; mov dx, word [ebx + 0x496b74]
mov word [eax + (ref_00496d08 + 2)], dx  ; mov word [eax + 0x496d0a], dx
mov dl, byte [esp + 0x94]
inc dl
mov byte [eax + (ref_00496d08 + 5)], dl  ; mov byte [eax + 0x496d0d], dl
cmp esi, 0xf
jne short loc_0040eba8  ; jne 0x40eba8
mov byte [eax + (ref_00496d08 + 4)], 0xd  ; mov byte [eax + 0x496d0c], 0xd
jmp short loc_0040ebaf  ; jmp 0x40ebaf

loc_0040eba8:
mov byte [eax + (ref_00496d08 + 4)], 7  ; mov byte [eax + 0x496d0c], 7

loc_0040ebaf:
mov ecx, dword [esp + 0x98]
test ecx, ecx
je short loc_0040ebcc  ; je 0x40ebcc
mov eax, ecx
shl eax, 2
add eax, ecx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
mov byte [edx + eax*8 + 0x26], 0

loc_0040ebcc:
imul eax, dword [esp + 0x94], 0x68
mov dx, word [esi*2 + ref_004749e2]  ; mov dx, word [esi*2 + 0x4749e2]
add word [eax + (_rich4_all_players_state + 68)], dx  ; add word [eax + 0x496bac], dx
mov dx, word [esi*2 + ref_00474a06]  ; mov dx, word [esi*2 + 0x474a06]
add word [eax + (_rich4_all_players_state + 70)], dx  ; add word [eax + 0x496bae], dx
mov dx, word [esi*2 + ref_00474a2a]  ; mov dx, word [esi*2 + 0x474a2a]
add word [eax + (_rich4_all_players_state + 72)], dx  ; add word [eax + 0x496bb0], dx
lea edx, [esi - 1]
cmp edx, 0xe
ja near fcn_0040ece6  ; ja 0x40ece6
jmp dword [edx*4 + ref_0040ea9b]  ; ujmp: jmp dword [edx*4 + 0x40ea9b]

fcn_0040ec14:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040ec5e  ; je 0x40ec5e
push 0
push 0
push 0x21c
mov esi, dword [_rich4_data_mkf]  ; mov esi, dword [0x48a0e4]
push esi
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x66
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_00463250  ; push 0x463250
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4

loc_0040ec5e:
push 0
call fcn_00440706  ; call 0x440706
add esp, 4
mov esi, eax
xor ebx, ebx
mov ebp, dword [esp + 0x94]

loc_0040ec73:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_0040eca4  ; jge 0x40eca4
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne short loc_0040eca4  ; jne 0x40eca4
cmp ebx, ebp
je short loc_0040eca1  ; je 0x40eca1
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0040eca1  ; je 0x40eca1
push 1
push esi
push ebp
push ebx
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10

loc_0040eca1:
inc ebx
jmp short loc_0040ec73  ; jmp 0x40ec73

loc_0040eca4:
cmp esi, 0x2bc
jle short fcn_0040ece6  ; jle 0x40ece6
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne short fcn_0040ece6  ; jne 0x40ece6
mov ecx, dword [esp + 0x94]
imul eax, ecx, 0x68
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov esi, dword [ebx + eax*8 + (_rich4_event_strings + 32)]  ; mov esi, dword [ebx + eax*8 + 0x48086a]
push esi
push 3
push ecx

loc_0040ecde:
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

fcn_0040ece6:
add esp, 0x80
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0040ecf1:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040ed3b  ; je 0x40ed3b
push 0
push 0
push 0x21d
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x67
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_00463295  ; push 0x463295
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4

loc_0040ed3b:
push 1
call fcn_00440706  ; call 0x440706
mov esi, eax
add esp, 4
push 1
push eax
mov ecx, dword [esp + 0x9c]
push ecx
call fcn_0041d3f4  ; call 0x41d3f4
add esp, 0xc
mov ebx, dword [_rich4_price_index]  ; mov ebx, dword [0x4990e8]
mov eax, ebx
shl eax, 2
add eax, ebx
shl eax, 3
sub eax, ebx
shl eax, 4
add eax, ebx
shl eax, 3
cmp esi, eax
jl near fcn_0040ece6  ; jl 0x40ece6
push esi
mov ebx, dword [esp + 0x98]
push ebx
call fcn_0044f354  ; call 0x44f354
jmp near loc_0040f14d  ; jmp 0x40f14d

fcn_0040ed8f:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040ede7  ; je 0x40ede7
push 0
push 0
push 0x21e
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x68
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_004632cc  ; push 0x4632cc
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc

loc_0040ede7:
mov ebx, dword [esp + 0x94]
push ebx
call _rich4_player_receive_random_card  ; call 0x441e12
add esp, 4
test eax, eax
je near fcn_0040ece6  ; je 0x40ece6
mov ebx, eax
shl ebx, 3
mov edi, dword [ebx + (_card_table - 8)]  ; mov edi, dword [ebx + 0x47fdea]
push edi
mov ebp, dword [esi*4 + (_rich4_god_names - 4)]  ; mov ebp, dword [esi*4 + 0x47ed76]
push ebp
push ref_004632fd  ; push 0x4632fd
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
xor eax, eax
mov al, byte [ebx + (_card_table - 3)]  ; mov al, byte [ebx + 0x47fdef]
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax

loc_0040ee46:
call fcn_0044f230  ; call 0x44f230
jmp near loc_0040f14d  ; jmp 0x40f14d

fcn_0040ee50:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040eea8  ; je 0x40eea8
push 0
push 0
push 0x21f
mov ebx, dword [_rich4_data_mkf]  ; mov ebx, dword [0x48a0e4]
push ebx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x69
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_0046330e  ; push 0x46330e
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc

loc_0040eea8:
mov esi, dword [esp + 0x94]
push esi
call _rich4_player_receive_random_card  ; call 0x441e12
mov ebx, eax
add esp, 4
push esi
call _rich4_player_receive_random_card  ; call 0x441e12
add esp, 4
mov esi, eax
shl esi, 3
mov ebp, dword [esi + (_card_table - 8)]  ; mov ebp, dword [esi + 0x47fdea]
push ebp
mov eax, dword [ebx*8 + (_card_table - 8)]  ; mov eax, dword [ebx*8 + 0x47fdea]
push eax
push ref_00463353  ; push 0x463353
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
xor edx, edx
mov dl, byte [ebx*8 + (_card_table - 3)]  ; mov dl, byte [ebx*8 + 0x47fdef]
xor eax, eax
mov al, byte [esi + (_card_table - 3)]  ; mov al, byte [esi + 0x47fdef]
add eax, edx
push eax
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
push edx
jmp near loc_0040ee46  ; jmp 0x40ee46

fcn_0040ef1b:
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov edx, dword [ebx + eax*8 + (_rich4_event_strings + 88)]  ; mov edx, dword [ebx + eax*8 + 0x4808a2]
push edx
push 2
mov eax, dword [esp + 0x9c]
or ah, 0x80
push eax
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040ef96  ; je 0x40ef96
push 0
push 0
push 0x220
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x6a
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_0046336c  ; push 0x46336c
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4

loc_0040ef96:
push 4
call fcn_00440706  ; call 0x440706
add esp, 4
mov esi, eax
xor ebx, ebx
mov ebp, dword [esp + 0x94]

loc_0040efab:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge near fcn_0040ece6  ; jge 0x40ece6
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne near fcn_0040ece6  ; jne 0x40ece6
cmp ebx, ebp
je short loc_0040efe1  ; je 0x40efe1
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0040efe1  ; je 0x40efe1
push 0
push esi
push ebx
push ebp
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10

loc_0040efe1:
inc ebx
jmp short loc_0040efab  ; jmp 0x40efab

fcn_0040efe4:
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov edi, dword [ebx + eax*8 + (_rich4_event_strings + 88)]  ; mov edi, dword [ebx + eax*8 + 0x4808a2]
push edi
push 2
mov eax, dword [esp + 0x9c]
or ah, 0x80
push eax
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040f05f  ; je 0x40f05f
push 0
push 0
push 0x221
mov ebp, dword [_rich4_data_mkf]  ; mov ebp, dword [0x48a0e4]
push ebp
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x6b
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_00463381  ; push 0x463381
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4

loc_0040f05f:
push 5
call fcn_00440706  ; call 0x440706
add esp, 4
push 0
push eax
push 0xffffffffffffffff
mov eax, dword [esp + 0xa0]
push eax
call fcn_0041d2c6  ; call 0x41d2c6
add esp, 0x10
jmp near fcn_0040ece6  ; jmp 0x40ece6

fcn_0040f083:
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov edx, dword [ebx + eax*8 + (_rich4_event_strings + 88)]  ; mov edx, dword [ebx + eax*8 + 0x4808a2]
push edx
push 2
mov eax, dword [esp + 0x9c]
or ah, 0x80
push eax
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040f10c  ; je 0x40f10c
push 0
push 0
push 0x222
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x6c
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_0046338e  ; push 0x46338e
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc

loc_0040f10c:
mov ebx, dword [esp + 0x94]
push ebx
call _rich4_player_drop_random_card  ; call 0x441e77
add esp, 4
test eax, eax
je near fcn_0040ece6  ; je 0x40ece6
mov esi, dword [eax*8 + (_card_table - 8)]  ; mov esi, dword [eax*8 + 0x47fdea]
push esi
push ref_004633ab  ; push 0x4633ab
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax

loc_0040f148:
call fcn_00440cac  ; call 0x440cac

loc_0040f14d:
add esp, 8
jmp near fcn_0040ece6  ; jmp 0x40ece6

fcn_0040f155:
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov esi, dword [ebx + eax*8 + (_rich4_event_strings + 88)]  ; mov esi, dword [ebx + eax*8 + 0x4808a2]
push esi
push 2
mov eax, dword [esp + 0x9c]
or ah, 0x80
push eax
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040f1de  ; je 0x40f1de
push 0
push 0
push 0x223
mov edi, dword [_rich4_data_mkf]  ; mov edi, dword [0x48a0e4]
push edi
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x6d
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_004633c0  ; push 0x4633c0
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc

loc_0040f1de:
mov ebp, dword [esp + 0x94]
push ebp
call _rich4_player_drop_half_the_card  ; call 0x441ece
add esp, 4
test eax, eax
je near fcn_0040ece6  ; je 0x40ece6
push 0x5dc
push ref_004633d5  ; push 0x4633d5
jmp near loc_0040f148  ; jmp 0x40f148

fcn_0040f205:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je near fcn_0040ece6  ; je 0x40ece6
push 0
push 0
push 0x224
mov ebx, dword [_rich4_data_mkf]  ; mov ebx, dword [0x48a0e4]
push ebx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x6e
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_004633f0  ; push 0x4633f0

loc_0040f24b:
call fcn_0040e2a2  ; call 0x40e2a2

loc_0040f250:
add esp, 4
jmp near fcn_0040ece6  ; jmp 0x40ece6

fcn_0040f258:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je near fcn_0040ece6  ; je 0x40ece6
push 0
push 0
push 0x225
mov ecx, dword [_rich4_data_mkf]  ; mov ecx, dword [0x48a0e4]
push ecx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x70
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_00463419  ; push 0x463419
jmp short loc_0040f24b  ; jmp 0x40f24b

fcn_0040f2a0:
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je near fcn_0040ece6  ; je 0x40ece6
push 0
push 0
push 0x226
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x6f
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_0046344e  ; push 0x46344e
jmp near loc_0040f24b  ; jmp 0x40f24b

fcn_0040f2eb:
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov esi, dword [ebx + eax*8 + (_rich4_event_strings + 88)]  ; mov esi, dword [ebx + eax*8 + 0x4808a2]
push esi
push 2
mov eax, dword [esp + 0x9c]
or ah, 0x80
push eax
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0040f366  ; je 0x40f366
push 0
push 0
push 0x227
mov edi, dword [_rich4_data_mkf]  ; mov edi, dword [0x48a0e4]
push edi
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x71
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push ref_00463495  ; push 0x463495
call fcn_0040e2a2  ; call 0x40e2a2
add esp, 4

loc_0040f366:
mov ebp, dword [esp + 0x94]
push ebp
call _rich4_player_sell_all_tools  ; call 0x445b3f
add esp, 4
push ebp
call _rich4_player_sell_all_the_card  ; call 0x441f21
jmp near loc_0040f250  ; jmp 0x40f250

fcn_0040f381:
push ebx
push esi
push edi
push ebp
sub esp, 0x94
xor edx, edx
mov dword [esp + 0x88], edx
mov ecx, dword [esp + 0xa8]
imul ebx, ecx, 0x68
cmp byte [ebx + (_rich4_all_players_state + 50)], 0  ; cmp byte [ebx + 0x496b9a], 0
jne near loc_0040f8b3  ; jne 0x40f8b3
cmp byte [ebx + (_rich4_all_players_state + 21)], 0  ; cmp byte [ebx + 0x496b7d], 0
je near loc_0040f8b3  ; je 0x40f8b3
mov edx, dword [esp + 0xac]
mov eax, edx
shl eax, 2
add eax, edx
mov esi, dword [_rich4_map_node_ptr]  ; mov esi, dword [0x498e80]
mov si, word [esi + eax*8 + 0x20]
and esi, 0xffff
mov al, byte [ebx + (_rich4_all_players_state + 63)]  ; mov al, byte [ebx + 0x496ba7]
cmp al, 0xa
jb short loc_0040f3ff  ; jb 0x40f3ff
lea ebx, [esi - 0x7d0]
imul ebx, ebx, 0x34
cmp al, 0xa
jbe near loc_0040f521  ; jbe 0x40f521
cmp al, 0xc
je near loc_0040f68b  ; je 0x40f68b
jmp near loc_0040f8b3  ; jmp 0x40f8b3

loc_0040f3ff:
cmp al, 9
jne near loc_0040f8b3  ; jne 0x40f8b3
push 0
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dx, word [eax + (_rich4_all_players_state + 10)]  ; mov dx, word [eax + 0x496b72]
push edx
mov ax, word [eax + (_rich4_all_players_state + 8)]  ; mov ax, word [eax + 0x496b70]
and eax, 0xffff
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
cmp esi, 0xfa0
jle short loc_0040f492  ; jle 0x40f492
cmp esi, 0x1770
jge short loc_0040f492  ; jge 0x40f492
lea eax, [esi - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
cmp byte [ebx + eax + 0x1a], 0
jne short loc_0040f492  ; jne 0x40f492
mov ecx, dword [ref_0047ed9a]  ; mov ecx, dword [0x47ed9a]
push ecx
push ref_004634c0  ; push 0x4634c0
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov dword [esp + 0x88], 0x800

loc_0040f492:
push esi
call fcn_0040b110  ; call 0x40b110
add esp, 4
or dword [esp + 0x88], eax
test byte [esp + 0x88], 1
je short loc_0040f4e1  ; je 0x40f4e1
test byte [esp + 0x89], 8
jne short loc_0040f4e1  ; jne 0x40f4e1
mov edi, dword [ref_0047ed9a]  ; mov edi, dword [0x47ed9a]
push edi
push ref_004634c0  ; push 0x4634c0
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8

loc_0040f4e1:
mov bh, byte [esp + 0x88]
test bh, 1
je near loc_0040f8b3  ; je 0x40f8b3
push 0
push ref_004823da  ; push 0x4823da
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
test bh, 0x80
je near loc_0040f8b3  ; je 0x40f8b3
call fcn_0040b0cd  ; call 0x40b0cd
jmp near loc_0040f8b3  ; jmp 0x40f8b3

loc_0040f521:
cmp esi, 0x7d0
jle short loc_0040f574  ; jle 0x40f574
cmp esi, 0xfa0
jge short loc_0040f574  ; jge 0x40f574
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add ebx, eax
cmp byte [ebx + 0x1a], 0
je near loc_0040f5d0  ; je 0x40f5d0
mov ch, byte [ebx + 0x19]
test ch, ch
je near loc_0040f5de  ; je 0x40f5de
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
add eax, eax
mov edx, eax
shl eax, 4
sub eax, edx
push eax
mov edi, dword [esp + 0xac]
push edi
xor eax, eax
mov al, ch
dec eax
push eax
call fcn_0040df69  ; call 0x40df69
add esp, 0xc
jmp short loc_0040f5de  ; jmp 0x40f5de

loc_0040f574:
cmp esi, 0xfa0
jle short loc_0040f5d0  ; jle 0x40f5d0
cmp esi, 0x1770
jge short loc_0040f5d0  ; jge 0x40f5d0
lea eax, [esi - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
add ebx, eax
cmp byte [ebx + 0x1a], 0
je short loc_0040f5d0  ; je 0x40f5d0
cmp byte [ebx + 0x19], 0
je short loc_0040f5de  ; je 0x40f5de
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
add eax, eax
mov edx, eax
shl eax, 4
sub eax, edx
push eax
mov edx, dword [esp + 0xac]
push edx
xor eax, eax
mov al, byte [ebx + 0x19]
dec eax
push eax
call fcn_0040df69  ; call 0x40df69
add esp, 0xc
jmp short loc_0040f5de  ; jmp 0x40f5de

loc_0040f5d0:
cmp dword [esp + 0x88], 0
je near loc_0040f8b3  ; je 0x40f8b3

loc_0040f5de:
push 0
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dx, word [eax + (_rich4_all_players_state + 10)]  ; mov dx, word [eax + 0x496b72]
push edx
mov ax, word [eax + (_rich4_all_players_state + 8)]  ; mov ax, word [eax + 0x496b70]
and eax, 0xffff
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0x5dc
push ref_004634d7  ; push 0x4634d7
call fcn_00440cac  ; call 0x440cac
add esp, 8
push 0
push esi
call fcn_0040ab4a  ; call 0x40ab4a
add esp, 8
push 0
lea eax, [esp + 0x88]
push eax
lea eax, [esp + 0x88]
push eax
push esi
call fcn_0040b066  ; call 0x40b066
add esp, 0x10
push 0
push 0
push 0x20e
mov eax, dword [_rich4_data_mkf]  ; mov eax, dword [0x48a0e4]
push eax
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x5f
push 0x30001
mov eax, dword [esp + 0x8c]
sub eax, 0x37
push eax
mov eax, dword [esp + 0x8c]
sub eax, 0x37
push eax
push ebx
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
jmp near loc_0040f8b3  ; jmp 0x40f8b3

loc_0040f68b:
cmp esi, 0x7d0
jle near loc_0040f753  ; jle 0x40f753
cmp esi, 0xfa0
jge near loc_0040f753  ; jge 0x40f753
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add ebx, eax
xor edx, edx
mov dl, byte [ebx + 0x19]
lea eax, [ecx + 1]
cmp edx, eax
je near loc_0040f83c  ; je 0x40f83c
test dl, dl
je short loc_0040f70d  ; je 0x40f70d
xor eax, eax
mov ax, word [ebx + 0x1c]
mov esi, dword [_rich4_price_index]  ; mov esi, dword [0x4990e8]
imul eax, esi
mov dword [esp + 0x8c], eax
fild dword [esp + 0x8c]
xor eax, eax
mov al, byte [ebx + 0x1a]
mov dword [esp + 0x90], eax
fild word [esp + 0x90]
fadd dword [ref_0046350c]  ; fadd dword [0x46350c]
fdiv dword [ref_00463510]  ; fdiv dword [0x463510]
fmulp st1  ; fmulp st(1)
sub esp, 8
fstp qword [esp]
push ecx
dec edx
push edx
call fcn_0040df69  ; call 0x40df69
add esp, 0x10

loc_0040f70d:
mov dword [esp + 0x88], 1
cmp dword [ref_00499110], 0  ; cmp dword [0x499110], 0
je near loc_0040f826  ; je 0x40f826
cmp byte [ebx + 0x19], 0
jne near loc_0040f826  ; jne 0x40f826
mov eax, dword [ref_00499110]  ; mov eax, dword [0x499110]
mov edx, dword [eax*4 + ref_004751f0]  ; mov edx, dword [eax*4 + 0x4751f0]
push edx
mov ecx, dword [(_global_rich4_cfg + 8)]  ; mov ecx, dword [0x497160]
push ecx
call fcn_004521cb  ; call 0x4521cb
add esp, 8
mov dword [ebx + 0x30], eax
jmp near loc_0040f826  ; jmp 0x40f826

loc_0040f753:
cmp esi, 0xfa0
jle near loc_0040f83c  ; jle 0x40f83c
cmp esi, 0x1770
jge near loc_0040f83c  ; jge 0x40f83c
lea eax, [esi - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
add ebx, eax
xor edx, edx
mov dl, byte [ebx + 0x19]
mov eax, dword [esp + 0xa8]
inc eax
cmp edx, eax
je near loc_0040f83c  ; je 0x40f83c
test dl, dl
je short loc_0040f7f2  ; je 0x40f7f2
xor eax, eax
mov ax, word [ebx + 0x22]
mov esi, dword [_rich4_price_index]  ; mov esi, dword [0x4990e8]
imul eax, esi
mov dword [esp + 0x8c], eax
fild dword [esp + 0x8c]
xor eax, eax
mov al, byte [ebx + 0x1a]
mov dword [esp + 0x90], eax
fild word [esp + 0x90]
fadd dword [ref_0046350c]  ; fadd dword [0x46350c]
fdiv dword [ref_00463510]  ; fdiv dword [0x463510]
fmulp st1  ; fmulp st(1)
sub esp, 8
fstp qword [esp]
mov edi, dword [esp + 0xb0]
push edi
dec edx
push edx
call fcn_0040df69  ; call 0x40df69
add esp, 0x10

loc_0040f7f2:
mov dword [esp + 0x88], 1
mov eax, dword [ref_00499110]  ; mov eax, dword [0x499110]
test eax, eax
je short loc_0040f826  ; je 0x40f826
cmp byte [ebx + 0x19], 0
jne short loc_0040f826  ; jne 0x40f826
mov edx, dword [eax*4 + ref_004751f0]  ; mov edx, dword [eax*4 + 0x4751f0]
push edx
mov ecx, dword [(_global_rich4_cfg + 8)]  ; mov ecx, dword [0x497160]
push ecx
call fcn_004521cb  ; call 0x4521cb
add esp, 8
mov dword [ebx + 0x34], eax

loc_0040f826:
mov al, byte [esp + 0xa8]
inc al
mov byte [ebx + 0x19], al
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4

loc_0040f83c:
cmp dword [esp + 0x88], 0
je short loc_0040f8b3  ; je 0x40f8b3
push 0
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dx, word [eax + (_rich4_all_players_state + 10)]  ; mov dx, word [eax + 0x496b72]
push edx
mov ax, word [eax + (_rich4_all_players_state + 8)]  ; mov ax, word [eax + 0x496b70]
and eax, 0xffff
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
push 0x5dc
push ref_004634f2  ; push 0x4634f2
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
imul eax, edi, 0x68
mov al, byte [eax + (_rich4_all_players_state + 19)]  ; mov al, byte [eax + 0x496b7b]
and eax, 0xff
mov ebx, eax
shl ebx, 2
sub ebx, eax
shl ebx, 2
mov eax, ebx
mov ebp, dword [eax + ebx*8 + _rich4_event_strings]  ; mov ebp, dword [eax + ebx*8 + 0x48084a]
push ebp
push 0
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0040f8b3:
add esp, 0x94
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0040f8be:
push ebx
push esi
push edi
push ebp
sub esp, 0x80
mov edi, dword [esp + 0x94]
xor ebx, ebx
imul eax, edi, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 63)]  ; mov dl, byte [eax + 0x496ba7]
cmp dl, 3
je short loc_0040f8e8  ; je 0x40f8e8
cmp dl, 4
jne near fcn_0040ece6  ; jne 0x40ece6

loc_0040f8e8:
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov edx, dword [esp + 0x98]
mov eax, edx
shl eax, 2
add eax, edx
mov esi, dword [_rich4_map_node_ptr]  ; mov esi, dword [0x498e80]
mov si, word [esi + eax*8 + 0x20]
and esi, 0xffff
cmp esi, 0xfa0
jle short loc_0040f982  ; jle 0x40f982
cmp esi, 0x1770
jge short loc_0040f982  ; jge 0x40f982
lea eax, [esi - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
cmp byte [edx + eax + 0x1a], 0
jne short loc_0040f982  ; jne 0x40f982
imul eax, edi, 0x68
mov al, byte [eax + (_rich4_all_players_state + 63)]  ; mov al, byte [eax + 0x496ba7]
and eax, 0xff
mov edx, dword [eax*4 + (_rich4_god_names - 4)]  ; mov edx, dword [eax*4 + 0x47ed76]
push edx
push ref_004634c0  ; push 0x4634c0
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8
mov ebx, 0x800

loc_0040f982:
push esi
call fcn_0040b110  ; call 0x40b110
add esp, 4
or ebx, eax
test bl, 1
je short loc_0040f9d1  ; je 0x40f9d1
test bh, 8
jne short loc_0040f9d1  ; jne 0x40f9d1
imul eax, edi, 0x68
mov al, byte [eax + (_rich4_all_players_state + 63)]  ; mov al, byte [eax + 0x496ba7]
and eax, 0xff
mov ecx, dword [eax*4 + (_rich4_god_names - 4)]  ; mov ecx, dword [eax*4 + 0x47ed76]
push ecx
push ref_004634c0  ; push 0x4634c0
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8

loc_0040f9d1:
test bl, 1
je near fcn_0040ece6  ; je 0x40ece6
push 0
push ref_004823da  ; push 0x4823da
call fcn_004542ce  ; call 0x4542ce
add esp, 8
push 1
push 0
push 0
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
imul eax, edi, 0x68
test bl, 0x80
je short loc_0040fa30  ; je 0x40fa30
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
mov ebp, dword [ebx + eax*8 + (_rich4_event_strings + 60)]  ; mov ebp, dword [ebx + eax*8 + 0x480886]
push ebp
push 0
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
call fcn_0040b0cd  ; call 0x40b0cd
jmp near fcn_0040ece6  ; jmp 0x40ece6

loc_0040fa30:
xor ebx, ebx
mov bl, byte [eax + (_rich4_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 2
mov ebx, eax
shl eax, 3
add ebx, eax
call _libc_rand  ; call 0x456f2d
and eax, 1
mov esi, dword [ebx + eax*4 + _rich4_event_strings]  ; mov esi, dword [ebx + eax*4 + 0x48084a]
push esi
push 0
push edi
jmp near loc_0040ecde  ; jmp 0x40ecde

section .data

ref_00463250:
dd 0xdcb3e7cb
dd 0xe3a149a1
dd 0x5db06fb5
dd 0x5db06fb5
dd 0x0a0a49a1
dd 0xf6c1daa7
dd 0xd9c14db5
dd 0x41a170a4
dd 0xb0a453a8
dd 0xabaff2bb
dd 0x0a0a4fa4
dd 0x4facfda6
dd 0x69a5daa7
dd 0xfdc548a5
dd 0x6cb741a7
dd 0xeeb4a2a5
dd 0x43a162a5
db 0x00

ref_00463295:
db 0xa8
db 0xfe
db 0xa8
dd 0xaee3a1fe
dd 0xb5dfb3a5
dd 0xa15db06f
dd 0xa70a0a43
dd 0xa64fabda
dd 0xb041a7f6
dd 0xbabdb75d
dd 0x0a75ba75
dd 0xa4d6bd0a
dd 0xafa3a45d
dd 0xa740bbe0
dd 0xbfbaaa41
dd 0x0043a1fa

ref_004632cc:
dd 0xeda2e7a2
dd 0xf0a2e9a2
dd 0xa3a42121
dd 0xddac6ead
dd 0x70a4daa7
dd 0x0a0ae1b3
dd 0x69a5daa7
dd 0xfdc548a5
dd 0xeba741a7
dd 0xc6a8eab8
dd 0x5ca562a5
dd 0x49a1bfad
db 0x00

ref_004632fd:
db 0x25
db 0x73
db 0xaa
dd 0x0aada8fe
dd 0xa86fb10a
dd 0xa17325ec
db 0x49
db 0x00

ref_0046330e:
db 0xa8
db 0xfe
dd 0xfea8fea8
dd 0xd1a4e3a1
dd 0xe7bd78a9
dd 0x6ea6d6ba
dd 0xeca842b9
dd 0xdaa70a0a
dd 0xf6a64fab
dd 0xd6ba41a7
dd 0xaab050ac
dd 0x0a0ad3b7
dd 0xeab8eba7
dd 0xbfad5ba5
dd 0x51a7b6b6
dd 0x52b642a1
dd 0xa3a461a6
dd 0xfabfcea5
db 0xa1
db 0x43
db 0x00

ref_00463353:
db 0xa4
dd 0xafd6ba6a
dd 0xa8feaaab
dd 0xb10a0aad
dd 0x25eca86f
dd 0x25cea473
dd 0x0049a173

ref_0046336c:
dd 0x4fbc4fbc
dd 0xe3a14fbc
dd 0xfabfdfbd
dd 0xdfbd49a1
dd 0x49a1fabf
db 0x00

ref_00463381:
db 0xb3
db 0xe1
db 0xa1
dd 0xb1fabfe3
dd 0xa146a4bc
db 0x43
db 0x00

ref_0046338e:
db 0xa6
db 0xb3
dd 0x70a4daa7
dd 0x49b070a4
dd 0x41a1abaf
dd 0x41a760ae
dd 0xc6a840a4
dd 0xa8a64cb5
db 0xa1
db 0x43
db 0x00

ref_004633ab:
db 0xa4
dd 0xaf49b070
dd 0xa8feaaab
dd 0xbf0a0aad
dd 0x25a2a5f2
dd 0x0049a173

ref_004633c0:
dd 0xa2aba2ab
dd 0x49a1a2ab
dd 0x4fac75af
dd 0x49b06ea6
dd 0x49a1dab0
db 0x00

ref_004633d5:
db 0xa4
db 0x6a
db 0xb0
dd 0xaaabaf49
dd 0x0aada8fe
dd 0xa5f2bf0a
dd 0xa540a4a2
dd 0xa464a562
dd 0x0049a1f9

ref_004633f0:
dd 0x70b9a2ab
dd 0xc8a8f4b8
dd 0x0a0ae3a1
dd 0x4eb1daa7
dd 0x7ab1cfa8
dd 0x7db8a8b8
dd 0x67a4baaa
dd 0xf3a761a6
dd 0x63c15ba5
dd 0x43a161ba
db 0x00

ref_00463419:
db 0xab
db 0xa2
db 0xa1
dd 0xa1a2abe3
dd 0xa750bbe3
dd 0xa550a6da
dd 0xa640a6cd
dd 0x0a43a1ba
dd 0xaddaa70a
dd 0xb875aa6e
dd 0xc37daff4
dd 0xa941a761
dd 0xb967b8d2
dd 0xa4baaa4c
dd 0xa161a667
db 0x43
db 0x00

ref_0046344e:
db 0xa8
db 0xfe
dd 0xfea8e3a1
dd 0xb3a641a1
dd 0xb5b467a4
dd 0x5db0b3a6
dd 0xdaa70a0a
dd 0x4fac4eb4
dd 0x61a667a4
dd 0xbda4bda4
dd 0x0a0a43a1
dd 0xdaa7b3a6
dd 0x41a162a6
dd 0x51b741a7
dd 0x68a66ead
dd 0x67a4d6a4
dd 0x4eb461a6
dd 0x68a6b3a6
dd 0x43a1d6a4
db 0x00

ref_00463495:
db 0xbc
db 0x4b
db 0xbc
dd 0xbc4bbc4b
dd 0xa14fa14b
dd 0xba41a74f
dd 0xa146a447
dd 0xb30a0a49
dd 0xa8daa751
dd 0xa157a46e
dd 0xa741a741
dd 0xa44ab3b9
dd 0x0043a146

ref_004634c0:
dd 0xe3c57325
dd 0x0a0a46c6
dd 0x5cbb5ba5
dd 0x68bc40a4
dd 0xceabd0a9
db 0xa1
db 0x49
db 0x00

ref_004634d7:
db 0xa4
dd 0xc563b470
dd 0xc6e3c55d
dd 0xa90a0a46
dd 0xa4b4b7ee
dd 0xa968bc40
dd 0xa1ceabd0
db 0x49
db 0x00

ref_004634f2:
db 0xa4
db 0x67
dd 0xbda461a6
dd 0x46c6e3c5
dd 0x6ab10a0a
dd 0x67a4fba6
dd 0x49a161a6
dd 0x00000000

ref_0046350c:
dd 0x40000000

ref_00463510:
dd 0x40a00000

