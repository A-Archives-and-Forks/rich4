extern _pixel_fmt
extern ref_00485d68
extern ref_00486168
extern ref_00486188
extern ref_00486190
extern ref_00486198
extern ref_0048a060

global _rich4_convert_color
global fcn_0045520d
global fcn_004552b7
global fcn_004552e7
global fcn_004553da
global fcn_004553fe
global fcn_004554fc
global _rich4_convert_sprite
global fcn_004556e8
global fcn_00455711

section .text

_rich4_convert_color:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov eax, dword [ebp + 8]
mov ecx, dword [_pixel_fmt]  ; mov ecx, dword [0x47637c]
call dword [ecx*4 + ref_00485948]  ; ucall: call dword [ecx*4 + 0x485948]
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_0045520d:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 8]
mov ecx, dword [ebp + 0x10]
mov ebp, dword [_pixel_fmt]  ; mov ebp, dword [0x47637c]

loc_00455223:
mov eax, dword [esi]
bswap eax
shr eax, 8
call dword [ebp*4 + ref_00485948]  ; ucall: call dword [ebp*4 + 0x485948]
db 0x66, 0xab  ; stosw word es:[edi], ax
add esi, 3
loop loc_00455223  ; loop 0x455223
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_0045523e:
shld ebx, eax, 0x1d
and ebx, 0x1f
shld edx, eax, 0x1a
and edx, 0x3e0
shr eax, 9
and eax, 0x7c00
or eax, edx
or eax, ebx
ret

fcn_0045525c:
shld ebx, eax, 0x1d
and ebx, 0x1f
shld edx, eax, 0x1b
and edx, 0x7e0
shr eax, 8
and eax, 0xf800
or eax, edx
or eax, ebx
ret

fcn_0045527a:
shrd ebx, eax, 0x18
and ebx, 0xf800
shld edx, eax, 0x1b
and edx, 0x7e0
shr eax, 0x13
and eax, 0x1f
or eax, edx
or eax, ebx
ret

fcn_00455299:
shld ebx, eax, 0x1c
and ebx, 0xf
shld edx, eax, 0x18
and edx, 0xf0
shr eax, 0xc
and eax, 0xf00
or eax, edx
or eax, ebx
ret

fcn_004552b7:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x14]
shl ebx, 5
add ebx, ref_00485d68  ; add ebx, 0x485d68
shr ecx, 1
mov eax, dword [_pixel_fmt]  ; mov eax, dword [0x47637c]
call dword [eax*4 + ref_00485958]  ; ucall: call dword [eax*4 + 0x485958]
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_004552e7:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
movzx ebx, word [edi]
mov eax, ebx
mov edi, dword [edi + 8]
mul dword [ebp + 0x10]
add eax, dword [ebp + 0xc]
lea edi, [edi + eax*2]
mov esi, edi
sub ebx, dword [ebp + 0x14]
add ebx, ebx
mov dword [ebp + 0xc], ebx
mov ebx, dword [ebp + 0x1c]
shl ebx, 5
add ebx, ref_00485d68  ; add ebx, 0x485d68

loc_00455318:
mov ecx, dword [ebp + 0x14]
mov eax, dword [_pixel_fmt]  ; mov eax, dword [0x47637c]
call dword [eax*4 + ref_00485958]  ; ucall: call dword [eax*4 + 0x485958]
add esi, dword [ebp + 0xc]
mov edi, esi
dec dword [ebp + 0x18]
jne short loc_00455318  ; jne 0x455318
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00455337:
db 0x66, 0xad  ; lodsw ax, word [esi]
shrd edx, eax, 0x10
and eax, 0x1f
mov dl, byte [ebx + eax]
shld eax, edx, 0xb
and eax, 0x1f
mov dh, byte [ebx + eax]
shld eax, edx, 6
and eax, 0x1f
mov al, byte [ebx + eax]
shl dx, 3
shld ax, dx, 5
mov dh, dl
shld ax, dx, 5
db 0x66, 0xab  ; stosw word es:[edi], ax
loop fcn_00455337  ; loop 0x455337
ret

