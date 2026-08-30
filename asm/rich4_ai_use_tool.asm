extern _libc_rand
extern _rich4_all_players_state
extern _rich4_calculate_land_toll
extern _rich4_current_player
extern _rich4_facility_info_ptr
extern _rich4_find_most_hostile_player
extern _rich4_hospital_node_idx
extern _rich4_land_info_ptr
extern _rich4_map_node_ptr
extern _rich4_num_alive_players
extern _rich4_num_facilities
extern _rich4_num_lands
extern _rich4_price_index
extern _rich4_prison_node_idx
extern _rich4_select_one_active_player
extern _strcmp
extern _tool_table
extern fcn_00409ef9
extern fcn_0040a0b1
extern fcn_0040a45c
extern fcn_0040b221
extern fcn_0040b343
extern ref_00474940
extern ref_0048b8b4
extern ref_0048b8c4
extern ref_0048be64
extern ref_00496b30
extern ref_00496b60
extern _rich4_objects_info

global fcn_00420e9a
global fcn_00420eee

section .text

fcn_00420e9a:
mov eax, dword [esp + 4]
xor edx, edx
mov dl, byte [eax*8 + (_tool_table + -1)]  ; mov dl, byte [eax*8 + 0x47fee1]
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov al, byte [eax + (_rich4_all_players_state + 23)]  ; mov al, byte [eax + 0x496b7f]
and eax, 0xff
sub edx, eax
mov eax, edx
cmp edx, 2
jl short loc_00420ec5  ; jl 0x420ec5
xor eax, edx
ret

loc_00420ec5:
cmp edx, 1
jne short loc_00420ee2  ; jne 0x420ee2
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 3
sar edx, 0x1f
idiv ecx
test edx, edx
je short loc_00420ee2  ; je 0x420ee2

fcn_00420edf:
xor eax, eax
ret

loc_00420ee2:
mov eax, dword [esp + 4]
call dword [eax*4 + (ref_004753a0 - 4)]  ; ucall: call dword [eax*4 + 0x47539c]
ret

fcn_00420eee:
mov eax, dword [esp + 4]
mov eax, dword [eax*4 + ref_0048be64]  ; mov eax, dword [eax*4 + 0x48be64]
ret

fcn_00420efa:
push ebx
push esi
push edi
push ebp
xor esi, esi
push 4
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
push edx
call fcn_0040b221  ; call 0x40b221
add esp, 8
test eax, eax
jne near loc_00421078  ; jne 0x421078
xor edi, edi
jmp near loc_00420f92  ; jmp 0x420f92

loc_00420f20:
cmp eax, 0xfa0
jle short loc_00420f52  ; jle 0x420f52
cmp eax, 0x1770
jge short loc_00420f52  ; jge 0x420f52
sub eax, 0xfa0
shl eax, 3
mov ebx, eax
shl eax, 3
sub eax, ebx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
mov bl, byte [ebx + eax + 0x19]
and ebx, 0xff
mov edx, 0x989680

loc_00420f52:
dec ebp
mov eax, ebp
shl eax, 2
sub eax, ebp
mov al, byte [eax*8 + _rich4_objects_info]  ; mov al, byte [eax*8 + 0x496d08]
and eax, 0xff
cmp eax, 5
je short loc_00420f83  ; je 0x420f83
cmp eax, 6
je short loc_00420f83  ; je 0x420f83
cmp eax, 7
je short loc_00420f83  ; je 0x420f83
cmp eax, 8
je short loc_00420f83  ; je 0x420f83
cmp eax, 0xb
jne near loc_00421010  ; jne 0x421010

loc_00420f83:
mov esi, 1

loc_00420f88:
inc edi
cmp edi, 4
jge near loc_00421078  ; jge 0x421078

loc_00420f92:
test esi, esi
jne near loc_00421078  ; jne 0x421078
xor edx, edx
mov dx, word [edi*2 + ref_0048b8b4]  ; mov dx, word [edi*2 + 0x48b8b4]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
add eax, edx
mov ebp, dword [eax + 0x24]
and ebp, 0x3f0000
shr ebp, 0x10
test ebp, ebp
je short loc_00420f88  ; je 0x420f88
mov ax, word [eax + 0x20]
and eax, 0xffff
xor ebx, ebx
xor edx, edx
cmp eax, 0x7d0
jle near loc_00420f20  ; jle 0x420f20
cmp eax, 0xfa0
jge near loc_00420f20  ; jge 0x420f20
sub eax, 0x7d0
imul eax, eax, 0x34
mov edx, dword [_rich4_land_info_ptr]  ; mov edx, dword [0x498e84]
add eax, edx
mov bl, byte [eax + 0x19]
add eax, 4
push eax
push ebx
call _rich4_calculate_land_toll  ; call 0x419744
add esp, 8
mov edx, eax
jmp near loc_00420f52  ; jmp 0x420f52

loc_00421010:
test esi, esi
jne short loc_00421028  ; jne 0x421028
cmp eax, 0x11
jne short loc_00421028  ; jne 0x421028
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
inc ebp
cmp ebx, ebp
je near loc_00420f83  ; je 0x420f83

loc_00421028:
test esi, esi
jne near loc_00420f88  ; jne 0x420f88
cmp eax, 0x10
jne near loc_00420f88  ; jne 0x420f88
test ebx, ebx
je near loc_00420f88  ; je 0x420f88
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp ebx, eax
je near loc_00420f88  ; je 0x420f88
mov ebx, dword [_rich4_price_index]  ; mov ebx, dword [0x4990e8]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 3
add eax, ebx
shl eax, 3
mov ebx, eax
shl eax, 4
sub eax, ebx
cmp edx, eax
jle near loc_00420f88  ; jle 0x420f88
jmp near loc_00420f83  ; jmp 0x420f83

loc_00421078:
mov eax, esi
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0042107f:
push ebx
push esi
push edi
push ebp
sub esp, 0x10
xor edx, edx
mov dword [esp + 8], edx
push 4
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0040b221  ; call 0x40b221
add esp, 8
test eax, eax
jne near loc_00421299  ; jne 0x421299
xor ebp, ebp
jmp near loc_00421122  ; jmp 0x421122

loc_004210ac:
xor esi, esi
mov eax, dword [esp + 0xc]
mov si, word [eax + 0x1c]
imul esi, dword [_rich4_price_index]  ; imul esi, dword [0x4990e8]
cmp ebx, 2
jge short loc_004210c8  ; jge 0x4210c8
cmp byte [eax + 0x1a], 0
je short loc_00421118  ; je 0x421118

