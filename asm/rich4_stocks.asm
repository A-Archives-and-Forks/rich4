extern __round_toward_zero
extern _global_rich4_cfg
extern _if_fmod
extern _libc_rand
extern _memcpy
extern _rich4_all_players_state
extern _rich4_num_on_map_commercials
extern _rich4_on_map_commercial_ptr
extern _rich4_player_stocks
extern _stocks_on_map
extern fcn_0040a4e1
extern fcn_004523d5
extern ref_00497328
extern ref_00499078
extern ref_00499080
extern ref_004990dc
extern ref_004990ec
extern ref_00499100

global _rich4_init_stock_commercial
global fcn_00428d01
global fcn_00429040
global fcn_0042915a
global fcn_004291d6
global fcn_004295ea
global _rich4_buy_stock
global _rich4_sell_stock
global _rich4_update_commercial_owner

section .text

_rich4_init_stock_commercial:
push ebx
push esi
xor esi, esi
mov ebx, dword [_rich4_num_on_map_commercials]  ; mov ebx, dword [0x498e90]
jmp short loc_00428cc1  ; jmp 0x428cc1

loc_00428cbb:
inc esi
cmp esi, 0xc
jge short loc_00428cfe  ; jge 0x428cfe

loc_00428cc1:
mov eax, esi
shl eax, 3
add eax, esi
cmp word [eax*4 + (_stocks_on_map + 4)], 0  ; cmp word [eax*4 + 0x496984], 0
je short loc_00428cbb  ; je 0x428cbb
mov edx, 1
mov ecx, dword [_rich4_on_map_commercial_ptr]  ; mov ecx, dword [0x498e7c]

loc_00428cde:
add ecx, 0x34
cmp edx, ebx
jg short loc_00428cbb  ; jg 0x428cbb
xor eax, eax
mov al, byte [ecx + 0x19]
cmp eax, esi
jne short loc_00428cfb  ; jne 0x428cfb
shl eax, 3
add eax, esi
mov word [eax*4 + (_stocks_on_map + 4)], dx  ; mov word [eax*4 + 0x496984], dx

loc_00428cfb:
inc edx
jmp short loc_00428cde  ; jmp 0x428cde

loc_00428cfe:
pop esi
pop ebx
ret

fcn_00428d01:
push ebx
xor ebx, ebx
cmp dword [ref_004990dc], 0  ; cmp dword [0x4990dc], 0
jne short loc_00428d21  ; jne 0x428d21
mov ecx, dword [(_global_rich4_cfg + 8)]  ; mov ecx, dword [0x497160]
push ecx
call fcn_004523d5  ; call 0x4523d5
add esp, 4
cmp eax, 1
jne short loc_00428d26  ; jne 0x428d26

loc_00428d21:
mov ebx, 1

loc_00428d26:
mov eax, ebx
pop ebx
ret

_rich4_buy_stock:
push ebx
push esi
push edi
sub esp, 0xc
mov esi, dword [esp + 0x24]
imul ebx, dword [esp + 0x1c], 0x68
mov edx, dword [esp + 0x20]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
cmp dword [esp + 0x28], 0
je short loc_00428d7f  ; je 0x428d7f
mov dword [esp + 8], esi
fild dword [esp + 8]
fmul dword [eax + (_stocks_on_map + 20)]  ; fmul dword [eax + 0x496994]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp + 4]
sub word [eax + (_stocks_on_map + 10)], si  ; sub word [eax + 0x49698a], si
sub word [eax + (_stocks_on_map + 8)], si  ; sub word [eax + 0x496988], si
mov eax, dword [esp + 4]
sub dword [ebx + (_rich4_all_players_state + 32)], eax  ; sub dword [ebx + 0x496b88], eax
jmp short loc_00428db7  ; jmp 0x428db7

loc_00428d7f:
mov ax, word [eax + (_stocks_on_map + 4)]  ; mov ax, word [eax + 0x496984]
and eax, 0xffff
imul eax, eax, 0x34
mov ecx, dword [_rich4_on_map_commercial_ptr]  ; mov ecx, dword [0x498e7c]
add ecx, eax
mov edi, 0x2710
mov eax, dword [ecx + 0x24]
mov edx, eax
sar edx, 0x1f
idiv edi
mov edx, esi
imul edx, eax
mov dword [esp + 4], edx
sub dword [ecx + 0x30], esi
sub dword [ebx + (_rich4_all_players_state + 28)], edx  ; sub dword [ebx + 0x496b84], edx

