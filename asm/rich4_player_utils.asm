extern _libc_free
extern _libc_rand
extern _read_mkf
extern _rich4_all_players_state
extern _rich4_all_special_players_state
extern _rich4_calculate_direction
extern _rich4_current_player
extern _rich4_data_mkf
extern _rich4_facility_info_ptr
extern _rich4_land_info_ptr
extern _rich4_map_node_ptr
extern _rich4_num_players
extern _rich4_price_index
extern _rich4_store_current_state
extern fcn_0040829d
extern fcn_0040ab4a
extern fcn_0040b066
extern _rich4_update_player_sprite
extern fcn_0040bf93
extern fcn_0040c05c
extern _rich4_end_ally
extern fcn_0040fad6
extern _rich4_update_attached_object_node_idx
extern fcn_00416e6d
extern fcn_00418e7f
extern fcn_00418ebd
extern fcn_0041906a
extern fcn_004192f7
extern fcn_00419572
extern _rich4_player_move_one_step_done
extern fcn_0041d476
extern fcn_00447285
extern fcn_0044ba63
extern fcn_0044f2c2
extern fcn_00450ced
extern fcn_00450f04
extern fcn_0045144f
extern fcn_004542ce
extern fcn_004542e9
extern ref_0046caf8
extern ref_0046caf9
extern ref_0046cafa
extern ref_0046cafb
extern ref_004749d4
extern ref_004749e0
extern ref_00475110
extern ref_0048234a
extern ref_00482362
extern ref_004823fa
extern ref_0048baf8
extern ref_0048bafc
extern ref_0048bb00
extern ref_0048bb01
extern ref_0048be18
extern ref_0048be1c
extern ref_0048be20
extern ref_00496b30
extern ref_00496b60
extern ref_00498ea0
extern ref_00498ea1
extern ref_00498ea2
extern ref_00498ea3
extern ref_00498ea5
extern ref_00498ec4
extern ref_00498ecc

global _rich4_num_alive_players
global _rich4_find_most_hostile_player
global _rich4_select_one_active_player
global fcn_0040d375
global fcn_0040d4e5
global fcn_0040d5a5
global fcn_0040d6be
global fcn_0040d761
global fcn_0040d7c4
global fcn_0040dd1f
global fcn_0040defe
global fcn_0040dfda
global fcn_0040dffa
global _rich4_is_player_active
global _rich4_update_hostility

section .text

_rich4_num_alive_players:
xor eax, eax
xor ecx, ecx

loc_0040d2b8:
cmp eax, dword [_rich4_num_players]  ; cmp eax, dword [0x499114]
jge short loc_0040d2d0  ; jge 0x40d2d0
imul edx, eax, 0x68
cmp byte [edx + (_rich4_all_players_state + 21)], 0  ; cmp byte [edx + 0x496b7d], 0
je short loc_0040d2cd  ; je 0x40d2cd
inc ecx

loc_0040d2cd:
inc eax
jmp short loc_0040d2b8  ; jmp 0x40d2b8

loc_0040d2d0:
mov eax, ecx
ret

_rich4_find_most_hostile_player:
push ebx
push esi
push edi
mov esi, dword [esp + 0x10]
xor eax, eax
xor ecx, ecx
mov edi, 0xffffffff

loc_0040d2e3:
cmp eax, dword [_rich4_num_players]  ; cmp eax, dword [0x499114]
jge short loc_0040d316  ; jge 0x40d316
cmp eax, esi
je short loc_0040d313  ; je 0x40d313
imul edx, eax, 0x68
cmp byte [edx + (_rich4_all_players_state + 21)], 0  ; cmp byte [edx + 0x496b7d], 0
je short loc_0040d313  ; je 0x40d313
imul edx, esi, 0x68
mov ebx, eax
shl ebx, 2
add edx, ebx
mov ebx, dword [edx + (_rich4_all_players_state + 76)]  ; mov ebx, dword [edx + 0x496bb4]
cmp ecx, ebx
jge short loc_0040d313  ; jge 0x40d313
mov ecx, ebx
mov edi, eax

loc_0040d313:
inc eax
jmp short loc_0040d2e3  ; jmp 0x40d2e3

loc_0040d316:
mov eax, edi
pop edi
pop esi
pop ebx
ret

_rich4_select_one_active_player:
push ebx
push esi
sub esp, 4
mov edx, dword [esp + 0x10]
xor ebx, ebx
xor esi, esi

loc_0040d329:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge short loc_0040d351  ; jge 0x40d351
cmp ebx, edx
je short loc_0040d34e  ; je 0x40d34e
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0040d34e  ; je 0x40d34e
cmp dword [eax + (_rich4_all_players_state + 50)], 0  ; cmp dword [eax + 0x496b9a], 0
jne short loc_0040d34e  ; jne 0x40d34e
mov byte [esp + esi], bl
inc esi

loc_0040d34e:
inc ebx
jmp short loc_0040d329  ; jmp 0x40d329

loc_0040d351:
test esi, esi
je short loc_0040d368  ; je 0x40d368
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
xor ebx, ebx
mov bl, byte [esp + edx]
jmp short loc_0040d36d  ; jmp 0x40d36d

loc_0040d368:
mov ebx, 0xffffffff

loc_0040d36d:
mov eax, ebx
add esp, 4
pop esi
pop ebx
ret

