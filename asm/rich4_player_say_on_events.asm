extern _rich4_all_players_state
extern _rich4_current_player
extern _libc_rand
extern _rich4_event_strings
extern _rich4_land_info_ptr
extern _rich4_num_lands
extern _rich4_player_say
extern _rich4_price_index
extern _strcmp
extern fcn_0040d2d3

global fcn_0044f230
global fcn_0044f2c2
global fcn_0044f354
global fcn_0044f42d
global fcn_0044f4ed
global fcn_0044f567
global fcn_0044f627

section .text

fcn_0044f230:
push ebx
push esi
push edi
push ebp
mov esi, dword [esp + 0x14]
mov edx, dword [esp + 0x18]
imul eax, esi, 0x68
cmp edx, 0x64
jle short loc_0044f262  ; jle 0x44f262
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ebp, dword [edx + eax*8 + _rich4_event_strings]  ; mov ebp, dword [edx + eax*8 + 0x48084a]
push ebp
jmp short loc_0044f2b2  ; jmp 0x44f2b2

loc_0044f262:
cmp edx, 0x32
jle short loc_0044f292  ; jle 0x44f292
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov ebx, eax
shl ebx, 3
add ebx, eax
call _libc_rand  ; call 0x456f2d
and eax, 1
mov edi, dword [ebx + eax*4 + _rich4_event_strings]  ; mov edi, dword [ebx + eax*4 + 0x48084a]
push edi
jmp short loc_0044f2b2  ; jmp 0x44f2b2

loc_0044f292:
test edx, edx
je short loc_0044f2bd  ; je 0x44f2bd
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 8)]  ; mov ecx, dword [edx + eax*8 + 0x480852]
push ecx

loc_0044f2b2:
push 0
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0044f2bd:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0044f2c2:
push ebx
push esi
push edi
push ebp
mov esi, dword [esp + 0x14]
mov edx, dword [esp + 0x18]
imul eax, esi, 0x68
cmp edx, 6
jle short loc_0044f2f4  ; jle 0x44f2f4
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ebp, dword [edx + eax*8 + (_rich4_event_strings + 12)]  ; mov ebp, dword [edx + eax*8 + 0x480856]
push ebp
jmp short loc_0044f344  ; jmp 0x44f344

loc_0044f2f4:
cmp edx, 3
jle short loc_0044f324  ; jle 0x44f324
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov ebx, eax
shl ebx, 3
add ebx, eax
call _libc_rand  ; call 0x456f2d
and eax, 1
mov edi, dword [ebx + eax*4 + (_rich4_event_strings + 12)]  ; mov edi, dword [ebx + eax*4 + 0x480856]
push edi
jmp short loc_0044f344  ; jmp 0x44f344

loc_0044f324:
test edx, edx
je short loc_0044f34f  ; je 0x44f34f
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 20)]  ; mov ecx, dword [edx + eax*8 + 0x48085e]
push ecx

loc_0044f344:
push 2
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0044f34f:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0044f354:
push ebx
push esi
push edi
push ebp
mov esi, dword [esp + 0x14]
mov ebx, dword [esp + 0x18]
imul eax, dword [_rich4_price_index], 0x2328  ; imul eax, dword [0x4990e8], 0x2328
imul edx, esi, 0x68
cmp ebx, eax
jl short loc_0044f396  ; jl 0x44f396
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ebp, dword [edx + eax*8 + (_rich4_event_strings + 24)]  ; mov ebp, dword [edx + eax*8 + 0x480862]
push ebp
jmp near loc_0044f41d  ; jmp 0x44f41d

loc_0044f396:
mov ecx, dword [_rich4_price_index]  ; mov ecx, dword [0x4990e8]
mov eax, ecx
shl eax, 2
add eax, ecx
shl eax, 3
sub eax, ecx
shl eax, 4
add eax, ecx
shl eax, 3
cmp ebx, eax
jl short loc_0044f3e3  ; jl 0x44f3e3
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov ebx, eax
shl ebx, 3
add ebx, eax
call _libc_rand  ; call 0x456f2d
and eax, 1
mov edi, dword [ebx + eax*4 + (_rich4_event_strings + 24)]  ; mov edi, dword [ebx + eax*4 + 0x480862]
push edi
jmp short loc_0044f41d  ; jmp 0x44f41d

loc_0044f3e3:
mov eax, ecx
shl eax, 2
sub eax, ecx
shl eax, 3
add eax, ecx
shl eax, 4
mov ecx, eax
shl eax, 2
add eax, ecx
cmp ebx, eax
jl short loc_0044f428  ; jl 0x44f428
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 32)]  ; mov ecx, dword [edx + eax*8 + 0x48086a]
push ecx

loc_0044f41d:
push 3
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0044f428:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0044f42d:
push ebx
push esi
push edi
push ebp
mov esi, dword [esp + 0x14]
mov ebx, dword [esp + 0x18]
imul eax, dword [_rich4_price_index], 0x2328  ; imul eax, dword [0x4990e8], 0x2328
imul edx, esi, 0x68
cmp ebx, eax
jl short loc_0044f46c  ; jl 0x44f46c
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ebp, dword [edx + eax*8 + (_rich4_event_strings + 36)]  ; mov ebp, dword [edx + eax*8 + 0x48086e]
push ebp
jmp short loc_0044f4dd  ; jmp 0x44f4dd

loc_0044f46c:
mov ecx, dword [_rich4_price_index]  ; mov ecx, dword [0x4990e8]
mov eax, ecx
shl eax, 2
add eax, ecx
shl eax, 3
sub eax, ecx
shl eax, 4
add eax, ecx
shl eax, 3
cmp ebx, eax
jl short loc_0044f4b9  ; jl 0x44f4b9
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov ebx, eax
shl ebx, 3
add ebx, eax
call _libc_rand  ; call 0x456f2d
and eax, 1
mov edi, dword [ebx + eax*4 + (_rich4_event_strings + 36)]  ; mov edi, dword [ebx + eax*4 + 0x48086e]
push edi
jmp short loc_0044f4dd  ; jmp 0x44f4dd