loc_00428db7:
mov edx, dword [esp + 0x1c]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 5
mov edx, dword [esp + 0x20]
shl edx, 3
add edx, eax
fild dword [edx + _rich4_player_stocks]  ; fild dword [edx + 0x4971a0]
fmul dword [edx + (_rich4_player_stocks + 4)]  ; fmul dword [edx + 0x4971a4]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp]
add dword [edx + _rich4_player_stocks], esi  ; add dword [edx + 0x4971a0], esi
mov eax, dword [esp + 4]
mov ebx, dword [esp]
add ebx, eax
mov dword [esp], ebx
fild dword [edx + _rich4_player_stocks]  ; fild dword [edx + 0x4971a0]
mov dword [esp + 8], ebx
fild dword [esp + 8]
fdivrp st1  ; fdivrp st(1)
fstp dword [edx + (_rich4_player_stocks + 4)]  ; fstp dword [edx + 0x4971a4]
mov esi, dword [esp + 0x20]
push esi
mov edi, dword [esp + 0x20]
push edi
call _rich4_update_commercial_owner  ; call 0x4294d5
add esp, 8
add esp, 0xc
pop edi
pop esi
pop ebx
ret

_rich4_sell_stock:
push ebx
push esi
sub esp, 8
mov ecx, dword [esp + 0x1c]
mov edx, dword [esp + 0x14]
mov eax, edx
shl eax, 2
sub eax, edx
mov edx, eax
shl edx, 5
mov eax, dword [esp + 0x18]
shl eax, 3
add eax, edx
mov edx, dword [eax + _rich4_player_stocks]  ; mov edx, dword [eax + 0x4971a0]
sub edx, ecx
mov dword [eax + _rich4_player_stocks], edx  ; mov dword [eax + 0x4971a0], edx
jne short loc_00428e5b  ; jne 0x428e5b
mov dword [eax + (_rich4_player_stocks + 4)], edx  ; mov dword [eax + 0x4971a4], edx

loc_00428e5b:
mov edx, dword [esp + 0x18]
mov eax, edx
shl eax, 3
add eax, edx
mov dword [esp + 4], ecx
fild dword [esp + 4]
fmul dword [eax*4 + (_stocks_on_map + 20)]  ; fmul dword [eax*4 + 0x496994]
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp]
add word [eax*4 + (_stocks_on_map + 10)], cx  ; add word [eax*4 + 0x49698a], cx
add word [eax*4 + (_stocks_on_map + 8)], cx  ; add word [eax*4 + 0x496988], cx
cmp dword [esp + 0x20], 0
je short loc_00428ea4  ; je 0x428ea4
imul edx, dword [esp + 0x14], 0x68
mov eax, dword [esp]
add dword [edx + (_rich4_all_players_state + 32)], eax  ; add dword [edx + 0x496b88], eax
jmp short loc_00428ead  ; jmp 0x428ead

loc_00428ea4:
mov eax, dword [esp]
add dword [ref_00499080], eax  ; add dword [0x499080], eax

loc_00428ead:
mov ebx, dword [esp + 0x18]
push ebx
mov esi, dword [esp + 0x18]
push esi
call _rich4_update_commercial_owner  ; call 0x4294d5
add esp, 8
add esp, 8
pop esi
pop ebx
ret

fcn_00428ec5:
sub esp, 0x10
fld dword [esp + 0x18]
fadd dword [ref_00463f88]  ; fadd dword [0x463f88]
fdiv dword [ref_00463f88]  ; fdiv dword [0x463f88]
fmul dword [esp + 0x14]
fstp dword [esp + 0xc]
fldz
fcomp dword [esp + 0x18]
fnstsw ax
sahf
jae near loc_00428f77  ; jae 0x428f77
fld dword [esp + 0xc]
fsub dword [esp + 0x14]
fstp dword [esp + 8]
fld dword [esp + 0xc]
fcomp dword [ref_00463f8c]  ; fcomp dword [0x463f8c]
fnstsw ax
sahf
jae short loc_00428f28  ; jae 0x428f28
fld qword [ref_00463fb4]  ; fld qword [0x463fb4]

loc_00428f10:
fld dword [esp + 8]

loc_00428f14:
call _if_fmod  ; call 0x45841c
fld dword [esp + 0xc]
fstp qword [esp]
fsubr qword [esp]
jmp near loc_00429009  ; jmp 0x429009