fcn_0040d375:
push ebx
push esi
push edi
push ebp
sub esp, 4
mov cl, byte [esp + 0x18]
mov edi, 0x100
shl edi, cl
mov edx, dword [esp + 0x18]
imul ebx, edx, 0x68
mov al, byte [esp + 0x20]
shl al, 6
mov ah, byte [esp + 0x1c]
or ah, al
mov byte [esp], ah
mov ah, byte [ebx + (_rich4_all_players_state + 51)]  ; mov ah, byte [ebx + 0x496b9b]
test ah, ah
jne near loc_0040d4c5  ; jne 0x40d4c5
push edx
call fcn_0040d761  ; call 0x40d761
add esp, 4
xor edx, edx
mov dx, word [ebx + (_rich4_all_players_state + 12)]  ; mov dx, word [ebx + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
mov esi, dword [_rich4_map_node_ptr]  ; mov esi, dword [0x498e80]
add esi, eax
push 0
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
push eax
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 8)]  ; mov ax, word [ebx + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov ebp, dword [esp + 0x1c]
push ebp
mov eax, dword [esp + 0x1c]
push eax
call fcn_0044f2c2  ; call 0x44f2c2
add esp, 8
push 0
mov eax, ebp
shl eax, 2
sub eax, ebp
shl eax, 3
add eax, ebp
shl eax, 4
mov edx, eax
shl eax, 2
add eax, edx
imul eax, dword [_rich4_price_index]  ; imul eax, dword [0x4990e8]
push eax
mov ecx, dword [esp + 0x20]
push ecx
call fcn_0044ba63  ; call 0x44ba63
add esp, 0xc
mov al, byte [esp + 0x1c]
add byte [ebx + (_rich4_all_players_state + 66)], al  ; add byte [ebx + 0x496baa], al
mov al, byte [esp]
mov byte [ebx + (_rich4_all_players_state + 51)], al  ; mov byte [ebx + 0x496b9b], al
mov eax, edi
not eax
and dword [esi + 0x24], eax
mov edi, dword [esp + 0x20]
test edi, edi
jne short loc_0040d472  ; jne 0x40d472
push edi
push edi
push 0x22e
mov eax, dword [_rich4_data_mkf]  ; mov eax, dword [0x48a0e4]
push eax
call _read_mkf  ; call 0x450441
add esp, 0x10
mov ebx, eax
push 0x60
push 0x140001
push 0x28
push edi
jmp short loc_0040d497  ; jmp 0x40d497

loc_0040d472:
push 0
push 0
push 0x215
mov ebp, dword [_rich4_data_mkf]  ; mov ebp, dword [0x48a0e4]
push ebp
call _read_mkf  ; call 0x450441
add esp, 0x10
mov ebx, eax
push 0x54
push 0x1c0001
push 0x28
push 0

loc_0040d497:
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
imul eax, dword [esp + 0x18], 0x68
mov dx, word [esi]
mov word [eax + (_rich4_all_players_state + 8)], dx  ; mov word [eax + 0x496b70], dx
mov dx, word [esi + 2]
mov word [eax + (_rich4_all_players_state + 10)], dx  ; mov word [eax + 0x496b72], dx
jmp short loc_0040d4dd  ; jmp 0x40d4dd

loc_0040d4c5:
mov dl, ah
and dl, 0x3f
mov byte [ebx + (_rich4_all_players_state + 51)], dl  ; mov byte [ebx + 0x496b9b], dl
mov al, byte [esp]
mov dh, dl
add dh, al
mov byte [ebx + (_rich4_all_players_state + 51)], dh  ; mov byte [ebx + 0x496b9b], dh

loc_0040d4dd:
add esp, 4
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0040d4e5:
push ebx
push edi
push ebp
sub esp, 4
mov cl, byte [esp + 0x14]
mov ebx, 0x100
shl ebx, cl
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
imul edx, dword [esp + 0x14], 0x68
xor eax, eax
mov al, byte [edx + (_rich4_all_players_state + 51)]  ; mov al, byte [edx + 0x496b9b]
mov dword [esp], eax
xor ecx, ecx
mov cx, word [edx + (_rich4_all_players_state + 12)]  ; mov cx, word [edx + 0x496b74]
mov eax, ecx
shl eax, 2
add eax, ecx
mov ecx, dword [_rich4_map_node_ptr]  ; mov ecx, dword [0x498e80]
or dword [ecx + eax*8 + 0x24], ebx
xor ah, ah
mov byte [edx + (_rich4_all_players_state + 51)], ah  ; mov byte [edx + 0x496b9b], ah
mov edi, dword [esp + 0x14]
push edi
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4
test byte [esp], 0x40
je short loc_0040d567  ; je 0x40d567
push 0
push 0
push 0x215
mov eax, dword [_rich4_data_mkf]  ; mov eax, dword [0x48a0e4]
push eax
call _read_mkf  ; call 0x450441
add esp, 0x10
mov ebx, eax
push 0x54
push 0x1c0001
jmp short loc_0040d588  ; jmp 0x40d588

loc_0040d567:
push 0
push 0
push 0x22e
mov ebp, dword [_rich4_data_mkf]  ; mov ebp, dword [0x48a0e4]
push ebp
call _read_mkf  ; call 0x450441
add esp, 0x10
mov ebx, eax
push 0x60
push 0x140001

loc_0040d588:
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
add esp, 4
pop ebp
pop edi
pop ebx
ret

fcn_0040d5a5:
push ebx
push edi
push ebp
mov cl, byte [esp + 0x10]
mov eax, 0x100
shl eax, cl
mov ecx, eax
not ecx
imul ebx, dword [esp + 0x10], 0x68
xor edx, edx
mov dx, word [ebx + (_rich4_all_players_state + 12)]  ; mov dx, word [ebx + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
and dword [edx + eax*8 + 0x24], ecx
mov eax, dword [esp + 0x18]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add eax, edx
movsx edx, word [eax]
movsx eax, word [eax + 2]
xor ecx, ecx
mov cx, word [ebx + (_rich4_all_players_state + 12)]  ; mov cx, word [ebx + 0x496b74]
cmp ecx, dword [esp + 0x14]
jne short loc_0040d650  ; jne 0x40d650
mov ecx, dword [esp + 0x10]
cmp ecx, dword [_rich4_current_player]  ; cmp ecx, dword [0x49910c]
jne short loc_0040d650  ; jne 0x40d650
or byte [ebx + (_rich4_all_players_state + 21)], 0x20  ; or byte [ebx + 0x496b7d], 0x20
mov cl, byte [ebx + (_rich4_all_players_state + 16)]  ; mov cl, byte [ebx + 0x496b78]
mov byte [ebx + (_rich4_all_players_state + 27)], cl  ; mov byte [ebx + 0x496b83], cl
xor ecx, ecx
mov cx, word [ebx + (_rich4_all_players_state + 8)]  ; mov cx, word [ebx + 0x496b70]
sub edx, ecx
mov ecx, edx
xor edx, edx
mov dx, word [ebx + (_rich4_all_players_state + 10)]  ; mov dx, word [ebx + 0x496b72]
sub eax, edx
push eax
push ecx
call _rich4_calculate_direction  ; call 0x454fb4
add esp, 8
mov byte [ebx + (_rich4_all_players_state + 16)], al  ; mov byte [ebx + 0x496b78], al
call fcn_0040dd1f  ; call 0x40dd1f
jmp short loc_0040d6aa  ; jmp 0x40d6aa

loc_0040d650:
mov ecx, dword [esp + 0x10]
imul ebx, ecx, 0x68
mov word [ebx + (_rich4_all_players_state + 8)], dx  ; mov word [ebx + 0x496b70], dx
mov word [ebx + (_rich4_all_players_state + 10)], ax  ; mov word [ebx + 0x496b72], ax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dx, word [eax + (_rich4_all_players_state + 12)]  ; mov dx, word [eax + 0x496b74]
mov word [ebx + (_rich4_all_players_state + 12)], dx  ; mov word [ebx + 0x496b74], dx
mov dx, word [eax + (_rich4_all_players_state + 14)]  ; mov dx, word [eax + 0x496b76]
mov word [ebx + (_rich4_all_players_state + 14)], dx  ; mov word [ebx + 0x496b76], dx
mov al, byte [eax + (_rich4_all_players_state + 16)]  ; mov al, byte [eax + 0x496b78]
mov byte [ebx + (_rich4_all_players_state + 27)], al  ; mov byte [ebx + 0x496b83], al
mov edi, ecx
push ecx
call _rich4_update_player_sprite  ; call 0x40b93b
add esp, 4
mov ebp, edi
push ebp
call _rich4_update_attached_object_node_idx  ; call 0x40fc00
add esp, 4

loc_0040d6aa:
imul eax, dword [esp + 0x10], 0x68
mov edx, dword [esp + 0x18]
mov word [eax + (_rich4_all_players_state + 74)], dx  ; mov word [eax + 0x496bb2], dx
pop ebp
pop edi
pop ebx
ret

fcn_0040d6be:
push ebx
push esi
push edi
mov ebx, dword [esp + 0x10]
mov cl, bl
mov esi, 0x100
shl esi, cl
imul ebx, ebx, 0x68
or byte [ebx + (_rich4_all_players_state + 21)], 0x10  ; or byte [ebx + 0x496b7d], 0x10
xor edx, edx
mov dx, word [ebx + (_rich4_all_players_state + 12)]  ; mov dx, word [ebx + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
movsx ecx, word [edx + eax*8]
movsx edi, word [edx + eax*8 + 2]
xor edx, edx
mov dx, word [ebx + (_rich4_all_players_state + 8)]  ; mov dx, word [ebx + 0x496b70]
sub ecx, edx
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
sub edi, eax
push edi
push ecx
call _rich4_calculate_direction  ; call 0x454fb4
add esp, 8
mov byte [ebx + (_rich4_all_players_state + 16)], al  ; mov byte [ebx + 0x496b78], al
mov bx, word [ebx + (_rich4_all_players_state + 12)]  ; mov bx, word [ebx + 0x496b74]
and ebx, 0xffff
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
or dword [edx + eax*8 + 0x24], esi
pop edi
pop esi
pop ebx
ret

_rich4_is_player_active:
xor edx, edx
imul eax, dword [esp + 4], 0x68
mov ecx, dword [eax + (_rich4_all_players_state + 50)]  ; mov ecx, dword [eax + 0x496b9a]
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0040d75e  ; je 0x40d75e
test ecx, ecx
jne short loc_0040d75e  ; jne 0x40d75e
mov edx, 1

loc_0040d75e:
mov eax, edx
ret

fcn_0040d761:
push ebx
mov ebx, dword [esp + 8]
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 52)], 0  ; cmp byte [eax + 0x496b9c], 0
je short loc_0040d785  ; je 0x40d785
xor dh, dh
mov byte [ebx + ref_00496b30], dh  ; mov byte [ebx + 0x496b30], dh
push 1
push ebx
call fcn_0040bf93  ; call 0x40bf93
add esp, 8

loc_0040d785:
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 53)], 0  ; cmp byte [eax + 0x496b9d], 0
je short loc_0040d7a4  ; je 0x40d7a4
xor ch, ch
mov byte [ebx + ref_00496b60], ch  ; mov byte [ebx + 0x496b60], ch
push 0
push ebx
call fcn_0040bf93  ; call 0x40bf93
add esp, 8

