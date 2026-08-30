extern __imp__GetCursorPos@4
extern __imp__PostMessageA@16
extern __imp__SetCursorPos@8
extern _callbackSize
extern _gWindowHandle
extern _global_rich4_cfg
extern _rich4_all_players_state
extern _rich4_current_player
extern _rich4_num_players
extern _rich4_ui_clicking_top_panel
extern _rich4_ui_yesno
extern _rich4_write_config
extern fcn_00402460
extern fcn_0040dd1f
extern fcn_00415e70
extern fcn_00415f69
extern fcn_00417191
extern fcn_0041906a
extern fcn_004196f1
extern fcn_00419703
extern fcn_0041d546
extern ref_0046caf9
extern ref_0046cafd
extern ref_0046cafe
extern ref_0046caff
extern ref_0046cb00
extern ref_0046cb01
extern ref_00474930
extern ref_00474934
extern ref_0048be24
extern ref_00499088

global _rich4_keyboard_hook

section .text

_rich4_keyboard_hook:
push ebx
push esi
push edi
push ebp
sub esp, 8
mov esi, dword [esp + 0x20]
mov ebx, dword [esp + 0x24]
cmp byte [ref_0046cb01], 0  ; cmp byte [0x46cb01], 0
je near loc_00401537  ; je 0x401537
mov eax, esp
push eax
call dword [cs:__imp__GetCursorPos@4]  ; ucall: call dword cs:[0x4622ec]
xor eax, eax
mov ax, word [(_global_rich4_cfg + 16)]  ; mov ax, word [0x497168]
cmp esi, eax
jne short loc_00401059  ; jne 0x401059
test ebx, 0x80000000
jne short loc_00401059  ; jne 0x401059
mov eax, dword [esp + 4]
sub eax, 0xa
push eax
mov edi, dword [esp + 4]
push edi
jmp short loc_0040107a  ; jmp 0x40107a

loc_00401059:
xor eax, eax
mov ax, word [(_global_rich4_cfg + 18)]  ; mov ax, word [0x49716a]
cmp esi, eax
jne short loc_00401086  ; jne 0x401086
test ebx, 0x80000000
jne short loc_00401086  ; jne 0x401086
mov esi, dword [esp + 4]
push esi
mov eax, dword [esp + 4]
add eax, 0xa

loc_00401079:
push eax

loc_0040107a:
call dword [cs:__imp__SetCursorPos@8]  ; ucall: call dword cs:[0x46231c]
jmp near loc_00401537  ; jmp 0x401537

loc_00401086:
xor eax, eax
mov ax, word [(_global_rich4_cfg + 20)]  ; mov ax, word [0x49716c]
cmp esi, eax
jne short loc_004010a9  ; jne 0x4010a9
test ebx, 0x80000000
jne short loc_004010a9  ; jne 0x4010a9
mov eax, dword [esp + 4]
add eax, 0xa
push eax
mov ebx, dword [esp + 4]
push ebx
jmp short loc_0040107a  ; jmp 0x40107a

loc_004010a9:
xor eax, eax
mov ax, word [(_global_rich4_cfg + 22)]  ; mov ax, word [0x49716e]
cmp esi, eax
jne short loc_004010cb  ; jne 0x4010cb
test ebx, 0x80000000
jne short loc_004010cb  ; jne 0x4010cb
mov ecx, dword [esp + 4]
push ecx
mov eax, dword [esp + 4]
sub eax, 0xa
jmp short loc_00401079  ; jmp 0x401079

loc_004010cb:
xor eax, eax
mov ax, word [(_global_rich4_cfg + 24)]  ; mov ax, word [0x497170]
cmp esi, eax
jne near loc_00401157  ; jne 0x401157
test ebx, 0x80000000
jne short loc_004010f1  ; jne 0x4010f1
cmp word [ref_0046cb09], 0  ; cmp word [0x46cb09], 0
jne near loc_00401537  ; jne 0x401537

loc_004010f1:
cmp byte [ref_0046cb00], 0  ; cmp byte [0x46cb00], 0
jne near loc_00401537  ; jne 0x401537
mov eax, dword [esp + 4]
shl eax, 0x10
add eax, dword [esp]
test ebx, 0x80000000
je short loc_00401134  ; je 0x401134
push eax
push 0
push 0x202
mov edx, dword [_gWindowHandle]  ; mov edx, dword [0x48a0d4]
push edx
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
xor ebx, ebx
mov word [ref_0046cb09], bx  ; mov word [0x46cb09], bx
jmp near loc_00401537  ; jmp 0x401537