loc_00428f28:
fld dword [esp + 0xc]
fcomp dword [ref_00463f90]  ; fcomp dword [0x463f90]
fnstsw ax
sahf
jae short loc_00428f3f  ; jae 0x428f3f
fld qword [ref_00463fac]  ; fld qword [0x463fac]
jmp short loc_00428f10  ; jmp 0x428f10

loc_00428f3f:
fld dword [esp + 0xc]
fcomp dword [ref_00463f94]  ; fcomp dword [0x463f94]
fnstsw ax
sahf
jae short loc_00428f56  ; jae 0x428f56
fld qword [ref_00463fa4]  ; fld qword [0x463fa4]
jmp short loc_00428f10  ; jmp 0x428f10

loc_00428f56:
fld dword [esp + 0xc]
fcomp dword [ref_00463f98]  ; fcomp dword [0x463f98]
fnstsw ax
sahf
jae short loc_00428f6d  ; jae 0x428f6d
fld qword [ref_00463f9c]  ; fld qword [0x463f9c]
jmp short loc_00428f10  ; jmp 0x428f10

loc_00428f6d:
fld dword [esp + 8]
fld1
fxch st1  ; fxch st(1)
jmp short loc_00428f14  ; jmp 0x428f14

loc_00428f77:
fld dword [esp + 0x14]
fsub dword [esp + 0xc]
fstp dword [esp + 8]
fld dword [esp + 0xc]
fcomp dword [ref_00463f8c]  ; fcomp dword [0x463f8c]
fnstsw ax
sahf
jae short loc_00428fad  ; jae 0x428fad
fld qword [ref_00463fb4]  ; fld qword [0x463fb4]

loc_00428f98:
fld dword [esp + 8]
call _if_fmod  ; call 0x45841c
fld dword [esp + 0xc]
fstp qword [esp]
fadd qword [esp]
jmp short loc_00429009  ; jmp 0x429009

loc_00428fad:
fld dword [esp + 0xc]
fcomp dword [ref_00463f90]  ; fcomp dword [0x463f90]
fnstsw ax
sahf
jae short loc_00428fc4  ; jae 0x428fc4
fld qword [ref_00463fac]  ; fld qword [0x463fac]
jmp short loc_00428f98  ; jmp 0x428f98

loc_00428fc4:
fld dword [esp + 0xc]
fcomp dword [ref_00463f94]  ; fcomp dword [0x463f94]
fnstsw ax
sahf
jae short loc_00428fdb  ; jae 0x428fdb
fld qword [ref_00463fa4]  ; fld qword [0x463fa4]
jmp short loc_00428f98  ; jmp 0x428f98

loc_00428fdb:
fld dword [esp + 0xc]
fcomp dword [ref_00463f98]  ; fcomp dword [0x463f98]
fnstsw ax
sahf
jae short loc_00428ff2  ; jae 0x428ff2
fld qword [ref_00463f9c]  ; fld qword [0x463f9c]
jmp short loc_00428f98  ; jmp 0x428f98

loc_00428ff2:
fld dword [esp + 8]
fld1
fxch st1  ; fxch st(1)
call _if_fmod  ; call 0x45841c
fld dword [esp + 0xc]
fstp qword [esp]
fadd qword [esp]

loc_00429009:
fstp dword [esp + 0xc]
cmp dword [esp + 0xc], 0x3f800000
jge short loc_00429021  ; jge 0x429021
mov dword [esp + 0xc], 0x3f800000
jmp short loc_00429038  ; jmp 0x429038

loc_00429021:
fld dword [esp + 0xc]
fcomp dword [ref_00463fbc]  ; fcomp dword [0x463fbc]
fnstsw ax
sahf
jbe short loc_00429038  ; jbe 0x429038
mov dword [esp + 0xc], 0x461c3c00

loc_00429038:
mov eax, dword [esp + 0xc]
add esp, 0x10
ret

fcn_00429040:
push ebx
push esi
push edi
push ebp
sub esp, 4
mov esi, dword [esp + 0x18]
mov edi, dword [ref_00499100]  ; mov edi, dword [0x499100]
dec edi
test edi, edi
jge short loc_0042905b  ; jge 0x42905b
mov edi, 0x8f