loc_0040d7a4:
imul ebx, ebx, 0x68
xor edx, edx
mov dword [ebx + (_rich4_all_players_state + 50)], edx  ; mov dword [ebx + 0x496b9a], edx
pop ebx
ret

endloc_0040d7b1:
db 0x8d
db 0x40
db 0x00

ref_0040d7b4:  ; may contain a jump table
dd loc_0040d808
dd loc_0040d8d3
dd loc_0040d975
dd loc_0040da4b

fcn_0040d7c4:
push ebx
push esi
push edi
push ebp
sub esp, 8
xor ah, ah
mov byte [ref_0046cafa], ah  ; mov byte [0x46cafa], ah
cmp byte [ref_0046cafb], 0  ; cmp byte [0x46cafb], 0
je near loc_0040dd17  ; je 0x40dd17
mov edi, 1
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul edx, ecx, 0x34
mov al, byte [edx + ref_00498ea2]  ; mov al, byte [edx + 0x498ea2]
cmp al, 3
ja near loc_0040d88e  ; ja 0x40d88e
and eax, 0xff
jmp dword [eax*4 + ref_0040d7b4]  ; ujmp: jmp dword [eax*4 + 0x40d7b4]

loc_0040d808:
xor edi, edi
cmp byte [edx + ref_00498ea5], 0  ; cmp byte [edx + 0x498ea5], 0
je near loc_0040d88e  ; je 0x40d88e
cmp ecx, 8
jne short loc_0040d82a  ; jne 0x40d82a
call fcn_0040fad6  ; call 0x40fad6
test eax, eax
jne short loc_0040d82a  ; jne 0x40d82a
mov edi, 1

