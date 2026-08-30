extern _rich4_all_players_state
extern _rich4_current_player
extern _libc_free
extern _libc_rand
extern _memset
extern _num_human_players
extern _rich4_num_players
extern _rich4_player_stocks
extern _read_mkf
extern _rich4_player_say
extern fcn_00407842
extern fcn_0040a4e1
extern _rich4_update_player_sprite
extern _rich4_end_ally
extern _rich4_remove_object
extern fcn_0041906a
extern _rich4_sell_stock
extern _rich4_ui_auction_entry
extern _rich4_add_player_days_in_prison
extern _rich4_add_player_days_in_hospital
extern _rich4_player_sell_all_the_card
extern _rich4_player_sell_all_tools
extern fcn_0045144f
extern fcn_0045285e
extern fcn_004549cf
extern fcn_00454bcc
extern fcn_004553fe
extern ref_0046caf8
extern _rich4_event_strings
extern _rich4_data_mkf
extern ref_0048be18
extern ref_00496b30
extern ref_00496b60
extern _rich4_all_special_players_state
extern _rich4_on_map_commercial_ptr
extern _rich4_map_node_ptr
extern _rich4_land_info_ptr
extern _rich4_facility_info_ptr
extern _rich4_num_facilities
extern _rich4_num_on_map_commercials
extern _rich4_num_lands
extern ref_00498eb0
extern ref_004990b8
extern ref_004990f4

global _rich4_player_bankrupt

section .text

_rich4_player_bankrupt:
push ebx
push esi
push edi
push ebp
sub esp, 0x404
imul eax, dword [esp + 0x418], 0x68
mov dl, byte [eax + (_rich4_all_players_state + 21)]  ; mov dl, byte [eax + 0x496b7d]
mov byte [esp + 0x400], dl
test dl, dl
je near loc_0040d288  ; je 0x40d288
xor ebx, ebx
mov bx, word [eax + (_rich4_all_players_state + 12)]  ; mov bx, word [eax + 0x496b74]
mov edx, ebx
shl edx, 2
add edx, ebx
mov ebx, dword [_rich4_map_node_ptr]  ; mov ebx, dword [0x498e80]
mov dx, word [ebx + edx*8]
mov word [eax + (_rich4_all_players_state + 8)], dx  ; mov word [eax + 0x496b70], dx
xor esi, esi
mov si, word [eax + (_rich4_all_players_state + 12)]  ; mov si, word [eax + 0x496b74]
mov edx, esi
shl edx, 2
add edx, esi
mov dx, word [ebx + edx*8 + 2]
mov word [eax + (_rich4_all_players_state + 10)], dx  ; mov word [eax + 0x496b72], dx
xor esi, esi
mov si, word [eax + (_rich4_all_players_state + 12)]  ; mov si, word [eax + 0x496b74]
mov edx, esi
shl edx, 2
add edx, esi
shl edx, 3
add edx, ebx
mov cl, byte [esp + 0x418]
mov ebx, 0x100
shl ebx, cl
or dword [edx + 0x24], ebx
xor dh, dh
mov byte [eax + (_rich4_all_players_state + 21)], dh  ; mov byte [eax + 0x496b7d], dh
mov edx, dword [esp + 0x418]
xor bl, bl
mov byte [edx + ref_00496b30], bl  ; mov byte [edx + 0x496b30], bl
mov byte [edx + ref_00496b60], bl  ; mov byte [edx + 0x496b60], bl
mov cl, byte [eax + (_rich4_all_players_state + 63)]  ; mov cl, byte [eax + 0x496ba7]
test cl, cl
je short loc_0040ce48  ; je 0x40ce48
mov al, cl
and eax, 0xff
push eax
call _rich4_remove_object  ; call 0x40e14d
add esp, 4

loc_0040ce48:
imul eax, dword [esp + 0x418], 0x68
mov ch, byte [eax + (_rich4_all_players_state + 64)]  ; mov ch, byte [eax + 0x496ba8]
test ch, ch
je short loc_0040ce6a  ; je 0x40ce6a
mov al, ch
and eax, 0xff
push eax
call _rich4_remove_object  ; call 0x40e14d
add esp, 4