loc_00401134:
push eax
push 0
push 0x201
mov eax, dword [_gWindowHandle]  ; mov eax, dword [0x48a0d4]
push eax
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
mov word [ref_0046cb09], 1  ; mov word [0x46cb09], 1
jmp near loc_00401537  ; jmp 0x401537

loc_00401157:
xor eax, eax
mov ax, word [(_global_rich4_cfg + 26)]  ; mov ax, word [0x497172]
cmp esi, eax
jne near loc_004011df  ; jne 0x4011df
test ebx, 0x80000000
je near loc_004011df  ; je 0x4011df
cmp byte [ref_0046cafe], 0  ; cmp byte [0x46cafe], 0
je short loc_004011c3  ; je 0x4011c3
cmp dword [_callbackSize], 1  ; cmp dword [0x46cad8], 1
jne short loc_004011c3  ; jne 0x4011c3
xor edx, edx
xor ebx, ebx
mov ebp, dword [_rich4_num_players]  ; mov ebp, dword [0x499114]

loc_0040118f:
cmp edx, ebp
jge short loc_004011af  ; jge 0x4011af
imul eax, edx, 0x68
cmp byte [eax + (_rich4_all_players_state + 21)], 1  ; cmp byte [eax + 0x496b7d], 1
jne short loc_004011ac  ; jne 0x4011ac
cmp dword [eax + (_rich4_all_players_state + 50)], 0  ; cmp dword [eax + 0x496b9a], 0
je near loc_00401537  ; je 0x401537

loc_004011ac:
inc edx
jmp short loc_0040118f  ; jmp 0x40118f

loc_004011af:
test ebx, ebx
jne near loc_00401537  ; jne 0x401537
mov byte [ref_0046caff], 1  ; mov byte [0x46caff], 1
jmp near loc_00401537  ; jmp 0x401537

loc_004011c3:
push 0
push 0
push 0x205
mov edi, dword [_gWindowHandle]  ; mov edi, dword [0x48a0d4]
push edi
call dword [cs:__imp__PostMessageA@16]  ; ucall: call dword cs:[0x462310]
jmp near loc_00401537  ; jmp 0x401537

loc_004011df:
cmp byte [ref_0046cafd], 0  ; cmp byte [0x46cafd], 0
je near loc_00401537  ; je 0x401537
test ebx, 0xc0000000
je short loc_00401202  ; je 0x401202
xor edi, edi
mov word [ref_0046cb07], di  ; mov word [0x46cb07], di
jmp near loc_00401537  ; jmp 0x401537

loc_00401202:
cmp esi, 0x11
jne short loc_00401212  ; jne 0x401212
mov word [ref_0046cb07], 0x1100  ; mov word [0x46cb07], 0x1100
jmp short loc_00401219  ; jmp 0x401219

loc_00401212:
or word [ref_0046cb07], si  ; or word [0x46cb07], si

loc_00401219:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 30)]  ; mov dx, word [0x497176]
xor eax, eax
mov ax, word [ref_0046cb07]  ; mov ax, word [0x46cb07]
cmp eax, edx
jne short loc_00401262  ; jne 0x401262
mov dh, byte [(_global_rich4_cfg + 5)]  ; mov dh, byte [0x49715d]
inc dh
mov byte [(_global_rich4_cfg + 5)], dh  ; mov byte [0x49715d], dh
cmp dh, 3
jne short loc_00401249  ; jne 0x401249
xor bh, bh
mov byte [(_global_rich4_cfg + 5)], bh  ; mov byte [0x49715d], bh

loc_00401249:
call fcn_00419703  ; call 0x419703
push 1
call fcn_0041906a  ; call 0x41906a
add esp, 4
call fcn_004196f1  ; call 0x4196f1
jmp near loc_00401523  ; jmp 0x401523

loc_00401262:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 36)]  ; mov dx, word [0x49717c]
cmp eax, edx
jne short loc_0040128d  ; jne 0x40128d
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
call fcn_00419703  ; call 0x419703
call fcn_0041d546  ; call 0x41d546
call fcn_0040dd1f  ; call 0x40dd1f
jmp near loc_00401523  ; jmp 0x401523