fcn_0045536c:
db 0x66, 0xad  ; lodsw ax, word [esi]
shrd edx, eax, 0x10
and eax, 0x1f
mov dl, byte [ebx + eax]
shld eax, edx, 0xa
and eax, 0x1f
mov dh, byte [ebx + eax]
shld eax, edx, 5
and eax, 0x1f
mov al, byte [ebx + eax]
shl dx, 3
shld ax, dx, 6
mov dh, dl
shld ax, dx, 5
db 0x66, 0xab  ; stosw word es:[edi], ax
loop fcn_0045536c  ; loop 0x45536c
ret

fcn_004553a1:
push ebx
sar ebx, 1

loc_004553a4:
db 0x66, 0xad  ; lodsw ax, word [esi]
shrd edx, eax, 0x10
and eax, 0xf
mov dl, byte [ebx + eax]
shld eax, edx, 0xc
and eax, 0xf
mov dh, byte [ebx + eax]
shld eax, edx, 8
and eax, 0xf
mov al, byte [ebx + eax]
shl dx, 4
shld ax, dx, 4
mov dh, dl
shld ax, dx, 4
db 0x66, 0xab  ; stosw word es:[edi], ax
loop loc_004553a4  ; loop 0x4553a4
pop ebx
ret

fcn_004553da:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
shr ecx, 1
mov eax, dword [_pixel_fmt]  ; mov eax, dword [0x47637c]
call dword [eax*4 + ref_00485968]  ; ucall: call dword [eax*4 + 0x485968]
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_004553fe:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
movzx ebx, word [edi]
mov eax, ebx
mov edi, dword [edi + 8]
mul dword [ebp + 0x10]
add eax, dword [ebp + 0xc]
lea edi, [edi + eax*2]
mov esi, edi
sub ebx, dword [ebp + 0x14]
add ebx, ebx
mov dword [ebp + 0xc], ebx

loc_00455423:
mov ecx, dword [ebp + 0x14]
mov eax, dword [_pixel_fmt]  ; mov eax, dword [0x47637c]
call dword [eax*4 + ref_00485968]  ; ucall: call dword [eax*4 + 0x485968]
add esi, dword [ebp + 0xc]
mov edi, esi
dec dword [ebp + 0x18]
jne short loc_00455423  ; jne 0x455423
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00455442:
db 0x66, 0xad  ; lodsw ax, word [esi]
or ax, ax
je short loc_0045547a  ; je 0x45547a
shrd edx, eax, 0x10
and eax, 0x1f
shld ebx, edx, 0xb
and ebx, 0x1f
add eax, ebx
shld ebx, edx, 6
and ebx, 0x1f
add eax, ebx
add eax, 0x10
shr eax, 2
shrd bx, ax, 5
shrd bx, ax, 5
shrd bx, ax, 6
mov word [edi], bx

loc_0045547a:
add edi, 2
loop fcn_00455442  ; loop 0x455442
ret

fcn_00455480:
db 0x66, 0xad  ; lodsw ax, word [esi]
or ax, ax
je short loc_004554b8  ; je 0x4554b8
shrd edx, eax, 0x10
and eax, 0x1f
shld ebx, edx, 0xa
and ebx, 0x1f
add eax, ebx
shld ebx, edx, 5
and ebx, 0x1f
add eax, ebx
add eax, 0x10
shr eax, 2
shrd bx, ax, 6
shrd bx, ax, 5
shrd bx, ax, 5
mov word [edi], bx

loc_004554b8:
add edi, 2
loop fcn_00455480  ; loop 0x455480
ret

fcn_004554be:
db 0x66, 0xad  ; lodsw ax, word [esi]
or ax, ax
je short loc_004554f6  ; je 0x4554f6
shrd edx, eax, 0x10
and eax, 0xf
shld ebx, edx, 0xc
and ebx, 0xf
add eax, ebx
shld ebx, edx, 8
and ebx, 0xf
add eax, ebx
add eax, 8
shr eax, 2
shrd bx, ax, 4
shrd bx, ax, 4
shrd bx, ax, 8
mov word [edi], bx

