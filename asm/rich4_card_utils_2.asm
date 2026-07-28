extern _card_table
extern _libc_rand
extern _player_cards
extern _rich4_consume_card
extern _rich4_player_card_num
extern _rich4_receive_card
extern _rich4_remain_card_amount

global _rich4_player_receive_random_card
global _rich4_player_drop_random_card
global _rich4_player_drop_half_the_card
global _rich4_player_sell_all_the_card

section .text

_rich4_player_receive_random_card:
push ebx
push esi
sub esp, 0x80
xor esi, esi
xor eax, eax
xor ebx, ebx
jmp short loc_00441e28  ; jmp 0x441e28

loc_00441e22:
inc eax
cmp eax, 0x1e
jge short loc_00441e46  ; jge 0x441e46

loc_00441e28:
cmp byte [eax + _rich4_remain_card_amount], 0  ; cmp byte [eax + 0x499198], 0
je short loc_00441e22  ; je 0x441e22
xor edx, edx

loc_00441e33:
xor ecx, ecx
mov cl, byte [eax + _rich4_remain_card_amount]  ; mov cl, byte [eax + 0x499198]
cmp edx, ecx
jge short loc_00441e22  ; jge 0x441e22
mov byte [esp + ebx], al
inc ebx
inc edx
jmp short loc_00441e33  ; jmp 0x441e33

loc_00441e46:
test ebx, ebx
je short loc_00441e6c  ; je 0x441e6c
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv ebx
movzx esi, byte [esp + edx]
inc esi
push esi
mov edx, dword [esp + 0x90]
push edx
call _rich4_receive_card  ; call 0x4412e4
add esp, 8

loc_00441e6c:
mov eax, esi
add esp, 0x80
pop esi
pop ebx
ret

_rich4_player_drop_random_card:
push ebx
push esi
xor ebx, ebx
mov edx, dword [esp + 0xc]
push edx
call _rich4_player_card_num  ; call 0x441262
mov esi, eax
add esp, 4
test eax, eax
je short loc_00441ec9  ; je 0x441ec9
call _libc_rand  ; call 0x456f2d
mov edx, eax
sar edx, 0x1f
idiv esi
mov ebx, edx
mov edx, dword [esp + 0xc]
mov eax, edx
shl eax, 2
add eax, edx
mov edx, eax
shl eax, 2
sub eax, edx
mov bl, byte [ebx + eax + _player_cards]  ; mov bl, byte [ebx + eax + 0x499120]
and ebx, 0xff
push ebx
mov ecx, dword [esp + 0x10]
push ecx
call _rich4_consume_card  ; call 0x441343
add esp, 8

loc_00441ec9:
mov eax, ebx
pop esi
pop ebx
ret

_rich4_player_drop_half_the_card:
push ebx
push esi
push edi
mov esi, dword [esp + 0x10]
xor ebx, ebx
push esi
call _rich4_player_card_num  ; call 0x441262
add esp, 4
mov edi, eax
cmp eax, 1
jle short loc_00441f1b  ; jle 0x441f1b

loc_00441ee7:
mov eax, edi
sar eax, 1
cmp ebx, eax
jge short loc_00441f16  ; jge 0x441f16
mov eax, esi
shl eax, 2
add eax, esi
mov edx, eax
shl eax, 2
sub eax, edx
mov al, byte [ebx + eax + _player_cards]  ; mov al, byte [ebx + eax + 0x499120]
and eax, 0xff
push eax
push esi
call _rich4_consume_card  ; call 0x441343
add esp, 8
inc ebx
jmp short loc_00441ee7  ; jmp 0x441ee7

loc_00441f16:
mov ebx, 1

loc_00441f1b:
mov eax, ebx
pop edi
pop esi
pop ebx
ret

_rich4_player_sell_all_the_card:
push ebx
push esi
mov esi, dword [esp + 0xc]
xor ecx, ecx
xor ebx, ebx
jmp short loc_00441f33  ; jmp 0x441f33

loc_00441f2d:
inc ecx
cmp ecx, 0xf
jge short loc_00441ec9  ; jge 0x441ec9

loc_00441f33:
mov eax, esi
shl eax, 2
add eax, esi
mov edx, eax
shl eax, 2
sub eax, edx
add eax, ecx
cmp byte [eax + _player_cards], 0  ; cmp byte [eax + 0x499120], 0
je short loc_00441f2d  ; je 0x441f2d
xor edx, edx
mov dl, byte [eax + _player_cards]  ; mov dl, byte [eax + 0x499120]
inc byte [edx + (_rich4_remain_card_amount - 1)]  ; inc byte [edx + 0x499197]
mov dl, byte [edx*8 + (_card_table - 3)]  ; mov dl, byte [edx*8 + 0x47fdef]
and edx, 0xff
add ebx, edx
xor dh, dh
mov byte [eax + _player_cards], dh  ; mov byte [eax + 0x499120], dh
jmp short loc_00441f2d  ; jmp 0x441f2d