loc_0040128d:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 38)]  ; mov dx, word [0x49717e]
cmp eax, edx
jne near loc_00401312  ; jne 0x401312
mov ecx, dword [_rich4_current_player]  ; mov ecx, dword [0x49910c]
imul eax, ecx, 0x68
cmp byte [eax + (_rich4_all_players_state + 56)], 0  ; cmp byte [eax + 0x496ba0], 0
jne near loc_00401523  ; jne 0x401523
imul eax, ecx, 0x68
mov al, byte [eax + (_rich4_all_players_state + 17)]  ; mov al, byte [eax + 0x496b79]
cmp al, 1
jb short loc_00401306  ; jb 0x401306
jbe short loc_004012c9  ; jbe 0x4012c9
cmp al, 2
je short loc_004012e7  ; je 0x4012e7
jmp short loc_00401306  ; jmp 0x401306

loc_004012c9:
imul eax, ecx, 0x68
imul edx, ecx, 0x68
inc byte [eax + (_rich4_all_players_state + 18)]  ; inc byte [eax + 0x496b7a]
cmp byte [edx + (_rich4_all_players_state + 18)], 3  ; cmp byte [edx + 0x496b7a], 3
jne short loc_00401306  ; jne 0x401306
imul eax, dword [_rich4_current_player], 0x68  ; imul eax, dword [0x49910c], 0x68
jmp short loc_004012ff  ; jmp 0x4012ff

loc_004012e7:
imul eax, ecx, 0x68
imul edx, ecx, 0x68
inc byte [eax + (_rich4_all_players_state + 18)]  ; inc byte [eax + 0x496b7a]
cmp byte [edx + (_rich4_all_players_state + 18)], 4  ; cmp byte [edx + 0x496b7a], 4
jne short loc_00401306  ; jne 0x401306
imul eax, ecx, 0x68

loc_004012ff:
mov byte [eax + (_rich4_all_players_state + 18)], 1  ; mov byte [eax + 0x496b7a], 1

loc_00401306:
push 1
call fcn_00417191  ; call 0x417191
jmp near loc_00401520  ; jmp 0x401520

loc_00401312:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 40)]  ; mov dx, word [0x497180]
cmp eax, edx
jne short loc_0040132b  ; jne 0x40132b
push 0xa

loc_00401321:
call _rich4_ui_clicking_top_panel  ; call 0x417d65
jmp near loc_00401520  ; jmp 0x401520

loc_0040132b:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 42)]  ; mov dx, word [0x497182]
cmp eax, edx
jne short loc_0040133c  ; jne 0x40133c
push 9
jmp short loc_00401321  ; jmp 0x401321

loc_0040133c:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 44)]  ; mov dx, word [0x497184]
cmp eax, edx
jne short loc_0040134d  ; jne 0x40134d
push 8
jmp short loc_00401321  ; jmp 0x401321

loc_0040134d:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 46)]  ; mov dx, word [0x497186]
cmp eax, edx
jne short loc_0040135e  ; jne 0x40135e
push 7
jmp short loc_00401321  ; jmp 0x401321

loc_0040135e:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 48)]  ; mov dx, word [0x497188]
cmp eax, edx
jne short loc_0040136f  ; jne 0x40136f
push 6
jmp short loc_00401321  ; jmp 0x401321

loc_0040136f:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 50)]  ; mov dx, word [0x49718a]
cmp eax, edx
jne short loc_00401380  ; jne 0x401380
push 5
jmp short loc_00401321  ; jmp 0x401321

loc_00401380:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 52)]  ; mov dx, word [0x49718c]
cmp eax, edx
jne short loc_004013c0  ; jne 0x4013c0
mov edi, dword [ref_00499088]  ; mov edi, dword [0x499088]
dec edi
mov dword [ref_00499088], edi  ; mov dword [0x499088], edi
mov ebp, edi
and ebp, 7
mov dword [ref_00499088], ebp  ; mov dword [0x499088], ebp
mov eax, 0xffffffff
mov dword [ref_00474930], eax  ; mov dword [0x474930], eax
mov dword [ref_00474934], eax  ; mov dword [0x474934], eax

loc_004013b4:
push 1
call fcn_00415e70  ; call 0x415e70
jmp near loc_00401520  ; jmp 0x401520