loc_004554f6:
add edi, 2
loop fcn_004554be  ; loop 0x4554be
ret

fcn_004554fc:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov ebx, dword [ebp + 0x1c]
shl ebx, 5
add ebx, ref_00485d68  ; add ebx, 0x485d68

loc_00455518:
push esi
push edi
mov ecx, dword [ebp + 0x14]

loc_0045551d:
cmp word [edx], 0xffff
je short loc_00455543  ; je 0x455543
add esi, 2
add edi, 2

loc_00455529:
add edx, 2
loop loc_0045551d  ; loop 0x45551d
pop edi
pop esi
add esi, 0x500
add edi, dword [ref_0048a060]  ; add edi, dword [0x48a060]
dec dword [ebp + 0x18]
jne short loc_00455518  ; jne 0x455518
jmp short loc_0045555a  ; jmp 0x45555a

loc_00455543:
push edx
push ecx
mov ecx, 1
mov eax, dword [_pixel_fmt]  ; mov eax, dword [0x47637c]
call dword [eax*4 + ref_00485958]  ; ucall: call dword [eax*4 + 0x485958]
pop ecx
pop edx
jmp short loc_00455529  ; jmp 0x455529

loc_0045555a:
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00455560:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [_pixel_fmt]  ; mov ebx, dword [0x47637c]
movzx edx, word [ebx*2 + ref_00486188]  ; movzx edx, word [ebx*2 + 0x486188]
movzx ebx, word [ebx*2 + ref_00486190]  ; movzx ebx, word [ebx*2 + 0x486190]

loc_00455583:
push edi
mov ecx, dword [ebp + 0x10]
shr ecx, 1

loc_00455589:
lodsd  ; lodsd eax, dword [esi]
cmp ax, 0x2711
je short loc_004555a9  ; je 0x4555a9
cmp ax, 0x2712
je short loc_004555b4  ; je 0x4555b4

loc_00455596:
add edi, 4
loop loc_00455589  ; loop 0x455589
pop edi
add edi, 0x500
dec dword [ebp + 0x14]
jne short loc_00455583  ; jne 0x455583
jmp short loc_004555bf  ; jmp 0x4555bf

loc_004555a9:
mov dword [esi - 4], 0
or dword [edi], edx
jmp short loc_00455596  ; jmp 0x455596

loc_004555b4:
mov dword [esi - 4], 0
or dword [edi], ebx
jmp short loc_00455596  ; jmp 0x455596

loc_004555bf:
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

_rich4_convert_sprite:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov esi, dword [ebp + 8]
add esi, dword [esi + 8]
mov edi, esi
mov ecx, 0x100
mov eax, dword [_pixel_fmt]  ; mov eax, dword [0x47637c]
call dword [eax*4 + ref_00485978]  ; ucall: call dword [eax*4 + 0x485978]
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_004555eb:
db 0x66, 0xad  ; lodsw ax, word [esi]
shrd edx, eax, 0x10
and eax, 0x1f
shld ebx, edx, 0xb
and ebx, 0x1f
add eax, ebx
shld ebx, edx, 6
and ebx, 0x1f
add eax, ebx
add eax, 0x28
shr eax, 2
mov dx, 0x1f
shrd bx, dx, 5
shrd bx, ax, 5
shrd bx, ax, 6
mov word [edi], bx
add edi, 2
loop fcn_004555eb  ; loop 0x4555eb
ret

fcn_00455628:
db 0x66, 0xad  ; lodsw ax, word [esi]
shrd edx, eax, 0x10
and eax, 0x1f
shld ebx, edx, 0xa
and ebx, 0x1f
add eax, ebx
shld ebx, edx, 5
and ebx, 0x1f
add eax, ebx
add eax, 0x1f
shr eax, 2
and eax, 0x1f
add al, byte [eax + ref_00486168]  ; add al, byte [eax + 0x486168]
mov dx, 0x1f
shrd bx, dx, 6
shrd bx, ax, 5
shrd bx, ax, 5
mov word [edi], bx
add edi, 2
loop fcn_00455628  ; loop 0x455628
ret