loc_0042905b:
test esi, esi
je near loc_004290e2  ; je 0x4290e2
lea ebx, [esi - 1]
mov eax, ebx
shl eax, 3
add eax, ebx
shl eax, 2
mov dl, byte [eax + (_stocks_on_map + 7)]  ; mov dl, byte [eax + 0x496987]
test dl, dl
je near loc_004290da  ; je 0x4290da
test dl, 0xf0
je short loc_0042908f  ; je 0x42908f
mov dword [eax + (_stocks_on_map + 28)], 0x41200000  ; mov dword [eax + 0x49699c], 0x41200000
jmp short loc_00429099  ; jmp 0x429099

loc_0042908f:
mov dword [eax + (_stocks_on_map + 28)], 0xc1200000  ; mov dword [eax + 0x49699c], 0xc1200000

loc_00429099:
dec esi
mov ebx, esi
shl ebx, 3
add ebx, esi
push dword [ebx*4 + (_stocks_on_map + 28)]  ; push dword [ebx*4 + 0x49699c]
push dword [ebx*4 + (_stocks_on_map + 16)]  ; push dword [ebx*4 + 0x496990]
call fcn_00428ec5  ; call 0x428ec5
mov dword [esp + 8], eax
fld dword [esp + 8]
add esp, 8
fst dword [ebx*4 + (_stocks_on_map + 20)]  ; fst dword [ebx*4 + 0x496994]
mov eax, esi
shl eax, 3
lea ebx, [esi + eax]
shl ebx, 6
mov eax, edi
fstp dword [ebx + eax*4 + ref_00497328]  ; fstp dword [ebx + eax*4 + 0x497328]

loc_004290da:
add esp, 4
pop ebp
pop edi
pop esi
pop ebx
ret

loc_004290e2:
mov ebp, 0x41200000
jmp short loc_00429139  ; jmp 0x429139

loc_004290e9:
mov dword [eax + (_stocks_on_map + 28)], 0xc1200000  ; mov dword [eax + 0x49699c], 0xc1200000

loc_004290f3:
mov ebx, esi
shl ebx, 3
add ebx, esi
push dword [ebx*4 + (_stocks_on_map + 28)]  ; push dword [ebx*4 + 0x49699c]
push dword [ebx*4 + (_stocks_on_map + 16)]  ; push dword [ebx*4 + 0x496990]
call fcn_00428ec5  ; call 0x428ec5
mov dword [esp + 8], eax
fld dword [esp + 8]
add esp, 8
fst dword [ebx*4 + (_stocks_on_map + 20)]  ; fst dword [ebx*4 + 0x496994]
mov eax, esi
shl eax, 3
lea ebx, [esi + eax]
shl ebx, 6
mov eax, edi
fstp dword [ebx + eax*4 + ref_00497328]  ; fstp dword [ebx + eax*4 + 0x497328]

loc_00429133:
inc esi
cmp esi, 0xc
jge short loc_004290da  ; jge 0x4290da

loc_00429139:
mov eax, esi
shl eax, 3
add eax, esi
shl eax, 2
mov bl, byte [eax + (_stocks_on_map + 7)]  ; mov bl, byte [eax + 0x496987]
test bl, bl
je short loc_00429133  ; je 0x429133
test bl, 0xf0
je short loc_004290e9  ; je 0x4290e9
mov dword [eax + (_stocks_on_map + 28)], ebp  ; mov dword [eax + 0x49699c], ebp
jmp short loc_004290f3  ; jmp 0x4290f3

fcn_0042915a:
push ebx
push esi
sub esp, 4
xor esi, esi
jmp short loc_00429170  ; jmp 0x429170

loc_00429163:
mov word [ebx + (_stocks_on_map + 10)], dx  ; mov word [ebx + 0x49698a], dx

loc_0042916a:
inc esi
cmp esi, 0xc
jge short loc_004291d0  ; jge 0x4291d0

loc_00429170:
mov ebx, esi
shl ebx, 3
add ebx, esi
shl ebx, 2
mov dx, word [ebx + (_stocks_on_map + 8)]  ; mov dx, word [ebx + 0x496988]
cmp dx, 0x3e8
jbe short loc_00429163  ; jbe 0x429163
call _libc_rand  ; call 0x456f2d
mov edx, eax
mov ecx, 0x7d0
sar edx, 0x1f
idiv ecx
add edx, 0x3e8
xor eax, eax
mov ax, word [ebx + (_stocks_on_map + 8)]  ; mov ax, word [ebx + 0x496988]
mov dword [esp], eax
fild dword [esp]
mov dword [esp], edx
fild dword [esp]
fdiv dword [ref_00463fc0]  ; fdiv dword [0x463fc0]
fmulp st1  ; fmulp st(1)
call __round_toward_zero  ; call 0x457dbc
fistp dword [esp]
mov eax, dword [esp]
mov word [ebx + (_stocks_on_map + 10)], ax  ; mov word [ebx + 0x49698a], ax
jmp short loc_0042916a  ; jmp 0x42916a