loc_004013c0:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 54)]  ; mov dx, word [0x49718e]
cmp eax, edx
jne short loc_004013f8  ; jne 0x4013f8
mov edx, dword [ref_00499088]  ; mov edx, dword [0x499088]
inc edx
mov dword [ref_00499088], edx  ; mov dword [0x499088], edx
mov ecx, edx
and ecx, 7
mov dword [ref_00499088], ecx  ; mov dword [0x499088], ecx
mov ebx, 0xffffffff
mov dword [ref_00474930], ebx  ; mov dword [0x474930], ebx
mov dword [ref_00474934], ebx  ; mov dword [0x474934], ebx
jmp short loc_004013b4  ; jmp 0x4013b4

loc_004013f8:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 56)]  ; mov dx, word [0x497190]
cmp eax, edx
jne short loc_0040140c  ; jne 0x40140c
push 2
jmp near loc_00401321  ; jmp 0x401321

loc_0040140c:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 58)]  ; mov dx, word [0x497192]
cmp eax, edx
jne short loc_00401420  ; jne 0x401420
push 1
jmp near loc_00401321  ; jmp 0x401321

loc_00401420:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 60)]  ; mov dx, word [0x497194]
cmp eax, edx
jne short loc_00401434  ; jne 0x401434
push 4
jmp near loc_00401321  ; jmp 0x401321

loc_00401434:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 62)]  ; mov dx, word [0x497196]
cmp eax, edx
jne short loc_00401448  ; jne 0x401448
push 3
jmp near loc_00401321  ; jmp 0x401321

loc_00401448:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 64)]  ; mov dx, word [0x497198]
cmp eax, edx
jne short loc_0040145c  ; jne 0x40145c
push 0
jmp near loc_00401321  ; jmp 0x401321

loc_0040145c:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 70)]  ; mov dx, word [0x49719e]
cmp eax, edx
jne short loc_004014b1  ; jne 0x4014b1
push 0
call fcn_00402460  ; call 0x402460
add esp, 4
call fcn_00419703  ; call 0x419703
push 0xf0
push 0xdc
call _rich4_ui_yesno  ; call 0x453a32
add esp, 8
cmp eax, 1
jne short loc_004014a0  ; jne 0x4014a0
call _rich4_write_config  ; call 0x411f80
mov byte [ref_0046caf9], 1  ; mov byte [0x46caf9], 1
jmp near loc_00401523  ; jmp 0x401523

loc_004014a0:
call fcn_004196f1  ; call 0x4196f1
push 1
call fcn_00402460  ; call 0x402460
jmp near loc_00401520  ; jmp 0x401520

loc_004014b1:
cmp byte [(_global_rich4_cfg + 5)], 2  ; cmp byte [0x49715d], 2
je short loc_00401523  ; je 0x401523
xor edx, edx
mov dx, word [(_global_rich4_cfg + 66)]  ; mov dx, word [0x49719a]
cmp eax, edx
jne short loc_004014ee  ; jne 0x4014ee
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
mov cl, byte [eax + ref_0048be24]  ; mov cl, byte [eax + 0x48be24]
dec cl
mov byte [eax + ref_0048be24], cl  ; mov byte [eax + 0x48be24], cl
mov ch, cl
and ch, 3
mov byte [eax + ref_0048be24], ch  ; mov byte [eax + 0x48be24], ch
push 1
call fcn_00415f69  ; call 0x415f69
jmp short loc_00401520  ; jmp 0x401520

loc_004014ee:
xor edx, edx
mov dx, word [(_global_rich4_cfg + 68)]  ; mov dx, word [0x49719c]
cmp eax, edx
jne short loc_00401523  ; jne 0x401523
mov eax, dword [_rich4_current_player]  ; mov eax, dword [0x49910c]
mov bl, byte [eax + ref_0048be24]  ; mov bl, byte [eax + 0x48be24]
inc bl
mov byte [eax + ref_0048be24], bl  ; mov byte [eax + 0x48be24], bl
mov bh, bl
and bh, 3
mov byte [eax + ref_0048be24], bh  ; mov byte [eax + 0x48be24], bh
push 1
call fcn_00415f69  ; call 0x415f69

loc_00401520:
add esp, 4

loc_00401523:
cmp word [ref_0046cb07], 0x1100  ; cmp word [0x46cb07], 0x1100
je short loc_00401537  ; je 0x401537
xor esi, esi
mov word [ref_0046cb07], si  ; mov word [0x46cb07], si

loc_00401537:
xor eax, eax
add esp, 8
pop ebp
pop edi
pop esi
pop ebx
ret 0xc

section .data

ref_0046cb07:
db 0x00
db 0x00

ref_0046cb09:
db 0x00
db 0x00
