extern _rich4_all_players_state
extern _rich4_all_special_players_state
extern _rich4_current_player
extern _global_rich4_cfg
extern _libc_free
extern _read_mkf
extern _rich4_data_mkf
extern _rich4_event_strings
extern _rich4_map_node_ptr
extern _rich4_player_say
extern _rich4_price_index
extern _rich4_prison_node_idx
extern fcn_0040b93b
extern fcn_0040d6be
extern fcn_0040d761
extern fcn_0040fc00
extern fcn_0041d476
extern fcn_0044ba63
extern fcn_0044f2c2
extern fcn_0045144f
extern ref_00496b30
extern ref_00496b34
extern ref_00498e78

global _rich4_add_player_days_in_prison
global _rich4_release_player_from_prison

section .text

_rich4_add_player_days_in_prison:
push ebx
push esi
push edi
push ebp
mov cl, byte [esp + 0x14]
mov edi, 0x100
shl edi, cl
not edi
mov edx, dword [esp + 0x14]
cmp edx, 4
jge near loc_0043d760  ; jge 0x43d760
push 0
mov eax, edx
imul ebx, edx, 0x68
xor eax, edx
mov ax, word [ebx + (_rich4_all_players_state + 10)]  ; mov ax, word [ebx + 0x496b72]
push eax
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 8)]  ; mov ax, word [ebx + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
mov dh, byte [ebx + (_rich4_all_players_state + 52)]  ; mov dh, byte [ebx + 0x496b9c]
test dh, dh
jne near loc_0043d6bd  ; jne 0x43d6bd
mov edx, dword [esp + 0x14]
push edx
call fcn_0040d761  ; call 0x40d761
add esp, 4
mov ecx, dword [esp + 0x18]
push ecx
mov esi, dword [esp + 0x18]
push esi
call fcn_0044f2c2  ; call 0x44f2c2
add esp, 8
and byte [ebx + (_rich4_all_players_state + 21)], 0xf  ; and byte [ebx + 0x496b7d], 0xf
xor eax, eax
mov ax, word [ebx + (_rich4_all_players_state + 12)]  ; mov ax, word [ebx + 0x496b74]
mov esi, eax
shl esi, 2
add esi, eax
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
and dword [eax + esi*8 + 0x24], edi
mov ax, word [_rich4_prison_node_idx]  ; mov ax, word [0x48bae0]
mov word [ebx + (_rich4_all_players_state + 12)], ax  ; mov word [ebx + 0x496b74], ax
xor edx, edx
mov word [ebx + (_rich4_all_players_state + 14)], dx  ; mov word [ebx + 0x496b76], dx
mov byte [ebx + (_rich4_all_players_state + 27)], 0xf  ; mov byte [ebx + 0x496b83], 0xf
mov eax, dword [ref_00498e78]  ; mov eax, dword [0x498e78]
mov si, word [eax + 0x38]
mov word [ebx + (_rich4_all_players_state + 8)], si  ; mov word [ebx + 0x496b70], si
mov ax, word [eax + 0x3a]
mov word [ebx + (_rich4_all_players_state + 10)], ax  ; mov word [ebx + 0x496b72], ax
mov al, byte [esp + 0x18]
mov byte [ebx + (_rich4_all_players_state + 52)], al  ; mov byte [ebx + 0x496b9c], al
mov eax, dword [esp + 0x14]
push eax
call fcn_0040fc00  ; call 0x40fc00
add esp, 4
mov eax, dword [esp + 0x14]
mov byte [eax + ref_00496b30], 1  ; mov byte [eax + 0x496b30], 1
cmp byte [(_global_rich4_cfg + 1)], 0  ; cmp byte [0x497159], 0
je short loc_0043d6d6  ; je 0x43d6d6
push 0
push 0
push 0x21a
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
push 0x5e
push 0x120001
push 0x28
push 0
push eax
call fcn_0045144f  ; call 0x45144f
add esp, 0x14
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
jmp short loc_0043d6d6  ; jmp 0x43d6d6

loc_0043d6bd:
mov al, byte [esp + 0x18]
mov cl, dh
add cl, al
mov byte [ebx + (_rich4_all_players_state + 52)], cl  ; mov byte [ebx + 0x496b9c], cl
mov ch, cl
and ch, 0x7f
mov byte [ebx + (_rich4_all_players_state + 52)], ch  ; mov byte [ebx + 0x496b9c], ch

loc_0043d6d6:
push 0
imul esi, dword [esp + 0x18], 0x68
xor eax, eax
mov ax, word [esi + (_rich4_all_players_state + 10)]  ; mov ax, word [esi + 0x496b72]
push eax
xor eax, eax
mov ax, word [esi + (_rich4_all_players_state + 8)]  ; mov ax, word [esi + 0x496b70]
push eax
call fcn_0041d476  ; call 0x41d476
add esp, 0xc
xor eax, eax
mov al, byte [esi + (_rich4_all_players_state + 19)]  ; mov al, byte [esi + 0x496b7b]
mov ebx, eax
shl ebx, 2
sub ebx, eax
shl ebx, 2
mov eax, ebx
mov edi, dword [eax + ebx*8 + (_rich4_event_strings + 76)]  ; mov edi, dword [eax + ebx*8 + 0x480896]
push edi
push 2
mov ebp, dword [esp + 0x1c]
push ebp
call _rich4_player_say  ; call 0x44ef41
add esp, 0xc
push 0
mov eax, dword [esp + 0x1c]
mov ebx, eax
shl ebx, 2
sub ebx, eax
shl ebx, 3
add ebx, eax
shl ebx, 4
mov eax, ebx
shl ebx, 2
add ebx, eax
imul ebx, dword [_rich4_price_index]  ; imul ebx, dword [0x4990e8]
push ebx
push ebp
call fcn_0044ba63  ; call 0x44ba63
add esp, 0xc
mov al, byte [esp + 0x18]
add byte [esi + (_rich4_all_players_state + 66)], al  ; add byte [esi + 0x496baa], al
pop ebp
pop edi
pop esi
pop ebx
ret

loc_0043d760:
cmp edx, 8
jge short loc_0043d7ba  ; jge 0x43d7ba
lea ebx, [edx - 4]
mov dword [esp + 0x14], ebx
shl ebx, 4
xor eax, eax
mov ax, word [ebx + (_rich4_all_special_players_state + 4)]  ; mov ax, word [ebx + 0x498e2c]
mov esi, eax
shl esi, 2
add esi, eax
mov eax, dword [_rich4_map_node_ptr]  ; mov eax, dword [0x498e80]
and dword [eax + esi*8 + 0x24], edi
mov byte [ebx + (_rich4_all_special_players_state + 10)], 1  ; mov byte [ebx + 0x498e32], 1
xor dl, dl
mov byte [ebx + (_rich4_all_special_players_state + 11)], dl  ; mov byte [ebx + 0x498e33], dl
mov byte [ebx + (_rich4_all_special_players_state + 12)], dl  ; mov byte [ebx + 0x498e34], dl
mov byte [ebx + (_rich4_all_special_players_state + 13)], dl  ; mov byte [ebx + 0x498e35], dl
mov byte [ebx + (_rich4_all_special_players_state + 14)], dl  ; mov byte [ebx + 0x498e36], dl
mov byte [ebx + (_rich4_all_special_players_state + 15)], dl  ; mov byte [ebx + 0x498e37], dl
mov eax, dword [esp + 0x14]
mov byte [eax + ref_00496b34], 1  ; mov byte [eax + 0x496b34], 1

loc_0043d7ba:
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_release_player_from_prison:
push ebx
push esi
mov ebx, dword [esp + 0xc]
cmp ebx, 4
jge short loc_0043d7e0  ; jge 0x43d7e0
push ebx
call fcn_0040d6be  ; call 0x40d6be
add esp, 4
xor al, al
mov byte [ebx + ref_00496b30], al  ; mov byte [ebx + 0x496b30], al
jmp near loc_0043d883  ; jmp 0x43d883

loc_0043d7e0:
lea eax, [ebx - 4]
shl eax, 4
mov dl, byte [_rich4_current_player]  ; mov dl, byte [0x49910c]
mov byte [eax + (_rich4_all_special_players_state + 8)], dl  ; mov byte [eax + 0x498e30], dl
xor dl, dl
mov byte [eax + (_rich4_all_special_players_state + 10)], dl  ; mov byte [eax + 0x498e32], dl
mov dx, word [_rich4_prison_node_idx]  ; mov dx, word [0x48bae0]
mov word [eax + (_rich4_all_special_players_state + 4)], dx  ; mov word [eax + 0x498e2c], dx
xor edx, edx
mov word [eax + (_rich4_all_special_players_state + 6)], dx  ; mov word [eax + 0x498e2e], dx
xor ecx, ecx
mov cx, word [eax + (_rich4_all_special_players_state + 4)]  ; mov cx, word [eax + 0x498e2c]
mov edx, ecx
shl edx, 2
add edx, ecx
mov ecx, dword [_rich4_map_node_ptr]  ; mov ecx, dword [0x498e80]
mov dx, word [ecx + edx*8]
mov word [eax + _rich4_all_special_players_state], dx  ; mov word [eax + 0x498e28], dx
xor esi, esi
mov si, word [eax + (_rich4_all_special_players_state + 4)]  ; mov si, word [eax + 0x498e2c]
mov edx, esi
shl edx, 2
add edx, esi
mov dx, word [ecx + edx*8 + 2]
mov word [eax + (_rich4_all_special_players_state + 2)], dx  ; mov word [eax + 0x498e2a], dx
mov byte [eax + (_rich4_all_special_players_state + 11)], 1  ; mov byte [eax + 0x498e33], 1
xor esi, esi
mov si, word [eax + (_rich4_all_special_players_state + 4)]  ; mov si, word [eax + 0x498e2c]
mov edx, esi
shl edx, 2
add edx, esi
mov edx, dword [ecx + edx*8 + 0x24]
and edx, 0xff
cmp edx, 4
jne short loc_0043d87b  ; jne 0x43d87b
or byte [eax + (_rich4_all_special_players_state + 11)], 0x80  ; or byte [eax + 0x498e33], 0x80

loc_0043d87b:
xor ch, ch
mov byte [ebx + ref_00496b30], ch  ; mov byte [ebx + 0x496b30], ch

loc_0043d883:
push ebx
call fcn_0040b93b  ; call 0x40b93b
add esp, 4
pop esi
pop ebx
ret