loc_004291d0:
add esp, 4
pop esi
pop ebx
ret

fcn_004291d6:
push ebx
push esi
push edi
push ebp
sub esp, 0xc
xor edx, edx
mov dword [esp], edx
call fcn_00428d01  ; call 0x428d01
cmp eax, 1
je near loc_004294cd  ; je 0x4294cd
call _libc_rand  ; call 0x456f2d
sub eax, 0x4000
mov dword [esp + 8], eax
fild dword [esp + 8]
fdiv dword [ref_00463fc4]  ; fdiv dword [0x463fc4]
fstp dword [ref_004990ec]  ; fstp dword [0x4990ec]
xor esi, esi
mov ebp, 0xc1200000
mov edi, 0xc1200000
jmp near loc_00429470  ; jmp 0x429470

loc_0042921f:
mov dl, byte [ebx + (_stocks_on_map + 7)]  ; mov dl, byte [ebx + 0x496987]
test dl, dl
je short loc_00429248  ; je 0x429248
test dl, 0xf0
je short loc_0042923d  ; je 0x42923d
mov dword [ebx + (_stocks_on_map + 28)], 0x41200000  ; mov dword [ebx + 0x49699c], 0x41200000
jmp near loc_00429413  ; jmp 0x429413

loc_0042923d:
mov dword [ebx + (_stocks_on_map + 28)], ebp  ; mov dword [ebx + 0x49699c], ebp
jmp near loc_00429413  ; jmp 0x429413

loc_00429248:
call _libc_rand  ; call 0x456f2d
sub eax, 0x4000
mov dword [esp + 8], eax
fild dword [esp + 8]
fdiv dword [ref_00463fc8]  ; fdiv dword [0x463fc8]
fst dword [ebx + (_stocks_on_map + 32)]  ; fst dword [ebx + 0x4969a0]
fmul dword [ebx + (_stocks_on_map + 24)]  ; fmul dword [ebx + 0x496998]
fadd dword [ebx + (_stocks_on_map + 28)]  ; fadd dword [ebx + 0x49699c]
fstp dword [ebx + (_stocks_on_map + 28)]  ; fstp dword [ebx + 0x49699c]
fld dword [ref_004990ec]  ; fld dword [0x4990ec]
fadd dword [ebx + (_stocks_on_map + 28)]  ; fadd dword [ebx + 0x49699c]
fstp dword [ebx + (_stocks_on_map + 28)]  ; fstp dword [ebx + 0x49699c]
cmp word [ebx + (_stocks_on_map + 4)], 0  ; cmp word [ebx + 0x496984], 0
je near loc_00429346  ; je 0x429346
xor edx, edx
mov dx, word [ebx + (_stocks_on_map + 4)]  ; mov dx, word [ebx + 0x496984]
imul edx, edx, 0x34
mov eax, dword [_rich4_on_map_commercial_ptr]  ; mov eax, dword [0x498e7c]
fild dword [edx + eax + 0x24]
fdiv dword [ref_00463fd8]  ; fdiv dword [0x463fd8]
fstp dword [esp + 4]
fld dword [ebx + (_stocks_on_map + 16)]  ; fld dword [ebx + 0x496990]
fcomp dword [esp + 4]
fnstsw ax
sahf
jbe short loc_00429316  ; jbe 0x429316
fld dword [esp + 4]
fmul dword [ref_00463fe4]  ; fmul dword [0x463fe4]
fstp dword [esp + 4]
fld dword [ebx + (_stocks_on_map + 16)]  ; fld dword [ebx + 0x496990]
fcomp dword [esp + 4]
fnstsw ax
sahf
jbe near loc_004293d2  ; jbe 0x4293d2
fldz
fcomp dword [ebx + (_stocks_on_map + 28)]  ; fcomp dword [ebx + 0x49699c]
fnstsw ax
sahf
jae short loc_00429305  ; jae 0x429305