loc_0040d82a:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
mov bh, byte [eax + ref_00498ea5]  ; mov bh, byte [eax + 0x498ea5]
test bh, 0x7f
je short loc_0040d846  ; je 0x40d846
mov cl, bh
dec cl
mov byte [eax + ref_00498ea5], cl  ; mov byte [eax + 0x498ea5], cl

loc_0040d846:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
mov ch, byte [eax + ref_00498ea5]  ; mov ch, byte [eax + 0x498ea5]
test ch, 0x7f
jne near loc_0040d88e  ; jne 0x40d88e
test ch, 0x80
je short loc_0040d879  ; je 0x40d879
xor bl, bl
mov byte [ref_0046cafb], bl  ; mov byte [0x46cafb], bl
mov byte [eax + ref_00498ea5], bl  ; mov byte [eax + 0x498ea5], bl
call fcn_00418ebd  ; call 0x418ebd
jmp near loc_0040d88e  ; jmp 0x40d88e

loc_0040d879:
test edi, edi
je short loc_0040d889  ; je 0x40d889
mov byte [eax + ref_00498ea5], 1  ; mov byte [eax + 0x498ea5], 1
jmp near loc_0040d88e  ; jmp 0x40d88e

loc_0040d889:
call fcn_00418e7f  ; call 0x418e7f

loc_0040d88e:
test edi, edi
je near loc_0040dd17  ; je 0x40dd17

loc_0040d896:
cmp dword [ref_0048be18], 0  ; cmp dword [0x48be18], 0
jne near loc_0040dcdf  ; jne 0x40dcdf
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp ebp, 4
jge near loc_0040dcc4  ; jge 0x40dcc4
mov edx, ebp
imul eax, ebp, 0x68
xor edx, ebp
mov dx, word [eax + (_rich4_all_players_state + 10)]  ; mov dx, word [eax + 0x496b72]
push edx
mov ax, word [eax + (_rich4_all_players_state + 8)]  ; mov ax, word [eax + 0x496b70]

loc_0040d8c8:
and eax, 0xffff
push eax
jmp near loc_0040dced  ; jmp 0x40dced

loc_0040d8d3:
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
jne short loc_0040d932  ; jne 0x40d932
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542e9  ; call 0x4542e9
add esp, 4
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
cmp ebp, 4
jge short loc_0040d916  ; jge 0x40d916
imul eax, ebp, 0x68
cmp byte [eax + (_rich4_all_players_state + 64)], 0  ; cmp byte [eax + 0x496ba8], 0
je short loc_0040d916  ; je 0x40d916
push ref_00482362  ; push 0x482362
call fcn_004542e9  ; call 0x4542e9
add esp, 4

loc_0040d916:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
xor bl, bl
mov byte [eax + ref_00498ea2], bl  ; mov byte [eax + 0x498ea2], bl
mov byte [eax + ref_00498ea3], bl  ; mov byte [eax + 0x498ea3], bl
mov byte [eax + ref_00498ea5], 5  ; mov byte [eax + 0x498ea5], 5