fcn_0045566e:
db 0x66, 0xad  ; lodsw ax, word [esi]
shrd edx, eax, 0x10
and eax, 0x1f
shld ebx, edx, 0xa
and ebx, 0x1f
add eax, ebx
shld ebx, edx, 5
and ebx, 0x1f
add eax, ebx
add eax, 0x28
shr eax, 2
shrd bx, ax, 6
shrd bx, ax, 5
mov ax, 0x1f
shrd bx, ax, 5
mov word [edi], bx
add edi, 2
loop fcn_0045566e  ; loop 0x45566e
ret

fcn_004556ab:
db 0x66, 0xad  ; lodsw ax, word [esi]
shrd edx, eax, 0x10
and eax, 0xf
shld ebx, edx, 0xc
and ebx, 0xf
add eax, ebx
shld ebx, edx, 8
and ebx, 0xf
add eax, ebx
add eax, 0x14
shr eax, 2
mov dx, 0x1f
shrd bx, dx, 4
shrd bx, ax, 4
shrd bx, ax, 8
mov word [edi], bx
add edi, 2
loop fcn_004556ab  ; loop 0x4556ab
ret

fcn_004556e8:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, 0x1b8
mov edx, 0x190

loc_004556ff:
mov ecx, 0xdc
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
add esi, edx
dec ebx
jne short loc_004556ff  ; jne 0x4556ff
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00455711:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov ebp, dword [ref_0048a060]  ; mov ebp, dword [0x48a060]
sub ebp, 0x370
mov bl, byte [ebx + ref_00486198]  ; mov bl, byte [ebx + 0x486198]
or bl, bl
je short loc_00455762  ; je 0x455762
shl ebx, 5
add ebx, ref_00485d68  ; add ebx, 0x485d68
mov ecx, 0x1b8

loc_00455745:
push ecx
mov ecx, 0x1b8
mov eax, dword [_pixel_fmt]  ; mov eax, dword [0x47637c]
call dword [eax*4 + ref_00485958]  ; ucall: call dword [eax*4 + 0x485958]
pop ecx
add edi, ebp
loop loc_00455745  ; loop 0x455745
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

loc_00455762:
mov ebx, 0x1b8

loc_00455767:
mov ecx, 0xdc
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
add edi, ebp
dec ebx
jne short loc_00455767  ; jne 0x455767
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

endloc_00455779:
db 0x00
db 0x00
db 0x00

section .data

ref_00485948:  ; may contain a jump table
dd fcn_0045523e
dd fcn_0045525c
dd fcn_0045527a
dd fcn_00455299

ref_00485958:  ; may contain a jump table
dd fcn_00455337
dd fcn_0045536c
dd fcn_0045536c
dd fcn_004553a1

ref_00485968:  ; may contain a jump table
dd fcn_00455442
dd fcn_00455480
dd fcn_00455480
dd fcn_004554be