loc_0040ce6a:
mov esi, dword [esp + 0x418]
imul eax, esi, 0x68
cmp byte [eax + (_rich4_all_players_state + 65)], 0  ; cmp byte [eax + 0x496ba9], 0
je short loc_0040ce86  ; je 0x40ce86
push esi
call _rich4_end_ally  ; call 0x40cc1a
add esp, 4

loc_0040ce86:
xor ebx, ebx
jmp short loc_0040ce90  ; jmp 0x40ce90

loc_0040ce8a:
inc ebx
cmp ebx, 2
jge short loc_0040cec0  ; jge 0x40cec0

loc_0040ce90:
mov eax, ebx
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state + 10)], 0  ; cmp byte [eax + 0x498e32], 0
jne short loc_0040ce8a  ; jne 0x40ce8a
mov al, byte [eax + (_rich4_all_special_players_state + 8)]  ; mov al, byte [eax + 0x498e30]
and eax, 0xff
cmp eax, dword [esp + 0x418]
jne short loc_0040ce8a  ; jne 0x40ce8a
lea eax, [ebx + 4]
push eax
call _rich4_add_player_days_in_prison  ; call 0x43d593
add esp, 4
jmp short loc_0040ce8a  ; jmp 0x40ce8a

loc_0040cec0:
mov ebx, 2
jmp short loc_0040cecd  ; jmp 0x40cecd

loc_0040cec7:
inc ebx
cmp ebx, 4
jge short loc_0040cefd  ; jge 0x40cefd

loc_0040cecd:
mov eax, ebx
shl eax, 4
cmp byte [eax + (_rich4_all_special_players_state + 10)], 0  ; cmp byte [eax + 0x498e32], 0
jne short loc_0040cec7  ; jne 0x40cec7
mov al, byte [eax + (_rich4_all_special_players_state + 8)]  ; mov al, byte [eax + 0x498e30]
and eax, 0xff
cmp eax, dword [esp + 0x418]
jne short loc_0040cec7  ; jne 0x40cec7
lea eax, [ebx + 4]
push eax
call _rich4_add_player_days_in_hospital  ; call 0x43ec3f
add esp, 4
jmp short loc_0040cec7  ; jmp 0x40cec7

loc_0040cefd:
imul esi, dword [esp + 0x418], 0x68
mov ebx, _rich4_all_players_state  ; mov ebx, 0x496b68
add ebx, esi
lea eax, [ebx + 0x1c]
mov edx, eax
sub edx, ebx
mov ebx, edx
mov edx, 0x68
sub edx, ebx
push edx
push 0
push eax
call _memset  ; call 0x456f60
add esp, 0xc
xor eax, eax
mov al, byte [esi + (_rich4_all_players_state + 19)]  ; mov al, byte [esi + 0x496b7b]
mov byte [eax + ref_004990f4], 2  ; mov byte [eax + 0x4990f4], 2
mov esi, dword [esp + 0x418]
push esi
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4
xor ebx, ebx
mov esi, dword [esp + 0x418]

loc_0040cf50:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_0040cf6d  ; jge 0x40cf6d
cmp ebx, esi
je short loc_0040cf6a  ; je 0x40cf6a
imul eax, ebx, 0x68
mov edx, esi
xor ebp, ebp
mov dword [eax + edx*4 + (_rich4_all_players_state + 76)], ebp  ; mov dword [eax + edx*4 + 0x496bb4], ebp

loc_0040cf6a:
inc ebx
jmp short loc_0040cf50  ; jmp 0x40cf50