loc_0044f4b9:
test ebx, ebx
jle short loc_0044f4e8  ; jle 0x44f4e8
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 44)]  ; mov ecx, dword [edx + eax*8 + 0x480876]
push ecx

loc_0044f4dd:
push 2
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0044f4e8:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0044f4ed:
push ebx
push edi
push ebp
xor ebx, ebx
mov edx, dword [esp + 0x10]
push edx
call fcn_0040d2d3  ; call 0x40d2d3
add esp, 4
cmp eax, dword [esp + 0x14]
jne short loc_0044f561  ; jne 0x44f561
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
add eax, edx
shl eax, 3
sub eax, edx
shl eax, 4
add eax, edx
shl eax, 3
cmp eax, dword [esp + 0x18]
jg short loc_0044f561  ; jg 0x44f561
call _libc_rand  ; call 0x456f2d
test al, 1
je short loc_0044f561  ; je 0x44f561
mov edi, dword [esp + 0x10]
imul eax, edi, 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ebp, dword [edx + eax*8 + (_rich4_event_strings + 72)]  ; mov ebp, dword [edx + eax*8 + 0x480892]
push ebp
push 1
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
mov ebx, 1

loc_0044f561:
mov eax, ebx
pop ebp
pop edi
pop ebx
ret

fcn_0044f567:
push ebx
push esi
push edi
push ebp
mov esi, dword [esp + 0x14]
mov ebx, dword [esp + 0x18]
imul eax, dword [_rich4_price_index], 0x2328  ; imul eax, dword [0x4990e8], 0x2328
imul edx, esi, 0x68
cmp ebx, eax
jl short loc_0044f5a6  ; jl 0x44f5a6
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ebp, dword [edx + eax*8 + (_rich4_event_strings + 48)]  ; mov ebp, dword [edx + eax*8 + 0x48087a]
push ebp
jmp short loc_0044f617  ; jmp 0x44f617

loc_0044f5a6:
mov ecx, dword [_rich4_price_index]  ; mov ecx, dword [0x4990e8]
mov eax, ecx
shl eax, 2
add eax, ecx
shl eax, 3
sub eax, ecx
shl eax, 4
add eax, ecx
shl eax, 3
cmp ebx, eax
jl short loc_0044f5f3  ; jl 0x44f5f3
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov ebx, eax
shl ebx, 3
add ebx, eax
call _libc_rand  ; call 0x456f2d
and eax, 1
mov edi, dword [ebx + eax*4 + (_rich4_event_strings + 48)]  ; mov edi, dword [ebx + eax*4 + 0x48087a]
push edi
jmp short loc_0044f617  ; jmp 0x44f617

loc_0044f5f3:
test ebx, ebx
jle short loc_0044f622  ; jle 0x44f622
mov dl, byte [edx + (_rich4_all_players_state + 19)]  ; mov dl, byte [edx + 0x496b7b]
and edx, 0xff
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 56)]  ; mov ecx, dword [edx + eax*8 + 0x480882]
push ecx

loc_0044f617:
push 3
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0044f622:
pop ebp
pop edi
pop esi
pop ebx
ret

fcn_0044f627:
push ebx
push esi
push edi
push ebp
mov ebp, dword [esp + 0x14]
mov esi, 1
xor edi, edi
mov ebx, dword [_rich4_land_info_ptr]  ; mov ebx, dword [0x498e84]

loc_0044f63c:
add ebx, 0x34
cmp esi, dword [_rich4_num_lands]  ; cmp esi, dword [0x498e98]
jg short loc_0044f66a  ; jg 0x44f66a
lea eax, [ebx + 4]
push eax
push ebp
call _strcmp  ; call 0x458370
add esp, 8
test eax, eax
jne short loc_0044f667  ; jne 0x44f667
mov al, byte [ebx + 0x19]
mov edx, dword [_rich4_current_player]  ; mov edx, dword [0x49910c]
inc edx
cmp eax, edx
jne short loc_0044f667  ; jne 0x44f667
inc edi

loc_0044f667:
inc esi
jmp short loc_0044f63c  ; jmp 0x44f63c

loc_0044f66a:
cmp edi, 3
jl near loc_0044f6e7  ; jl 0x44f6e7
mov ecx, dword [esp + 0x18]
test ecx, ecx
je short loc_0044f6b8  ; je 0x44f6b8
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ebx, 3
sar edx, 0x1f
idiv ebx
test edx, edx
jne short loc_0044f6e7  ; jne 0x44f6e7
mov ebp, dword [_rich4_current_player]  ; mov ebp, dword [0x49910c]
imul eax, ebp, 0x68
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov ecx, dword [edx + eax*8 + (_rich4_event_strings + 68)]  ; mov ecx, dword [edx + eax*8 + 0x48088e]
push ecx
push 0
push ebp
jmp short loc_0044f6df  ; jmp 0x44f6df

loc_0044f6b8:
mov ebx, dword [_rich4_current_player]  ; mov ebx, dword [0x49910c]
imul eax, ebx, 0x68
xor edx, edx
mov dl, byte [eax + (_rich4_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 2
mov edx, eax
mov esi, dword [edx + eax*8 + (_rich4_event_strings + 64)]  ; mov esi, dword [edx + eax*8 + 0x48088a]
push esi
push ecx
push ebx

loc_0044f6df:
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_0044f6e7:
pop ebp
pop edi
pop esi
pop ebx
ret

