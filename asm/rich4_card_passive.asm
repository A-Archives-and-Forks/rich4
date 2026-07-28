;; rich4_card_passive: 大富翁4被动使用的卡片

extern _all_players_state
extern _card_strings
extern _card_table
extern _current_player
extern _libc_rand
extern _libc_sprintf
extern _num_players
extern _rich4_consume_card
extern _rich4_player_say
extern _rich4_price_index
extern fcn_0040d2d3
extern fcn_0040d31c
extern fcn_0041d476
extern fcn_0041d546
extern fcn_00440ba8
extern fcn_00440cac
extern fcn_00440e1a
extern fcn_00441f73
extern fcn_00452946
extern ref_00465305

global _rich4_use_card_fuchouka
global _rich4_try_use_card_jiahuoka
global _rich4_try_use_card_mianfeika
global _rich4_use_card_mianzuika

section .text

_rich4_use_card_fuchouka:
push ebx
push esi
push edi
sub esp, 0x80
push 0
imul ebx, dword [esp + 0x94], 0x68
xor eax, eax
mov ax, word [ebx + (_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
push eax
xor eax, eax
mov ax, word [ebx + (_all_players_state + 8)]  ; mov ax, word [ebx + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov ecx, dword [ebx + _all_players_state]  ; mov ecx, dword [ebx + 0x496b68]
push ecx
push ref_0046532c  ; push 0x46532c
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
push 0x12
call fcn_00441f73  ; call 0x441f73
add esp, 8
push 0x12
mov esi, dword [esp + 0x94]
push esi
call _rich4_consume_card  ; call 0x441343
add esp, 8
mov bl, byte [ebx + (_all_players_state + 19)]  ; mov bl, byte [ebx + 0x496b7b]
and ebx, 0xff
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 3
mov ebx, eax
shl eax, 4
sub eax, ebx
mov edi, dword [eax + (_card_strings + 68)]  ; mov edi, dword [eax + 0x48127e]
push edi
push 0
push esi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
mov edx, dword [_current_player]  ; mov edx, dword [0x49910c]
imul eax, edx, 0x68
xor ebx, ebx
mov bl, byte [eax + (_all_players_state + 19)]  ; mov bl, byte [eax + 0x496b7b]
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 3
mov ebx, eax
shl eax, 4
sub eax, ebx
mov ecx, dword [eax + (_card_strings + 308)]  ; mov ecx, dword [eax + 0x48136e]
push ecx
push 2
push edx

loc_00444753:
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
mov eax, 1
add esp, 0x80
pop edi
pop esi
pop ebx
ret

_rich4_try_use_card_jiahuoka:
push ebx
push esi
push edi
push ebp
sub esp, 0xa0
mov edi, dword [esp + 0xb4]
mov ebx, 0xffffffff
push 0
imul esi, edi, 0x68
xor eax, eax
mov ax, word [esi + (_all_players_state + 10)]  ; mov ax, word [esi + 0x496b72]
push eax
xor eax, eax
mov ax, word [esi + (_all_players_state + 8)]  ; mov ax, word [esi + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
cmp byte [esi + (_all_players_state + 21)], 1  ; cmp byte [esi + 0x496b7d], 1
jne near loc_004448b0  ; jne 0x4448b0
xor ebx, ebx
xor esi, esi
mov ebp, dword [_num_players]  ; mov ebp, dword [0x499114]

loc_004447b8:
cmp ebx, ebp
jge short loc_004447d7  ; jge 0x4447d7
imul eax, ebx, 0x68
cmp byte [eax + (_all_players_state + 21)], 0  ; cmp byte [eax + 0x496b7d], 0
je short loc_004447d4  ; je 0x4447d4
cmp ebx, edi
je short loc_004447d4  ; je 0x4447d4
mov byte [esp + esi + 0x9c], bl
inc esi

loc_004447d4:
inc ebx
jmp short loc_004447b8  ; jmp 0x4447b8

loc_004447d7:
imul eax, edi, 0x68
cmp esi, 1
jne near loc_0044486d  ; jne 0x44486d
mov ecx, dword [eax + _all_players_state]  ; mov ecx, dword [eax + 0x496b68]
push ecx
push ref_0046533d  ; push 0x46533d
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
push 0x13
call fcn_00441f73  ; call 0x441f73
add esp, 8
xor eax, eax
mov al, byte [esp + 0x9c]
imul eax, eax, 0x68
mov ebx, dword [eax + _all_players_state]  ; mov ebx, dword [eax + 0x496b68]
push ebx
lea eax, [esp + 0x84]
push eax
call fcn_00452946  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
push ref_0046534e  ; push 0x46534e
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
call fcn_00440ba8  ; call 0x440ba8
add esp, 4
cmp eax, esi
jne short loc_00444863  ; jne 0x444863
xor ebx, ebx
mov bl, byte [esp + 0x9c]
jmp near loc_004449e7  ; jmp 0x4449e7

loc_00444863:
mov ebx, 0xffffffff
jmp near loc_00444a53  ; jmp 0x444a53

loc_0044486d:
mov edx, dword [eax + _all_players_state]  ; mov edx, dword [eax + 0x496b68]
push edx
push ref_0046533d  ; push 0x46533d
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
push 0x13
call fcn_00441f73  ; call 0x441f73
add esp, 8
push ref_0046535d  ; push 0x46535d
lea eax, [esp + 0xa0]
push eax
push esi
call fcn_00440e1a  ; call 0x440e1a
add esp, 0xc
mov ebx, eax
jmp near loc_004449e7  ; jmp 0x4449e7

loc_004448b0:
push edi
call fcn_0040d2d3  ; call 0x40d2d3
add esp, 4
mov ebp, eax
cmp eax, ebx
jne short loc_004448ca  ; jne 0x4448ca
push edi
call fcn_0040d31c  ; call 0x40d31c
add esp, 4
mov ebp, eax

loc_004448ca:
mov edx, dword [esp + 0xb8]
cmp edx, 1
jb short loc_004448ef  ; jb 0x4448ef
imul eax, edi, 0x68
mov dword [esp + 0x94], eax
cmp edx, 1
jbe short loc_004448fc  ; jbe 0x4448fc
cmp edx, 2
je short loc_00444934  ; je 0x444934
jmp near loc_00444973  ; jmp 0x444973

loc_004448ef:
test edx, edx
jne near loc_00444973  ; jne 0x444973
jmp near loc_00444971  ; jmp 0x444971

loc_004448fc:
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov esi, 0xfa0
sar edx, 0x1f
idiv esi
add edx, esi
mov esi, dword [_rich4_price_index]  ; mov esi, dword [0x4990e8]
imul esi, edx
mov eax, dword [esp + 0xbc]
mov edx, dword [esp + 0x94]
cmp eax, dword [edx + (_all_players_state + 28)]  ; cmp eax, dword [edx + 0x496b84]
jg short loc_00444971  ; jg 0x444971
cmp esi, eax
jge short loc_00444973  ; jge 0x444973
jmp short loc_00444971  ; jmp 0x444971

loc_00444934:
fild dword [eax + (_all_players_state + 28)]  ; fild dword [eax + 0x496b84]
fmul qword [ref_00465380]  ; fmul qword [0x465380]
mov edx, dword [_rich4_price_index]  ; mov edx, dword [0x4990e8]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
add eax, edx
shl eax, 5
mov edx, eax
shl eax, 2
add eax, edx
mov dword [esp + 0x98], eax
fild dword [esp + 0x98]
fcompp
fnstsw ax
sahf
jae short loc_00444973  ; jae 0x444973

loc_00444971:
mov ebx, ebp

loc_00444973:
cmp ebx, 0xffffffff
je short loc_004449e7  ; je 0x4449e7
imul eax, edi, 0x68
mov ecx, dword [eax + _all_players_state]  ; mov ecx, dword [eax + 0x496b68]
push ecx
push ref_0046533d  ; push 0x46533d
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
push 0x13
call fcn_00441f73  ; call 0x441f73
add esp, 8
imul ebp, ebp, 0x68
mov esi, dword [ebp + _all_players_state]  ; mov esi, dword [ebp + 0x496b68]
push esi
lea eax, [esp + 0x84]
push eax
call fcn_00452946  ; call 0x452946
add esp, 8
lea eax, [esp + 0x80]
push eax
push ref_0046536f  ; push 0x46536f
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0x5dc
lea eax, [esp + 4]
push eax
call fcn_00440cac  ; call 0x440cac
add esp, 8

loc_004449e7:
cmp ebx, 0xffffffff
je short loc_00444a53  ; je 0x444a53
push 0x13
push edi
call _rich4_consume_card  ; call 0x441343
add esp, 8
imul eax, edi, 0x68
xor edx, edx
mov dl, byte [eax + (_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 4
sub eax, edx
mov esi, dword [eax + (_card_strings + 72)]  ; mov esi, dword [eax + 0x481282]
push esi
push 0
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
imul eax, ebx, 0x68
xor edx, edx
mov dl, byte [eax + (_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 4
sub eax, edx
mov edi, dword [eax + (_card_strings + 312)]  ; mov edi, dword [eax + 0x481372]
push edi
push 2
push ebx
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_00444a53:
mov eax, ebx
add esp, 0xa0
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_try_use_card_mianfeika:
push ebx
push esi
push edi
push ebp
sub esp, 0x80
mov edi, dword [esp + 0x94]
push 0
imul ebx, edi, 0x68
xor eax, eax
mov ax, word [ebx + (_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
push eax
xor eax, eax
mov ax, word [ebx + (_all_players_state + 8)]  ; mov ax, word [ebx + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
cmp byte [ebx + (_all_players_state + 21)], 1  ; cmp byte [ebx + 0x496b7d], 1
je short loc_00444ad8  ; je 0x444ad8
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov esi, 0xbb8
sar edx, 0x1f
idiv esi
add edx, esi
mov esi, dword [_rich4_price_index]  ; mov esi, dword [0x4990e8]
imul esi, edx
mov eax, dword [esp + 0x9c]
cmp eax, dword [ebx + (_all_players_state + 28)]  ; cmp eax, dword [ebx + 0x496b84]
jg short loc_00444aca  ; jg 0x444aca
cmp esi, eax
jge short loc_00444ad1  ; jge 0x444ad1

loc_00444aca:
mov esi, 1
jmp short loc_00444b07  ; jmp 0x444b07

loc_00444ad1:
xor esi, esi
jmp near loc_00444ba0  ; jmp 0x444ba0

loc_00444ad8:
mov esi, dword [ebx + _all_players_state]  ; mov esi, dword [ebx + 0x496b68]
push esi
push ref_00465388  ; push 0x465388
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
call fcn_00440ba8  ; call 0x440ba8
add esp, 4
mov esi, eax
cmp eax, 1
jne near loc_00444ba0  ; jne 0x444ba0

loc_00444b07:
mov ebp, dword [(_card_table + 152)]  ; mov ebp, dword [0x47fe8a]
push ebp
push ref_00465305  ; push 0x465305
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
push 0x14
call fcn_00441f73  ; call 0x441f73
add esp, 8
push 0x14
push edi
call _rich4_consume_card  ; call 0x441343
add esp, 8
imul eax, edi, 0x68
xor edx, edx
mov dl, byte [eax + (_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 4
sub eax, edx
mov edx, dword [eax + (_card_strings + 76)]  ; mov edx, dword [eax + 0x481286]
push edx
push 0
push edi
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
mov ecx, dword [esp + 0x98]
cmp ecx, 0xffffffff
je short loc_00444ba0  ; je 0x444ba0
imul eax, ecx, 0x68
xor edx, edx
mov dl, byte [eax + (_all_players_state + 19)]  ; mov dl, byte [eax + 0x496b7b]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 3
mov edx, eax
shl eax, 4
sub eax, edx
mov edi, dword [eax + (_card_strings + 316)]  ; mov edi, dword [eax + 0x481376]
push edi
push 1
push ecx
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc

loc_00444ba0:
call fcn_0041d546  ; call 0x41d546
mov eax, esi
add esp, 0x80
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_use_card_mianzuika:
push ebx
push esi
push edi
sub esp, 0x80
push 0
imul ebx, dword [esp + 0x94], 0x68
xor eax, eax
mov ax, word [ebx + (_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
push eax
xor eax, eax
mov ax, word [ebx + (_all_players_state + 8)]  ; mov ax, word [ebx + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov ecx, dword [ebx + _all_players_state]  ; mov ecx, dword [ebx + 0x496b68]
push ecx
push ref_0046539d  ; push 0x46539d
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
mov eax, esp
push eax
push 0x15
call fcn_00441f73  ; call 0x441f73
add esp, 8
push 0x15
mov esi, dword [esp + 0x94]
push esi
call _rich4_consume_card  ; call 0x441343
add esp, 8
mov bl, byte [ebx + (_all_players_state + 19)]  ; mov bl, byte [ebx + 0x496b7b]
and ebx, 0xff
mov eax, ebx
shl eax, 2
sub eax, ebx
shl eax, 3
mov ebx, eax
shl eax, 4
sub eax, ebx
mov edi, dword [eax + (_card_strings + 80)]  ; mov edi, dword [eax + 0x48128a]
push edi
push 0
push esi
jmp near loc_00444753  ; jmp 0x444753

section .data

ref_0046532c:
dd 0x0a0a7325
dd 0xb3a45fb4
dd 0xcda564a5
dd 0x49a1c4ae
db 0x00

ref_0046533d:
db 0x25
db 0x73
db 0x0a
dd 0xbaf9b60a
dd 0xa564a5d7
dd 0xa1c4aecd
db 0x49
db 0x00

ref_0046534e:
db 0xac
db 0x4f
dd 0xf9b65fa7
dd 0xb9b5d7ba
dd 0x48a17325
db 0x00

ref_0046535d:
db 0xbd
db 0xd0
db 0xbf
dd 0xb6dcbeef
dd 0xb9d7baf9
dd 0x2e48b6ef
db 0x2e
db 0x2e
db 0x00

ref_0046536f:
db 0xb6
dd 0xb5d7baf9
dd 0xa17325b9
dd 0x00000049
dd 0x00000000

ref_00465380:
dd 0x9999999a
dd 0x3fc99999

ref_00465388:
dd 0x0a0a7325
dd 0x5fa74fac
dd 0xcea5cfa8
dd 0x4fb64ba7
dd 0x48a164a5
db 0x00

ref_0046539d:
db 0x25
db 0x73
db 0x0a
dd 0xb84ba70a
dd 0xa564a56f
dd 0xa1c4aecd
db 0x49
db 0x00