loc_0040cf6d:
xor eax, eax
mov dword [ref_0048be18], eax  ; mov dword [0x48be18], eax
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
mov eax, dword [esp + 0x418]
mov dword [_rich4_current_player], eax  ; mov dword [0x49910c], eax
push 2
call fcn_004549cf  ; call 0x4549cf
add esp, 4
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
push 0
push 0
push 0x22b
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x64
push 1
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
push 0x7d0
call fcn_0045285e  ; call 0x45285e
add esp, 4
cmp dword [_num_human_players], 1  ; cmp dword [0x499104], 1
jne short loc_0040d002  ; jne 0x40d002
test byte [esp + 0x400], 1
je short loc_0040d002  ; je 0x40d002
push 0
call fcn_00407842  ; call 0x407842
add esp, 4
mov byte [ref_0046caf8], al  ; mov byte [0x46caf8], al
jmp near loc_0040d274  ; jmp 0x40d274

loc_0040d002:
xor ebx, ebx
xor eax, eax
xor esi, esi

loc_0040d008:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_0040d029  ; jge 0x40d029
imul edx, ebx, 0x68
mov cl, byte [edx + (_rich4_all_players_state + 21)]  ; mov cl, byte [edx + 0x496b7d]
test cl, cl
je short loc_0040d026  ; je 0x40d026
test cl, 1
je short loc_0040d025  ; je 0x40d025
mov edi, ebx
inc esi

loc_0040d025:
inc eax

loc_0040d026:
inc ebx
jmp short loc_0040d008  ; jmp 0x40d008

loc_0040d029:
test esi, esi
jne short loc_0040d039  ; jne 0x40d039
mov byte [ref_0046caf8], 1  ; mov byte [0x46caf8], 1
jmp near loc_0040d282  ; jmp 0x40d282

loc_0040d039:
cmp eax, 1
jne short loc_0040d089  ; jne 0x40d089
imul eax, edi, 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 96)]  ; mov ecx, dword [edx + eax*8 + 0x4808aa]
push ecx
push 3
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
cmp dword [_num_human_players], 1  ; cmp dword [0x499104], 1
jne short loc_0040d07d  ; jne 0x40d07d
mov byte [ref_0046caf8], 2  ; mov byte [0x46caf8], 2
jmp near loc_0040d282  ; jmp 0x40d282

loc_0040d07d:
mov byte [ref_0046caf8], 3  ; mov byte [0x46caf8], 3
jmp near loc_0040d282  ; jmp 0x40d282

loc_0040d089:
xor esi, esi
mov ebx, 1
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]

loc_0040d095:
add eax, 0x34
cmp ebx, dword [_rich4_num_lands]  ; cmp ebx, dword [0x498e98]
jg short loc_0040d0cc  ; jg 0x40d0cc
xor edx, edx
mov dl, byte [eax + 0x19]
mov edi, dword [esp + 0x418]
inc edi
cmp edx, edi
jne short loc_0040d0c9  ; jne 0x40d0c9
mov byte [eax + 0x19], 0
mov dword [eax + 0x30], 0
mov edi, ebx
add edi, 0x7d0
mov word [esp + esi*2], di
inc esi

loc_0040d0c9:
inc ebx
jmp short loc_0040d095  ; jmp 0x40d095

loc_0040d0cc:
mov ebx, 1
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]

loc_0040d0d6:
add eax, 0x38
cmp ebx, dword [_rich4_num_facilities]  ; cmp ebx, dword [0x498e8c]
jg short loc_0040d10d  ; jg 0x40d10d
xor edx, edx
mov dl, byte [eax + 0x19]
mov edi, dword [esp + 0x418]
inc edi
cmp edx, edi
jne short loc_0040d10a  ; jne 0x40d10a
mov byte [eax + 0x19], 0
mov dword [eax + 0x34], 0
mov edi, ebx
add edi, 0xfa0
mov word [esp + esi*2], di
inc esi

loc_0040d10a:
inc ebx
jmp short loc_0040d0d6  ; jmp 0x40d0d6

loc_0040d10d:
mov ebx, 1
mov eax, dword [_rich4_on_map_commercial_ptr]  ; mov eax, dword [0x498e7c]