ref_00485978:  ; may contain a jump table
dd fcn_004555eb
dd fcn_00455628
dd fcn_0045566e
dd fcn_004556ab
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x01010101
dd 0x01010101
dd 0x01010101
dd 0x01010101
dd 0x00000000
dd 0x00000000
dd 0x01010101
dd 0x01010101
dd 0x01010101
dd 0x01010101
dd 0x02020202
dd 0x02020202
dd 0x00000000
dd 0x01010000
dd 0x01010101
dd 0x01010101
dd 0x02020202
dd 0x02020202
dd 0x03030202
dd 0x03030303
dd 0x00000000
dd 0x01010101
dd 0x01010101
dd 0x02020202
dd 0x02020202
dd 0x03030303
dd 0x03030303
dd 0x04040404
dd 0x00000000
dd 0x01010101
dd 0x02020101
dd 0x02020202
dd 0x03030303
dd 0x04040303
dd 0x04040404
dd 0x05050505
dd 0x01000000
dd 0x01010101
dd 0x02020202
dd 0x03030302
dd 0x04030303
dd 0x04040404
dd 0x05050505
dd 0x06060605
dd 0x01000000
dd 0x02010101
dd 0x02020202
dd 0x03030303
dd 0x04040404
dd 0x05050505
dd 0x06060605
dd 0x07070706
dd 0x01010000
dd 0x02020101
dd 0x03030202
dd 0x04040303
dd 0x05050404
dd 0x06060505
dd 0x07070606
dd 0x08080707
dd 0x01010000
dd 0x02020101
dd 0x03030302
dd 0x04040403
dd 0x06050505
dd 0x07060606
dd 0x08080707
dd 0x09090808
dd 0x01010000
dd 0x02020201
dd 0x04030303
dd 0x05050404
dd 0x06060505
dd 0x07070706
dd 0x09080808
dd 0x0a0a0909
dd 0x01010000
dd 0x02020201
dd 0x04040303
dd 0x05050504
dd 0x07060606
dd 0x08080707
dd 0x0a090909
dd 0x0b0b0a0a
dd 0x01010000
dd 0x03020202
dd 0x04040303
dd 0x06050505
dd 0x07070706
dd 0x09090808
dd 0x0a0a0a09
dd 0x0c0c0b0b
dd 0x01010000
dd 0x03030202
dd 0x05040403
dd 0x06060505
dd 0x08080707
dd 0x0a090908
dd 0x0b0b0a0a
dd 0x0d0d0c0c
dd 0x01010000
dd 0x03030202
dd 0x05050404
dd 0x07060605
dd 0x09080807
dd 0x0a0a0909
dd 0x0c0c0b0b
dd 0x0e0e0d0d
dd 0x01010000
dd 0x03030202
dd 0x05050404
dd 0x07070606
dd 0x09090808
dd 0x0b0b0a0a
dd 0x0d0d0c0c
dd 0x0f0f0e0e
dd 0x02010100
dd 0x04030302
dd 0x06050504
dd 0x08070706
dd 0x0a090908
dd 0x0c0b0b0a
dd 0x0e0d0d0c
dd 0x100f0f0e
dd 0x02010100
dd 0x04030302
dd 0x06050504
dd 0x08080707
dd 0x0a0a0909
dd 0x0d0c0c0b
dd 0x0f0e0e0d
dd 0x1110100f
dd 0x02010100
dd 0x04030302
dd 0x06060505
dd 0x09080807
dd 0x0b0a0a09
dd 0x0d0d0c0c
dd 0x100f0f0e
dd 0x12111110
dd 0x02010100
dd 0x04040302
dd 0x07060605
dd 0x09090807
dd 0x0c0b0a0a
dd 0x0e0d0d0c
dd 0x11100f0f
dd 0x13121211
dd 0x02010100
dd 0x05040303
dd 0x07060605
dd 0x0a090808
dd 0x0c0c0b0a
dd 0x0f0e0e0d
dd 0x1111100f
dd 0x14131312
dd 0x02010100
dd 0x05040303
dd 0x07070605
dd 0x0a090908
dd 0x0d0c0c0b
dd 0x100f0e0e
dd 0x12121110
dd 0x15141413
dd 0x02010100
dd 0x05040403
dd 0x08070606
dd 0x0b0a0909
dd 0x0d0d0c0b
dd 0x10100f0e
dd 0x13121211
dd 0x16151514
dd 0x02010100
dd 0x05040403
dd 0x08070706
dd 0x0b0a0a09
dd 0x0e0d0d0c
dd 0x1110100f
dd 0x14131312
dd 0x17161615
dd 0x02020100
dd 0x05050403
dd 0x09080706
dd 0x0c0b0a09
dd 0x0f0e0d0c
dd 0x1211100f
dd 0x15141313
dd 0x18171616
dd 0x02020100
dd 0x06050403
dd 0x09080706
dd 0x0c0b0a0a
dd 0x0f0f0e0d
dd 0x13121110
dd 0x16151413
dd 0x19181717
dd 0x03020100
dd 0x06050403
dd 0x09080807
dd 0x0d0c0b0a
dd 0x100f0e0d
dd 0x13121211
dd 0x17161514
dd 0x1a191817
dd 0x03020100
dd 0x06050403
dd 0x0a090807
dd 0x0d0c0b0a
dd 0x11100f0e
dd 0x14131211
dd 0x18171615
dd 0x1b1a1918
dd 0x03020100
dd 0x06050504
dd 0x0a090807
dd 0x0e0d0c0b
dd 0x11100f0e
dd 0x15141312
dd 0x18171716
dd 0x1c1b1a19
dd 0x03020100
dd 0x07060504
dd 0x0a090807
dd 0x0e0d0c0b
dd 0x1211100f
dd 0x16151413
dd 0x19181716
dd 0x1d1c1b1a
dd 0x03020100
dd 0x07060504
dd 0x0b0a0908
dd 0x0f0e0d0c
dd 0x1211100f
dd 0x16151413
dd 0x1a191817
dd 0x1e1d1c1b