loc_0040d932:
cmp byte [ref_0048bb00], 0  ; cmp byte [0x48bb00], 0
je short loc_0040d947  ; je 0x40d947
xor al, al
mov byte [ref_0048bb00], al  ; mov byte [0x48bb00], al
call _rich4_player_move_one_step_done  ; call 0x41b42d

loc_0040d947:
cmp dword [ref_0048baf8], 0  ; cmp dword [0x48baf8], 0
je short loc_0040d966  ; je 0x40d966
call fcn_0040c05c  ; call 0x40c05c
test eax, eax
je short loc_0040d966  ; je 0x40d966
mov byte [ref_0048bb00], 1  ; mov byte [0x48bb00], 1
dec dword [ref_0048baf8]  ; dec dword [0x48baf8]

loc_0040d966:
push 1
call fcn_00416e6d  ; call 0x416e6d
add esp, 4
jmp near loc_0040d88e  ; jmp 0x40d88e

loc_0040d975:
mov bl, byte [edx + ref_00498ea3]  ; mov bl, byte [edx + 0x498ea3]
inc bl
mov byte [edx + ref_00498ea3], bl  ; mov byte [edx + 0x498ea3], bl
xor eax, eax
mov al, byte [edx + ref_00498ea1]  ; mov al, byte [edx + 0x498ea1]
mov esi, dword [edx + eax*4 + ref_00498ec4]  ; mov esi, dword [edx + eax*4 + 0x498ec4]
mov esi, dword [esi + 4]
sar esi, 3
xor eax, eax
mov al, bl
cmp eax, esi
jne near loc_0040d88e  ; jne 0x40d88e
call fcn_00447285  ; call 0x447285
push eax
call fcn_00419572  ; call 0x419572
add esp, 4
mov dword [ref_0048baf8], eax  ; mov dword [0x48baf8], eax
mov dword [ref_0048bafc], eax  ; mov dword [0x48bafc], eax
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
imul eax, esi, 0x34
cmp byte [eax + ref_00498ea1], 0  ; cmp byte [eax + 0x498ea1], 0
je short loc_0040d9da  ; je 0x40d9da
mov dword [ref_004749d4], 0xf  ; mov dword [0x4749d4], 0xf
jmp short loc_0040d9f2  ; jmp 0x40d9f2

loc_0040d9da:
imul eax, esi, 0x68
mov al, byte [eax + (_rich4_all_players_state + 17)]  ; mov al, byte [eax + 0x496b79]
and al, 3
and eax, 0xff
add eax, 0xb
mov dword [ref_004749d4], eax  ; mov dword [0x4749d4], eax

loc_0040d9f2:
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce
add esp, 8
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
cmp edx, 4
jge short loc_0040da30  ; jge 0x40da30
imul eax, edx, 0x68
cmp byte [eax + (_rich4_all_players_state + 64)], 0  ; cmp byte [eax + 0x496ba8], 0
je short loc_0040da30  ; je 0x40da30
push 1
push ref_00482362  ; push 0x482362
call fcn_004542ce  ; call 0x4542ce
add esp, 8

loc_0040da30:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
mov byte [eax + ref_00498ea2], 1  ; mov byte [eax + 0x498ea2], 1
xor dl, dl
mov byte [eax + ref_00498ea3], dl  ; mov byte [eax + 0x498ea3], dl
jmp near loc_0040d88e  ; jmp 0x40d88e

loc_0040da4b:
mov bl, byte [ref_004749e0]  ; mov bl, byte [0x4749e0]
test bl, bl
je short loc_0040da64  ; je 0x40da64
mov ah, bl
dec ah
mov byte [ref_004749e0], ah  ; mov byte [0x4749e0], ah
jmp near loc_0040dd17  ; jmp 0x40dd17