loc_004210c8:
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov edx, dword [eax + (_rich4_all_players_state + 28)]  ; mov edx, dword [eax + 0x496b84]
add edx, dword [eax + (_rich4_all_players_state + 32)]  ; add edx, dword [eax + 0x496b88]
cmp edx, 0x2710
jle short loc_00421118  ; jle 0x421118
cmp word [eax + (_rich4_all_players_state + 70)], 0  ; cmp word [eax + 0x496bae], 0
jl short loc_00421118  ; jl 0x421118
cmp byte [eax + (_rich4_all_players_state + 57)], 0  ; cmp byte [eax + 0x496ba1], 0
jne short loc_00421118  ; jne 0x421118
cmp esi, dword [eax + (_rich4_all_players_state + 28)]  ; cmp esi, dword [eax + 0x496b84]

loc_004210fc:
jge short loc_00421118  ; jge 0x421118
mov ax, word [ebp*2 + ref_0048b8b4]  ; mov ax, word [ebp*2 + 0x48b8b4]
and eax, 0xffff
mov dword [ref_0048be64], eax  ; mov dword [0x48be64], eax

loc_00421110:
mov dword [esp + 8], 1

loc_00421118:
inc ebp
cmp ebp, 4
jge near loc_00421299  ; jge 0x421299

loc_00421122:
cmp dword [esp + 8], 0
jne near loc_00421299  ; jne 0x421299
xor edx, edx
mov dx, word [ebp*2 + ref_0048b8b4]  ; mov dx, word [ebp*2 + 0x48b8b4]
mov eax, edx
shl eax, 2
add edx, eax
shl edx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, edx
test dword [eax + 0x24], 0x3fff00
jne short loc_00421118  ; jne 0x421118
mov ax, word [eax + 0x20]
and eax, 0xffff
cmp eax, 0x7d0
jle short loc_004211c3  ; jle 0x4211c3
cmp eax, 0xfa0
jge short loc_004211c3  ; jge 0x4211c3
sub eax, 0x7d0
imul eax, eax, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
lea edx, [esi + eax]
mov dword [esp + 0xc], edx
cmp byte [edx + 0x19], 0
jne short loc_00421118  ; jne 0x421118
mov edi, 1
xor ebx, ebx

