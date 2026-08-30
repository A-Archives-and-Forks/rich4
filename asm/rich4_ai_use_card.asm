extern __round_toward_zero
extern _card_table
extern _libc_rand
extern _memset
extern _rich4_player_stocks
extern _rich4_all_players_state
extern _rich4_calculate_land_toll
extern _rich4_current_player
extern _rich4_facility_info_ptr
extern _rich4_find_most_hostile_player
extern _rich4_get_player_num_chain_store
extern _rich4_land_info_ptr
extern _rich4_map_node_ptr
extern _rich4_num_facilities
extern _rich4_num_lands
extern _rich4_num_on_map_commercials
extern _rich4_num_players
extern _rich4_on_map_commercial_ptr
extern _rich4_player_card_num
extern _rich4_player_cards
extern _rich4_player_has_card
extern _rich4_price_index
extern _stocks_on_map
extern _strcmp
extern fcn_0040a45c
extern fcn_0040b221
extern fcn_00428d01
extern fcn_004295ea
extern fcn_00444d1a
extern ref_0048b8b4
extern ref_0048b8c4
extern ref_0048be58
extern ref_0048be5c
extern ref_0048be60
extern _rich4_objects_info

global fcn_0041e69e
global fcn_0041e6f2

section .text

fcn_0041e69e:
mov eax, dword [esp + 4]
xor edx, edx
mov dl, byte [eax*8 + (_card_table - 1)]  ; mov dl, byte [eax*8 + 0x47fdf1]
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov al, byte [eax + (_rich4_all_players_state + 23)]  ; mov al, byte [eax + 0x496b7f]
and eax, 0xff
sub edx, eax
mov eax, edx
cmp edx, 2
jl short loc_0041e6c9  ; jl 0x41e6c9
xor eax, edx
ret

loc_0041e6c9:
cmp edx, 1
jne short loc_0041e6e6  ; jne 0x41e6e6
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 3
sar edx, 0x1f
idiv ecx
test edx, edx
je short loc_0041e6e6  ; je 0x41e6e6

fcn_0041e6e3:
xor eax, eax
ret

loc_0041e6e6:
mov eax, dword [esp + 4]
call dword [eax*4 + (ref_00475328 - 4)]  ; ucall: call dword [eax*4 + 0x475324]
ret

fcn_0041e6f2:
mov eax, dword [esp + 4]
mov eax, dword [eax*4 + ref_0048be58]  ; mov eax, dword [eax*4 + 0x48be58]
ret

fcn_0041e6fe:
push ebx
push esi
xor esi, esi
xor edx, edx
xor ecx, ecx
xor ebx, ebx

loc_0041e708:
cmp edx, dword [_rich4_num_players]  ; cmp edx, dword [0x499114]
jge short loc_0041e726  ; jge 0x41e726
imul eax, edx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041e723  ; je 0x41e723
add ecx, dword [eax + (_rich4_all_players_state + 28)]  ; add ecx, dword [eax + 0x496b84]
inc ebx

loc_0041e723:
inc edx
jmp short loc_0041e708  ; jmp 0x41e708

loc_0041e726:
mov eax, ecx
mov edx, ecx
sar edx, 0x1f
idiv ebx
mov ecx, eax
imul ebx, dword [_rich4_current_player], 0x68  ; imul ebx, dword [0x49910c], 0x68
mov edx, dword [ebx + (_rich4_all_players_state + 28)]  ; mov edx, dword [ebx + 0x496b84]
mov eax, edx
shl eax, 2
add eax, edx
add eax, eax
cmp ecx, eax
jle short loc_0041e774  ; jle 0x41e774
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 3
mov edx, eax
shl eax, 4
sub eax, edx
cmp eax, dword [ebx + (_rich4_all_players_state + 28)]  ; cmp eax, dword [ebx + 0x496b84]
jle short loc_0041e774  ; jle 0x41e774
mov esi, 1

loc_0041e774:
mov eax, esi
pop esi
pop ebx
ret

fcn_0041e779:
push ebx
push esi
push edi
push ebp
sub esp, 0xc
xor esi, esi
mov dword [esp], esi
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 4], eax
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
mov dword [esp + 8], esi

loc_0041e7ab:
mov eax, dword [esp + 8]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge short loc_0041e806  ; jge 0x41e806
mov bx, word [eax*2 + ref_0048b8c4]  ; mov bx, word [eax*2 + 0x48b8c4]
and ebx, 0xffff
test bh, 0x80
je short loc_0041e800  ; je 0x41e800
test bl, 0xf
je short loc_0041e800  ; je 0x41e800
xor ecx, ecx
mov eax, 1
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
jmp short loc_0041e7e6  ; jmp 0x41e7e6

loc_0041e7de:
add eax, eax
inc ecx
cmp eax, 0x10
jge short loc_0041e800  ; jge 0x41e800

loc_0041e7e6:
test ebx, eax
je short loc_0041e7de  ; je 0x41e7de
cmp ecx, edi
je short loc_0041e7de  ; je 0x41e7de
imul edx, ecx, 0x68
cmp byte [edx + (_rich4_all_players_state + 21)], 0  ; cmp byte [edx + 0x496b7d], 0
je short loc_0041e7de  ; je 0x41e7de
mov byte [esp + ecx], 1
jmp short loc_0041e7de  ; jmp 0x41e7de

loc_0041e800:
inc dword [esp + 8]
jmp short loc_0041e7ab  ; jmp 0x41e7ab

loc_0041e806:
mov ebp, dword [esp + 4]
cmp ebp, 0xffffffff
je short loc_0041e873  ; je 0x41e873
cmp byte [esp + ebp], 0
je short loc_0041e873  ; je 0x41e873
imul ecx, ebp, 0x68
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
sub eax, edx
shl eax, 4
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
sub eax, edx
mov edx, dword [ecx + (_rich4_all_players_state + 28)]  ; mov edx, dword [ecx + 0x496b84]
cmp eax, edx
jge short loc_0041e873  ; jge 0x41e873
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov eax, dword [eax + (_rich4_all_players_state + 28)]  ; mov eax, dword [eax + 0x496b84]
add eax, eax
cmp eax, edx
jge short loc_0041e873  ; jge 0x41e873
mov cl, byte [esp + 4]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov esi, 1
jmp near loc_0041e8dc  ; jmp 0x41e8dc

loc_0041e873:
test esi, esi
jne short loc_0041e8dc  ; jne 0x41e8dc
mov dword [esp + 8], esi
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]

loc_0041e881:
mov eax, dword [esp + 8]
cmp eax, dword [_rich4_num_players]  ; cmp eax, dword [0x499114]
jge short loc_0041e8dc  ; jge 0x41e8dc
cmp byte [esp + eax], 0
je short loc_0041e8d6  ; je 0x41e8d6
imul edx, eax, 0x68
imul eax, dword [_rich4_price_index], 0xc350  ; imul eax, dword [0x4990e8], 0xc350
mov edi, dword [edx + (_rich4_all_players_state + 28)]  ; mov edi, dword [edx + 0x496b84]
cmp eax, edi
jge short loc_0041e8d6  ; jge 0x41e8d6
imul eax, ebp, 0x68
mov ecx, dword [eax + (_rich4_all_players_state + 28)]  ; mov ecx, dword [eax + 0x496b84]
mov eax, ecx
shl eax, 2
sub eax, ecx
cmp eax, edi
jge short loc_0041e8d6  ; jge 0x41e8d6
mov cl, byte [esp + 8]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov esi, 1

loc_0041e8d6:
inc dword [esp + 8]
jmp short loc_0041e881  ; jmp 0x41e881

loc_0041e8dc:
mov eax, esi
add esp, 0xc
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041e8e6:
push ebx
push esi
push edi
push ebp
mov eax, dword [esp + 0x18]
xor ebp, ebp
cmp dword [esp + 0x14], 0xffffffff
jne short loc_0041e8fe  ; jne 0x41e8fe
xor eax, eax
pop ebp
pop edi
pop esi
pop ebx
ret

loc_0041e8fe:
cmp eax, 0x7d0
jle near loc_0041e994  ; jle 0x41e994
cmp eax, 0xfa0
jge near loc_0041e994  ; jge 0x41e994
sub eax, 0x7d0
imul eax, eax, 0x34
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]
lea edi, [ebx + eax]
mov cl, byte [edi + 0x19]
test cl, cl
je short loc_0041e97a  ; je 0x41e97a
xor edx, edx
mov dl, cl
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
je short loc_0041e97a  ; je 0x41e97a
cmp byte [edi + 0x1a], 0
je short loc_0041e97a  ; je 0x41e97a
mov esi, 1