loc_0040da64:
imul ebx, ecx, 0x68
mov cl, byte [edx + ref_00498ea3]  ; mov cl, byte [edx + 0x498ea3]
test cl, cl
jne near loc_0040dbde  ; jne 0x40dbde
xor edx, edx
mov dx, word [ebx + (_rich4_all_players_state + 12)]  ; mov dx, word [ebx + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
mov ebx, dword [_rich4_map_node_ptr]  ; mov ebx, dword [0x498e80]
add ebx, eax
mov si, word [ebx + 0x20]
cmp si, 0x7d0
jbe short loc_0040dae9  ; jbe 0x40dae9
cmp si, 0xfa0
jae short loc_0040dae9  ; jae 0x40dae9
xor eax, eax
mov ax, si
sub eax, 0x7d0
imul eax, eax, 0x34
mov edx, dword [_rich4_land_info_ptr]  ; mov edx, dword [0x498e84]
add edx, eax
movsx eax, word [edx]
mov dword [esp], eax
movsx eax, word [edx + 2]
mov dword [esp + 4], eax
cmp byte [edx + 0x19], 0
je short loc_0040db3e  ; je 0x40db3e
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
add eax, eax
mov ecx, eax
shl eax, 4
sub eax, ecx
push eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
xor eax, eax
mov al, byte [edx + 0x19]
sub eax, edi
jmp short loc_0040db35  ; jmp 0x40db35

loc_0040dae9:
xor eax, eax
mov ax, si
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add edx, eax
movsx eax, word [edx]
mov dword [esp], eax
movsx eax, word [edx + 2]
mov dword [esp + 4], eax
cmp byte [edx + 0x19], 0
je short loc_0040db3e  ; je 0x40db3e
mov eax, dword [_rich4_price_index]  ; mov eax, dword [0x4990e8]
add eax, eax
mov ecx, eax
shl eax, 4
sub eax, ecx
push eax
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
push ebp
xor eax, eax
mov al, byte [edx + 0x19]
dec eax

loc_0040db35:
push eax
call _rich4_update_hostility  ; call 0x40df69
add esp, 0xc

loc_0040db3e:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov dl, byte [eax + (_rich4_all_players_state + 16)]  ; mov dl, byte [eax + 0x496b78]
mov byte [eax + (_rich4_all_players_state + 27)], dl  ; mov byte [eax + 0x496b83], dl
movsx eax, word [ebx + 2]
mov edx, dword [esp + 4]
sub edx, eax
push edx
movsx eax, word [ebx]
mov edx, dword [esp + 4]
sub edx, eax
push edx
call _rich4_calculate_direction  ; call 0x454fb4
mov edx, eax
add esp, 8
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov byte [eax + (_rich4_all_players_state + 16)], dl  ; mov byte [eax + 0x496b78], dl
push 0
lea eax, [esp + 8]
push eax
lea eax, [esp + 8]
push eax
xor eax, eax
mov ax, si
push eax
call fcn_0040b066  ; call 0x40b066
add esp, 0x10
push 0
push 0
push 0x20e
mov ebx, dword [_rich4_data_mkf]  ; mov ebx, dword [0x48a0e4]
push ebx
call _read_mkf  ; call 0x450441
add esp, 0x10
mov dword [ref_0048bb01], eax  ; mov dword [0x48bb01], eax
push 0xff0001
mov edx, dword [esp + 8]
sub edx, 0x37
push edx
mov edx, dword [esp + 8]
sub edx, 0x37
push edx
push eax
call fcn_00450ced  ; call 0x450ced
add esp, 0x10
mov byte [ref_004749e0], 6  ; mov byte [0x4749e0], 6
jmp near loc_0040d88e  ; jmp 0x40d88e

loc_0040dbde:
mov esi, dword [edx + ref_00498ecc]  ; mov esi, dword [edx + 0x498ecc]
mov esi, dword [esi + 4]
sar esi, 3
xor eax, eax
mov al, cl
mov dword [esp], eax
cmp eax, 3
jne short loc_0040dc21  ; jne 0x40dc21
push 2
xor edx, edx
mov dx, word [ebx + (_rich4_all_players_state + 12)]  ; mov dx, word [ebx + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
mov ax, word [edx + eax*8 + 0x20]
and eax, 0xffff
push eax
call fcn_0040ab4a  ; call 0x40ab4a
add esp, 8

loc_0040dc21:
mov eax, dword [esp]
cmp eax, 2
jl short loc_0040dc47  ; jl 0x40dc47
jne short loc_0040dc3a  ; jne 0x40dc3a
push 0
push ref_004823fa  ; push 0x4823fa
call fcn_004542ce  ; call 0x4542ce
add esp, 8

loc_0040dc3a:
call fcn_00450f04  ; call 0x450f04
mov dword [esp + 4], eax
xor edi, edi
jmp short loc_0040dc4f  ; jmp 0x40dc4f

loc_0040dc47:
mov dword [esp + 4], 1

loc_0040dc4f:
lea eax, [esi - 1]
cmp eax, dword [esp]
jle short loc_0040dc64  ; jle 0x40dc64
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
inc byte [eax + ref_00498ea3]  ; inc byte [eax + 0x498ea3]

loc_0040dc64:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
mov al, byte [eax + ref_00498ea3]  ; mov al, byte [eax + 0x498ea3]
and eax, 0xff
dec esi
cmp eax, esi
jne near loc_0040d88e  ; jne 0x40d88e
cmp dword [esp + 4], 0
jne near loc_0040d88e  ; jne 0x40d88e
mov ebx, dword [ref_0048bb01]  ; mov ebx, dword [0x48bb01]
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
imul eax, esi, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 27)]  ; mov dl, byte [eax + 0x496b83]
mov byte [eax + (_rich4_all_players_state + 16)], dl  ; mov byte [eax + 0x496b78], dl
imul eax, esi, 0x34
xor dl, dl
mov byte [eax + ref_00498ea2], dl  ; mov byte [eax + 0x498ea2], dl
mov byte [eax + ref_00498ea3], dl  ; mov byte [eax + 0x498ea3], dl
jmp near loc_0040d896  ; jmp 0x40d896

loc_0040dcc4:
mov eax, ebp
shl eax, 4
xor edx, edx
mov dx, word [eax + (_rich4_all_special_players_state - (64 - 2))]  ; mov dx, word [eax + 0x498dea]
push edx
mov ax, word [eax + (_rich4_all_special_players_state - 64)]  ; mov ax, word [eax + 0x498de8]
jmp near loc_0040d8c8  ; jmp 0x40d8c8

loc_0040dcdf:
mov esi, dword [ref_0048be20]  ; mov esi, dword [0x48be20]
push esi
mov edi, dword [ref_0048be1c]  ; mov edi, dword [0x48be1c]
push edi

loc_0040dced:
call fcn_0040829d  ; call 0x40829d
add esp, 8
or byte [ref_00475110], 2  ; or byte [0x475110], 2
call fcn_004192f7  ; call 0x4192f7
cmp byte [ref_004749e0], 6  ; cmp byte [0x4749e0], 6
jne short loc_0040dd17  ; jne 0x40dd17
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
inc byte [eax + ref_00498ea3]  ; inc byte [eax + 0x498ea3]