loc_0042118a:
add esi, 0x34
cmp edi, dword [_rich4_num_lands]  ; cmp edi, dword [0x498e98]
jg near loc_004210ac  ; jg 0x4210ac
lea eax, [esi + 4]
push eax
mov eax, dword [esp + 0x10]
add eax, 4
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_004211c0  ; jne 0x4211c0
mov al, byte [esi + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_004211c0  ; jne 0x4211c0
inc ebx

loc_004211c0:
inc edi
jmp short loc_0042118a  ; jmp 0x42118a

loc_004211c3:
cmp eax, 0xfa0
jle near loc_0042124c  ; jle 0x42124c
cmp eax, 0x1770
jge short loc_0042124c  ; jge 0x42124c
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add edx, eax
cmp byte [edx + 0x19], 0
jne near loc_00421118  ; jne 0x421118
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
mov ebx, dword [eax + (_rich4_all_players_state + 28)]  ; mov ebx, dword [eax + 0x496b84]
add ebx, dword [eax + (_rich4_all_players_state + 32)]  ; add ebx, dword [eax + 0x496b88]
cmp ebx, 0x2710
jle near loc_00421118  ; jle 0x421118
cmp word [eax + (_rich4_all_players_state + 70)], 0  ; cmp word [eax + 0x496bae], 0
jl near loc_00421118  ; jl 0x421118
cmp byte [eax + (_rich4_all_players_state + 57)], 0  ; cmp byte [eax + 0x496ba1], 0
jne near loc_00421118  ; jne 0x421118
mov dx, word [edx + 0x22]
and edx, 0xffff
imul edx, dword [_rich4_price_index]  ; imul edx, dword [0x4990e8]
cmp edx, dword [eax + (_rich4_all_players_state + 28)]  ; cmp edx, dword [eax + 0x496b84]
jmp near loc_004210fc  ; jmp 0x4210fc

loc_0042124c:
xor ebx, ebx
mov bx, word [ebp*2 + ref_0048b8b4]  ; mov bx, word [ebp*2 + 0x48b8b4]
mov eax, ebx
shl eax, 2
lea edx, [ebx + eax]
shl edx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
mov eax, dword [edx + eax + 0x24]
and eax, 0xff
cmp eax, 0xf
jne near loc_00421118  ; jne 0x421118
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
cmp word [eax + (_rich4_all_players_state + 48)], 0xc8  ; cmp word [eax + 0x496b98], 0xc8
jbe near loc_00421118  ; jbe 0x421118
mov dword [ref_0048be64], ebx  ; mov dword [0x48be64], ebx
jmp near loc_00421110  ; jmp 0x421110

loc_00421299:
cmp dword [esp + 8], 0
jne near loc_004213b9  ; jne 0x4213b9
push 6
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0040b343  ; call 0x40b343
add esp, 8
call fcn_00409ef9  ; call 0x409ef9
mov dword [esp], eax
xor ebp, ebp
mov dword [esp + 4], ebp

loc_004212c3:
cmp ebp, dword [esp]
jge near loc_004213b9  ; jge 0x4213b9
xor ebx, ebx
xor edx, edx
jmp short loc_004212d8  ; jmp 0x4212d8

loc_004212d2:
inc ebx
cmp ebx, 6
jge short loc_004212f6  ; jge 0x4212f6

loc_004212d8:
xor eax, eax
mov ax, word [ebp*2 + ref_0048b8c4]  ; mov ax, word [ebp*2 + 0x48b8c4]
mov si, word [ebx*2 + ref_0048b8b4]  ; mov si, word [ebx*2 + 0x48b8b4]
and esi, 0xffff
cmp eax, esi
jne short loc_004212d2  ; jne 0x4212d2
jmp short loc_004212fe  ; jmp 0x4212fe

loc_004212f6:
test edx, edx
je near loc_004213b3  ; je 0x4213b3

loc_004212fe:
lea esi, [ebp + ebp]
xor edx, edx
mov dx, word [esi + ref_0048b8c4]  ; mov dx, word [esi + 0x48b8c4]
mov eax, edx
shl eax, 2
add eax, edx
mov edi, dword [_rich4_map_node_ptr]  ; mov edi, dword [0x498e80]
mov di, word [edi + eax*8 + 0x20]
and edi, 0xffff
cmp edi, 0x7d0
jle near loc_004213b3  ; jle 0x4213b3
cmp edi, 0xfa0
jge near loc_004213b3  ; jge 0x4213b3
lea eax, [edi - 0x7d0]
imul eax, eax, 0x34
mov edx, dword [_rich4_land_info_ptr]  ; mov edx, dword [0x498e84]
add edx, eax
mov dword [esp + 0xc], edx
xor eax, eax
mov al, byte [edx + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_004213b3  ; jne 0x4213b3
mov edx, dword [esp + 0xc]
add edx, 4
push edx
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
shl eax, 4
mov edx, eax
shl eax, 4
sub eax, edx
cmp ebx, eax
jle short loc_004213b3  ; jle 0x4213b3
cmp ebx, dword [esp + 4]
jle short loc_004213b3  ; jle 0x4213b3
mov dword [esp + 4], ebx
xor eax, eax
mov ax, word [esi + ref_0048b8c4]  ; mov ax, word [esi + 0x48b8c4]
mov dword [ref_0048be64], eax  ; mov dword [0x48be64], eax
mov dword [esp + 8], 1

loc_004213b3:
inc ebp
jmp near loc_004212c3  ; jmp 0x4212c3

loc_004213b9:
mov eax, dword [esp + 8]

loc_004213bd:
add esp, 0x10
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_004213c5:
push ebx
push esi
push edi
sub esp, 0x208
xor edx, edx
mov dword [esp + 0x200], edx
push 6
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0040b343  ; call 0x40b343
add esp, 8
call fcn_00409ef9  ; call 0x409ef9
mov dword [esp + 0x204], eax
xor ebx, ebx
xor esi, esi

loc_004213f8:
cmp ebx, dword [esp + 0x204]
jge near loc_0042153a  ; jge 0x42153a
xor eax, eax
xor edi, edi
jmp short loc_00421411  ; jmp 0x421411

loc_0042140b:
inc eax
cmp eax, 6
jge short loc_0042142f  ; jge 0x42142f

loc_00421411:
xor ecx, ecx
mov cx, word [ebx*2 + ref_0048b8c4]  ; mov cx, word [ebx*2 + 0x48b8c4]
mov dx, word [eax*2 + ref_0048b8b4]  ; mov dx, word [eax*2 + 0x48b8b4]
and edx, 0xffff
cmp ecx, edx
jne short loc_0042140b  ; jne 0x42140b
jmp short loc_00421437  ; jmp 0x421437

loc_0042142f:
test edi, edi
je near loc_00421534  ; je 0x421534

loc_00421437:
mov ax, word [ebx*2 + ref_0048b8c4]  ; mov ax, word [ebx*2 + 0x48b8c4]
and eax, 0xffff
xor edx, edx
mov dx, word [_rich4_prison_node_idx]  ; mov dx, word [0x48bae0]
cmp eax, edx
jne short loc_0042145a  ; jne 0x42145a
cmp dword [ref_00496b30], 0  ; cmp dword [0x496b30], 0
jne short loc_0042147d  ; jne 0x42147d

loc_0042145a:
mov ax, word [ebx*2 + ref_0048b8c4]  ; mov ax, word [ebx*2 + 0x48b8c4]
and eax, 0xffff
xor edx, edx
mov dx, word [_rich4_hospital_node_idx]  ; mov dx, word [0x48bae2]
cmp eax, edx
jne short loc_0042148c  ; jne 0x42148c
cmp dword [ref_00496b60], 0  ; cmp dword [0x496b60], 0
je short loc_0042148c  ; je 0x42148c

loc_0042147d:
xor eax, eax
mov ax, word [ebx*2 + ref_0048b8c4]  ; mov ax, word [ebx*2 + 0x48b8c4]
jmp near loc_00421553  ; jmp 0x421553

loc_0042148c:
lea edx, [ebx + ebx]
xor ecx, ecx
mov cx, word [edx + ref_0048b8c4]  ; mov cx, word [edx + 0x48b8c4]
mov eax, ecx
shl eax, 2
add ecx, eax
shl ecx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
mov ax, word [ecx + eax + 0x20]
and eax, 0xffff
cmp eax, 0x7d0
jle short loc_004214ec  ; jle 0x4214ec
cmp eax, 0xfa0
jge short loc_004214ec  ; jge 0x4214ec
sub eax, 0x7d0
imul ecx, eax, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, ecx
cmp byte [eax + 0x19], 0
je short loc_00421534  ; je 0x421534
xor ecx, ecx
mov cl, byte [eax + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp ecx, eax
je short loc_00421534  ; je 0x421534
mov dx, word [edx + ref_0048b8c4]  ; mov dx, word [edx + 0x48b8c4]
jmp short loc_0042152f  ; jmp 0x42152f

loc_004214ec:
cmp eax, 0xfa0
jle short loc_00421534  ; jle 0x421534
cmp eax, 0x1770
jge short loc_00421534  ; jge 0x421534
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, eax
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]
add eax, edx
cmp byte [eax + 0x19], 0
je short loc_00421534  ; je 0x421534
xor edx, edx
mov dl, byte [eax + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
je short loc_00421534  ; je 0x421534
mov dx, word [ebx*2 + ref_0048b8c4]  ; mov dx, word [ebx*2 + 0x48b8c4]

loc_0042152f:
mov word [esp + esi*2], dx
inc esi

loc_00421534:
inc ebx
jmp near loc_004213f8  ; jmp 0x4213f8

loc_0042153a:
test esi, esi
je short loc_00421563  ; je 0x421563
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
mov ax, word [esp + edx*2]
and eax, 0xffff

loc_00421553:
mov dword [ref_0048be64], eax  ; mov dword [0x48be64], eax
mov dword [esp + 0x200], 1

loc_00421563:
mov eax, dword [esp + 0x200]
add esp, 0x208
pop edi
pop esi
pop ebx
ret

fcn_00421574:
push ebx
push esi
push edi
sub esp, 0x208
xor edx, edx
mov dword [esp + 0x200], edx
push 6
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_0040b343  ; call 0x40b343
add esp, 8
call fcn_00409ef9  ; call 0x409ef9
mov dword [esp + 0x204], eax
xor ebx, ebx
xor esi, esi

loc_004215a7:
cmp ebx, dword [esp + 0x204]
jge short loc_0042153a  ; jge 0x42153a
xor eax, eax
xor edi, edi
jmp short loc_004215bc  ; jmp 0x4215bc

loc_004215b6:
inc eax
cmp eax, 6
jge short loc_004215da  ; jge 0x4215da

loc_004215bc:
xor ecx, ecx
mov cx, word [ebx*2 + ref_0048b8c4]  ; mov cx, word [ebx*2 + 0x48b8c4]
mov dx, word [eax*2 + ref_0048b8b4]  ; mov dx, word [eax*2 + 0x48b8b4]
and edx, 0xffff
cmp ecx, edx
jne short loc_004215b6  ; jne 0x4215b6
jmp short loc_004215de  ; jmp 0x4215de

loc_004215da:
test edi, edi
je short loc_0042163e  ; je 0x42163e

loc_004215de:
mov ax, word [ebx*2 + ref_0048b8c4]  ; mov ax, word [ebx*2 + 0x48b8c4]
and eax, 0xffff
xor edx, edx
mov dx, word [_rich4_prison_node_idx]  ; mov dx, word [0x48bae0]
cmp eax, edx
jne short loc_00421601  ; jne 0x421601
cmp dword [ref_00496b30], 0  ; cmp dword [0x496b30], 0
jne short loc_00421622  ; jne 0x421622

loc_00421601:
mov eax, ebx
xor edx, edx
mov dx, word [ebx*2 + ref_0048b8c4]  ; mov dx, word [ebx*2 + 0x48b8c4]
xor eax, ebx
mov ax, word [_rich4_hospital_node_idx]  ; mov ax, word [0x48bae2]
cmp edx, eax
jne short loc_00421631  ; jne 0x421631
cmp dword [ref_00496b60], 0  ; cmp dword [0x496b60], 0
je short loc_00421631  ; je 0x421631

loc_00421622:
xor eax, eax
mov ax, word [ebx*2 + ref_0048b8c4]  ; mov ax, word [ebx*2 + 0x48b8c4]
jmp near loc_00421553  ; jmp 0x421553

loc_00421631:
mov ax, word [ebx*2 + ref_0048b8c4]  ; mov ax, word [ebx*2 + 0x48b8c4]
mov word [esp + esi*2], ax
inc esi

loc_0042163e:
inc ebx
jmp near loc_004215a7  ; jmp 0x4215a7

fcn_00421644:
push ebx
xor ebx, ebx
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
test byte [edx + (_rich4_all_players_state + 17)], 3  ; test byte [edx + 0x496b79], 3
jne short loc_00421671  ; jne 0x421671
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 4
sar edx, 0x1f
idiv ecx
test edx, edx
jne short loc_00421671  ; jne 0x421671
mov ebx, 1

loc_00421671:
mov eax, ebx
pop ebx
ret

fcn_00421675:
push ebx
xor ebx, ebx
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
mov dl, byte [edx + (_rich4_all_players_state + 17)]  ; mov dl, byte [edx + 0x496b79]
and dl, 3
cmp dl, 2
jae short loc_004216a7  ; jae 0x4216a7
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 4
sar edx, 0x1f
idiv ecx
test edx, edx
jne short loc_004216a7  ; jne 0x4216a7
mov ebx, 1

loc_004216a7:
mov eax, ebx
pop ebx
ret

fcn_004216ab:
mov eax, dword [esp + 8]
cmp eax, 0x7d0
jle short loc_004216dc  ; jle 0x4216dc
cmp eax, 0xfa0
jge short loc_004216dc  ; jge 0x4216dc
sub eax, 0x7d0
imul ecx, eax, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, ecx
xor ecx, ecx
mov cl, byte [eax + 0x19]
mov eax, dword [esp + 4]
inc eax
cmp ecx, eax
jne short loc_00421714  ; jne 0x421714
jmp short loc_0042170f  ; jmp 0x42170f

loc_004216dc:
cmp eax, 0xfa0
jle short loc_00421714  ; jle 0x421714
cmp eax, 0x1770
jge short loc_00421714  ; jge 0x421714
sub eax, 0xfa0
shl eax, 3
mov ecx, eax
shl eax, 3
sub eax, ecx
mov ecx, dword [_rich4_facility_info_ptr]  ; mov ecx, dword [0x498e88]
add eax, ecx
xor ecx, ecx
mov cl, byte [eax + 0x19]
mov eax, dword [esp + 4]
inc eax
cmp ecx, eax
jne short loc_00421714  ; jne 0x421714

loc_0042170f:
mov edx, 1

loc_00421714:
mov eax, edx
ret

fcn_00421717:
push ebx
push esi
push edi
push ebp
sub esp, 8
xor edx, edx
mov dword [esp], edx
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call _rich4_find_most_hostile_player  ; call 0x40d2d3
add esp, 4
mov ebx, eax
cmp eax, 0xffffffff
jne short loc_0042174a  ; jne 0x42174a
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
push ebx
call _rich4_select_one_active_player  ; call 0x40d31c
add esp, 4
mov ebx, eax

loc_0042174a:
cmp ebx, 0xffffffff
jne short loc_00421756  ; jne 0x421756
xor eax, eax
jmp near loc_0042181f  ; jmp 0x42181f

loc_00421756:
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov dword [esp + 4], eax
xor esi, esi
xor edi, edi
mov ebp, dword [esp + 4]

loc_0042176c:
cmp esi, ebp
jge short loc_004217b3  ; jge 0x4217b3
test edi, edi
jne short loc_004217b3  ; jne 0x4217b3
mov cx, word [esi*2 + ref_0048b8c4]  ; mov cx, word [esi*2 + 0x48b8c4]
and ecx, 0xffff
test ch, 0x80
je short loc_004217b0  ; je 0x4217b0
test cl, 0xf
je short loc_004217b0  ; je 0x4217b0
xor edx, edx
mov eax, 1
jmp short loc_0042179d  ; jmp 0x42179d

loc_00421795:
add eax, eax
inc edx
cmp eax, 0x10
jge short loc_004217b0  ; jge 0x4217b0

loc_0042179d:
test ecx, eax
je short loc_00421795  ; je 0x421795
cmp edx, ebx
jne short loc_00421795  ; jne 0x421795
mov dword [ref_0048be64], ecx  ; mov dword [0x48be64], ecx
mov edi, 1

loc_004217b0:
inc esi
jmp short loc_0042176c  ; jmp 0x42176c

loc_004217b3:
test edi, edi
je short loc_0042181c  ; je 0x42181c
push 0x64
imul ebx, ebx, 0x68
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
push eax
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 8)]  ; mov ax, word [ebx + 0x496b70]
push eax
call fcn_0040a0b1  ; call 0x40a0b1
add esp, 0xc
mov dword [esp + 4], eax
xor esi, esi
xor edi, edi

loc_004217e0:
cmp esi, dword [esp + 4]
jge short loc_00421811  ; jge 0x421811
mov cx, word [esi*2 + ref_0048b8c4]  ; mov cx, word [esi*2 + 0x48b8c4]
and ecx, 0xffff
test ch, 0x80
jne short loc_0042181c  ; jne 0x42181c
push ecx
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
push ecx
call fcn_004216ab  ; call 0x4216ab
add esp, 8
cmp eax, 1
je short loc_0042181c  ; je 0x42181c
inc esi
jmp short loc_004217e0  ; jmp 0x4217e0

loc_00421811:
test edi, edi
jne short loc_0042181c  ; jne 0x42181c
mov dword [esp], 1

loc_0042181c:
mov eax, dword [esp]

loc_0042181f:
add esp, 8
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00421827:
push ebx
push esi
push edi
push ebp
sub esp, 0x10
xor edx, edx
mov dword [esp + 4], edx
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul edx, ecx, 0x68
xor eax, eax
mov al, byte [edx + (_rich4_all_players_state + 63)]  ; mov al, byte [edx + 0x496ba7]
cmp eax, 7
je short loc_00421854  ; je 0x421854
cmp eax, 8
je short loc_00421854  ; je 0x421854
cmp eax, 0xf
jne short loc_0042185b  ; jne 0x42185b

loc_00421854:
xor eax, eax
jmp near loc_004213bd  ; jmp 0x4213bd

loc_0042185b:
cmp byte [edx + (_rich4_all_players_state + 57)], 0  ; cmp byte [edx + 0x496ba1], 0
jne short loc_00421854  ; jne 0x421854
mov eax, dword [edx + (_rich4_all_players_state + 28)]  ; mov eax, dword [edx + 0x496b84]
add eax, dword [edx + (_rich4_all_players_state + 32)]  ; add eax, dword [edx + 0x496b88]
cmp eax, 0x2710
jl short loc_00421854  ; jl 0x421854
cmp word [edx + (_rich4_all_players_state + 70)], 0  ; cmp word [edx + 0x496bae], 0
jl short loc_00421854  ; jl 0x421854
push 6
push ecx
call fcn_0040b221  ; call 0x40b221
add esp, 8
test eax, eax
jne near loc_00421b9d  ; jne 0x421b9d
mov dword [esp + 8], eax
mov dword [esp], eax
jmp near loc_004219e8  ; jmp 0x4219e8

loc_004218a0:
lea edx, [eax - 1]
mov eax, edx
shl eax, 2
sub eax, edx
mov al, byte [eax*8 + _rich4_objects_info]  ; mov al, byte [eax*8 + 0x496d08]
and eax, 0xff
cmp eax, 5
je near loc_004219d6  ; je 0x4219d6
cmp eax, 6
je near loc_004219d6  ; je 0x4219d6
cmp eax, 7
je near loc_004219d6  ; je 0x4219d6
cmp eax, 8
je near loc_004219d6  ; je 0x4219d6
cmp eax, 0xa
je near loc_004219d6  ; je 0x4219d6
cmp eax, 0xb
je near loc_004219d6  ; je 0x4219d6
cmp eax, 0x10
je near loc_004219d6  ; je 0x4219d6
cmp eax, 0x11
je near loc_004219d6  ; je 0x4219d6
cmp eax, 0x12
je near loc_004219d6  ; je 0x4219d6

loc_00421907:
mov eax, dword [esp + 8]
xor edx, edx
mov dx, word [eax*2 + ref_0048b8b4]  ; mov dx, word [eax*2 + 0x48b8b4]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, dword [_rich4_map_node_ptr]  ; mov edx, dword [0x498e80]
mov ax, word [edx + eax*8 + 0x20]
and eax, 0xffff
cmp eax, 0x7d0
jle near loc_00421ae0  ; jle 0x421ae0
cmp eax, 0xfa0
jge near loc_00421ae0  ; jge 0x421ae0
xor edi, edi
sub eax, 0x7d0
imul ebp, eax, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add ebp, eax
lea ebx, [eax + 0x34]
mov al, byte [ebp + 0x19]
test al, al
jne near loc_00421a3a  ; jne 0x421a3a
mov esi, 1

loc_00421966:
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg short loc_00421997  ; jg 0x421997
lea eax, [ebx + 4]
push eax
lea eax, [ebp + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_00421991  ; jne 0x421991
mov al, byte [ebx + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_00421991  ; jne 0x421991
inc edi

loc_00421991:
inc esi
add ebx, 0x34
jmp short loc_00421966  ; jmp 0x421966

loc_00421997:
cmp edi, 1
jle short loc_004219d6  ; jle 0x4219d6
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
fild dword [eax + (_rich4_all_players_state + 28)]  ; fild dword [eax + 0x496b84]
xor eax, eax
mov ax, word [ebp + 0x1c]

loc_004219af:
mov dword [esp + 0xc], eax
fild dword [esp + 0xc]
fmul qword [ref_00463d48]  ; fmul qword [0x463d48]
fcompp
fnstsw ax
sahf
jae short loc_004219d6  ; jae 0x4219d6

loc_004219c4:
mov eax, dword [esp + 8]
inc eax
mov dword [ref_0048be64], eax  ; mov dword [0x48be64], eax
mov dword [esp + 4], 1

loc_004219d6:
mov ebx, dword [esp + 8]
inc ebx
mov dword [esp + 8], ebx
cmp ebx, 6
jge near loc_00421b88  ; jge 0x421b88

loc_004219e8:
cmp dword [esp + 4], 0
jne near loc_00421b88  ; jne 0x421b88
mov eax, dword [esp + 8]
xor edx, edx
mov dx, word [eax*2 + ref_0048b8b4]  ; mov dx, word [eax*2 + 0x48b8b4]
mov eax, edx
shl eax, 2
add edx, eax
shl edx, 3
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
add eax, edx
mov edx, dword [eax + 0x24]
and edx, 0xf000
shr edx, 0xc
test edx, edx
jne short loc_004219d6  ; jne 0x4219d6
mov eax, dword [eax + 0x24]
and eax, 0x3f0000
shr eax, 0x10
test eax, eax
jne near loc_004218a0  ; jne 0x4218a0
jmp near loc_00421907  ; jmp 0x421907

loc_00421a3a:
xor edx, edx
mov dl, al
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne short loc_004219d6  ; jne 0x4219d6
cmp byte [ebp + 0x18], 0
jne short loc_004219d6  ; jne 0x4219d6
cmp byte [ebp + 0x1a], 5
jae short loc_004219d6  ; jae 0x4219d6
mov esi, 1

loc_00421a59:
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg short loc_00421a8b  ; jg 0x421a8b
lea eax, [ebx + 4]
push eax
lea eax, [ebp + 4]
push eax
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_00421a85  ; jne 0x421a85
xor edx, edx
mov dl, byte [ebx + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp edx, eax
jne short loc_00421a85  ; jne 0x421a85
inc edi

loc_00421a85:
inc esi
add ebx, 0x34
jmp short loc_00421a59  ; jmp 0x421a59

loc_00421a8b:
cmp edi, 1
jle near loc_004219d6  ; jle 0x4219d6
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
fild dword [eax + (_rich4_all_players_state + 28)]  ; fild dword [eax + 0x496b84]
xor eax, eax
mov ax, word [ebp + 0x1e]
mov dword [esp + 0xc], eax
fild dword [esp + 0xc]
fmul qword [ref_00463d48]  ; fmul qword [0x463d48]
fcompp
fnstsw ax
sahf
jae near loc_004219d6  ; jae 0x4219d6
xor eax, eax
mov al, byte [ebp + 0x1a]
cmp eax, dword [esp]
jle near loc_004219d6  ; jle 0x4219d6
mov dword [esp], eax
mov eax, dword [esp + 8]
inc eax
mov dword [ref_0048be64], eax  ; mov dword [0x48be64], eax
jmp near loc_004219d6  ; jmp 0x4219d6

loc_00421ae0:
cmp eax, 0xfa0
jle near loc_004219d6  ; jle 0x4219d6
cmp eax, 0x1770
jge near loc_004219d6  ; jge 0x4219d6
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
add edx, eax
cmp byte [edx + 0x19], 0
jne short loc_00421b3f  ; jne 0x421b3f
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
fild dword [eax + (_rich4_all_players_state + 28)]  ; fild dword [eax + 0x496b84]
xor eax, eax
mov ax, word [edx + 0x22]
mov dword [esp + 0xc], eax
fild dword [esp + 0xc]
fmul qword [ref_00463d48]  ; fmul qword [0x463d48]
fcompp
fnstsw ax
sahf
jb near loc_004219c4  ; jb 0x4219c4

loc_00421b3f:
xor ebx, ebx
mov bl, byte [edx + 0x19]
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
inc eax
cmp ebx, eax
jne near loc_004219d6  ; jne 0x4219d6
mov bh, byte [edx + 0x18]
test bh, bh
je near loc_004219d6  ; je 0x4219d6
cmp bh, 3
je near loc_004219d6  ; je 0x4219d6
cmp byte [edx + 0x1a], 5
jae near loc_004219d6  ; jae 0x4219d6
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
fild dword [eax + (_rich4_all_players_state + 28)]  ; fild dword [eax + 0x496b84]
xor eax, eax
mov ax, word [edx + 0x24]
jmp near loc_004219af  ; jmp 0x4219af

loc_00421b88:
cmp dword [esp + 4], 0
jne short loc_00421b9d  ; jne 0x421b9d
cmp dword [esp], 0
je short loc_00421b9d  ; je 0x421b9d
mov dword [esp + 4], 1

loc_00421b9d:
mov eax, dword [esp + 4]
jmp near loc_004213bd  ; jmp 0x4213bd

fcn_00421ba6:
push ebx
push esi
push edi
push ebp
sub esp, 4
xor edx, edx
mov dword [esp], edx
push 0xffffffffffffffff
call fcn_0040a45c  ; call 0x40a45c
add esp, 4
mov ebp, eax
xor esi, esi
xor ecx, ecx

loc_00421bc2:
cmp esi, ebp
jge near loc_00421ca0  ; jge 0x421ca0
mov dx, word [esi*2 + ref_0048b8c4]  ; mov dx, word [esi*2 + 0x48b8c4]
and edx, 0xffff
cmp edx, 0x7d0
jle short loc_00421c38  ; jle 0x421c38
cmp edx, 0xfa0
jge short loc_00421c38  ; jge 0x421c38
lea eax, [edx - 0x7d0]
imul ebx, eax, 0x34
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, ebx
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
inc edi
cmp ebx, edi
jne near loc_00421c9a  ; jne 0x421c9a
cmp byte [eax + 0x18], 0
jne near loc_00421c9a  ; jne 0x421c9a
xor ebx, ebx
mov bl, byte [eax + 0x1a]
mov bx, word [eax + ebx*2 + 0x20]
and ebx, 0xffff
cmp ecx, ebx
jge near loc_00421c9a  ; jge 0x421c9a
cmp byte [eax + 0x1a], 5
jae short loc_00421c9a  ; jae 0x421c9a
mov ecx, ebx
jmp short loc_00421c94  ; jmp 0x421c94

loc_00421c38:
cmp edx, 0xfa0
jle short loc_00421c9a  ; jle 0x421c9a
cmp edx, 0x1770
jge short loc_00421c9a  ; jge 0x421c9a
lea eax, [edx - 0xfa0]
shl eax, 3
mov ebx, eax
shl eax, 3
sub eax, ebx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
add eax, ebx
xor ebx, ebx
mov bl, byte [eax + 0x19]
mov edi, dword [_rich4_current_player]  ; mov edi, dword [0x49910c]
inc edi
cmp ebx, edi
jne short loc_00421c9a  ; jne 0x421c9a
movzx edi, byte [eax + 0x18]
mov bl, byte [eax + 0x1a]
cmp bl, byte [edi + ref_00474940]  ; cmp bl, byte [edi + 0x474940]
jae short loc_00421c9a  ; jae 0x421c9a
xor ebx, ebx
mov bl, byte [eax + 0x1a]
mov ax, word [eax + ebx*2 + 0x24]
and eax, 0xffff
cmp ecx, eax
jge short loc_00421c9a  ; jge 0x421c9a
mov ecx, eax

loc_00421c94:
mov dword [ref_0048be64], edx  ; mov dword [0x48be64], edx

loc_00421c9a:
inc esi
jmp near loc_00421bc2  ; jmp 0x421bc2

loc_00421ca0:
test ecx, ecx
je short loc_00421cab  ; je 0x421cab
mov dword [esp], 1

loc_00421cab:
mov eax, dword [esp]
add esp, 4
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_00421cb6:
push ebx
push esi
push edi
sub esp, 8
xor edx, edx
mov dword [esp], edx
call fcn_00409ef9  ; call 0x409ef9
mov dword [esp + 4], eax
xor edx, edx
xor ecx, ecx

loc_00421cce:
imul ebx, dword [_rich4_current_player], 0x68  ; imul ebx, dword [0x49910c], 0x68
cmp edx, dword [esp + 4]
jge near loc_00421dee  ; jge 0x421dee
xor edi, edi
mov di, word [edx*2 + ref_0048b8c4]  ; mov di, word [edx*2 + 0x48b8c4]
mov eax, edi
shl eax, 2
add eax, edi
mov esi, dword [_rich4_map_node_ptr]  ; mov esi, dword [0x498e80]
mov ax, word [esi + eax*8 + 0x20]
and eax, 0xffff
cmp eax, 0x7d0
jle short loc_00421d71  ; jle 0x421d71
cmp eax, 0xfa0
jge short loc_00421d71  ; jge 0x421d71
sub eax, 0x7d0
imul eax, eax, 0x34
mov esi, dword [_rich4_land_info_ptr]  ; mov esi, dword [0x498e84]
add eax, esi
cmp byte [eax + 0x19], 0
jne near loc_00421de8  ; jne 0x421de8
cmp byte [eax + 0x18], 0
jne near loc_00421de8  ; jne 0x421de8
cmp byte [eax + 0x1a], 3
jb near loc_00421de8  ; jb 0x421de8
movzx esi, byte [eax + 0x1a]
cmp ecx, esi
jge near loc_00421de8  ; jge 0x421de8
mov ax, word [eax + 0x1e]
and eax, 0xffff
imul eax, dword [_rich4_price_index]  ; imul eax, dword [0x4990e8]
cmp eax, dword [ebx + (_rich4_all_players_state + 28)]  ; cmp eax, dword [ebx + 0x496b84]
jge near loc_00421de8  ; jge 0x421de8
mov ecx, esi
mov dword [ref_0048be64], edi  ; mov dword [0x48be64], edi
jmp near loc_00421de8  ; jmp 0x421de8

loc_00421d71:
cmp eax, 0xfa0
jle near loc_00421de8  ; jle 0x421de8
cmp eax, 0x1770
jge short loc_00421de8  ; jge 0x421de8
sub eax, 0xfa0
shl eax, 3
mov ebx, eax
shl eax, 3
sub eax, ebx
mov ebx, dword [_rich4_facility_info_ptr]  ; mov ebx, dword [0x498e88]
add eax, ebx
cmp byte [eax + 0x19], 0
jne short loc_00421de8  ; jne 0x421de8
cmp byte [eax + 0x18], 0
je short loc_00421de8  ; je 0x421de8
cmp byte [eax + 0x1a], 3
jb short loc_00421de8  ; jb 0x421de8
imul ebx, dword [_rich4_current_player], 0x68  ; imul ebx, dword [0x49910c], 0x68
xor esi, esi
mov si, word [eax + 0x24]
imul esi, dword [_rich4_price_index]  ; imul esi, dword [0x4990e8]
cmp esi, dword [ebx + (_rich4_all_players_state + 28)]  ; cmp esi, dword [ebx + 0x496b84]
jge short loc_00421de8  ; jge 0x421de8
mov al, byte [eax + 0x1a]
and eax, 0xff
cmp ecx, eax
jge short loc_00421de8  ; jge 0x421de8
mov ecx, eax
mov ax, word [edx*2 + ref_0048b8c4]  ; mov ax, word [edx*2 + 0x48b8c4]
and eax, 0xffff
mov dword [ref_0048be64], eax  ; mov dword [0x48be64], eax

loc_00421de8:
inc edx
jmp near loc_00421cce  ; jmp 0x421cce

loc_00421dee:
test ecx, ecx
je short loc_00421e16  ; je 0x421e16
mov eax, dword [ebx + (_rich4_all_players_state + 28)]  ; mov eax, dword [ebx + 0x496b84]
add eax, dword [ebx + (_rich4_all_players_state + 32)]  ; add eax, dword [ebx + 0x496b88]
cmp eax, 0x2710
jle short loc_00421e16  ; jle 0x421e16
cmp word [ebx + (_rich4_all_players_state + 70)], 0  ; cmp word [ebx + 0x496bae], 0
jl short loc_00421e16  ; jl 0x421e16
mov dword [esp], 1

loc_00421e16:
mov eax, dword [esp]
add esp, 8
pop edi
pop esi
pop ebx
ret

fcn_00421e20:
push ebx
push esi
xor ebx, ebx
imul edx, dword [_rich4_current_player], 0x68  ; imul edx, dword [0x49910c], 0x68
mov al, byte [edx + (_rich4_all_players_state + 17)]  ; mov al, byte [edx + 0x496b79]
and al, 3
cmp al, 3
jne short loc_00421e3c  ; jne 0x421e3c
xor eax, eax
pop esi
pop ebx
ret

loc_00421e3c:
movzx esi, byte [edx + (_rich4_all_players_state + 23)]  ; movzx esi, byte [edx + 0x496b7f]
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 0xf
sar edx, 0x1f
idiv ecx
cmp edx, esi
jg short loc_00421e5d  ; jg 0x421e5d
mov ebx, 1

loc_00421e5d:
mov eax, ebx
pop esi
pop ebx
ret

fcn_00421e62:
push ebx
push esi
push edi
push ebp
sub esp, 0x430
xor edx, edx
mov dword [esp + 0x410], edx
mov dword [esp + 0x420], 1
mov dword [esp + 0x41c], edx
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add eax, 0x34
mov esi, dword [_rich4_num_lands]  ; mov esi, dword [0x498e98]

loc_00421e95:
cmp esi, dword [esp + 0x420]
jl short loc_00421ee8  ; jl 0x421ee8
mov dl, byte [eax + 0x19]
test dl, dl
je short loc_00421edc  ; je 0x421edc
xor ecx, ecx
mov cl, dl
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp ecx, edx
je short loc_00421edc  ; je 0x421edc
cmp byte [eax + 0x1a], 0
je short loc_00421edc  ; je 0x421edc
mov ebx, dword [esp + 0x420]
add ebx, 0x7d0
mov edx, dword [esp + 0x41c]
mov word [esp + edx*2], bx
lea ebp, [edx + 1]
mov dword [esp + 0x41c], ebp

loc_00421edc:
inc dword [esp + 0x420]
add eax, 0x34
jmp short loc_00421e95  ; jmp 0x421e95

loc_00421ee8:
mov dword [esp + 0x420], 1
mov eax, dword [_rich4_facility_info_ptr]  ; mov eax, dword [0x498e88]

loc_00421ef8:
add eax, 0x38
mov edx, dword [esp + 0x420]
cmp edx, dword [_rich4_num_facilities]  ; cmp edx, dword [0x498e8c]
jg short loc_00421f51  ; jg 0x421f51
mov bl, byte [eax + 0x19]
test bl, bl
je short loc_00421f48  ; je 0x421f48
xor ecx, ecx
mov cl, bl
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp ecx, edx
je short loc_00421f48  ; je 0x421f48
cmp byte [eax + 0x1a], 0
je short loc_00421f48  ; je 0x421f48
mov ebx, dword [esp + 0x420]
add ebx, 0xfa0
mov edx, dword [esp + 0x41c]
mov word [esp + edx*2], bx
lea edi, [edx + 1]
mov dword [esp + 0x41c], edi

loc_00421f48:
inc dword [esp + 0x420]
jmp short loc_00421ef8  ; jmp 0x421ef8

loc_00421f51:
cmp dword [esp + 0x41c], 0
je near loc_004221ae  ; je 0x4221ae
xor esi, esi
mov dword [esp + 0x420], esi
jmp near loc_00422165  ; jmp 0x422165

loc_00421f6d:
sub eax, 0xfa0
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]

loc_00421f82:
movsx ebx, word [edx + eax]
movsx eax, word [edx + eax + 2]
mov dword [esp + 0x428], eax
push 0xffffffffffffffff
mov esi, dword [esp + 0x42c]
push esi
push ebx
call fcn_0040a0b1  ; call 0x40a0b1
add esp, 0xc
mov dword [esp + 0x404], eax
xor ebp, ebp
xor edi, edi
mov dword [esp + 0x424], ebp
mov dword [esp + 0x428], ebp
xor esi, esi
mov dword [esp + 0x414], ebp

loc_00421fc7:
cmp ebp, dword [esp + 0x404]
jge near loc_00422091  ; jge 0x422091
mov bx, word [ebp*2 + ref_0048b8c4]  ; mov bx, word [ebp*2 + 0x48b8c4]
and ebx, 0xffff
test bh, 0x80
je short loc_00421ff7  ; je 0x421ff7
mov dword [esp + 0x414], 1
jmp near loc_00422091  ; jmp 0x422091

loc_00421ff7:
push ebx
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
push eax
call fcn_004216ab  ; call 0x4216ab
mov dword [esp + 0x434], eax
add esp, 8
lea ecx, [ebx - 0x7d0]
lea eax, [ebx - 0xfa0]
imul ecx, ecx, 0x34
shl eax, 3
mov edx, eax
shl eax, 3
sub eax, edx
cmp dword [esp + 0x42c], 1
jne short loc_0042205d  ; jne 0x42205d
cmp ebx, 0xfa0
jge short loc_00422043  ; jge 0x422043
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
mov al, byte [ecx + eax + 0x1a]
jmp short loc_0042204d  ; jmp 0x42204d

loc_00422043:
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
mov al, byte [edx + eax + 0x1a]

loc_0042204d:
and eax, 0xff
add edi, eax
inc dword [esp + 0x424]
jmp short loc_0042208b  ; jmp 0x42208b

loc_0042205d:
cmp ebx, 0xfa0
jge short loc_00422073  ; jge 0x422073
mov eax, dword [_rich4_land_info_ptr]  ; mov eax, dword [0x498e84]
add ecx, eax
xor eax, eax
mov al, byte [ecx + 0x1a]
jmp short loc_00422082  ; jmp 0x422082

loc_00422073:
mov edx, dword [_rich4_facility_info_ptr]  ; mov edx, dword [0x498e88]
mov al, byte [edx + eax + 0x1a]
and eax, 0xff

loc_00422082:
add esi, eax
inc dword [esp + 0x428]

loc_0042208b:
inc ebp
jmp near loc_00421fc7  ; jmp 0x421fc7

loc_00422091:
mov eax, dword [esp + 0x424]
mov dword [esp + 0x42c], eax
fild dword [esp + 0x42c]
mov eax, dword [esp + 0x428]
mov dword [esp + 0x42c], eax
fild dword [esp + 0x42c]
fdivp st1  ; fdivp st(1)
fstp dword [esp + 0x408]
mov dword [esp + 0x42c], edi
fild dword [esp + 0x42c]
mov dword [esp + 0x42c], esi
fild dword [esp + 0x42c]
fdivp st1  ; fdivp st(1)
fstp dword [esp + 0x40c]
call _rich4_num_alive_players  ; call 0x40d2b4
add eax, 2
mov dword [esp + 0x42c], eax
fild dword [esp + 0x42c]
fld1
fdivrp st1  ; fdivrp st(1)
fstp dword [esp + 0x400]
cmp dword [esp + 0x414], 0
jne short loc_00422151  ; jne 0x422151
fld dword [esp + 0x408]
fcomp dword [esp + 0x400]
fnstsw ax
sahf
jae short loc_00422151  ; jae 0x422151
fld dword [esp + 0x40c]
fcomp dword [esp + 0x400]
fnstsw ax
sahf
jae short loc_00422151  ; jae 0x422151
mov eax, dword [esp + 0x418]
mov dword [ref_0048be64], eax  ; mov dword [0x48be64], eax
mov dword [esp + 0x410], 1

loc_00422151:
mov ecx, dword [esp + 0x420]
inc ecx
mov dword [esp + 0x420], ecx
cmp ecx, 0xa
jge short loc_004221ae  ; jge 0x4221ae

loc_00422165:
cmp dword [esp + 0x410], 0
jne short loc_004221ae  ; jne 0x4221ae
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv dword [esp + 0x41c]
mov ax, word [esp + edx*2]
and eax, 0xffff
mov dword [esp + 0x418], eax
cmp eax, 0xfa0
jge near loc_00421f6d  ; jge 0x421f6d
sub eax, 0x7d0
imul eax, eax, 0x34
mov edx, dword [_rich4_land_info_ptr]  ; mov edx, dword [0x498e84]
jmp near loc_00421f82  ; jmp 0x421f82

loc_004221ae:
mov eax, dword [esp + 0x410]
add esp, 0x430
pop ebp
pop edi
pop esi
pop ebx
ret

section .data

ref_00463d48:
dd 0x00000000
dd 0x40040000

ref_004753a0:
dd fcn_00420efa
dd fcn_0042107f
dd fcn_004213c5
dd fcn_00421574
dd fcn_00421644
dd fcn_00421675
dd fcn_00421717
dd fcn_00421827
dd fcn_00421ba6
dd fcn_00420edf
dd fcn_00421cb6
dd fcn_00421e20
dd fcn_00421e62