loc_004292f4:
fld dword [ebx + (_stocks_on_map + 28)]  ; fld dword [ebx + 0x49699c]
fmul dword [ref_00463fcc]  ; fmul dword [0x463fcc]
jmp near loc_004293cc  ; jmp 0x4293cc

loc_00429305:
fld dword [ebx + (_stocks_on_map + 28)]  ; fld dword [ebx + 0x49699c]
fmul dword [ref_00463fd0]  ; fmul dword [0x463fd0]
jmp near loc_004293cc  ; jmp 0x4293cc

loc_00429316:
fld dword [esp + 4]
fmul qword [ref_00463fdc]  ; fmul qword [0x463fdc]
fstp dword [esp + 4]
fld dword [ebx + (_stocks_on_map + 16)]  ; fld dword [ebx + 0x496990]
fcomp dword [esp + 4]
fnstsw ax
sahf
jae near loc_004293d2  ; jae 0x4293d2
fldz
fcomp dword [ebx + (_stocks_on_map + 28)]  ; fcomp dword [ebx + 0x49699c]
fnstsw ax
sahf
jb short loc_00429305  ; jb 0x429305
jmp short loc_004292f4  ; jmp 0x4292f4

loc_00429346:
mov eax, dword [ebx + (_stocks_on_map + 12)]  ; mov eax, dword [ebx + 0x49698c]
mov dword [esp + 4], eax
fld dword [ebx + (_stocks_on_map + 16)]  ; fld dword [ebx + 0x496990]
fcomp dword [esp + 4]
fnstsw ax
sahf
jbe short loc_00429392  ; jbe 0x429392
fld dword [esp + 4]
fmul dword [ref_00463fd4]  ; fmul dword [0x463fd4]
fstp dword [esp + 4]
fld dword [ebx + (_stocks_on_map + 16)]  ; fld dword [ebx + 0x496990]
fcomp dword [esp + 4]
fnstsw ax
sahf
jbe short loc_004293d2  ; jbe 0x4293d2
fldz
fcomp dword [ebx + (_stocks_on_map + 28)]  ; fcomp dword [ebx + 0x49699c]
fnstsw ax
sahf
jb near loc_004292f4  ; jb 0x4292f4
jmp near loc_00429305  ; jmp 0x429305

loc_00429392:
fld dword [esp + 4]
fmul dword [ref_00463fcc]  ; fmul dword [0x463fcc]
fstp dword [esp + 4]
fld dword [ebx + (_stocks_on_map + 16)]  ; fld dword [ebx + 0x496990]
fcomp dword [esp + 4]
fnstsw ax
sahf
jae short loc_004293d2  ; jae 0x4293d2
fldz
fcomp dword [ebx + (_stocks_on_map + 28)]  ; fcomp dword [ebx + 0x49699c]
fnstsw ax
sahf
jb near loc_00429305  ; jb 0x429305
fld dword [ebx + (_stocks_on_map + 28)]  ; fld dword [ebx + 0x49699c]
fmul dword [ref_00463fcc]  ; fmul dword [0x463fcc]

loc_004293cc:
fstp dword [ebx + (_stocks_on_map + 28)]  ; fstp dword [ebx + 0x49699c]

loc_004293d2:
mov eax, esi
shl eax, 3
add eax, esi
shl eax, 2
cmp dword [eax + (_stocks_on_map + 28)], 0x41200000  ; cmp dword [eax + 0x49699c], 0x41200000
jle short loc_004293f2  ; jle 0x4293f2
mov dword [eax + (_stocks_on_map + 28)], 0x41200000  ; mov dword [eax + 0x49699c], 0x41200000

loc_004293f2:
mov ebx, esi
shl ebx, 3
add ebx, esi
shl ebx, 2
fld dword [ebx + (_stocks_on_map + 28)]  ; fld dword [ebx + 0x49699c]
fcomp dword [ref_00463fe8]  ; fcomp dword [0x463fe8]
fnstsw ax
sahf
jae short loc_00429413  ; jae 0x429413
mov dword [ebx + (_stocks_on_map + 28)], edi  ; mov dword [ebx + 0x49699c], edi