loc_0040dd17:
add esp, 8
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0040dd1f:
push ebx
push esi
push edi
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x34
cmp edx, 4
jge near loc_0040de09  ; jge 0x40de09
imul edx, edx, 0x68
test byte [edx + (_rich4_all_players_state + 21)], 0x30  ; test byte [edx + 0x496b7d], 0x30
je short loc_0040dd53  ; je 0x40dd53

loc_0040dd40:
mov dword [ref_0048baf8], 1  ; mov dword [0x48baf8], 1
mov byte [eax + ref_00498ea2], 1  ; mov byte [eax + 0x498ea2], 1
jmp short loc_0040dd8e  ; jmp 0x40dd8e

loc_0040dd53:
call _rich4_store_current_state  ; call 0x44808a
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
imul edx, edi, 0x68
imul eax, edi, 0x34
cmp byte [edx + (_rich4_all_players_state + 56)], 0  ; cmp byte [edx + 0x496ba0], 0
je short loc_0040dd7e  ; je 0x40dd7e
xor dh, dh
mov byte [eax + ref_00498ea2], dh  ; mov byte [eax + 0x498ea2], dh
mov byte [eax + ref_00498ea5], 2  ; mov byte [eax + 0x498ea5], 2
jmp short loc_0040dd8e  ; jmp 0x40dd8e

loc_0040dd7e:
cmp byte [edx + (_rich4_all_players_state + 57)], 0  ; cmp byte [edx + 0x496ba1], 0
jne short loc_0040dd40  ; jne 0x40dd40
mov byte [eax + ref_00498ea2], 2  ; mov byte [eax + 0x498ea2], 2

loc_0040dd8e:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
imul eax, ebx, 0x34
cmp byte [eax + ref_00498ea2], 1  ; cmp byte [eax + 0x498ea2], 1
jne near loc_0040dee4  ; jne 0x40dee4
cmp byte [eax + ref_00498ea1], 0  ; cmp byte [eax + 0x498ea1], 0
je short loc_0040ddb9  ; je 0x40ddb9
mov dword [ref_004749d4], 0xf  ; mov dword [0x4749d4], 0xf
jmp short loc_0040ddd1  ; jmp 0x40ddd1

loc_0040ddb9:
imul eax, ebx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 17)]  ; mov al, byte [eax + 0x496b79]
and al, 3
and eax, 0xff
add eax, 0xb
mov dword [ref_004749d4], eax  ; mov dword [0x4749d4], eax

loc_0040ddd1:
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
call fcn_004542ce  ; call 0x4542ce
add esp, 8
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 64)], 0  ; cmp byte [eax + 0x496ba8], 0
je near loc_0040dee4  ; je 0x40dee4
push 1
push ref_00482362  ; push 0x482362
jmp near loc_0040dedc  ; jmp 0x40dedc

loc_0040de09:
cmp edx, 8
jge near loc_0040deb9  ; jge 0x40deb9
mov eax, edx
shl eax, 4
imul edx, edx, 0x34
cmp byte [eax + (_rich4_all_special_players_state - (64 - 14))], 0  ; cmp byte [eax + 0x498df6], 0
je short loc_0040de34  ; je 0x40de34
xor al, al
mov byte [edx + ref_00498ea2], al  ; mov byte [edx + 0x498ea2], al
mov byte [edx + ref_00498ea5], 0x82  ; mov byte [edx + 0x498ea5], 0x82
jmp short loc_0040de78  ; jmp 0x40de78

loc_0040de34:
cmp byte [eax + (_rich4_all_special_players_state - (64 - 15))], 0  ; cmp byte [eax + 0x498df7], 0
je short loc_0040de50  ; je 0x40de50
mov dword [ref_0048baf8], 1  ; mov dword [0x48baf8], 1
mov byte [edx + ref_00498ea2], 1  ; mov byte [edx + 0x498ea2], 1
jmp short loc_0040de78  ; jmp 0x40de78

loc_0040de50:
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 9
sar edx, 0x1f
idiv ecx
add edx, 2
mov dword [ref_0048baf8], edx  ; mov dword [0x48baf8], edx
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
mov byte [eax + ref_00498ea2], 1  ; mov byte [eax + 0x498ea2], 1

loc_0040de78:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
cmp byte [eax + ref_00498ea2], 0  ; cmp byte [eax + 0x498ea2], 0
je short loc_0040dee4  ; je 0x40dee4
cmp byte [eax + ref_00498ea1], 0  ; cmp byte [eax + 0x498ea1], 0
je short loc_0040de9d  ; je 0x40de9d
mov dword [ref_004749d4], 0xf  ; mov dword [0x4749d4], 0xf
jmp short loc_0040dea7  ; jmp 0x40dea7

loc_0040de9d:
mov dword [ref_004749d4], 0xb  ; mov dword [0x4749d4], 0xb

loc_0040dea7:
push 1
mov eax, dword [ref_004749d4]  ; mov eax, dword [0x4749d4]
shl eax, 3
add eax, ref_0048234a  ; add eax, 0x48234a
push eax
jmp short loc_0040dedc  ; jmp 0x40dedc