loc_0040d117:
add eax, 0x34
cmp ebx, dword [_rich4_num_on_map_commercials]  ; cmp ebx, dword [0x498e90]
jg short loc_0040d139  ; jg 0x40d139
movzx edi, byte [eax + 0x18]
mov edx, dword [esp + 0x418]
inc edx
cmp edi, edx
jne short loc_0040d136  ; jne 0x40d136
mov byte [eax + 0x18], 0

loc_0040d136:
inc ebx
jmp short loc_0040d117  ; jmp 0x40d117

loc_0040d139:
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4
xor ebx, ebx
jmp short loc_0040d14d  ; jmp 0x40d14d

loc_0040d147:
inc ebx
cmp ebx, 0xc
jge short loc_0040d185  ; jge 0x40d185

loc_0040d14d:
mov edx, dword [esp + 0x418]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 5
mov edx, ebx
shl edx, 3
add eax, edx
mov edi, dword [eax + _rich4_player_stocks]  ; mov edi, dword [eax + 0x4971a0]
test edi, edi
je short loc_0040d147  ; je 0x40d147
push 0
push edi
push ebx
mov ecx, dword [esp + 0x424]
push ecx
call _rich4_sell_stock  ; call 0x428e23
add esp, 0x10
jmp short loc_0040d147  ; jmp 0x40d147

loc_0040d185:
mov ebx, dword [esp + 0x418]
push ebx
call _rich4_player_sell_all_tools  ; call 0x445b3f
add esp, 4
push ebx
call _rich4_player_sell_all_the_card  ; call 0x441f21
add esp, 4
xor ebx, ebx
jmp short loc_0040d1a8  ; jmp 0x40d1a8

loc_0040d1a2:
inc ebx
cmp ebx, 0x24
jge short loc_0040d1c6  ; jge 0x40d1c6

loc_0040d1a8:
xor eax, eax
mov al, byte [ebx + ref_004990b8]  ; mov al, byte [ebx + 0x4990b8]
mov edx, dword [esp + 0x418]
inc edx
cmp eax, edx
jne short loc_0040d1a2  ; jne 0x40d1a2
xor al, dl
mov byte [ebx + ref_004990b8], al  ; mov byte [ebx + 0x4990b8], al
jmp short loc_0040d1a2  ; jmp 0x40d1a2

loc_0040d1c6:
cmp esi, 3
jle short loc_0040d211  ; jle 0x40d211
push 5
call fcn_004549cf  ; call 0x4549cf
add esp, 4
xor ebx, ebx
jmp short loc_0040d1f7  ; jmp 0x40d1f7

loc_0040d1d9:
push 0
xor eax, eax
mov ax, dx
push eax
push 0xffffffffffffffff
call _rich4_ui_auction_entry  ; call 0x43bde5
add esp, 0xc
xor ecx, ecx
mov word [esp + edi], cx
inc ebx
cmp ebx, 3
jge short loc_0040d211  ; jge 0x40d211

loc_0040d1f7:
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
lea edi, [edx + edx]
mov dx, word [esp + edi]
test dx, dx
je short loc_0040d1f7  ; je 0x40d1f7
jmp short loc_0040d1d9  ; jmp 0x40d1d9

loc_0040d211:
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
imul eax, dword [esp + 0x418], 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 100)]  ; mov ecx, dword [edx + eax*8 + 0x4808ae]
push ecx
push 2
mov ebx, dword [esp + 0x420]
push ebx
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
imul eax, ebx, 0x34
mov eax, dword [eax + ref_00498eb0]  ; mov eax, dword [eax + 0x498eb0]
movsx edx, word [eax + 0xe]
push edx
movsx edx, word [eax + 0xc]
push edx
push 0
push 0
add eax, 0xc
push eax
call fcn_004553fe  ; call 0x4553fe
add esp, 0x14

loc_0040d274:
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne short loc_0040d282  ; jne 0x40d282
call fcn_00454bcc  ; call 0x454bcc

loc_0040d282:
mov dword [_rich4_current_player], ebp  ; mov dword [0x49910c], ebp

loc_0040d288:
add esp, 0x404
pop ebp
pop edi
pop esi
pop ebx
ret