loc_00429413:
mov ebx, esi
shl ebx, 3
add ebx, esi
push dword [ebx*4 + (_stocks_on_map + 28)]  ; push dword [ebx*4 + 0x49699c]
push dword [ebx*4 + (_stocks_on_map + 16)]  ; push dword [ebx*4 + 0x496990]
call fcn_00428ec5  ; call 0x428ec5
mov dword [esp + 0x10], eax
fld dword [esp + 0x10]
add esp, 8
fstp dword [ebx*4 + (_stocks_on_map + 20)]  ; fstp dword [ebx*4 + 0x496994]
mov eax, esi
shl eax, 3
lea edx, [esi + eax]
shl edx, 6
mov eax, dword [ref_00499100]  ; mov eax, dword [0x499100]
mov ecx, dword [ebx*4 + (_stocks_on_map + 20)]  ; mov ecx, dword [ebx*4 + 0x496994]
mov dword [edx + eax*4 + ref_00497328], ecx  ; mov dword [edx + eax*4 + 0x497328], ecx
fld dword [esp]
fadd dword [ebx*4 + (_stocks_on_map + 20)]  ; fadd dword [ebx*4 + 0x496994]
fstp dword [esp]
inc esi
cmp esi, 0xc
jge short loc_004294a0  ; jge 0x4294a0

loc_00429470:
mov ebx, esi
shl ebx, 3
add ebx, esi
shl ebx, 2
mov eax, dword [ebx + (_stocks_on_map + 20)]  ; mov eax, dword [ebx + 0x496994]
mov dword [ebx + (_stocks_on_map + 16)], eax  ; mov dword [ebx + 0x496990], eax
cmp byte [ebx + (_stocks_on_map + 6)], 0  ; cmp byte [ebx + 0x496986], 0
je near loc_0042921f  ; je 0x42921f
xor edx, edx
mov dword [ebx + (_stocks_on_map + 28)], edx  ; mov dword [ebx + 0x49699c], edx
jmp near loc_00429413  ; jmp 0x429413

loc_004294a0:
lea ecx, [eax + 1]
mov dword [ref_00499100], ecx  ; mov dword [0x499100], ecx
cmp ecx, 0x90
jne short loc_004294b9  ; jne 0x4294b9
xor esi, esi
mov dword [ref_00499100], esi  ; mov dword [0x499100], esi

loc_004294b9:
fld dword [esp]
fmul dword [ref_00463fec]  ; fmul dword [0x463fec]
call __round_toward_zero  ; call 0x457dbc
fistp dword [ref_00499078]  ; fistp dword [0x499078]

loc_004294cd:
add esp, 0xc
pop ebp
pop edi
pop esi
pop ebx
ret

_rich4_update_commercial_owner:
push ebx
push esi
push edi
sub esp, 8
xor edx, edx
mov dword [esp], edx
mov edx, dword [esp + 0x1c]
mov eax, edx
shl eax, 3
add eax, edx
shl eax, 2
mov dx, word [eax + (_stocks_on_map + 4)]  ; mov dx, word [eax + 0x496984]
test dx, dx
jne short loc_00429501  ; jne 0x429501
xor edx, edx
jmp near loc_004295e1  ; jmp 0x4295e1

loc_00429501:
mov eax, edx
and eax, 0xffff
imul eax, eax, 0x34
mov ebx, dword [_rich4_on_map_commercial_ptr]  ; mov ebx, dword [0x498e7c]
add ebx, eax
xor ecx, ecx
jmp short loc_0042951e  ; jmp 0x42951e

loc_00429517:
mov ecx, eax
cmp eax, 4
jge short loc_0042954f  ; jge 0x42954f

loc_0042951e:
lea eax, [ebx + ecx]
xor edx, edx
mov dl, byte [eax + 0x1c]
mov esi, dword [esp + 0x18]
inc esi
lea eax, [ecx + 1]
cmp edx, esi
jne short loc_00429517  ; jne 0x429517
mov edx, 3
sub edx, ecx
push edx
lea edx, [ebx + 0x1c]
add eax, edx
push eax
add edx, ecx
push edx
call _memcpy  ; call 0x456de8
add esp, 0xc
mov byte [ebx + 0x1f], 0

loc_0042954f:
mov edx, dword [esp + 0x18]
mov eax, edx
shl eax, 2
sub eax, edx
shl eax, 5
mov edi, dword [esp + 0x1c]
mov edi, dword [eax + edi*8 + _rich4_player_stocks]  ; mov edi, dword [eax + edi*8 + 0x4971a0]
test edi, edi
je short loc_004295c0  ; je 0x4295c0
mov ecx, 2
xor esi, esi
mov dword [esp + 4], esi
jmp short loc_00429584  ; jmp 0x429584