ref_00485d68:
dd 0x03020100
dd 0x07060504
dd 0x0b0a0908
dd 0x0f0e0d0c
dd 0x13121110
dd 0x17161514
dd 0x1b1a1918
dd 0x1f1e1d1c
dd 0x04030201
dd 0x08070605
dd 0x0c0b0a09
dd 0x100f0e0d
dd 0x13121110
dd 0x17161514
dd 0x1b1a1918
dd 0x1f1e1d1c
dd 0x05040302
dd 0x09080706
dd 0x0c0b0a09
dd 0x100f0e0d
dd 0x14131211
dd 0x18171615
dd 0x1b1a1918
dd 0x1f1e1d1c
dd 0x06050403
dd 0x09080807
dd 0x0d0c0b0a
dd 0x11100f0e
dd 0x14131211
dd 0x18171615
dd 0x1b1a1a19
dd 0x1f1e1d1c
dd 0x07060504
dd 0x0a090807
dd 0x0e0d0c0b
dd 0x11100f0e
dd 0x15141312
dd 0x18171615
dd 0x1c1b1a19
dd 0x1f1e1d1c
dd 0x08070605
dd 0x0b0a0908
dd 0x0e0d0d0c
dd 0x1211100f
dd 0x15141312
dd 0x18171716
dd 0x1c1b1a19
dd 0x1f1e1d1c
dd 0x08080706
dd 0x0c0b0a09
dd 0x0f0e0d0c
dd 0x12111010
dd 0x15151413
dd 0x19181716
dd 0x1c1b1a19
dd 0x1f1e1d1d
dd 0x09090807
dd 0x0c0c0b0a
dd 0x100f0e0d
dd 0x13121110
dd 0x16151413
dd 0x19181716
dd 0x1c1b1a1a
dd 0x1f1e1d1d
dd 0x0a090908
dd 0x0d0c0c0b
dd 0x100f0f0e
dd 0x13121211
dd 0x16151514
dd 0x19181817
dd 0x1c1b1b1a
dd 0x1f1e1e1d
dd 0x0b0a0a09
dd 0x0e0d0d0c
dd 0x11100f0f
dd 0x14131212
dd 0x16161514
dd 0x19191817
dd 0x1c1b1b1a
dd 0x1f1e1e1d
dd 0x0c0b0b0a
dd 0x0f0e0d0d
dd 0x1111100f
dd 0x14131312
dd 0x17161615
dd 0x1a191818
dd 0x1c1c1b1a
dd 0x1f1e1e1d
dd 0x0d0c0c0b
dd 0x100f0e0e
dd 0x12111110
dd 0x15141313
dd 0x17171615
dd 0x1a191918
dd 0x1c1c1b1a
dd 0x1f1e1e1d
dd 0x0e0d0d0c
dd 0x10100f0e
dd 0x13121211
dd 0x15151413
dd 0x18171616
dd 0x1a191918
dd 0x1d1c1b1b
dd 0x1f1e1e1d
dd 0x0f0e0e0d
dd 0x1110100f
dd 0x13131212
dd 0x16151514
dd 0x18171716
dd 0x1a1a1919
dd 0x1d1c1c1b
dd 0x1f1e1e1d
dd 0x100f0f0e
dd 0x12111110
dd 0x14131312
dd 0x16161515
dd 0x18181717
dd 0x1b1a1a19
dd 0x1d1c1c1b
dd 0x1f1e1e1d
dd 0x1110100f
dd 0x13121211
dd 0x15141413
dd 0x17161615
dd 0x19181817
dd 0x1b1a1a19
dd 0x1d1c1c1b
dd 0x1f1e1e1d
dd 0x11111010
dd 0x13131212
dd 0x15151414
dd 0x17171616
dd 0x19191818
dd 0x1b1b1a1a
dd 0x1d1d1c1c
dd 0x1f1f1e1e
dd 0x12121111
dd 0x14141313
dd 0x16161515
dd 0x18171716
dd 0x1a191918
dd 0x1b1b1a1a
dd 0x1d1d1c1c
dd 0x1f1f1e1e
dd 0x13131212
dd 0x15151414
dd 0x17161615
dd 0x18181717
dd 0x1a1a1919
dd 0x1c1b1b1a
dd 0x1d1d1c1c
dd 0x1f1f1e1e
dd 0x14141313
dd 0x16151515
dd 0x17171616
dd 0x19181818
dd 0x1a1a1a19
dd 0x1c1c1b1b
dd 0x1d1d1d1c
dd 0x1f1f1e1e
dd 0x15151414
dd 0x16161615
dd 0x18181717
dd 0x19191918
dd 0x1b1a1a1a
dd 0x1c1c1b1b
dd 0x1e1d1d1d
dd 0x1f1f1e1e
dd 0x16161515
dd 0x17171716
dd 0x19181818
dd 0x1a1a1919
dd 0x1b1b1a1a
dd 0x1c1c1c1b
dd 0x1e1d1d1d
dd 0x1f1f1e1e
dd 0x17171616
dd 0x18181717
dd 0x19191918
dd 0x1a1a1a19
dd 0x1c1b1b1b
dd 0x1d1c1c1c
dd 0x1e1e1d1d
dd 0x1f1f1e1e
dd 0x18181717
dd 0x19191818
dd 0x1a1a1919
dd 0x1b1b1a1a
dd 0x1c1c1b1b
dd 0x1d1d1c1c
dd 0x1e1e1d1d
dd 0x1f1f1e1e
dd 0x19181818
dd 0x1a191919
dd 0x1a1a1a1a
dd 0x1b1b1b1b
dd 0x1c1c1c1c
dd 0x1d1d1d1d
dd 0x1e1e1e1d
dd 0x1f1f1f1e
dd 0x1a191919
dd 0x1a1a1a1a
dd 0x1b1b1b1b
dd 0x1c1c1c1b
dd 0x1d1c1c1c
dd 0x1d1d1d1d
dd 0x1e1e1e1e
dd 0x1f1f1f1e
dd 0x1a1a1a1a
dd 0x1b1b1b1b
dd 0x1c1c1b1b
dd 0x1c1c1c1c
dd 0x1d1d1d1d
dd 0x1e1e1d1d
dd 0x1e1e1e1e
dd 0x1f1f1f1f
dd 0x1b1b1b1b
dd 0x1c1c1c1c
dd 0x1c1c1c1c
dd 0x1d1d1d1d
dd 0x1d1d1d1d
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1f1f1f1f
dd 0x1c1c1c1c
dd 0x1d1d1c1c
dd 0x1d1d1d1d
dd 0x1d1d1d1d
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1f1f1e1e
dd 0x1f1f1f1f
dd 0x1d1d1d1d
dd 0x1d1d1d1d
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1e1e1e1e
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f
dd 0x1f1f1f1f

ref_00486168:
dd 0x08080808
dd 0x08080808
dd 0x08080808
dd 0x08080808
dd 0x08080808
dd 0x08080808
dd 0x04050607
dd 0x00010203

ref_00486188:
dd 0xf8007c00
dd 0x0f00003f

ref_00486190:
dd 0x003f003f
dd 0x000ff800

ref_00486198:
dd 0x00000000
dd 0x1c180c04
dd 0x14181c1e
dd 0x0a0c0e10
dd 0x06070809
dd 0x02030405
dd 0x00000001
dd 0x00000000