loc_0040deb9:
mov esi, 9
mov dword [ref_0048baf8], esi  ; mov dword [0x48baf8], esi
mov byte [eax + ref_00498ea2], 1  ; mov byte [eax + 0x498ea2], 1
mov dword [ref_004749d4], esi  ; mov dword [0x4749d4], esi
push 1
mov eax, ref_0048234a  ; mov eax, 0x48234a
add eax, 0x48
push eax

loc_0040dedc:
call fcn_004542ce  ; call 0x4542ce
add esp, 8

loc_0040dee4:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
xor dh, dh
mov byte [eax + ref_00498ea3], dh  ; mov byte [eax + 0x498ea3], dh
mov byte [ref_0046cafb], 1  ; mov byte [0x46cafb], 1
pop edi
pop esi
pop ebx
ret

fcn_0040defe:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
cmp edx, 4
jge short loc_0040df41  ; jge 0x40df41
imul eax, edx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne short loc_0040df30  ; jne 0x40df30
cmp dword [eax + (_rich4_all_players_state + 50)], 0  ; cmp dword [eax + 0x496b9a], 0
jne short loc_0040df30  ; jne 0x40df30
cmp byte [eax + (_rich4_all_players_state + 55)], 0  ; cmp byte [eax + 0x496b9f], 0
jne short loc_0040df30  ; jne 0x40df30
cmp byte [eax + (_rich4_all_players_state + 54)], 0  ; cmp byte [eax + 0x496b9e], 0
je short loc_0040df41  ; je 0x40df41

loc_0040df30:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
or byte [eax + ref_00498ea0], 0x80  ; or byte [eax + 0x498ea0], 0x80

loc_0040df3e:
xor eax, eax
ret

loc_0040df41:
imul eax, dword [_rich4_current_player], 0x34  ; imul eax, dword [0x49910c], 0x34
cmp byte [eax + ref_00498ea2], 0  ; cmp byte [eax + 0x498ea2], 0
jne short loc_0040df3e  ; jne 0x40df3e
cmp byte [ref_0046caf8], 0  ; cmp byte [0x46caf8], 0
jne short loc_0040df3e  ; jne 0x40df3e
cmp byte [ref_0046caf9], 0  ; cmp byte [0x46caf9], 0
jne short loc_0040df3e  ; jne 0x40df3e
mov eax, 1
ret

_rich4_update_hostility:
push ebx
push edi
mov edx, dword [esp + 0xc]
mov ebx, dword [esp + 0x10]
cmp edx, ebx
je short loc_0040dfd7  ; je 0x40dfd7
cmp dword [esp + 0x14], 0
jge short loc_0040df8d  ; jge 0x40df8d
imul eax, edx, 0x68
mov ecx, ebx
cmp dword [eax + ecx*4 + (_rich4_all_players_state + 76)], 0  ; cmp dword [eax + ecx*4 + 0x496bb4], 0
je short loc_0040dfd7  ; je 0x40dfd7

loc_0040df8d:
imul eax, edx, 0x68
mov ecx, ebx
shl ecx, 2
add eax, ecx
mov ecx, dword [esp + 0x14]
mov edi, dword [eax + (_rich4_all_players_state + 76)]  ; mov edi, dword [eax + 0x496bb4]
add edi, ecx
mov dword [eax + (_rich4_all_players_state + 76)], edi  ; mov dword [eax + 0x496bb4], edi
test edi, edi
jge short loc_0040dfb5  ; jge 0x40dfb5
xor ecx, ecx
mov dword [eax + (_rich4_all_players_state + 76)], ecx  ; mov dword [eax + 0x496bb4], ecx

loc_0040dfb5:
cmp dword [esp + 0x14], 0
jle short loc_0040dfd7  ; jle 0x40dfd7
imul eax, edx, 0x68
xor ecx, ecx
mov cl, byte [eax + (_rich4_all_players_state + 65)]  ; mov cl, byte [eax + 0x496ba9]
lea eax, [ebx + 1]
cmp ecx, eax
jne short loc_0040dfd7  ; jne 0x40dfd7
push edx
call _rich4_end_ally  ; call 0x40cc1a
add esp, 4

loc_0040dfd7:
pop edi
pop ebx

loc_0040dfd9:
ret

fcn_0040dfda:
xor eax, eax
xor ecx, ecx

loc_0040dfde:
cmp eax, dword [_rich4_num_players]  ; cmp eax, dword [0x499114]
jge near loc_0040d2d0  ; jge 0x40d2d0
imul edx, eax, 0x68
test byte [edx + (_rich4_all_players_state + 21)], 1  ; test byte [edx + 0x496b7d], 1
je short loc_0040dff7  ; je 0x40dff7
inc ecx

loc_0040dff7:
inc eax
jmp short loc_0040dfde  ; jmp 0x40dfde

fcn_0040dffa:
xor edx, edx

loc_0040dffc:
cmp edx, dword [_rich4_num_players]  ; cmp edx, dword [0x499114]
jge short loc_0040dfd9  ; jge 0x40dfd9
imul eax, edx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0040e020  ; je 0x40e020
cmp byte [eax + (_rich4_all_players_state + 50)], 0  ; cmp byte [eax + 0x496b9a], 0
je short loc_0040e020  ; je 0x40e020
mov byte [eax + (_rich4_all_players_state + 50)], 0x80  ; mov byte [eax + 0x496b9a], 0x80

loc_0040e020:
inc edx
jmp short loc_0040dffc  ; jmp 0x40dffc