loc_00429579:
mov dl, byte [eax + 0x1c]
mov byte [eax + 0x1d], dl

loc_0042957f:
dec ecx
test ecx, ecx
jl short loc_004295b2  ; jl 0x4295b2

loc_00429584:
lea eax, [ebx + ecx]
mov dl, byte [eax + 0x1c]
test dl, dl
je short loc_0042957f  ; je 0x42957f
movzx esi, dl
dec esi
mov edx, esi
shl edx, 2
sub edx, esi
mov esi, edx
shl esi, 5
mov edx, dword [esp + 0x1c]
mov edx, dword [esi + edx*8 + _rich4_player_stocks]  ; mov edx, dword [esi + edx*8 + 0x4971a0]
cmp edx, edi
jl short loc_00429579  ; jl 0x429579
inc ecx
mov dword [esp + 4], ecx

loc_004295b2:
mov dl, byte [esp + 0x18]
inc dl
mov eax, dword [esp + 4]
mov byte [ebx + eax + 0x1c], dl

loc_004295c0:
mov al, byte [ebx + 0x18]
mov dh, byte [ebx + 0x1c]
cmp al, dh
je short loc_004295de  ; je 0x4295de
mov byte [ebx + 0x18], dh
push 0
call fcn_0040a4e1  ; call 0x40a4e1
add esp, 4
mov dword [esp], 1

loc_004295de:
mov edx, dword [esp]

loc_004295e1:
mov eax, edx
add esp, 8
pop edi
pop esi
pop ebx
ret

fcn_004295ea:
sub esp, 0x10
mov edx, dword [esp + 0x14]
mov eax, edx
shl eax, 3
add eax, edx
mov edx, dword [eax*4 + (_stocks_on_map + 16)]  ; mov edx, dword [eax*4 + 0x496990]
mov dword [esp + 8], edx
mov eax, dword [eax*4 + (_stocks_on_map + 20)]  ; mov eax, dword [eax*4 + 0x496994]
mov dword [esp + 4], eax
fld dword [esp + 4]
fcomp dword [esp + 8]
fnstsw ax
sahf
jbe short loc_0042964f  ; jbe 0x42964f
push 0x41200000
push edx
call fcn_00428ec5  ; call 0x428ec5
mov dword [esp + 0x14], eax
fld dword [esp + 0x14]
add esp, 8
fstp dword [esp]
fld dword [esp + 4]
fcomp dword [esp]
fnstsw ax
sahf
jae short loc_00429646  ; jae 0x429646
xor eax, eax
add esp, 0x10
ret

loc_00429646:
mov eax, 1
add esp, 0x10
ret

loc_0042964f:
jae short loc_00429688  ; jae 0x429688
push 0xc1200000
push edx
call fcn_00428ec5  ; call 0x428ec5
mov dword [esp + 0x14], eax
fld dword [esp + 0x14]
add esp, 8
fstp dword [esp]
fld dword [esp + 4]
fcomp dword [esp]
fnstsw ax
sahf
jbe short loc_0042967f  ; jbe 0x42967f
mov eax, 2
add esp, 0x10
ret

loc_0042967f:
mov eax, 3
add esp, 0x10
ret

loc_00429688:
mov eax, 4
add esp, 0x10
ret

section .data

align 8

ref_00463f88:
dd 0x42c80000

ref_00463f8c:
dd 0x40a00000

ref_00463f90:
dd 0x41700000

ref_00463f94:
dd 0x42480000

ref_00463f98:
dd 0x43160000

ref_00463f9c:
dd 0x00000000
dd 0x3fe00000

ref_00463fa4:
dd 0x9999999a
dd 0x3fb99999

ref_00463fac:
dd 0x9999999a
dd 0x3fa99999

ref_00463fb4:
dd 0x47ae147b
dd 0x3f847ae1

ref_00463fbc:
dd 0x461c3c00

ref_00463fc0:
dd 0x461c4000

ref_00463fc4:
dd 0x45800800

ref_00463fc8:
dd 0x44926000

ref_00463fcc:
dd 0x3f000000

ref_00463fd0:
dd 0x40000000

ref_00463fd4:
dd 0x41000000

ref_00463fd8:
dd 0x461c4000

ref_00463fdc:
dd 0x33333333
dd 0x3feb3333

ref_00463fe4:
dd 0x40400000

ref_00463fe8:
dd 0xc1200000

ref_00463fec:
dd 0x41200000
