extern _card_table
extern _memcpy
extern _rich4_player_cards
extern _rich4_remain_card_amount
extern _rich4_use_card_mianzuika
extern _rich4_try_use_card_jiahuoka

global _rich4_try_mianzui_jiahuo_card
global _rich4_player_card_num
global _rich4_find_player_cheapest_card
global _rich4_receive_card
global _rich4_consume_card
global _rich4_player_has_card

section .text

_rich4_try_mianzui_jiahuo_card:
push ebx
push esi
mov esi, dword [esp + 0xc]
push 0x15
push esi
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_00441237  ; jne 0x441237
push esi
call _rich4_use_card_mianzuika  ; call 0x444bb2
add esp, 4
mov eax, 0xffffffff
pop esi
pop ebx
ret

loc_00441237:
mov ebx, esi
push 0x13
push esi
call _rich4_player_has_card  ; call 0x4413ad
add esp, 8
cmp eax, 1
jne short loc_0044125d  ; jne 0x44125d
push 0
push 0
push esi
call _rich4_try_use_card_jiahuoka  ; call 0x44476a
add esp, 0xc
cmp eax, 0xffffffff
je short loc_0044125d  ; je 0x44125d
mov ebx, eax

loc_0044125d:
mov eax, ebx
pop esi
pop ebx
ret

_rich4_player_card_num:
push ebx
push esi
mov esi, dword [esp + 0xc]
xor ecx, ecx
xor ebx, ebx
jmp short loc_00441274  ; jmp 0x441274

loc_0044126e:
inc ecx
cmp ecx, 0xf
jge short loc_0044125d  ; jge 0x44125d

loc_00441274:
mov eax, esi
shl eax, 2
add eax, esi
mov edx, eax
shl eax, 2
sub eax, edx
cmp byte [ecx + eax + _rich4_player_cards], 0  ; cmp byte [ecx + eax + 0x499120], 0
je short loc_0044126e  ; je 0x44126e
inc ebx
jmp short loc_0044126e  ; jmp 0x44126e

_rich4_find_player_cheapest_card:
push ebx
push esi
push edi
mov edi, dword [esp + 0x10]
xor ecx, ecx
mov ebx, 0x2710
xor esi, esi
jmp short loc_004412a7  ; jmp 0x4412a7

loc_004412a1:
inc ecx
cmp ecx, 0xf
jge short loc_004412de  ; jge 0x4412de

loc_004412a7:
mov eax, edi
shl eax, 2
add eax, edi
mov edx, eax
shl eax, 2
sub eax, edx
add eax, ecx
cmp byte [eax + _rich4_player_cards], 0  ; cmp byte [eax + 0x499120], 0
je short loc_004412a1  ; je 0x4412a1
xor edx, edx
mov dl, byte [eax + _rich4_player_cards]  ; mov dl, byte [eax + 0x499120]
mov al, byte [edx*8 + (_card_table - 3)]  ; mov al, byte [edx*8 + 0x47fdef]
and eax, 0xff
cmp ebx, eax
jle short loc_004412a1  ; jle 0x4412a1
mov ebx, eax
mov esi, edx
jmp short loc_004412a1  ; jmp 0x4412a1

loc_004412de:
mov eax, esi
pop edi
pop esi
pop ebx
ret

_rich4_receive_card:
push ebx
mov ebx, dword [esp + 8]
push ebx
call _rich4_player_card_num  ; call 0x441262
add esp, 4
cmp eax, 0xf
jne short loc_0044130a  ; jne 0x44130a
push ebx
call _rich4_find_player_cheapest_card  ; call 0x44128f
add esp, 4
push eax
push ebx
call _rich4_consume_card  ; call 0x441343
add esp, 8

loc_0044130a:
xor ecx, ecx
jmp short loc_00441314  ; jmp 0x441314

loc_0044130e:
inc ecx
cmp ecx, 0xf
jge short loc_00441341  ; jge 0x441341

loc_00441314:
mov eax, ebx
shl eax, 2
add eax, ebx
mov edx, eax
shl eax, 2
sub eax, edx
add eax, ecx
cmp byte [eax + _rich4_player_cards], 0  ; cmp byte [eax + 0x499120], 0
jne short loc_0044130e  ; jne 0x44130e
mov dl, byte [esp + 0xc]
mov byte [eax + _rich4_player_cards], dl  ; mov byte [eax + 0x499120], dl
mov eax, dword [esp + 0xc]
dec byte [eax + (_rich4_remain_card_amount - 1)]  ; dec byte [eax + 0x499197]

loc_00441341:
pop ebx
ret

_rich4_consume_card:
push ebx
push esi
push edi
push ebp
mov ecx, dword [esp + 0x14]
mov edi, dword [esp + 0x18]
xor ebx, ebx
jmp short loc_0044135a  ; jmp 0x44135a

loc_00441353:
mov ebx, eax
cmp eax, 0xf
jge short loc_004413a8  ; jge 0x4413a8

loc_0044135a:
mov eax, ecx
shl eax, 2
add eax, ecx
mov esi, eax
shl esi, 2
sub esi, eax
lea eax, [esi + ebx]
xor edx, edx
mov dl, byte [eax + _rich4_player_cards]  ; mov dl, byte [eax + 0x499120]
lea eax, [ebx + 1]
cmp edx, edi
jne short loc_00441353  ; jne 0x441353
mov ebp, 0xe
sub ebp, ebx
push ebp
mov edx, _rich4_player_cards  ; mov edx, 0x499120
add edx, esi
add eax, edx
push eax
add edx, ebx
push edx
call _memcpy  ; call 0x456de8
add esp, 0xc
add ebx, ebp
xor ah, ah
mov byte [esi + ebx + _rich4_player_cards], ah  ; mov byte [esi + ebx + 0x499120], ah
inc byte [edi + (_rich4_remain_card_amount - 1)]  ; inc byte [edi + 0x499197]

loc_004413a8:
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_player_has_card:
push ebx
push esi
mov esi, dword [esp + 0xc]
mov ebx, dword [esp + 0x10]
xor ecx, ecx
jmp short loc_004413c1  ; jmp 0x4413c1

loc_004413bb:
inc ecx
cmp ecx, 0xf
jge short loc_004413e7  ; jge 0x4413e7

loc_004413c1:
mov eax, esi
shl eax, 2
add eax, esi
mov edx, eax
shl eax, 2
sub eax, edx
mov al, byte [ecx + eax + _rich4_player_cards]  ; mov al, byte [ecx + eax + 0x499120]
and eax, 0xff
cmp eax, ebx
jne short loc_004413bb  ; jne 0x4413bb
mov eax, 1
pop esi
pop ebx
ret

loc_004413e7:
xor eax, eax
pop esi
pop ebx
ret