loc_0041e945:
add ebx, 0x34
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg short loc_0041e97a  ; jg 0x41e97a
lea eax, [ebx + 4]
push eax
lea eax, [edi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041e977  ; jne 0x41e977
xor edx, edx
mov dl, byte [ebx + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
je near loc_0041e9d6  ; je 0x41e9d6

loc_0041e977:
inc esi
jmp short loc_0041e945  ; jmp 0x41e945

loc_0041e97a:
test ebp, ebp
jne short loc_0041e9db  ; jne 0x41e9db
xor eax, eax
mov al, byte [edi + 0x19]
mov edx, dword [esp + 0x14]
inc edx
cmp eax, edx
jne short loc_0041e9db  ; jne 0x41e9db
cmp byte [edi + 0x1a], 2
jb short loc_0041e9db  ; jb 0x41e9db
jmp short loc_0041e9d6  ; jmp 0x41e9d6

loc_0041e994:
cmp eax, 0xfa0
jle short loc_0041e9db  ; jle 0x41e9db
cmp eax, 0x1770
jge short loc_0041e9db  ; jge 0x41e9db
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, edx
cmp byte [eax + 0x19], 0
je short loc_0041e9db  ; je 0x41e9db
xor edx, edx
mov dl, byte [eax + 0x19]
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
inc ebx
cmp edx, ebx
je short loc_0041e9db  ; je 0x41e9db
cmp byte [eax + 0x1a], 0
je short loc_0041e9db  ; je 0x41e9db

loc_0041e9d6:
mov ebp, 1

loc_0041e9db:
mov eax, ebp
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041e9e2:
push ebx
push esi
xor esi, esi
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
xor ebx, ebx
mov bx, word [eax + (_rich4_all_players_state + 12)]  ; mov bx, word [eax + 0x496b74]
mov eax, ebx
shl eax, 2
add eax, ebx
mov ebx, dword [_rich4_map_node_ptr]  ; mov ebx, dword [0x498e80]
mov bx, word [ebx + eax*8 + 0x20]
and ebx, 0xffff
push edx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
push ebx
push eax
call fcn_0041e8e6  ; call 0x41e8e6
add esp, 8
cmp eax, 1
jne near loc_0041eadd  ; jne 0x41eadd
cmp ebx, 0x7d0
jle short loc_0041ea7f  ; jle 0x41ea7f
cmp ebx, 0xfa0
jge short loc_0041ea7f  ; jge 0x41ea7f
sub ebx, 0x7d0
imul ebx, ebx, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, ebx
xor ebx, ebx
mov bl, byte [eax + 0x1a]
xor edx, edx
mov dx, word [eax + 0x1e]
imul edx, ebx
mov ax, word [eax + 0x1c]
and eax, 0xffff
add eax, edx
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
imul edx, eax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp edx, dword [eax + (_rich4_all_players_state + 28)]  ; cmp edx, dword [eax + 0x496b84]
jge short loc_0041eadd  ; jge 0x41eadd
jmp short loc_0041ead8  ; jmp 0x41ead8

loc_0041ea7f:
cmp ebx, 0xfa0
jle short loc_0041eadd  ; jle 0x41eadd
cmp ebx, 0x1770
jge short loc_0041eadd  ; jge 0x41eadd
lea eax, [ebx - 0xfa0]
shl eax, 3
mov ebx, eax
shl eax, 3
sub eax, ebx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add eax, edx
xor edx, edx
mov dl, byte [eax + 0x1a]
xor ebx, ebx
mov bx, word [eax + 0x24]
imul ebx, edx
mov ax, word [eax + 0x22]
and eax, 0xffff
add eax, ebx
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
imul edx, eax
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp edx, dword [eax + (_rich4_all_players_state + 28)]  ; cmp edx, dword [eax + 0x496b84]
jge short loc_0041eadd  ; jge 0x41eadd

loc_0041ead8:
mov esi, 1

loc_0041eadd:
mov eax, esi
pop esi
pop ebx
ret

fcn_0041eae2:
push ebx
push esi
push edi
push ebp
sub esp, 0x14
xor edx, edx
mov dword [esp + 0xc], edx
mov dword [esp], edx
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
imul eax, ebx, 0x68
mov dx, word [eax + (_rich4_all_players_state + 12)]  ; mov dx, word [eax + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
mov ax, word [edx + eax*8 + 0x20]
and eax, 0xffff
mov dword [esp + 4], eax
push ebx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 8], eax
mov eax, dword [esp + 4]
cmp eax, 0x7d0
jle near loc_0041ebc5  ; jle 0x41ebc5
cmp eax, 0xfa0
jge near loc_0041ebc5  ; jge 0x41ebc5
sub eax, 0x7d0
imul eax, eax, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
lea edi, [esi + eax]
xor eax, eax
mov al, byte [edi + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_0041eb6b  ; jne 0x41eb6b
cmp byte [edi + 0x1a], 1
jbe short loc_0041eb72  ; jbe 0x41eb72

loc_0041eb6b:
xor eax, eax
jmp near loc_0041ed36  ; jmp 0x41ed36

loc_0041eb72:
mov ebx, 1

loc_0041eb77:
add esi, 0x34
cmp ebx, dword [_rich4_num_lands]  ; cmp ebx, dword [0x498e98]
jg short loc_0041ebbb  ; jg 0x41ebbb
mov eax, dword [esp + 4]
sub eax, 0x7d0
cmp ebx, eax
je short loc_0041ebb8  ; je 0x41ebb8
lea eax, [esi + 4]
push eax
lea eax, [edi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041ebb8  ; jne 0x41ebb8
mov al, byte [esi + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_0041ebb8  ; jne 0x41ebb8
xor eax, edx
jmp near loc_0041ed36  ; jmp 0x41ed36

loc_0041ebb8:
inc ebx
jmp short loc_0041eb77  ; jmp 0x41eb77

loc_0041ebbb:
mov dword [esp + 0xc], 1
jmp short loc_0041ec24  ; jmp 0x41ec24

loc_0041ebc5:
mov ecx, dword [esp + 4]
cmp ecx, 0xfa0
jle short loc_0041ec19  ; jle 0x41ec19
cmp ecx, 0x1770
jge short loc_0041ec19  ; jge 0x41ec19
lea eax, [ecx - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov ebp, dword [_rich4_facility_info_ptr]  ; mov ebp, dword [0x498e88]
add ebp, eax
xor eax, eax
mov al, byte [ebp + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne near loc_0041eb6b  ; jne 0x41eb6b
cmp byte [ebp + 0x1a], 1
ja near loc_0041eb6b  ; ja 0x41eb6b
mov dword [esp + 0xc], 2
jmp short loc_0041ec24  ; jmp 0x41ec24

loc_0041ec19:
cmp dword [esp + 0xc], 0
je near loc_0041ed33  ; je 0x41ed33

loc_0041ec24:
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ebx, ebx
mov dword [esp + 0x10], ebx

loc_0041ec39:
mov eax, dword [esp + 0x10]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge near loc_0041ed33  ; jge 0x41ed33
mov bx, word [eax*2 + ref_0048b8c4]  ; mov bx, word [eax*2 + 0x48b8c4]
and ebx, 0xffff
cmp ebx, 0x7d0
jle near loc_0041ecd9  ; jle 0x41ecd9
cmp ebx, 0xfa0
jge short loc_0041ecd9  ; jge 0x41ecd9
cmp dword [esp + 0xc], 1
jne short loc_0041ecd9  ; jne 0x41ecd9
lea eax, [ebx - 0x7d0]
imul eax, eax, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
add esi, eax
lea eax, [edi + 4]
push eax
lea eax, [esi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
je near loc_0041ed2a  ; je 0x41ed2a
xor eax, eax
mov ax, word [esi + 0x1c]
xor edx, edx
mov dx, word [edi + 0x1c]
cmp eax, edx
jle near loc_0041ed2a  ; jle 0x41ed2a
mov al, byte [esi + 0x1a]
cmp al, byte [edi + 0x1a]
jbe near loc_0041ed2a  ; jbe 0x41ed2a
push ebx
mov esi, dword [esp + 0xc]
push esi

loc_0041ecc1:
call fcn_0041e8e6  ; call 0x41e8e6
add esp, 8
cmp eax, 1
jne short loc_0041ed2a  ; jne 0x41ed2a
mov dword [ref_0048be58], ebx  ; mov dword [0x48be58], ebx
mov dword [esp], eax
jmp short loc_0041ed33  ; jmp 0x41ed33

loc_0041ecd9:
cmp ebx, 0xfa0
jle short loc_0041ed2a  ; jle 0x41ed2a
cmp ebx, 0x1770
jge short loc_0041ed2a  ; jge 0x41ed2a
cmp dword [esp + 0xc], 2
jne short loc_0041ed2a  ; jne 0x41ed2a
lea esi, [ebx - 0xfa0]
shl esi, 3
mov eax, esi
shl esi, 3
sub esi, eax
mov eax, esi
mov esi, dword [_rich4_facility_info_ptr]  ; mov esi, dword [0x498e88]
add esi, eax
xor edx, edx
mov dx, word [esi + 0x22]
xor eax, eax
mov ax, word [ebp + 0x22]
cmp edx, eax
jle short loc_0041ed2a  ; jle 0x41ed2a
mov al, byte [esi + 0x1a]
cmp al, byte [ebp + 0x1a]
jbe short loc_0041ed2a  ; jbe 0x41ed2a
push ebx
mov ecx, dword [esp + 0xc]
push ecx
jmp short loc_0041ecc1  ; jmp 0x41ecc1

loc_0041ed2a:
inc dword [esp + 0x10]
jmp near loc_0041ec39  ; jmp 0x41ec39

loc_0041ed33:
mov eax, dword [esp]

loc_0041ed36:
add esp, 0x14
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041ed3e:
push ebx
push esi
push edi
push ebp
sub esp, 4
xor edx, edx
mov dword [esp], edx
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul eax, ecx, 0x68
mov dx, word [eax + (_rich4_all_players_state + 12)]  ; mov dx, word [eax + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
mov ebp, dword [_rich4_map_node_ptr]  ; mov ebp, dword [0x498e80]
movzx ebp, word [ebp + eax*8 + 0x20]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov esi, eax
cmp ebp, 0x7d0
jle near loc_0041ee78  ; jle 0x41ee78
cmp ebp, 0xfa0
jge near loc_0041ee78  ; jge 0x41ee78
lea eax, [ebp - 0x7d0]
imul edi, eax, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add edi, eax
xor ebx, ebx
mov bl, byte [edi + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp ebx, edx
jne near loc_0041ef1b  ; jne 0x41ef1b
lea ebx, [eax + 0x34]
cmp byte [edi + 0x18], 0
je short loc_0041ee04  ; je 0x41ee04
mov esi, 1

loc_0041edc1:
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg near loc_0041ef1b  ; jg 0x41ef1b
lea eax, [ebp - 0x7d0]
cmp esi, eax
je short loc_0041edfe  ; je 0x41edfe
lea eax, [ebx + 4]
push eax
lea eax, [edi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041edfe  ; jne 0x41edfe
xor edx, edx
mov dl, byte [ebx + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
je near loc_0041ef14  ; je 0x41ef14

loc_0041edfe:
inc esi
add ebx, 0x34
jmp short loc_0041edc1  ; jmp 0x41edc1

loc_0041ee04:
cmp byte [edi + 0x1a], 1
jne near loc_0041ef1b  ; jne 0x41ef1b
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp byte [eax + (_rich4_all_players_state + 23)], 0  ; cmp byte [eax + 0x496b7f], 0
je near loc_0041ef14  ; je 0x41ef14
mov ecx, 1
mov dword [esp], ecx
mov esi, ecx

loc_0041ee2c:
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg near loc_0041ef1b  ; jg 0x41ef1b
lea eax, [ebp - 0x7d0]
cmp esi, eax
je short loc_0041ee72  ; je 0x41ee72
lea eax, [ebx + 4]
push eax
lea eax, [edi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041ee72  ; jne 0x41ee72
mov al, byte [ebx + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
je short loc_0041ee68  ; je 0x41ee68
test al, al
jne short loc_0041ee72  ; jne 0x41ee72

loc_0041ee68:
xor edx, edx
mov dword [esp], edx
jmp near loc_0041ef1b  ; jmp 0x41ef1b

loc_0041ee72:
inc esi
add ebx, 0x34
jmp short loc_0041ee2c  ; jmp 0x41ee2c

loc_0041ee78:
cmp ebp, 0xfa0
jle near loc_0041ef1b  ; jle 0x41ef1b
cmp ebp, 0x1770
jge near loc_0041ef1b  ; jge 0x41ef1b
lea eax, [ebp - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add eax, edx
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp ebx, edx
jne short loc_0041eede  ; jne 0x41eede
cmp byte [eax + 0x18], 0
jne short loc_0041eede  ; jne 0x41eede
cmp byte [eax + 0x1a], 1
jne short loc_0041eede  ; jne 0x41eede
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ebx, 4
sar edx, 0x1f
idiv ebx
inc edx
mov dword [ref_0048be58], edx  ; mov dword [0x48be58], edx
jmp short loc_0041ef14  ; jmp 0x41ef14

loc_0041eede:
mov bl, byte [eax + 0x19]
test bl, bl
je short loc_0041ef1b  ; je 0x41ef1b
xor edx, edx
mov dl, bl
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
inc ebx
cmp edx, ebx
je short loc_0041ef1b  ; je 0x41ef1b
cmp byte [eax + 0x18], 0
je short loc_0041ef1b  ; je 0x41ef1b
mov cl, byte [eax + 0x1a]
cmp cl, 3
jae short loc_0041ef0c  ; jae 0x41ef0c
inc esi
cmp edx, esi
jne short loc_0041ef1b  ; jne 0x41ef1b
cmp cl, 2
jb short loc_0041ef1b  ; jb 0x41ef1b

loc_0041ef0c:
xor esi, esi
mov dword [ref_0048be58], esi  ; mov dword [0x48be58], esi

loc_0041ef14:
mov dword [esp], 1

loc_0041ef1b:
mov eax, dword [esp]

loc_0041ef1e:
add esp, 4
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041ef26:
push ebx
push esi
xor ebx, ebx
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
xor edx, edx
mov dx, word [eax + (_rich4_all_players_state + 12)]  ; mov dx, word [eax + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
mov esi, dword [_rich4_map_node_ptr]  ; mov esi, dword [0x498e80]
mov si, word [esi + eax*8 + 0x20]
and esi, 0xffff
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov edx, eax
cmp esi, 0x7d0
jle short loc_0041efd1  ; jle 0x41efd1
cmp esi, 0xfa0
jge short loc_0041efd1  ; jge 0x41efd1
sub esi, 0x7d0
imul esi, esi, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, esi
cmp byte [eax + 0x19], 0
je short loc_0041efa3  ; je 0x41efa3
xor ecx, ecx
mov cl, byte [eax + 0x19]
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
inc esi
cmp ecx, esi
je short loc_0041efa3  ; je 0x41efa3
cmp byte [eax + 0x1a], 3
jae near loc_0041f02d  ; jae 0x41f02d

loc_0041efa3:
test ebx, ebx
jne near loc_0041f032  ; jne 0x41f032
mov cl, byte [eax + 0x19]
test cl, cl
je near loc_0041f032  ; je 0x41f032
movzx esi, cl
inc edx
cmp esi, edx
jne near loc_0041f032  ; jne 0x41f032
cmp byte [eax + 0x1a], 2
jb near loc_0041f032  ; jb 0x41f032
jmp near loc_0041f02d  ; jmp 0x41f02d

loc_0041efd1:
cmp esi, 0xfa0
jle short loc_0041f032  ; jle 0x41f032
cmp esi, 0x1770
jge short loc_0041f032  ; jge 0x41f032
lea eax, [esi - 0xfa0]
shl eax, 3
mov ecx, eax
shl ecx, 3
sub ecx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, ecx
mov cl, byte [eax + 0x19]
test cl, cl
je short loc_0041f013  ; je 0x41f013
movzx esi, cl
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
inc ecx
cmp esi, ecx
je short loc_0041f013  ; je 0x41f013
cmp byte [eax + 0x1a], 3
jae short loc_0041f02d  ; jae 0x41f02d

loc_0041f013:
test ebx, ebx
jne short loc_0041f032  ; jne 0x41f032
cmp byte [eax + 0x19], 0
je short loc_0041f032  ; je 0x41f032
xor ecx, ecx
mov cl, byte [eax + 0x19]
inc edx
cmp ecx, edx
jne short loc_0041f032  ; jne 0x41f032
cmp byte [eax + 0x1a], 2
jb short loc_0041f032  ; jb 0x41f032

loc_0041f02d:
mov ebx, 1

loc_0041f032:
mov eax, ebx
pop esi
pop ebx
ret

fcn_0041f037:
push ebx
push esi
push edi
push ebp
sub esp, 0x120
xor edx, edx
mov dword [esp + 0x110], edx
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ecx, ecx
mov dword [esp + 0x11c], ecx
xor ebp, ebp

loc_0041f064:
mov eax, dword [esp + 0x11c]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge near loc_0041f13a  ; jge 0x41f13a
mov ax, word [eax*2 + ref_0048b8c4]  ; mov ax, word [eax*2 + 0x48b8c4]
and eax, 0xffff
mov dword [esp + 0x118], eax
cmp eax, 0x7d0
jle near loc_0041f12e  ; jle 0x41f12e
cmp eax, 0xfa0
jge near loc_0041f12e  ; jge 0x41f12e
lea ebx, [eax - 0x7d0]
imul ebx, ebx, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add ebx, eax
xor eax, eax
mov al, byte [ebx + 0x19]
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
inc esi
cmp eax, esi
jne near loc_0041f12e  ; jne 0x41f12e
xor esi, esi
mov dword [esp + 0x114], esi

loc_0041f0ce:
lea eax, [ebx + 4]
cmp esi, ebp
jge short loc_0041f101  ; jge 0x41f101
cmp byte [ebx + 0x18], 0
jne short loc_0041f0fe  ; jne 0x41f0fe
cmp byte [ebx + 0x1a], 5
jae short loc_0041f0fe  ; jae 0x41f0fe
mov edi, esi
shl edi, 3
mov ecx, dword [esp + edi]
push ecx
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041f0fe  ; jne 0x41f0fe
inc word [esp + edi + 6]
jmp short loc_0041f12e  ; jmp 0x41f12e

loc_0041f0fe:
inc esi
jmp short loc_0041f0ce  ; jmp 0x41f0ce

loc_0041f101:
cmp dword [esp + 0x114], 0
jne short loc_0041f12e  ; jne 0x41f12e
cmp byte [ebx + 0x18], 0
jne short loc_0041f12e  ; jne 0x41f12e
cmp byte [ebx + 0x1a], 5
jae short loc_0041f12e  ; jae 0x41f12e
mov dword [esp + ebp*8], eax
mov eax, dword [esp + 0x118]
mov word [esp + ebp*8 + 4], ax
mov word [esp + ebp*8 + 6], 1
inc ebp

loc_0041f12e:
inc dword [esp + 0x11c]
jmp near loc_0041f064  ; jmp 0x41f064

loc_0041f13a:
xor esi, esi
mov dword [esp + 0x11c], esi

loc_0041f143:
mov ecx, dword [esp + 0x11c]
cmp ebp, ecx
jle short loc_0041f16e  ; jle 0x41f16e
cmp word [esp + ecx*8 + 6], 3
jb short loc_0041f165  ; jb 0x41f165
mov al, byte [esp + 0x11c]
mov byte [esp + esi + 0x100], al
inc esi

loc_0041f165:
inc dword [esp + 0x11c]
jmp short loc_0041f143  ; jmp 0x41f143

loc_0041f16e:
test esi, esi
je short loc_0041f1a1  ; je 0x41f1a1
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
xor eax, eax
mov al, byte [esp + edx + 0x100]
mov ax, word [esp + eax*8 + 4]
and eax, 0xffff
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 0x110], 1

loc_0041f1a1:
mov eax, dword [esp + 0x110]
add esp, 0x120
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041f1b3:
push ebx
push esi
push edi
push ebp
sub esp, 0x210
push 0x100
push 0
lea eax, [esp + 8]
push eax
call _memset  ; call 0x456f60
add esp, 0xc
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
push edx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 0x204], eax
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ecx, ecx
mov dword [esp + 0x20c], ecx
mov dword [esp + 0x208], ecx

loc_0041f206:
mov eax, dword [esp + 0x20c]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge near loc_0041f2f7  ; jge 0x41f2f7
mov si, word [eax*2 + ref_0048b8c4]  ; mov si, word [eax*2 + 0x48b8c4]
and esi, 0xffff
cmp esi, 0x7d0
jle near loc_0041f2eb  ; jle 0x41f2eb
cmp esi, 0xfa0
jge near loc_0041f2eb  ; jge 0x41f2eb
lea eax, [esi - 0x7d0]
imul eax, eax, 0x34
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]
add ebx, eax
xor edi, edi
mov dword [esp + 0x200], edi

loc_0041f259:
lea eax, [ebx + 4]
cmp edi, dword [esp + 0x208]
jge short loc_0041f2a3  ; jge 0x41f2a3
cmp byte [ebx + 0x18], 0
jne short loc_0041f2a0  ; jne 0x41f2a0
cmp byte [ebx + 0x19], 0
je short loc_0041f2a0  ; je 0x41f2a0
mov ebp, edi
shl ebp, 4
mov edx, dword [esp + ebp]
push edx
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041f2a0  ; jne 0x41f2a0
mov al, byte [ebx + 0x19]
add eax, ebp
mov dl, byte [ebx + 0x1a]
add byte [esp + eax + 3], dl
xor eax, eax
mov al, byte [ebx + 0x19]
add ebp, eax
inc byte [esp + ebp + 7]
jmp short loc_0041f2eb  ; jmp 0x41f2eb

loc_0041f2a0:
inc edi
jmp short loc_0041f259  ; jmp 0x41f259

loc_0041f2a3:
cmp dword [esp + 0x200], 0
jne short loc_0041f2eb  ; jne 0x41f2eb
cmp byte [ebx + 0x18], 0
jne short loc_0041f2eb  ; jne 0x41f2eb
cmp byte [ebx + 0x19], 0
je short loc_0041f2eb  ; je 0x41f2eb
mov edx, dword [esp + 0x208]
shl edx, 4
mov dword [esp + edx], eax
mov dword [esp + edx + 0xc], esi
xor eax, eax
mov al, byte [ebx + 0x19]
add eax, edx
mov cl, byte [ebx + 0x1a]
mov byte [esp + eax + 3], cl
xor eax, eax
mov al, byte [ebx + 0x19]
add edx, eax
mov byte [esp + edx + 7], 1
inc dword [esp + 0x208]

loc_0041f2eb:
inc dword [esp + 0x20c]
jmp near loc_0041f206  ; jmp 0x41f206

loc_0041f2f7:
xor edi, edi
mov dword [esp + 0x20c], edi
xor ecx, ecx

loc_0041f302:
mov eax, dword [esp + 0x20c]
cmp eax, dword [esp + 0x208]
jge near loc_0041f3f3  ; jge 0x41f3f3
test ecx, ecx
jne near loc_0041f3f3  ; jne 0x41f3f3
mov esi, dword [esp + 0x204]
cmp esi, 0xffffffff
je short loc_0041f36d  ; je 0x41f36d
mov edx, eax
shl edx, 4
lea eax, [esi + edx]
cmp byte [esp + eax + 8], 2
jb near loc_0041f3e7  ; jb 0x41f3e7
cmp byte [esp + eax + 4], 7
jb near loc_0041f3e7  ; jb 0x41f3e7
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
add eax, edx
cmp byte [esp + eax + 4], 1
ja near loc_0041f3e7  ; ja 0x41f3e7
mov eax, dword [esp + edx + 0xc]

loc_0041f35e:
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov ecx, 1
jmp near loc_0041f3f3  ; jmp 0x41f3f3

loc_0041f36d:
xor esi, esi
xor ebp, ebp
xor edx, edx

loc_0041f373:
cmp esi, dword [_rich4_num_players]  ; cmp esi, dword [0x499114]
jge short loc_0041f3bc  ; jge 0x41f3bc
mov ebx, dword [esp + 0x20c]
shl ebx, 4
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
add eax, ebx
cmp byte [esp + eax + 4], 0
jne short loc_0041f3bc  ; jne 0x41f3bc
cmp esi, dword [_rich4_current_player]  ; cmp esi, dword [0x49910c]
je short loc_0041f3b9  ; je 0x41f3b9
imul edi, esi, 0x68
cmp byte [edi + (_rich4_all_players_state + 21)], 0  ; cmp byte [edi + 0x496b7d], 0
je short loc_0041f3b9  ; je 0x41f3b9
add ebx, esi
xor eax, eax
mov al, byte [esp + ebx + 8]
add ebp, eax
xor eax, eax
mov al, byte [esp + ebx + 4]
add edx, eax

loc_0041f3b9:
inc esi
jmp short loc_0041f373  ; jmp 0x41f373

loc_0041f3bc:
mov ebx, dword [esp + 0x20c]
shl ebx, 4
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
add eax, ebx
cmp byte [esp + eax + 4], 0
jne short loc_0041f3e7  ; jne 0x41f3e7
cmp ebp, 3
jl short loc_0041f3e7  ; jl 0x41f3e7
cmp edx, 9
jl short loc_0041f3e7  ; jl 0x41f3e7
mov eax, dword [esp + ebx + 0xc]
jmp near loc_0041f35e  ; jmp 0x41f35e

loc_0041f3e7:
inc dword [esp + 0x20c]
jmp near loc_0041f302  ; jmp 0x41f302

loc_0041f3f3:
mov eax, ecx
add esp, 0x210
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041f400:
push ebx
push esi
push edi
push ebp
sub esp, 0x4c
xor edx, edx
mov dword [esp + 0x40], edx
push 0x40
push edx
lea eax, [esp + 8]
push eax
call _memset  ; call 0x456f60
add esp, 0xc
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov ebp, eax
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ecx, ecx

loc_0041f43f:
cmp ecx, dword [ref_0048be60]  ; cmp ecx, dword [0x48be60]
jge near loc_0041f5a1  ; jge 0x41f5a1
mov dx, word [ecx*2 + ref_0048b8c4]  ; mov dx, word [ecx*2 + 0x48b8c4]
and edx, 0xffff
cmp edx, 0x7d0
jle near loc_0041f503  ; jle 0x41f503
cmp edx, 0xfa0
jge near loc_0041f503  ; jge 0x41f503
lea eax, [edx - 0x7d0]
imul eax, eax, 0x34
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]
add eax, ebx
cmp byte [eax + 0x19], 0
je near loc_0041f59b  ; je 0x41f59b
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
inc esi
cmp ebx, esi
je near loc_0041f59b  ; je 0x41f59b
cmp byte [eax + 0x1a], 3
jb near loc_0041f59b  ; jb 0x41f59b
shl ebx, 3
xor esi, esi
mov si, word [esp + ebx - 8]
movzx edi, byte [eax + 0x1a]
cmp esi, edi
jge short loc_0041f4e7  ; jge 0x41f4e7
movzx si, byte [eax + 0x1a]
mov word [esp + ebx - 8], si
xor esi, esi
mov si, word [eax + 0x1c]
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov dword [esp + ebx*8 - 4], esi

loc_0041f4d5:
mov al, byte [eax + 0x19]
and eax, 0xff
mov word [esp + eax*8 - 6], dx
jmp near loc_0041f59b  ; jmp 0x41f59b

loc_0041f4e7:
jne near loc_0041f59b  ; jne 0x41f59b
xor esi, edi
mov si, word [eax + 0x1c]
cmp esi, dword [esp + ebx - 4]
jle near loc_0041f59b  ; jle 0x41f59b
mov dword [esp + ebx - 4], esi
jmp short loc_0041f4d5  ; jmp 0x41f4d5

loc_0041f503:
cmp edx, 0xfa0
jle near loc_0041f59b  ; jle 0x41f59b
cmp edx, 0x1770
jge near loc_0041f59b  ; jge 0x41f59b
lea eax, [edx - 0xfa0]
shl eax, 3
mov ebx, eax
shl eax, 3
sub eax, ebx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
add eax, ebx
cmp byte [eax + 0x19], 0
je short loc_0041f59b  ; je 0x41f59b
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
inc esi
cmp ebx, esi
je short loc_0041f59b  ; je 0x41f59b
cmp byte [eax + 0x1a], 3
jb short loc_0041f59b  ; jb 0x41f59b
shl ebx, 3
xor edi, edi
mov di, word [esp + ebx + 0x18]
movzx esi, byte [eax + 0x1a]
cmp edi, esi
jge short loc_0041f57c  ; jge 0x41f57c
movzx si, byte [eax + 0x1a]
mov word [esp + ebx + 0x18], si
xor esi, esi
mov si, word [eax + 0x22]
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov dword [esp + ebx*8 + 0x1c], esi
jmp short loc_0041f58e  ; jmp 0x41f58e

loc_0041f57c:
jne short loc_0041f59b  ; jne 0x41f59b
xor esi, esi
mov si, word [eax + 0x22]
cmp esi, dword [esp + ebx + 0x1c]
jle short loc_0041f59b  ; jle 0x41f59b
mov dword [esp + ebx + 0x1c], esi

loc_0041f58e:
mov al, byte [eax + 0x19]
and eax, 0xff
mov word [esp + eax*8 + 0x1a], dx

loc_0041f59b:
inc ecx
jmp near loc_0041f43f  ; jmp 0x41f43f

loc_0041f5a1:
cmp ebp, 0xffffffff
je short loc_0041f5d4  ; je 0x41f5d4
mov edx, ebp
shl edx, 3
cmp word [esp + edx + 0x20], 3
jb short loc_0041f5c4  ; jb 0x41f5c4
xor eax, eax
mov ax, word [esp + edx + 0x22]

loc_0041f5ba:
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
jmp near loc_0041f695  ; jmp 0x41f695

loc_0041f5c4:
cmp word [esp + edx], 3
jb short loc_0041f5d4  ; jb 0x41f5d4
xor eax, eax
mov ax, word [esp + edx + 2]
jmp short loc_0041f5ba  ; jmp 0x41f5ba

loc_0041f5d4:
mov esi, dword [esp + 0x40]
test esi, esi
jne near loc_0041f69d  ; jne 0x41f69d
xor ecx, ecx
xor edi, edi
mov dword [esp + 0x48], esi
xor ebp, ebp
xor edx, edx
mov dword [esp + 0x44], esi
jmp short loc_0041f637  ; jmp 0x41f637

loc_0041f5f2:
jne short loc_0041f605  ; jne 0x41f605
mov ebx, dword [esp + eax + 4]
cmp esi, ebx
jge short loc_0041f605  ; jge 0x41f605
mov esi, ebx

loc_0041f5fe:
xor edx, edx
mov dx, word [esp + eax + 2]

loc_0041f605:
mov eax, ecx
shl eax, 3
cmp word [esp + eax + 0x20], 3
jb short loc_0041f631  ; jb 0x41f631
xor ebx, ebx
mov bx, word [esp + eax + 0x20]
cmp edi, ebx
jge short loc_0041f66d  ; jge 0x41f66d
mov edi, ebx
mov ebp, dword [esp + eax + 0x24]

loc_0041f623:
mov ax, word [esp + eax + 0x22]
and eax, 0xffff
mov dword [esp + 0x44], eax

loc_0041f631:
inc ecx
cmp ecx, 4
jge short loc_0041f67b  ; jge 0x41f67b

loc_0041f637:
cmp ecx, dword [_rich4_current_player]  ; cmp ecx, dword [0x49910c]
je short loc_0041f631  ; je 0x41f631
imul eax, ecx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041f631  ; je 0x41f631
mov eax, ecx
shl eax, 3
cmp word [esp + eax], 4
jb short loc_0041f605  ; jb 0x41f605
xor ebx, ebx
mov bx, word [esp + eax]
cmp ebx, dword [esp + 0x48]
jle short loc_0041f5f2  ; jle 0x41f5f2
mov dword [esp + 0x48], ebx
mov esi, dword [esp + eax + 4]
jmp short loc_0041f5fe  ; jmp 0x41f5fe

loc_0041f66d:
jne short loc_0041f631  ; jne 0x41f631
mov ebx, dword [esp + eax + 0x24]
cmp ebp, ebx
jge short loc_0041f631  ; jge 0x41f631
mov ebp, ebx
jmp short loc_0041f623  ; jmp 0x41f623

loc_0041f67b:
mov esi, dword [esp + 0x44]
test esi, esi
je short loc_0041f68b  ; je 0x41f68b
mov dword [ref_0048be58], esi  ; mov dword [0x48be58], esi
jmp short loc_0041f695  ; jmp 0x41f695

loc_0041f68b:
test edx, edx
je short loc_0041f69d  ; je 0x41f69d
mov dword [ref_0048be58], edx  ; mov dword [0x48be58], edx

loc_0041f695:
mov dword [esp + 0x40], 1

loc_0041f69d:
mov eax, dword [esp + 0x40]
add esp, 0x4c
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041f6a9:
push ebx
push esi
push edi
push ebp
call fcn_0041f400  ; call 0x41f400
cmp eax, 1
je near loc_0041f8fc  ; je 0x41f8fc
xor edi, edi
xor esi, esi

loc_0041f6bf:
cmp edi, dword [ref_0048be60]  ; cmp edi, dword [0x48be60]
jge near loc_0041f8fa  ; jge 0x41f8fa
test esi, esi
jne near loc_0041f8fa  ; jne 0x41f8fa
mov bx, word [edi*2 + ref_0048b8c4]  ; mov bx, word [edi*2 + 0x48b8c4]
and ebx, 0xffff
cmp ebx, 0x7d0
jle short loc_0041f752  ; jle 0x41f752
cmp ebx, 0xfa0
jge short loc_0041f752  ; jge 0x41f752
lea eax, [ebx - 0x7d0]
imul edx, eax, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, edx
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
imul edx, ebp, 0x68
cmp byte [edx + (_rich4_all_players_state + 23)], 0  ; cmp byte [edx + 0x496b7f], 0
je near loc_0041f8f4  ; je 0x41f8f4
mov ch, byte [eax + 0x19]
test ch, ch
je near loc_0041f8f4  ; je 0x41f8f4
xor edx, edx
mov dl, ch
lea ecx, [ebp + 1]
cmp edx, ecx
je near loc_0041f8f4  ; je 0x41f8f4
cmp byte [eax + 0x18], 0
je near loc_0041f8f4  ; je 0x41f8f4
push edx
call _rich4_get_player_num_chain_store  ; call 0x41970f
add esp, 4
cmp eax, 4
jl near loc_0041f8f4  ; jl 0x41f8f4
jmp near loc_0041f8e9  ; jmp 0x41f8e9

loc_0041f752:
cmp ebx, 0xfa0
jle short loc_0041f7ba  ; jle 0x41f7ba
cmp ebx, 0x1770
jge short loc_0041f7ba  ; jge 0x41f7ba
lea eax, [ebx - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add eax, edx
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
test byte [edx + (_rich4_all_players_state + 17)], 3  ; test byte [edx + 0x496b79], 3
je near loc_0041f8f4  ; je 0x41f8f4
cmp byte [eax + 0x18], 3
jne near loc_0041f8f4  ; jne 0x41f8f4
cmp byte [eax + 0x1a], 1
jne near loc_0041f8f4  ; jne 0x41f8f4

loc_0041f7a2:
xor edx, edx
mov dl, byte [eax + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax

loc_0041f7af:
je near loc_0041f8f4  ; je 0x41f8f4
jmp near loc_0041f8e9  ; jmp 0x41f8e9

loc_0041f7ba:
test bh, 0x80
je near loc_0041f8f4  ; je 0x41f8f4
mov eax, ebx
sar eax, 8
and eax, 0x3f
je near loc_0041f8f4  ; je 0x41f8f4
lea edx, [eax - 1]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 3
xor ecx, ecx
mov cx, word [edx + (_rich4_objects_info + 2)]  ; mov cx, word [edx + 0x496d0a]
mov eax, ecx
shl eax, 2
add eax, ecx
mov ecx, dword [_rich4_map_node_ptr]  ; mov ecx, dword [0x498e80]
mov ax, word [ecx + eax*8 + 0x20]
and eax, 0xffff
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
inc ecx
lea ebp, [eax - 0x7d0]
imul ebp, ebp, 0x34
cmp byte [edx + _rich4_objects_info], 0x10  ; cmp byte [edx + 0x496d08], 0x10
jne short loc_0041f884  ; jne 0x41f884
cmp eax, 0x7d0
jle short loc_0041f847  ; jle 0x41f847
cmp eax, 0xfa0
jge short loc_0041f847  ; jge 0x41f847
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, ebp
mov dh, byte [eax + 0x19]
test dh, dh
je near loc_0041f8f4  ; je 0x41f8f4
mov al, dh
and eax, 0xff
cmp eax, ecx
jmp near loc_0041f7af  ; jmp 0x41f7af

loc_0041f847:
cmp eax, 0xfa0
jle near loc_0041f8f4  ; jle 0x41f8f4
cmp eax, 0x1770
jge near loc_0041f8f4  ; jge 0x41f8f4
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, edx
cmp byte [eax + 0x19], 0
je near loc_0041f8f4  ; je 0x41f8f4
jmp near loc_0041f7a2  ; jmp 0x41f7a2

loc_0041f884:
cmp byte [edx + _rich4_objects_info], 0x11  ; cmp byte [edx + 0x496d08], 0x11
jne near loc_0041f8f4  ; jne 0x41f8f4
cmp eax, 0x7d0
jle short loc_0041f8b4  ; jle 0x41f8b4
cmp eax, 0xfa0
jge short loc_0041f8b4  ; jge 0x41f8b4
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, ebp
mov al, byte [eax + 0x19]
and eax, 0xff
cmp eax, ecx
jne short loc_0041f8f4  ; jne 0x41f8f4
jmp short loc_0041f8e9  ; jmp 0x41f8e9

loc_0041f8b4:
cmp eax, 0xfa0
jle short loc_0041f8f4  ; jle 0x41f8f4
cmp eax, 0x1770
jge short loc_0041f8f4  ; jge 0x41f8f4
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, edx
xor edx, edx
mov dl, byte [eax + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne short loc_0041f8f4  ; jne 0x41f8f4

loc_0041f8e9:
mov dword [ref_0048be58], ebx  ; mov dword [0x48be58], ebx
mov esi, 1

loc_0041f8f4:
inc edi
jmp near loc_0041f6bf  ; jmp 0x41f6bf

loc_0041f8fa:
mov eax, esi

loc_0041f8fc:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041f901:
push ebx
push esi
push edi
push ebp
sub esp, 0x14
xor edx, edx
mov dword [esp + 0xc], edx
mov dword [esp + 8], edx
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov ebp, eax
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor edi, edi
mov ch, 1

loc_0041f936:
cmp edi, dword [ref_0048be60]  ; cmp edi, dword [0x48be60]
jge short loc_0041f99a  ; jge 0x41f99a
mov ax, word [edi*2 + ref_0048b8c4]  ; mov ax, word [edi*2 + 0x48b8c4]
and eax, 0xffff
mov dword [esp + 0x10], eax
test byte [esp + 0x11], 0x80
je short loc_0041f997  ; je 0x41f997
test byte [esp + 0x10], 0xf
je short loc_0041f997  ; je 0x41f997
xor ebx, ebx
mov esi, 1
jmp short loc_0041f96e  ; jmp 0x41f96e

loc_0041f966:
add esi, esi
inc ebx
cmp esi, 0x10
jge short loc_0041f997  ; jge 0x41f997

loc_0041f96e:
test dword [esp + 0x10], esi
je short loc_0041f966  ; je 0x41f966
cmp ebx, dword [_rich4_current_player]  ; cmp ebx, dword [0x49910c]
je short loc_0041f966  ; je 0x41f966
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041f966  ; je 0x41f966
mov byte [esp + ebx + 8], ch
mov edx, esi
or dh, 0x80
mov word [esp + ebx*2], dx
jmp short loc_0041f966  ; jmp 0x41f966

loc_0041f997:
inc edi
jmp short loc_0041f936  ; jmp 0x41f936

loc_0041f99a:
cmp ebp, 0xffffffff
je near loc_0041fa24  ; je 0x41fa24
cmp byte [esp + ebp + 8], 0
je near loc_0041fa24  ; je 0x41fa24
xor edi, edi
mov dword [esp + 0x10], edi
xor esi, esi

loc_0041f9b6:
push ebp
call _rich4_player_card_num  ; call 0x441262
add esp, 4
cmp edi, eax
jge short loc_0041fa06  ; jge 0x41fa06
mov eax, ebp
shl eax, 2
add eax, ebp
mov edx, eax
shl eax, 2
sub eax, edx
lea edx, [eax + edi]
mov dl, byte [edx + _rich4_player_cards]  ; mov dl, byte [edx + 0x499120]
and edx, 0xff
mov eax, edx
shl eax, 3
cmp byte [eax + (_card_table - 1)], 1  ; cmp byte [eax + 0x47fdf1], 1
jb short loc_0041fa03  ; jb 0x41fa03
mov al, byte [eax + (_card_table - 3)]  ; mov al, byte [eax + 0x47fdef]
and eax, 0xff
cmp eax, esi
jle short loc_0041fa03  ; jle 0x41fa03
mov dword [esp + 0x10], edx
mov esi, eax

loc_0041fa03:
inc edi
jmp short loc_0041f9b6  ; jmp 0x41f9b6

loc_0041fa06:
mov edx, dword [esp + 0x10]
test edx, edx
je short loc_0041fa24  ; je 0x41fa24
xor eax, eax
mov ax, word [esp + ebp*2]
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [ref_0048be5c], edx  ; mov dword [0x48be5c], edx
jmp near loc_0041fabb  ; jmp 0x41fabb

loc_0041fa24:
mov ebx, dword [esp + 0xc]
test ebx, ebx
jne near loc_0041fac3  ; jne 0x41fac3
xor esi, esi
mov dword [esp + 0x10], ebx
mov ebp, 1

loc_0041fa3b:
cmp ebx, dword [_rich4_num_players]  ; cmp ebx, dword [0x499114]
jge near loc_0041fab4  ; jge 0x41fab4
cmp byte [esp + ebx + 8], 0
je short loc_0041fab1  ; je 0x41fab1
xor edi, edi

loc_0041fa50:
push ebx
call _rich4_player_card_num  ; call 0x441262
add esp, 4
cmp edi, eax
jge short loc_0041fab1  ; jge 0x41fab1
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
lea edx, [eax + edi]
mov dl, byte [edx + _rich4_player_cards]  ; mov dl, byte [edx + 0x499120]
and edx, 0xff
mov eax, edx
shl eax, 3
cmp byte [eax + (_card_table - 1)], 2  ; cmp byte [eax + 0x47fdf1], 2
jne short loc_0041faae  ; jne 0x41faae
xor ecx, ecx
mov cl, byte [eax + (_card_table - 3)]  ; mov cl, byte [eax + 0x47fdef]
cmp ecx, esi
jle short loc_0041faae  ; jle 0x41faae
mov ax, word [esp + ebx*2]
and eax, 0xffff
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [ref_0048be5c], edx  ; mov dword [0x48be5c], edx
mov dword [esp + 0x10], ebp
mov esi, ecx

loc_0041faae:
inc edi
jmp short loc_0041fa50  ; jmp 0x41fa50

loc_0041fab1:
inc ebx
jmp short loc_0041fa3b  ; jmp 0x41fa3b

loc_0041fab4:
cmp dword [esp + 0x10], 0
je short loc_0041fac3  ; je 0x41fac3

loc_0041fabb:
mov dword [esp + 0xc], 1

loc_0041fac3:
mov eax, dword [esp + 0xc]
jmp near loc_0041ed36  ; jmp 0x41ed36

fcn_0041facc:
push ebx
push esi
push edi
push ebp
sub esp, 0x18
xor esi, esi
imul ecx, dword [_rich4_current_player], 0x68  ; imul ecx, dword [0x49910c], 0x68
xor edx, edx
mov dx, word [ecx + (_rich4_all_players_state + 12)]  ; mov dx, word [ecx + 0x496b74]
mov eax, edx
shl eax, 2
add eax, edx
mov ebp, dword [_rich4_map_node_ptr]  ; mov ebp, dword [0x498e80]
movzx ebp, word [ebp + eax*8 + 0x20]
cmp byte [ecx + (_rich4_all_players_state + 57)], 0  ; cmp byte [ecx + 0x496ba1], 0
jne near loc_0041fca6  ; jne 0x41fca6
cmp ebp, 0x7d0
jle near loc_0041fc1f  ; jle 0x41fc1f
cmp ebp, 0xfa0
jge near loc_0041fc1f  ; jge 0x41fc1f
lea eax, [ebp - 0x7d0]
imul eax, eax, 0x34
mov edx, dword [_rich4_land_info_ptr]  ; mov edx, dword [0x498e84]
lea edi, [edx + eax]
xor ebx, ebx
mov bx, word [edi + 0x1e]
imul ebx, dword [_rich4_price_index]  ; imul ebx, dword [0x4990e8]
xor eax, eax
mov al, byte [edi + 0x19]
mov dword [esp + 8], eax
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
mov dword [esp + 0xc], eax
mov eax, dword [esp + 8]
cmp eax, dword [esp + 0xc]
jne near loc_0041fca6  ; jne 0x41fca6
cmp byte [edi + 0x18], 0
jne near loc_0041fca6  ; jne 0x41fca6
cmp byte [edi + 0x1a], 5
jae near loc_0041fca6  ; jae 0x41fca6
mov eax, dword [ecx + (_rich4_all_players_state + 28)]  ; mov eax, dword [ecx + 0x496b84]
cmp ebx, eax
jge near loc_0041fca6  ; jge 0x41fca6
add eax, dword [ecx + (_rich4_all_players_state + 32)]  ; add eax, dword [ecx + 0x496b88]
cmp eax, 0x2710
jle near loc_0041fca6  ; jle 0x41fca6
cmp word [ecx + (_rich4_all_players_state + 70)], 0  ; cmp word [ecx + 0x496bae], 0
jl near loc_0041fca6  ; jl 0x41fca6
mov dword [esp + 0x14], 1
lea ebx, [edx + 0x34]

loc_0041fba8:
mov eax, dword [esp + 0x14]
cmp eax, dword [_rich4_num_lands]  ; cmp eax, dword [0x498e98]
jg short loc_0041fc0b  ; jg 0x41fc0b
lea eax, [ebp - 0x7d0]
cmp eax, dword [esp + 0x14]
je short loc_0041fc02  ; je 0x41fc02
lea eax, [ebx + 4]
push eax
lea eax, [edi + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0041fc02  ; jne 0x41fc02
xor edx, edx
mov dl, byte [ebx + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne short loc_0041fc02  ; jne 0x41fc02

loc_0041fbe3:
mov cl, byte [_rich4_current_player]  ; mov cl, byte [0x49910c]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax

loc_0041fbf8:
mov esi, 1
jmp near loc_0041fe44  ; jmp 0x41fe44

loc_0041fc02:
inc dword [esp + 0x14]
add ebx, 0x34
jmp short loc_0041fba8  ; jmp 0x41fba8

loc_0041fc0b:
test esi, esi
jne near loc_0041fca6  ; jne 0x41fca6
cmp byte [edi + 0x1a], 2
jb near loc_0041fca6  ; jb 0x41fca6
jmp short loc_0041fbf8  ; jmp 0x41fbf8

loc_0041fc1f:
cmp ebp, 0xfa0
jle near loc_0041fca6  ; jle 0x41fca6
cmp ebp, 0x1770
jge near loc_0041fca6  ; jge 0x41fca6
lea eax, [ebp - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, edx
xor ebx, ebx
mov bx, word [eax + 0x24]
imul ebx, dword [_rich4_price_index]  ; imul ebx, dword [0x4990e8]
xor ecx, ecx
mov cl, byte [eax + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp ecx, edx
jne short loc_0041fca6  ; jne 0x41fca6
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
mov ebp, dword [edx + (_rich4_all_players_state + 28)]  ; mov ebp, dword [edx + 0x496b84]
cmp ebx, ebp
jge short loc_0041fca6  ; jge 0x41fca6
cmp ebp, 0x2710
jle short loc_0041fca6  ; jle 0x41fca6
mov bl, byte [eax + 0x18]
test bl, bl
je short loc_0041fca6  ; je 0x41fca6
cmp bl, 3
je short loc_0041fca6  ; je 0x41fca6
cmp byte [eax + 0x1a], 5
jae short loc_0041fca6  ; jae 0x41fca6
cmp word [edx + (_rich4_all_players_state + 70)], 0  ; cmp word [edx + 0x496bae], 0
jge near loc_0041fbe3  ; jge 0x41fbe3

loc_0041fca6:
test esi, esi
jne near loc_0041fe44  ; jne 0x41fe44
push 8
push esi
lea eax, [esp + 8]
push eax
call _memset  ; call 0x456f60
add esp, 0xc
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
mov dword [esp + 0x10], esi
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]

loc_0041fcd7:
mov eax, dword [esp + 0x10]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge near loc_0041fd57  ; jge 0x41fd57
mov ax, word [eax*2 + ref_0048b8c4]  ; mov ax, word [eax*2 + 0x48b8c4]
and eax, 0xffff
mov dword [esp + 0x14], eax
test byte [esp + 0x15], 0x80
je short loc_0041fd51  ; je 0x41fd51
test byte [esp + 0x14], 0xf
je short loc_0041fd51  ; je 0x41fd51
xor ecx, ecx
mov edx, 1
jmp short loc_0041fd17  ; jmp 0x41fd17

loc_0041fd0f:
add edx, edx
inc ecx
cmp edx, 0x10
jge short loc_0041fd51  ; jge 0x41fd51

loc_0041fd17:
test dword [esp + 0x14], edx
je short loc_0041fd0f  ; je 0x41fd0f
cmp ecx, edi
je short loc_0041fd0f  ; je 0x41fd0f
imul eax, ecx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041fd0f  ; je 0x41fd0f
xor ebx, ebx
mov bx, word [eax + (_rich4_all_players_state + 12)]  ; mov bx, word [eax + 0x496b74]
mov eax, ebx
shl eax, 2
add ebx, eax
shl ebx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, ebx
mov ax, word [eax + 0x20]
mov word [esp + ecx*2], ax
jmp short loc_0041fd0f  ; jmp 0x41fd0f

loc_0041fd51:
inc dword [esp + 0x10]
jmp short loc_0041fcd7  ; jmp 0x41fcd7

loc_0041fd57:
xor ebx, ebx
mov dword [esp + 0x10], ebx
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
mov edi, dword [_rich4_num_players]  ; mov edi, dword [0x499114]

loc_0041fd69:
mov eax, dword [esp + 0x10]
cmp eax, edi
jge near loc_0041fe44  ; jge 0x41fe44
test esi, esi
jne near loc_0041fe44  ; jne 0x41fe44
cmp eax, ebp
je near loc_0041fe3b  ; je 0x41fe3b
imul eax, eax, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je near loc_0041fe3b  ; je 0x41fe3b
mov ecx, dword [esp + 0x10]
add ecx, ecx
mov dx, word [esp + ecx]
cmp dx, 0xfa0
jbe short loc_0041fde5  ; jbe 0x41fde5
cmp dx, 0x1770
jae short loc_0041fde5  ; jae 0x41fde5
xor edx, edx
mov dx, word [esp + ecx]
lea eax, [edx - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add eax, edx
xor ecx, ecx
mov cl, byte [eax + 0x19]
lea edx, [ebp + 1]
cmp ecx, edx
jne short loc_0041fe3b  ; jne 0x41fe3b
cmp byte [eax + 0x18], 0
je short loc_0041fe3b  ; je 0x41fe3b
cmp byte [eax + 0x1a], 2
jb short loc_0041fe3b  ; jb 0x41fe3b
jmp short loc_0041fe23  ; jmp 0x41fe23

loc_0041fde5:
mov eax, dword [esp + 0x10]
add eax, eax
mov cx, word [esp + eax]
cmp cx, 0x1770
jbe short loc_0041fe3b  ; jbe 0x41fe3b
cmp cx, 0x1f40
jae short loc_0041fe3b  ; jae 0x41fe3b
mov eax, ecx
and eax, 0xffff
sub eax, 0x1770
imul eax, eax, 0x34
mov edx, dword [_rich4_on_map_commercial_ptr]  ; mov edx, dword [0x498e7c]
add eax, edx
xor edx, edx
mov dl, byte [eax + 0x18]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne short loc_0041fe3b  ; jne 0x41fe3b

loc_0041fe23:
mov cl, byte [esp + 0x10]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov esi, 1

loc_0041fe3b:
inc dword [esp + 0x10]
jmp near loc_0041fd69  ; jmp 0x41fd69

loc_0041fe44:
mov eax, esi

loc_0041fe46:
add esp, 0x18
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0041fe4e:
push ebx
xor ebx, ebx
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 4
sar edx, 0x1f
idiv ecx
test edx, edx
jne short loc_0041fe6b  ; jne 0x41fe6b
mov ebx, 1

loc_0041fe6b:
mov eax, ebx
pop ebx
ret

fcn_0041fe6f:
push ebx
push esi
push edi
push ebp
sub esp, 0x14
xor edx, edx
mov dword [esp + 4], edx
mov ebp, 0xffffffff
push ebp
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ecx, ecx
mov dword [esp], ecx
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 0xc], eax
xor esi, esi
mov dword [esp + 8], esi

loc_0041fead:
mov eax, dword [esp + 8]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge near loc_0041ff3a  ; jge 0x41ff3a
mov ax, word [eax*2 + ref_0048b8c4]  ; mov ax, word [eax*2 + 0x48b8c4]
and eax, 0xffff
mov dword [esp + 0x10], eax
test byte [esp + 0x11], 0x80
je near loc_0041ff31  ; je 0x41ff31
test byte [esp + 0x10], 0xf
je short loc_0041ff31  ; je 0x41ff31
xor ebx, ebx
mov edi, 1
jmp short loc_0041fef1  ; jmp 0x41fef1

loc_0041fee9:
add edi, edi
inc ebx
cmp edi, 0x10
jge short loc_0041ff31  ; jge 0x41ff31

loc_0041fef1:
test dword [esp + 0x10], edi
je short loc_0041fee9  ; je 0x41fee9
cmp ebx, dword [_rich4_current_player]  ; cmp ebx, dword [0x49910c]
je short loc_0041fee9  ; je 0x41fee9
imul eax, ebx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_0041fee9  ; je 0x41fee9
cmp byte [eax + (_rich4_all_players_state + 54)], 0  ; cmp byte [eax + 0x496b9e], 0
jne short loc_0041fee9  ; jne 0x41fee9
push 0x12
push ebx
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
test eax, eax
jne short loc_0041fee9  ; jne 0x41fee9
cmp ebx, dword [esp + 0xc]
jne short loc_0041ff2b  ; jne 0x41ff2b
mov ebp, esi

loc_0041ff2b:
mov byte [esp + esi], bl
inc esi
jmp short loc_0041fee9  ; jmp 0x41fee9

loc_0041ff31:
inc dword [esp + 8]
jmp near loc_0041fead  ; jmp 0x41fead

loc_0041ff3a:
test esi, esi
je short loc_0041ff6e  ; je 0x41ff6e
cmp ebp, 0xffffffff
je short loc_0041ff48  ; je 0x41ff48
mov cl, byte [esp + ebp]
jmp short loc_0041ff57  ; jmp 0x41ff57

loc_0041ff48:
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
mov cl, byte [esp + edx]

loc_0041ff57:
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 4], 1

loc_0041ff6e:
mov eax, dword [esp + 4]
jmp near loc_0041ed36  ; jmp 0x41ed36

fcn_0041ff77:
push ebx
xor edx, edx
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov bl, byte [eax + (_rich4_all_players_state + 63)]  ; mov bl, byte [eax + 0x496ba7]
test bl, bl
je short loc_0041ffc3  ; je 0x41ffc3
xor ecx, ecx
mov cl, bl
dec ecx
mov eax, ecx
shl eax, 2
sub eax, ecx
mov al, byte [eax*8 + _rich4_objects_info]  ; mov al, byte [eax*8 + 0x496d08]
and eax, 0xff
cmp eax, 5
je short loc_0041ffef  ; je 0x41ffef
cmp eax, 6
je short loc_0041ffef  ; je 0x41ffef
cmp eax, 7
je short loc_0041ffef  ; je 0x41ffef
cmp eax, 8
je short loc_0041ffef  ; je 0x41ffef
cmp eax, 0xa
je short loc_0041ffef  ; je 0x41ffef
cmp eax, 0xf
jne short loc_0041fff4  ; jne 0x41fff4
jmp short loc_0041ffef  ; jmp 0x41ffef

loc_0041ffc3:
mov bh, byte [eax + (_rich4_all_players_state + 64)]  ; mov bh, byte [eax + 0x496ba8]
test bh, bh
je short loc_0041fff4  ; je 0x41fff4
mov al, bh
and eax, 0xff
lea ecx, [eax - 1]
mov eax, ecx
shl eax, 2
sub eax, ecx
mov al, byte [eax*8 + (_rich4_objects_info + 4)]  ; mov al, byte [eax*8 + 0x496d0c]
and eax, 0xff
cmp eax, 0xd
jge short loc_0041fff4  ; jge 0x41fff4

loc_0041ffef:
mov edx, 1

loc_0041fff4:
mov eax, edx
pop ebx
ret

fcn_0041fff8:
push ebx
xor eax, eax
xor ebx, ebx
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
mov dl, byte [edx + (_rich4_all_players_state + 63)]  ; mov dl, byte [edx + 0x496ba7]
and edx, 0xff
cmp edx, 1
je short loc_0042002e  ; je 0x42002e
cmp edx, 2
je short loc_0042002e  ; je 0x42002e
cmp edx, 3
je short loc_0042002e  ; je 0x42002e
cmp edx, 4
je short loc_0042002e  ; je 0x42002e
cmp edx, 0xc
je short loc_0042002e  ; je 0x42002e
call fcn_00444d1a  ; call 0x444d1a

loc_0042002e:
cmp eax, 1
je short loc_00420047  ; je 0x420047
cmp eax, 2
je short loc_00420047  ; je 0x420047
cmp eax, 3
je short loc_00420047  ; je 0x420047
cmp eax, 4
je short loc_00420047  ; je 0x420047
cmp eax, 0xc
jne short loc_00420051  ; jne 0x420051

loc_00420047:
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov ebx, 1

loc_00420051:
mov eax, ebx
pop ebx
ret

fcn_00420055:
push ebx
push esi
push edi
push ebp
sub esp, 4
mov edi, 0xffffffff
xor ebp, ebp
call fcn_00428d01  ; call 0x428d01
cmp eax, 1
jne short loc_00420074  ; jne 0x420074
xor eax, eax
jmp near loc_0041ef1e  ; jmp 0x41ef1e

loc_00420074:
xor ebx, ebx
xor esi, esi
jmp short loc_00420080  ; jmp 0x420080

loc_0042007a:
inc ebx
cmp ebx, 0xc
jge short loc_004200d3  ; jge 0x4200d3

loc_00420080:
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 5
mov edx, ebx
fild dword [eax + edx*8 + _rich4_player_stocks]  ; fild dword [eax + edx*8 + 0x4971a0]
fmul dword [eax + edx*8 + (_rich4_player_stocks + 4)]  ; fmul dword [eax + edx*8 + 0x4971a4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp]
cmp esi, dword [esp]
jge short loc_0042007a  ; jge 0x42007a
mov eax, ebx
shl eax, 3
add eax, ebx
cmp byte [eax*4 + (_stocks_on_map + 6)], 0  ; cmp byte [eax*4 + 0x496986], 0
jne short loc_0042007a  ; jne 0x42007a
push ebx
call fcn_004295ea  ; call 0x4295ea
add esp, 4
cmp eax, 1
je short loc_0042007a  ; je 0x42007a
mov esi, dword [esp]
mov edi, ebx
jmp short loc_0042007a  ; jmp 0x42007a

loc_004200d3:
cmp edi, 0xffffffff
je short loc_004200e3  ; je 0x4200e3
mov dword [ref_0048be58], edi  ; mov dword [0x48be58], edi
mov ebp, 1

loc_004200e3:
mov eax, ebp
jmp near loc_0041ef1e  ; jmp 0x41ef1e

fcn_004200ea:
push ebx
push esi
push edi
push ebp
sub esp, 0x10
mov edx, 0xffffffff
mov dword [esp + 8], edx
mov ebp, edx
xor ecx, ecx
mov dword [esp + 4], ecx
call fcn_00428d01  ; call 0x428d01
cmp eax, 1
jne short loc_00420113  ; jne 0x420113
xor eax, eax
jmp near loc_004202ca  ; jmp 0x4202ca

loc_00420113:
xor ebx, ebx
mov dword [esp], ebx
mov ebx, 1
mov esi, dword [_rich4_on_map_commercial_ptr]  ; mov esi, dword [0x498e7c]
add esi, 0x34
mov edi, dword [_rich4_num_on_map_commercials]  ; mov edi, dword [0x498e90]

loc_0042012c:
cmp ebx, edi
jg short loc_00420145  ; jg 0x420145
cmp byte [esi + 0x18], 0
je short loc_0042013f  ; je 0x42013f
xor eax, eax
mov al, byte [esi + 0x18]
inc byte [esp + eax - 1]

loc_0042013f:
inc ebx
add esi, 0x34
jmp short loc_0042012c  ; jmp 0x42012c

loc_00420145:
xor ebx, ebx
xor esi, esi
mov edi, 0xffffffff
jmp short loc_00420156  ; jmp 0x420156

loc_00420150:
inc ebx
cmp ebx, 4
jge short loc_0042016d  ; jge 0x42016d

loc_00420156:
cmp ebx, dword [_rich4_current_player]  ; cmp ebx, dword [0x49910c]
je short loc_00420150  ; je 0x420150
xor eax, eax
mov al, byte [esp + ebx]
cmp esi, eax
jge short loc_00420150  ; jge 0x420150
mov esi, eax
mov edi, ebx
jmp short loc_00420150  ; jmp 0x420150

loc_0042016d:
cmp edi, 0xffffffff
je near loc_00420204  ; je 0x420204
xor ebx, ebx
xor esi, esi
jmp short loc_00420186  ; jmp 0x420186

loc_0042017c:
inc ebx
cmp ebx, 0xc
jge near loc_00420204  ; jge 0x420204

loc_00420186:
mov eax, edi
shl eax, 2
sub eax, edi
shl eax, 5
mov ecx, ebx
shl ecx, 3
fild dword [ecx + eax + _rich4_player_stocks]  ; fild dword [ecx + eax + 0x4971a0]
fmul dword [ecx + eax + (_rich4_player_stocks + 4)]  ; fmul dword [ecx + eax + 0x4971a4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0xc]
cmp esi, dword [esp + 0xc]
jge short loc_0042017c  ; jge 0x42017c
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 2
cmp word [eax + (_stocks_on_map + 4)], 0  ; cmp word [eax + 0x496984], 0
je short loc_0042017c  ; je 0x42017c
cmp byte [eax + (_stocks_on_map + 6)], 0  ; cmp byte [eax + 0x496986], 0
jne short loc_0042017c  ; jne 0x42017c
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 5
cmp dword [ecx + eax + _rich4_player_stocks], 0  ; cmp dword [ecx + eax + 0x4971a0], 0
jne short loc_0042017c  ; jne 0x42017c
push ebx
call fcn_004295ea  ; call 0x4295ea
add esp, 4
cmp eax, 3
je short loc_0042017c  ; je 0x42017c
mov esi, dword [esp + 0xc]
mov dword [esp + 8], ebx
jmp near loc_0042017c  ; jmp 0x42017c

loc_00420204:
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov edi, eax
cmp eax, 0xffffffff
je near loc_0042029b  ; je 0x42029b
xor ebx, ebx
xor esi, esi
jmp short loc_0042022e  ; jmp 0x42022e

loc_00420224:
inc ebx
cmp ebx, 0xc
jge near loc_0042029b  ; jge 0x42029b

loc_0042022e:
mov eax, edi
shl eax, 2
sub eax, edi
shl eax, 5
mov ecx, ebx
shl ecx, 3
fild dword [ecx + eax + _rich4_player_stocks]  ; fild dword [ecx + eax + 0x4971a0]
fmul dword [ecx + eax + (_rich4_player_stocks + 4)]  ; fmul dword [ecx + eax + 0x4971a4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 0xc]
cmp esi, dword [esp + 0xc]
jge short loc_00420224  ; jge 0x420224
mov eax, ebx
shl eax, 3
add eax, ebx
cmp byte [eax*4 + (_stocks_on_map + 6)], 0  ; cmp byte [eax*4 + 0x496986], 0
jne short loc_00420224  ; jne 0x420224
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 5
cmp dword [ecx + eax + _rich4_player_stocks], 0  ; cmp dword [ecx + eax + 0x4971a0], 0
jne short loc_00420224  ; jne 0x420224
push ebx
call fcn_004295ea  ; call 0x4295ea
add esp, 4
cmp eax, 3
je short loc_00420224  ; je 0x420224
mov esi, dword [esp + 0xc]
mov ebp, ebx
jmp short loc_00420224  ; jmp 0x420224

loc_0042029b:
mov ecx, dword [esp + 8]
cmp ecx, 0xffffffff
jne short loc_004202a8  ; jne 0x4202a8
cmp ebp, ecx
je short loc_004202c6  ; je 0x4202c6

loc_004202a8:
cmp ebp, 0xffffffff
je short loc_004202b5  ; je 0x4202b5
mov dword [ref_0048be58], ebp  ; mov dword [0x48be58], ebp
jmp short loc_004202be  ; jmp 0x4202be

loc_004202b5:
mov eax, dword [esp + 8]
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax

loc_004202be:
mov dword [esp + 4], 1

loc_004202c6:
mov eax, dword [esp + 4]

loc_004202ca:
add esp, 0x10
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_004202d2:
push ebx
push esi
push edi
push ebp
sub esp, 0xc
xor esi, esi
mov dword [esp], esi
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 4], eax
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
mov dword [esp + 8], esi

loc_00420304:
mov eax, dword [esp + 8]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge short loc_0042035f  ; jge 0x42035f
mov bx, word [eax*2 + ref_0048b8c4]  ; mov bx, word [eax*2 + 0x48b8c4]
and ebx, 0xffff
test bh, 0x80
je short loc_00420359  ; je 0x420359
test bl, 0xf
je short loc_00420359  ; je 0x420359
xor ecx, ecx
mov eax, 1
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
jmp short loc_0042033f  ; jmp 0x42033f

loc_00420337:
add eax, eax
inc ecx
cmp eax, 0x10
jge short loc_00420359  ; jge 0x420359

loc_0042033f:
test ebx, eax
je short loc_00420337  ; je 0x420337
cmp ecx, edi
je short loc_00420337  ; je 0x420337
imul edx, ecx, 0x68
cmp byte [edx + (_rich4_all_players_state + 21)], 0  ; cmp byte [edx + 0x496b7d], 0
je short loc_00420337  ; je 0x420337
mov byte [esp + ecx], 1
jmp short loc_00420337  ; jmp 0x420337

loc_00420359:
inc dword [esp + 8]
jmp short loc_00420304  ; jmp 0x420304

loc_0042035f:
mov ebp, dword [esp + 4]
cmp ebp, 0xffffffff
je short loc_004203b7  ; je 0x4203b7
cmp byte [esp + ebp], 0
je short loc_004203b7  ; je 0x4203b7
imul ecx, ebp, 0x68
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
sub eax, edx
shl eax, 4
add eax, edx
shl eax, 4
mov edx, eax
shl eax, 2
sub eax, edx
cmp eax, dword [ecx + (_rich4_all_players_state + 28)]  ; cmp eax, dword [ecx + 0x496b84]
jge short loc_004203b7  ; jge 0x4203b7
mov cl, byte [esp + 4]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov esi, 1
jmp near loc_0041e8dc  ; jmp 0x41e8dc

loc_004203b7:
test esi, esi
jne near loc_0041e8dc  ; jne 0x41e8dc
mov dword [esp + 8], esi
mov ebp, dword [_rich4_price_index]  ; mov ebp, dword [0x4990e8]

loc_004203c9:
mov eax, dword [esp + 8]
cmp eax, dword [_rich4_num_players]  ; cmp eax, dword [0x499114]
jge near loc_0041e8dc  ; jge 0x41e8dc
cmp byte [esp + eax], 0
je short loc_00420408  ; je 0x420408
imul eax, eax, 0x68
imul edx, ebp, 0xc350
cmp edx, dword [eax + (_rich4_all_players_state + 28)]  ; cmp edx, dword [eax + 0x496b84]
jge short loc_00420408  ; jge 0x420408
mov cl, byte [esp + 8]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov esi, 1

loc_00420408:
inc dword [esp + 8]
jmp short loc_004203c9  ; jmp 0x4203c9

fcn_0042040e:
push ebx
push esi
push edi
push ebp
sub esp, 0x2c
xor edx, edx
mov dword [esp + 8], edx
xor ebp, ebp
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 0x1c], eax
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ebx, ebx
mov dword [esp + 0x10], ebx
mov dword [esp + 4], ebp

loc_00420449:
mov eax, dword [esp + 0x10]
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge near loc_00420609  ; jge 0x420609
cmp dword [esp + 8], 0
jne near loc_00420609  ; jne 0x420609
mov ax, word [eax*2 + ref_0048b8c4]  ; mov ax, word [eax*2 + 0x48b8c4]
and eax, 0xffff
mov dword [esp + 0x14], eax
cmp eax, 0x7d0
jle near loc_00420599  ; jle 0x420599
cmp eax, 0xfa0
jge near loc_00420599  ; jge 0x420599
sub eax, 0x7d0
imul edx, eax, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, edx
mov dword [esp + 0x18], eax
test ebp, ebp
je short loc_004204b7  ; je 0x4204b7
push ebp
add eax, 4
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
je near loc_00420600  ; je 0x420600

loc_004204b7:
mov esi, 1
xor ebp, ebp
mov dword [esp + 0x24], ebp
mov dword [esp + 0x20], ebp
xor edi, edi
mov dword [esp + 0xc], ebp
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]

loc_004204d2:
add ebx, 0x34
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg near loc_00420542  ; jg 0x420542
lea eax, [ebx + 4]
push eax
mov eax, dword [esp + 0x1c]
add eax, 4
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0042053f  ; jne 0x42053f
mov al, byte [ebx + 0x19]
inc edi
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_00420517  ; jne 0x420517
xor eax, edx
mov al, byte [ebx + 0x1a]
add dword [esp + 0x24], eax
inc dword [esp + 0x20]
jmp short loc_00420522  ; jmp 0x420522

loc_00420517:
test al, al
je short loc_00420522  ; je 0x420522
xor eax, eax
mov al, byte [ebx + 0x1a]
add ebp, eax

loc_00420522:
mov eax, dword [esp + 0x1c]
cmp eax, 0xffffffff
je short loc_0042053f  ; je 0x42053f
xor edx, edx
mov dl, byte [ebx + 0x19]
inc eax
cmp edx, eax
jne short loc_0042053f  ; jne 0x42053f
mov dword [esp + 0xc], 1
jmp short loc_00420542  ; jmp 0x420542

loc_0042053f:
inc esi
jmp short loc_004204d2  ; jmp 0x4204d2

loc_00420542:
mov eax, dword [esp + 0x20]
mov dword [esp + 0x28], eax
fild dword [esp + 0x28]
mov dword [esp + 0x28], edi
fild dword [esp + 0x28]
fdivp st1  ; fdivp st(1)
fstp dword [esp]
cmp dword [esp + 0xc], 0
jne short loc_0042058d  ; jne 0x42058d
cmp dword [esp + 0x24], 7
jl short loc_0042058d  ; jl 0x42058d
cmp ebp, 3
jg short loc_0042058d  ; jg 0x42058d
fld dword [esp]
fcomp qword [ref_00463d38]  ; fcomp qword [0x463d38]
fnstsw ax
sahf
jb short loc_0042058d  ; jb 0x42058d
mov eax, dword [esp + 0x14]
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 8], 1

loc_0042058d:
mov ebp, dword [esp + 0x18]
add ebp, 4
jmp near loc_00420600  ; jmp 0x420600

loc_00420599:
mov ecx, dword [esp + 0x14]
cmp ecx, 0xfa0
jle short loc_00420600  ; jle 0x420600
cmp ecx, 0x1770
jge short loc_00420600  ; jge 0x420600
lea eax, [ecx - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add eax, edx
xor edx, edx
mov dl, byte [eax + 0x19]
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
inc ebx
cmp edx, ebx
jne short loc_00420600  ; jne 0x420600
mov dl, byte [eax + 0x18]
test dl, dl
je short loc_00420600  ; je 0x420600
cmp dl, 4
je short loc_00420600  ; je 0x420600
mov bl, byte [eax + 0x1a]
cmp bl, 3
jb short loc_00420600  ; jb 0x420600
mov al, bl
and eax, 0xff
cmp eax, dword [esp + 4]
jle short loc_00420600  ; jle 0x420600
mov dword [esp + 4], esi
mov dword [ref_0048be58], ecx  ; mov dword [0x48be58], ecx

loc_00420600:
inc dword [esp + 0x10]
jmp near loc_00420449  ; jmp 0x420449

loc_00420609:
cmp dword [esp + 8], 0
jne short loc_0042061f  ; jne 0x42061f
cmp dword [esp + 4], 0
je short loc_0042061f  ; je 0x42061f
mov dword [esp + 8], 1

loc_0042061f:
mov eax, dword [esp + 8]
add esp, 0x2c
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0042062b:
push ebx
push esi
push edi
push ebp
sub esp, 0x14
xor edx, edx
mov dword [esp + 8], edx
xor esi, esi
push 6
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0040b221  ; call 0x40b221
add esp, 8
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 4], eax
xor edi, edi
mov dword [esp + 0xc], edi
jmp near loc_00420705  ; jmp 0x420705

loc_00420669:
cmp dword [esp], 0
jne short loc_00420685  ; jne 0x420685
cmp edi, 7
jl short loc_00420685  ; jl 0x420685
mov eax, dword [esp + 0x10]
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 8], 1

loc_00420685:
lea esi, [ebp + 4]
jmp short loc_004206e8  ; jmp 0x4206e8

loc_0042068a:
mov edx, dword [esp + 0x10]
cmp edx, 0xfa0
jle short loc_004206e8  ; jle 0x4206e8
cmp edx, 0x1770
jge short loc_004206e8  ; jge 0x4206e8
cmp dword [esp + 4], 0xffffffff
je short loc_004206e8  ; je 0x4206e8
lea eax, [edx - 0xfa0]
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add eax, edx
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov edx, dword [esp + 4]
inc edx
cmp ebx, edx
jne short loc_004206e8  ; jne 0x4206e8
cmp byte [eax + 0x18], 0
je short loc_004206e8  ; je 0x4206e8
cmp byte [eax + 0x1a], 3
jb short loc_004206e8  ; jb 0x4206e8
mov eax, dword [esp + 0x10]
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 8], 1

loc_004206e8:
mov edi, dword [esp + 0xc]
inc edi
mov dword [esp + 0xc], edi
cmp edi, 6
jge near loc_004207c3  ; jge 0x4207c3
cmp dword [esp + 8], 0
jne near loc_004207c3  ; jne 0x4207c3

loc_00420705:
mov eax, dword [esp + 0xc]
xor edx, edx
mov dx, word [eax*2 + ref_0048b8b4]  ; mov dx, word [eax*2 + 0x48b8b4]
mov eax, edx
shl eax, 2
add edx, eax
shl edx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
mov ax, word [edx + eax + 0x20]
and eax, 0xffff
mov dword [esp + 0x10], eax
cmp eax, 0x7d0
jle near loc_0042068a  ; jle 0x42068a
cmp eax, 0xfa0
jge near loc_0042068a  ; jge 0x42068a
sub eax, 0x7d0
imul eax, eax, 0x34
mov ebp, dword [_rich4_land_info_ptr]  ; mov ebp, dword [0x498e84]
add ebp, eax
test esi, esi
je short loc_0042076f  ; je 0x42076f
push esi
lea eax, [ebp + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
je near loc_004206e8  ; je 0x4206e8

loc_0042076f:
mov esi, 1
xor edi, edi
mov dword [esp], edi
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]

loc_0042077f:
add ebx, 0x34
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg near loc_00420669  ; jg 0x420669
lea eax, [ebx + 4]
push eax
lea eax, [ebp + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_004207c0  ; jne 0x4207c0
xor edx, edx
mov dl, byte [ebx + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
je near loc_00420685  ; je 0x420685
test dl, dl
je short loc_004207c0  ; je 0x4207c0
xor eax, eax
mov al, byte [ebx + 0x1a]
add edi, eax

loc_004207c0:
inc esi
jmp short loc_0042077f  ; jmp 0x42077f

loc_004207c3:
mov eax, dword [esp + 8]
jmp near loc_0041ed36  ; jmp 0x41ed36

fcn_004207cc:
push ebx
push esi
push edi
push ebp
sub esp, 0x1c
xor edx, edx
mov dword [esp + 0xc], edx
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ecx, ecx
mov dword [esp], ecx
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov dword [esp + 0x14], eax
xor eax, eax
xor edi, edi

loc_00420804:
cmp eax, dword [ref_0048be60]  ; cmp eax, dword [0x48be60]
jge near loc_00420877  ; jge 0x420877
mov dx, word [eax*2 + ref_0048b8c4]  ; mov dx, word [eax*2 + 0x48b8c4]
and edx, 0xffff
test dh, 0x80
je short loc_00420874  ; je 0x420874
test dl, 0xf
je short loc_00420874  ; je 0x420874
xor ecx, ecx
mov esi, 1
jmp short loc_00420839  ; jmp 0x420839

loc_00420831:
add esi, esi
inc ecx
cmp esi, 0x10
jge short loc_00420874  ; jge 0x420874

loc_00420839:
test edx, esi
je short loc_00420831  ; je 0x420831
cmp ecx, dword [_rich4_current_player]  ; cmp ecx, dword [0x49910c]
je short loc_00420831  ; je 0x420831
cmp ecx, dword [esp + 0x14]
je short loc_00420831  ; je 0x420831
imul ebx, ecx, 0x68
cmp byte [ebx + (_rich4_all_players_state + 21)], 0  ; cmp byte [ebx + 0x496b7d], 0
je short loc_00420831  ; je 0x420831
mov bl, byte [ebx + (_rich4_all_players_state + 65)]  ; mov bl, byte [ebx + 0x496ba9]
and ebx, 0xff
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
inc ebp
cmp ebx, ebp
je short loc_00420831  ; je 0x420831
mov byte [esp + edi], cl
inc edi
jmp short loc_00420831  ; jmp 0x420831

loc_00420874:
inc eax
jmp short loc_00420804  ; jmp 0x420804

loc_00420877:
test edi, edi
je near loc_00420964  ; je 0x420964
xor ecx, ecx
xor esi, esi
mov dword [esp + 0x10], 0xffffffff

loc_0042088b:
cmp ecx, dword [_rich4_num_players]  ; cmp ecx, dword [0x499114]
jge near loc_00420931  ; jge 0x420931
cmp ecx, dword [_rich4_current_player]  ; cmp ecx, dword [0x49910c]
je near loc_0042092b  ; je 0x42092b
imul eax, ecx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je near loc_0042092b  ; je 0x42092b
xor edx, edx
mov eax, 1
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]

loc_004208c0:
add ebx, 0x34
cmp eax, dword [_rich4_num_lands]  ; cmp eax, dword [0x498e98]
jg short loc_004208e8  ; jg 0x4208e8
movzx ebp, byte [ebx + 0x19]
mov dword [esp + 4], ebp
lea ebp, [ecx + 1]
mov dword [esp + 8], ebp
mov ebp, dword [esp + 4]
cmp ebp, dword [esp + 8]
jne short loc_004208e5  ; jne 0x4208e5
inc edx

loc_004208e5:
inc eax
jmp short loc_004208c0  ; jmp 0x4208c0

loc_004208e8:
mov eax, 1
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
add ebx, 0x38
mov dword [esp + 0x18], ebx

loc_004208fa:
cmp eax, dword [_rich4_num_facilities]  ; cmp eax, dword [0x498e8c]
jg short loc_00420921  ; jg 0x420921
xor ebx, ebx
mov ebp, dword [esp + 0x18]
mov bl, byte [ebp + 0x19]
mov dword [esp + 8], ebx
lea ebx, [ecx + 1]
cmp ebx, dword [esp + 8]
jne short loc_00420919  ; jne 0x420919
inc edx

loc_00420919:
inc eax
add dword [esp + 0x18], 0x38
jmp short loc_004208fa  ; jmp 0x4208fa

loc_00420921:
cmp esi, edx
jge short loc_0042092b  ; jge 0x42092b
mov esi, edx
mov dword [esp + 0x10], ecx

loc_0042092b:
inc ecx
jmp near loc_0042088b  ; jmp 0x42088b

loc_00420931:
xor ecx, ecx
mov ebx, dword [esp + 0x10]

loc_00420937:
cmp ecx, edi
jge short loc_00420964  ; jge 0x420964
xor eax, eax
mov al, byte [esp + ecx]
cmp eax, ebx
jne short loc_00420961  ; jne 0x420961
mov cl, byte [esp + 0x10]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 0xc], 1
jmp short loc_00420964  ; jmp 0x420964

loc_00420961:
inc ecx
jmp short loc_00420937  ; jmp 0x420937

loc_00420964:
mov eax, dword [esp + 0xc]
add esp, 0x1c
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00420970:
push ebx
push esi
push edi
push ebp
sub esp, 0x18
xor edx, edx
mov dword [esp + 8], edx
push 3
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0040b221  ; call 0x40b221
add esp, 8
test eax, eax
jne near loc_00420a82  ; jne 0x420a82
xor edi, edi
mov dword [esp + 4], eax
xor ebp, ebp
mov dword [esp + 0x10], eax
jmp short loc_004209ae  ; jmp 0x4209ae

loc_004209a4:
inc ebp
cmp ebp, 3
jge near loc_00420bdf  ; jge 0x420bdf

loc_004209ae:
xor edx, edx
mov dx, word [ebp*2 + ref_0048b8b4]  ; mov dx, word [ebp*2 + 0x48b8b4]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
mov ax, word [edx + eax*8 + 0x20]
and eax, 0xffff
cmp eax, 0x7d0
jle near loc_00420ae6  ; jle 0x420ae6
cmp eax, 0xfa0
jge near loc_00420ae6  ; jge 0x420ae6
sub eax, 0x7d0
imul eax, eax, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
add esi, eax
mov cl, byte [esi + 0x19]
test cl, cl
je short loc_00420a17  ; je 0x420a17
xor eax, eax
mov al, cl
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_00420a31  ; jne 0x420a31
cmp byte [esi + 0x18], 0
jne short loc_00420a31  ; jne 0x420a31
cmp byte [esi + 0x1a], 5
jae short loc_00420a31  ; jae 0x420a31

loc_00420a17:
cmp byte [esi + 0x19], 0
je short loc_00420a25  ; je 0x420a25
xor eax, eax
mov ax, word [esi + 0x1e]
jmp short loc_00420a2b  ; jmp 0x420a2b

loc_00420a25:
xor eax, eax
mov ax, word [esi + 0x1c]

loc_00420a2b:
add edi, eax
inc dword [esp + 0x10]

loc_00420a31:
mov dl, byte [esi + 0x19]
test dl, dl
je near loc_004209a4  ; je 0x4209a4
xor eax, eax
mov al, dl
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
je near loc_004209a4  ; je 0x4209a4
add esi, 4
push esi
push eax
call _rich4_calculate_land_toll  ; call 0x419744
mov ebx, eax
add esp, 8
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 3
mov edx, eax
shl eax, 2
add eax, edx
cmp ebx, eax
jle near loc_004209a4  ; jle 0x4209a4

loc_00420a82:
cmp dword [esp + 8], 0
jne near loc_00420c5d  ; jne 0x420c5d
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [ref_0048be60], eax  ; mov dword [0x48be60], eax
xor ecx, ecx
mov dword [esp], ecx
xor ebp, ebp
mov dword [esp + 0xc], ecx

loc_00420aa7:
cmp ebp, dword [ref_0048be60]  ; cmp ebp, dword [0x48be60]
jge near loc_00420c9e  ; jge 0x420c9e
mov ax, word [ebp*2 + ref_0048b8c4]  ; mov ax, word [ebp*2 + 0x48b8c4]
and eax, 0xffff
mov dword [esp + 0x10], eax
test byte [esp + 0x11], 0x80
je near loc_00420c98  ; je 0x420c98
test byte [esp + 0x10], 0xf
je near loc_00420c98  ; je 0x420c98
xor ebx, ebx
mov eax, 1
jmp near loc_00420c6e  ; jmp 0x420c6e

loc_00420ae6:
cmp eax, 0xfa0
jle near loc_00420b97  ; jle 0x420b97
cmp eax, 0x1770
jge near loc_00420b97  ; jge 0x420b97
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, edx
cmp byte [eax + 0x19], 0
je short loc_00420b3c  ; je 0x420b3c
xor edx, edx
mov dl, byte [eax + 0x19]
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
inc ecx
cmp edx, ecx
jne short loc_00420b56  ; jne 0x420b56
mov bl, byte [eax + 0x18]
test bl, bl
je short loc_00420b56  ; je 0x420b56
cmp bl, 3
je short loc_00420b56  ; je 0x420b56
cmp byte [eax + 0x1a], 5
jae short loc_00420b56  ; jae 0x420b56

loc_00420b3c:
cmp byte [eax + 0x19], 0
je short loc_00420b4a  ; je 0x420b4a
xor edx, edx
mov dx, word [eax + 0x24]
jmp short loc_00420b50  ; jmp 0x420b50

loc_00420b4a:
xor edx, edx
mov dx, word [eax + 0x22]

loc_00420b50:
add edi, edx
inc dword [esp + 0x10]

loc_00420b56:
mov dl, byte [eax + 0x19]
test dl, dl
je near loc_004209a4  ; je 0x4209a4
xor ecx, ecx
mov cl, dl
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp ecx, edx
je near loc_004209a4  ; je 0x4209a4
mov dh, byte [eax + 0x18]
test dh, dh
je near loc_004209a4  ; je 0x4209a4
cmp dh, 4
je near loc_004209a4  ; je 0x4209a4
cmp byte [eax + 0x1a], 0
je near loc_004209a4  ; je 0x4209a4
jmp near loc_00420a82  ; jmp 0x420a82

loc_00420b97:
cmp eax, 0x1770
jle near loc_004209a4  ; jle 0x4209a4
cmp eax, 0x1f40
jge near loc_004209a4  ; jge 0x4209a4
sub eax, 0x1770
imul eax, eax, 0x34
mov edx, dword [_rich4_on_map_commercial_ptr]  ; mov edx, dword [0x498e7c]
add eax, edx
cmp byte [eax + 0x18], 0
je near loc_004209a4  ; je 0x4209a4
xor edx, edx
mov dl, byte [eax + 0x18]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
je near loc_004209a4  ; je 0x4209a4
jmp near loc_00420a82  ; jmp 0x420a82

loc_00420bdf:
cmp dword [esp + 4], 0
jne near loc_00420a82  ; jne 0x420a82
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
fild dword [edx + (_rich4_all_players_state + 28)]  ; fild dword [edx + 0x496b84]
mov dword [esp + 0x14], edi
fild dword [esp + 0x14]
fmul qword [ref_00463d40]  ; fmul qword [0x463d40]
fcompp
fnstsw ax
sahf
jae near loc_00420a82  ; jae 0x420a82
cmp dword [esp + 0x10], 2
jl near loc_00420a82  ; jl 0x420a82
mov eax, dword [edx + (_rich4_all_players_state + 28)]  ; mov eax, dword [edx + 0x496b84]
add eax, dword [edx + (_rich4_all_players_state + 32)]  ; add eax, dword [edx + 0x496b88]
cmp eax, 0x2710
jle near loc_00420a82  ; jle 0x420a82
cmp word [edx + (_rich4_all_players_state + 70)], 0  ; cmp word [edx + 0x496bae], 0
jl near loc_00420a82  ; jl 0x420a82
mov cl, byte [_rich4_current_player]  ; mov cl, byte [0x49910c]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 8], 1

loc_00420c5d:
mov eax, dword [esp + 8]
jmp near loc_0041fe46  ; jmp 0x41fe46

loc_00420c66:
add eax, eax
inc ebx
cmp eax, 0x10
jge short loc_00420c98  ; jge 0x420c98

loc_00420c6e:
test dword [esp + 0x10], eax
je short loc_00420c66  ; je 0x420c66
cmp ebx, dword [_rich4_current_player]  ; cmp ebx, dword [0x49910c]
je short loc_00420c66  ; je 0x420c66
imul esi, ebx, 0x68
cmp byte [esi + (_rich4_all_players_state + 21)], 0  ; cmp byte [esi + 0x496b7d], 0
je short loc_00420c66  ; je 0x420c66
mov edx, dword [esp + 0xc]
mov byte [esp + edx], bl
lea esi, [edx + 1]
mov dword [esp + 0xc], esi
jmp short loc_00420c66  ; jmp 0x420c66

loc_00420c98:
inc ebp
jmp near loc_00420aa7  ; jmp 0x420aa7

loc_00420c9e:
cmp dword [esp + 0xc], 0
je short loc_00420c5d  ; je 0x420c5d
xor ebx, ebx

loc_00420ca7:
cmp ebx, dword [esp + 0xc]
jge short loc_00420c5d  ; jge 0x420c5d
mov ebp, dword [esp + 8]
test ebp, ebp
jne short loc_00420c5d  ; jne 0x420c5d
push 3
xor eax, eax
mov al, byte [esp + ebx + 4]
push eax
call fcn_0040b221  ; call 0x40b221
add esp, 8
test eax, eax
jne near loc_00420e94  ; jne 0x420e94
xor edi, edi
mov dword [esp + 4], ebp
mov dword [esp + 0x10], ebp
jmp short loc_00420ce4  ; jmp 0x420ce4

loc_00420cda:
inc ebp
cmp ebp, 3
jge near loc_00420e4e  ; jge 0x420e4e

loc_00420ce4:
xor esi, esi
mov si, word [ebp*2 + ref_0048b8b4]  ; mov si, word [ebp*2 + 0x48b8b4]
mov eax, esi
shl eax, 2
add eax, esi
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
mov ax, word [edx + eax*8 + 0x20]
and eax, 0xffff
cmp eax, 0x7d0
jle short loc_00420d68  ; jle 0x420d68
cmp eax, 0xfa0
jge short loc_00420d68  ; jge 0x420d68
sub eax, 0x7d0
imul eax, eax, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
add esi, eax
xor eax, eax
mov al, byte [esi + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_00420d46  ; jne 0x420d46
lea edx, [esi + 4]
push edx
push eax
call _rich4_calculate_land_toll  ; call 0x419744
add esp, 8
add edi, eax
inc dword [esp + 0x10]

loc_00420d46:
cmp byte [esi + 0x19], 0
je near loc_00420e94  ; je 0x420e94
xor eax, eax
mov al, byte [esp + ebx]
xor edx, edx
mov dl, byte [esi + 0x19]
inc eax
cmp edx, eax
jne near loc_00420cda  ; jne 0x420cda
jmp near loc_00420e94  ; jmp 0x420e94

loc_00420d68:
cmp eax, 0xfa0
jle near loc_00420df1  ; jle 0x420df1
cmp eax, 0x1770
jge near loc_00420df1  ; jge 0x420df1
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl edx, 3
sub edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, edx
xor edx, edx
mov dl, byte [eax + 0x19]
mov esi, dword [_rich4_current_player]  ; mov esi, dword [0x49910c]
inc esi
cmp edx, esi
jne short loc_00420dcc  ; jne 0x420dcc
mov dl, byte [eax + 0x18]
test dl, dl
je short loc_00420dcc  ; je 0x420dcc
cmp dl, 4
je short loc_00420dcc  ; je 0x420dcc
mov cl, byte [eax + 0x1a]
test cl, cl
je short loc_00420dcc  ; je 0x420dcc
xor edx, edx
mov dl, cl
add edx, edx
lea esi, [eax + edx]
xor edx, edx
mov dx, word [esi + 0x24]
add edi, edx
inc dword [esp + 0x10]

loc_00420dcc:
mov ch, byte [eax + 0x19]
test ch, ch
je near loc_00420e94  ; je 0x420e94
xor edx, edx
mov dl, byte [esp + ebx]
mov al, ch
and eax, 0xff
inc edx
cmp eax, edx
jne near loc_00420cda  ; jne 0x420cda
jmp near loc_00420e94  ; jmp 0x420e94

loc_00420df1:
cmp eax, 0x1770
jle near loc_00420cda  ; jle 0x420cda
cmp eax, 0x1f40
jge near loc_00420cda  ; jge 0x420cda
sub eax, 0x1770
imul edx, eax, 0x34
mov eax, dword [_rich4_on_map_commercial_ptr]  ; mov eax, dword [0x498e7c]
add eax, edx
movzx esi, byte [eax + 0x18]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp esi, edx
jne short loc_00420e31  ; jne 0x420e31
xor edx, edx
mov dx, word [eax + 0x22]
add edi, edx
inc dword [esp + 0x10]

loc_00420e31:
mov ch, byte [eax + 0x18]
test ch, ch
je short loc_00420e94  ; je 0x420e94
movzx esi, byte [esp + ebx]
mov al, ch
and eax, 0xff
inc esi
cmp eax, esi
jne near loc_00420cda  ; jne 0x420cda
jmp short loc_00420e94  ; jmp 0x420e94

loc_00420e4e:
cmp dword [esp + 4], 0
jne short loc_00420e94  ; jne 0x420e94
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
sub eax, edx
shl eax, 4
add eax, edx
shl eax, 4
cmp edi, eax
jl short loc_00420e94  ; jl 0x420e94
cmp dword [esp + 0x10], 2
jl short loc_00420e94  ; jl 0x420e94
mov cl, byte [esp + ebx]
mov eax, 1
shl eax, cl
or ah, 0x80
mov dword [ref_0048be58], eax  ; mov dword [0x48be58], eax
mov dword [esp + 8], 1

loc_00420e94:
inc ebx
jmp near loc_00420ca7  ; jmp 0x420ca7

section .data

ref_00463d38:
dd 0x51eb851f
dd 0x3fe51eb8

ref_00463d40:
dd 0x00000000
dd 0x3ff80000

ref_00475328:  ; may contain a jump table
dd fcn_0041e6fe
dd fcn_0041e779
dd fcn_0041e9e2
dd fcn_0041eae2
dd fcn_0041e6e3
dd fcn_0041e6e3
dd fcn_0041ed3e
dd fcn_0041ef26
dd fcn_0041f037
dd fcn_0041f1b3
dd fcn_0041f400
dd fcn_0041f6a9
dd fcn_0041f901
dd fcn_0041facc
dd fcn_0041fe4e
dd fcn_0041fe6f
dd fcn_0041fe6f
dd fcn_0041e6e3
dd fcn_0041e6e3
dd fcn_0041e6e3
dd fcn_0041e6e3
dd fcn_0041ff77
dd fcn_0041fff8
dd fcn_00420055
dd fcn_004200ea
dd fcn_004202d2
dd fcn_0042040e
dd fcn_0042062b
dd fcn_004207cc
dd fcn_00420970
