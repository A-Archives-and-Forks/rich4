extern _draw_area
extern _draw_image_in_rect
extern _draw_image_in_rect_ex
extern _draw_non_zero_image_in_rect
extern _draw_non_zero_image_in_rect_ex
extern _pixel_fmt
extern _rich4_convert_color

global fcn_00456180
global fcn_004561be
global fcn_0045620f
global fcn_00456280
global fcn_004562a5
global fcn_004562cc
global fcn_004562fa
global fcn_00456328
global fcn_00456356
global fcn_00456384
global fcn_004563f5
global fcn_00456418
global fcn_0045643d
global fcn_00456469
global fcn_00456495
global fcn_004564c1
global fcn_004564e6
global fcn_00456512
global fcn_0045663e
global fcn_00456770
global fcn_004568c2
global fcn_00456a1c
global fcn_00456b3e
global fcn_00456ba5
global fcn_00456c0a
global fcn_00456c33

section .text

fcn_00456180:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov ebx, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov ebp, 0x500
sub ebp, edx
shr ebp, 2
shr edx, 2
mov eax, 0x1e0

loc_004561a2:
mov ecx, ebp
lea esi, [ebx + edx*4]
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov ecx, edx
mov esi, ebx
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
add ebx, 0x500
dec eax
jne short loc_004561a2  ; jne 0x4561a2
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_004561be:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
push dword [ebp + 0x1c]
call _rich4_convert_color  ; call 0x4551f0
add esp, 4
mov bx, ax
shl eax, 0x10
mov ax, bx
mov edi, dword [ebp + 8]
movzx edx, word [edi]
mov ecx, edx
imul ecx, dword [ebp + 0x10]
add ecx, dword [ebp + 0xc]
mov edi, dword [edi + 8]
lea edi, [edi + ecx*2]
mov esi, dword [ebp + 0x14]
mov ebx, dword [ebp + 0x18]
sub edx, esi
add edx, edx

loc_004561f8:
mov ecx, esi
shr ecx, 1
rep stosd  ; rep stosd dword es:[edi], eax
adc ecx, 0
db 0xf3, 0x66, 0xab  ; rep stosw word es:[edi], ax
add edi, edx
dec ebx
jne short loc_004561f8  ; jne 0x4561f8
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_0045620f:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
push dword [ebp + 0x1c]
call _rich4_convert_color  ; call 0x4551f0
add esp, 4
mov bx, ax
shl eax, 0x10
mov ax, bx
mov edi, dword [ebp + 8]
movzx edx, word [edi]
mov ecx, edx
imul ecx, dword [ebp + 0x10]
add ecx, dword [ebp + 0xc]
mov edi, dword [edi + 8]
lea edi, [edi + ecx*2]
mov esi, dword [ebp + 0x14]
mov ebx, dword [ebp + 0x18]
add edx, edx
mov ecx, esi
shr ecx, 1
push edi
rep stosd  ; rep stosd dword es:[edi], eax
adc ecx, 0
db 0xf3, 0x66, 0xab  ; rep stosw word es:[edi], ax
pop edi
add edi, edx
dec ebx
lea ecx, [esi - 1]
add ecx, ecx

loc_0045625d:
cmp ebx, 1
je short loc_0045626e  ; je 0x45626e
mov word [edi], ax
mov word [edi + ecx], ax
add edi, edx
dec ebx
jmp short loc_0045625d  ; jmp 0x45625d

loc_0045626e:
mov ecx, esi
shr ecx, 1
rep stosd  ; rep stosd dword es:[edi], eax
adc ecx, 0
db 0xf3, 0x66, 0xab  ; rep stosw word es:[edi], ax
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00456280:
push ebp
mov ebp, esp
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
mov edx, dword [ebp + 8]
push dword [edx + 8]
movzx eax, word [edx + 2]
push eax
movzx eax, word [edx]
push eax
call _draw_image_in_rect  ; call 0x455b3a
add esp, 0x18
pop ebp
ret

fcn_004562a5:
push ebp
mov ebp, esp
push 0
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
mov edx, dword [ebp + 8]
push dword [edx + 8]
movzx eax, word [edx + 2]
push eax
movzx eax, word [edx]
push eax
call _draw_non_zero_image_in_rect  ; call 0x455c52
add esp, 0x1c
pop ebp
ret

fcn_004562cc:
push ebp
mov ebp, esp
push 0
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
mov edx, dword [ebp + 8]
push dword [edx + 8]
movzx eax, word [edx]
push eax
call _draw_image_in_rect_ex  ; call 0x455e24
add esp, 0x28
pop ebp
ret

fcn_004562fa:
push ebp
mov ebp, esp
push 1
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
mov edx, dword [ebp + 8]
push dword [edx + 8]
movzx eax, word [edx]
push eax
call _draw_image_in_rect_ex  ; call 0x455e24
add esp, 0x28
pop ebp
ret

fcn_00456328:
push ebp
mov ebp, esp
push 0
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
mov edx, dword [ebp + 8]
push dword [edx + 8]
movzx eax, word [edx]
push eax
call _draw_non_zero_image_in_rect_ex  ; call 0x455fd9
add esp, 0x28
pop ebp
ret

fcn_00456356:
push ebp
mov ebp, esp
push 1
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
mov edx, dword [ebp + 8]
push dword [edx + 8]
movzx eax, word [edx]
push eax
call _draw_non_zero_image_in_rect_ex  ; call 0x455fd9
add esp, 0x28
pop ebp
ret

fcn_00456384:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
push dword [ebp + 0x18]
call _rich4_convert_color  ; call 0x4551f0
add esp, 4
mov dword [ebp + 0x18], eax
mov esi, dword [ebp + 0xc]
movsx eax, word [esi + 4]
sub dword [ebp + 0x10], eax
movsx eax, word [esi + 6]
sub dword [ebp + 0x14], eax
mov edi, dword [ebp + 8]
movzx eax, word [edi]
mov ebx, eax
mul dword [ebp + 0x14]
add eax, dword [ebp + 0x10]
mov edi, dword [edi + 8]
lea edi, [edi + eax*2]
movzx edx, word [esi]
sub ebx, edx
add ebx, ebx
mov dword [ebp + 0x10], ebx
movzx ebx, word [esi + 2]
mov dword [ebp + 0x14], ebx
mov bx, word [ebp + 0x18]
mov esi, dword [esi + 8]

loc_004563d6:
mov ecx, edx

loc_004563d8:
db 0x66, 0xad  ; lodsw ax, word [esi]
or ax, ax
je short loc_004563e2  ; je 0x4563e2
mov word [edi], bx

loc_004563e2:
add edi, 2
loop loc_004563d8  ; loop 0x4563d8
add edi, dword [ebp + 0x10]
dec dword [ebp + 0x14]
jne short loc_004563d6  ; jne 0x4563d6
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_004563f5:
push ebp
mov ebp, esp
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0x1e0
push 0x280
call _draw_image_in_rect  ; call 0x455b3a
add esp, 0x18
pop ebp
ret

fcn_00456418:
push ebp
mov ebp, esp
push 0
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0x1e0
push 0x280
call _draw_non_zero_image_in_rect  ; call 0x455c52
add esp, 0x1c
pop ebp
ret

fcn_0045643d:
push ebp
mov ebp, esp
push 0
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0x280
call _draw_image_in_rect_ex  ; call 0x455e24
add esp, 0x28
pop ebp
ret

fcn_00456469:
push ebp
mov ebp, esp
push 1
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0x280
call _draw_image_in_rect_ex  ; call 0x455e24
add esp, 0x28
pop ebp
ret

fcn_00456495:
push ebp
mov ebp, esp
push 0
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0x280
call _draw_non_zero_image_in_rect_ex  ; call 0x455fd9
add esp, 0x28
pop ebp
ret

fcn_004564c1:
push ebp
mov ebp, esp
push 1
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0x1e0
push 0x280
call _draw_non_zero_image_in_rect  ; call 0x455c52
add esp, 0x1c
pop ebp
ret

fcn_004564e6:
push ebp
mov ebp, esp
push 1
push dword [ebp + 0x24]
push dword [ebp + 0x20]
push dword [ebp + 0x1c]
push dword [ebp + 0x18]
push dword [ebp + 0x14]
push dword [ebp + 0x10]
push dword [ebp + 0xc]
push dword [ebp + 8]
push 0x280
call _draw_non_zero_image_in_rect_ex  ; call 0x455fd9
add esp, 0x28
pop ebp
ret

fcn_00456512:
push ebp
mov ebp, esp
sub esp, 0x10
push ebx
push ecx
push esi
push edi
mov ebx, 1
mov eax, dword [ebp + 0x10]
lea esi, [eax*4]
lea esi, [esi + eax*8]
mov eax, dword [ebp + 0xc]
lea esi, [esi + eax + 0xc]
mov edx, dword [eax + 8]
add edx, eax
mov dword [ebp + 0x10], edx
movsx eax, word [esi + 4]
sub dword [ebp + 0x14], eax
movsx eax, word [esi + 6]
sub dword [ebp + 0x18], eax
mov eax, dword [ebp + 0x14]
cmp eax, 0x280
jge near loc_00456633  ; jge 0x456633
movzx edx, word [esi]
add eax, edx
jle near loc_00456633  ; jle 0x456633
mov eax, dword [ebp + 0x18]
cmp eax, 0x1e0
jge near loc_00456633  ; jge 0x456633
movzx edx, word [esi + 2]
add eax, edx
jle near loc_00456633  ; jle 0x456633
mov dword [ebp - 4], 0
mov dword [ebp - 8], 0
movzx eax, word [esi]
mov dword [ebp - 0xc], eax
mov ax, word [esi + 2]
mov dword [ebp - 0x10], eax
xor eax, eax
cmp dword [ebp + 0x14], eax
jge short loc_004565ab  ; jge 0x4565ab
xchg dword [ebp + 0x14], eax
sub dword [ebp - 4], eax
add dword [ebp - 0xc], eax
jmp short loc_004565bb  ; jmp 0x4565bb

loc_004565ab:
mov eax, dword [ebp - 0xc]
add eax, dword [ebp + 0x14]
sub eax, 0x280
jle short loc_004565bb  ; jle 0x4565bb
sub dword [ebp - 0xc], eax

loc_004565bb:
xor eax, eax
cmp dword [ebp + 0x18], eax
jge short loc_004565cd  ; jge 0x4565cd
xchg dword [ebp + 0x18], eax
sub dword [ebp - 8], eax
add dword [ebp - 0x10], eax
jmp short loc_004565dd  ; jmp 0x4565dd

loc_004565cd:
mov eax, dword [ebp - 0x10]
add eax, dword [ebp + 0x18]
sub eax, 0x1e0
jle short loc_004565dd  ; jle 0x4565dd
sub dword [ebp - 0x10], eax

loc_004565dd:
movzx eax, word [esi]
mov ebx, eax
mul dword [ebp - 8]
add eax, dword [ebp - 4]
mov esi, dword [esi + 8]
add esi, eax
sub ebx, dword [ebp - 0xc]
mov dword [ebp - 4], ebx
mov eax, 0x280
sub eax, dword [ebp - 0xc]
add eax, eax
mov dword [ebp - 8], eax
mov edi, dword [ebp + 0x18]
imul edi, edi, 0x280
add edi, dword [ebp + 0x14]
add edi, edi
add edi, dword [ebp + 8]
mov ebx, dword [ebp - 0x10]
mov edx, dword [ebp + 0x10]

loc_00456617:
mov ecx, dword [ebp - 0xc]

loc_0045661a:
lodsb  ; lodsb al, byte [esi]
and eax, 0xff
mov ax, word [edx + eax*2]
db 0x66, 0xab  ; stosw word es:[edi], ax
loop loc_0045661a  ; loop 0x45661a
add esi, dword [ebp - 4]
add edi, dword [ebp - 8]
dec ebx
jne short loc_00456617  ; jne 0x456617
xor ebx, ebx

loc_00456633:
mov eax, ebx
pop edi
pop esi
pop ecx
pop ebx
add esp, 0x10
pop ebp
ret

fcn_0045663e:
push ebp
mov ebp, esp
sub esp, 0x10
push ebx
push ecx
push esi
push edi
mov ebx, 1
mov eax, dword [ebp + 0x10]
lea esi, [eax*4]
lea esi, [esi + eax*8]
mov eax, dword [ebp + 0xc]
lea esi, [esi + eax + 0xc]
mov edx, dword [eax + 8]
add edx, eax
mov dword [ebp + 0x10], edx
movsx eax, word [esi + 4]
sub dword [ebp + 0x14], eax
movsx eax, word [esi + 6]
sub dword [ebp + 0x18], eax
mov eax, dword [ebp + 0x14]
cmp eax, 0x280
jge near loc_00456765  ; jge 0x456765
movzx edx, word [esi]
add eax, edx
jle near loc_00456765  ; jle 0x456765
mov eax, dword [ebp + 0x18]
cmp eax, 0x1e0
jge near loc_00456765  ; jge 0x456765
movzx edx, word [esi + 2]
add eax, edx
jle near loc_00456765  ; jle 0x456765
mov dword [ebp - 4], 0
mov dword [ebp - 8], 0
movzx eax, word [esi]
mov dword [ebp - 0xc], eax
mov ax, word [esi + 2]
mov dword [ebp - 0x10], eax
xor eax, eax
cmp dword [ebp + 0x14], eax
jge short loc_004566d7  ; jge 0x4566d7
xchg dword [ebp + 0x14], eax
sub dword [ebp - 4], eax
add dword [ebp - 0xc], eax
jmp short loc_004566e7  ; jmp 0x4566e7

loc_004566d7:
mov eax, dword [ebp - 0xc]
add eax, dword [ebp + 0x14]
sub eax, 0x280
jle short loc_004566e7  ; jle 0x4566e7
sub dword [ebp - 0xc], eax

loc_004566e7:
xor eax, eax
cmp dword [ebp + 0x18], eax
jge short loc_004566f9  ; jge 0x4566f9
xchg dword [ebp + 0x18], eax
sub dword [ebp - 8], eax
add dword [ebp - 0x10], eax
jmp short loc_00456709  ; jmp 0x456709

loc_004566f9:
mov eax, dword [ebp - 0x10]
add eax, dword [ebp + 0x18]
sub eax, 0x1e0
jle short loc_00456709  ; jle 0x456709
sub dword [ebp - 0x10], eax

loc_00456709:
movzx eax, word [esi]
mov ebx, eax
mul dword [ebp - 8]
add eax, dword [ebp - 4]
mov esi, dword [esi + 8]
add esi, eax
sub ebx, dword [ebp - 0xc]
mov dword [ebp - 4], ebx
mov eax, 0x280
sub eax, dword [ebp - 0xc]
add eax, eax
mov dword [ebp - 8], eax
mov edi, dword [ebp + 0x18]
imul edi, edi, 0x280
add edi, dword [ebp + 0x14]
add edi, edi
add edi, dword [ebp + 8]
mov ebx, dword [ebp - 0x10]
mov edx, dword [ebp + 0x10]

loc_00456743:
mov ecx, dword [ebp - 0xc]

loc_00456746:
lodsb  ; lodsb al, byte [esi]
and eax, 0xff
je short loc_00456755  ; je 0x456755
mov ax, word [edx + eax*2]
mov word [edi], ax

loc_00456755:
add edi, 2
loop loc_00456746  ; loop 0x456746
add esi, dword [ebp - 4]
add edi, dword [ebp - 8]
dec ebx
jne short loc_00456743  ; jne 0x456743
xor ebx, ebx

loc_00456765:
mov eax, ebx
pop edi
pop esi
pop ecx
pop ebx
add esp, 0x10
pop ebp
ret

fcn_00456770:
push ebp
mov ebp, esp
sub esp, 0x10
push ebx
push ecx
push esi
push edi
mov ebx, 1
mov eax, dword [ebp + 0x10]
lea esi, [eax*4]
lea esi, [esi + eax*8]
mov eax, dword [ebp + 0xc]
lea esi, [esi + eax + 0xc]
mov edx, dword [eax + 8]
add edx, eax
mov dword [ebp + 0x10], edx
movsx eax, word [esi + 4]
sub dword [ebp + 0x14], eax
movsx eax, word [esi + 6]
sub dword [ebp + 0x18], eax
mov eax, dword [ebp + 0x14]
cmp eax, dword [(_draw_area + 8)]  ; cmp eax, dword [0x4861c0]
jge near loc_004568b7  ; jge 0x4568b7
movzx edx, word [esi]
add eax, edx
cmp eax, dword [_draw_area]  ; cmp eax, dword [0x4861b8]
jle near loc_004568b7  ; jle 0x4568b7
mov eax, dword [ebp + 0x18]
cmp eax, dword [(_draw_area + 12)]  ; cmp eax, dword [0x4861c4]
jge near loc_004568b7  ; jge 0x4568b7
movzx edx, word [esi + 2]
add eax, edx
cmp eax, dword [(_draw_area + 4)]  ; cmp eax, dword [0x4861bc]
jle near loc_004568b7  ; jle 0x4568b7
mov dword [ebp - 4], 0
mov dword [ebp - 8], 0
movzx eax, word [esi]
mov dword [ebp - 0xc], eax
mov ax, word [esi + 2]
mov dword [ebp - 0x10], eax
mov eax, dword [_draw_area]  ; mov eax, dword [0x4861b8]
cmp dword [ebp + 0x14], eax
jge short loc_0045681f  ; jge 0x45681f
mov edx, dword [ebp + 0x14]
mov dword [ebp + 0x14], eax
sub eax, edx
add dword [ebp - 4], eax
sub dword [ebp - 0xc], eax
jmp short loc_00456830  ; jmp 0x456830

loc_0045681f:
mov eax, dword [ebp - 0xc]
add eax, dword [ebp + 0x14]
sub eax, dword [(_draw_area + 8)]  ; sub eax, dword [0x4861c0]
jle short loc_00456830  ; jle 0x456830
sub dword [ebp - 0xc], eax

loc_00456830:
mov eax, dword [(_draw_area + 4)]  ; mov eax, dword [0x4861bc]
cmp dword [ebp + 0x18], eax
jge short loc_0045684a  ; jge 0x45684a
mov edx, dword [ebp + 0x18]
mov dword [ebp + 0x18], eax
sub eax, edx
add dword [ebp - 8], eax
sub dword [ebp - 0x10], eax
jmp short loc_0045685b  ; jmp 0x45685b

loc_0045684a:
mov eax, dword [ebp - 0x10]
add eax, dword [ebp + 0x18]
sub eax, dword [(_draw_area + 12)]  ; sub eax, dword [0x4861c4]
jle short loc_0045685b  ; jle 0x45685b
sub dword [ebp - 0x10], eax

loc_0045685b:
movzx eax, word [esi]
mov ebx, eax
mul dword [ebp - 8]
add eax, dword [ebp - 4]
mov esi, dword [esi + 8]
add esi, eax
sub ebx, dword [ebp - 0xc]
mov dword [ebp - 4], ebx
mov eax, 0x280
sub eax, dword [ebp - 0xc]
add eax, eax
mov dword [ebp - 8], eax
mov edi, dword [ebp + 0x18]
imul edi, edi, 0x280
add edi, dword [ebp + 0x14]
add edi, edi
add edi, dword [ebp + 8]
mov ebx, dword [ebp - 0x10]
mov edx, dword [ebp + 0x10]

loc_00456895:
mov ecx, dword [ebp - 0xc]

loc_00456898:
lodsb  ; lodsb al, byte [esi]
and eax, 0xff
je short loc_004568a7  ; je 0x4568a7
mov ax, word [edx + eax*2]
mov word [edi], ax

loc_004568a7:
add edi, 2
loop loc_00456898  ; loop 0x456898
add esi, dword [ebp - 4]
add edi, dword [ebp - 8]
dec ebx
jne short loc_00456895  ; jne 0x456895
xor ebx, ebx

loc_004568b7:
mov eax, ebx
pop edi
pop esi
pop ecx
pop ebx
add esp, 0x10
pop ebp
ret

fcn_004568c2:
push ebp
mov ebp, esp
sub esp, 0x10
push ebx
push ecx
push esi
push edi
mov ebx, 1
mov eax, dword [ebp + 0x10]
lea esi, [eax*4]
lea esi, [esi + eax*8]
mov eax, dword [ebp + 0xc]
lea esi, [esi + eax + 0xc]
mov edx, dword [eax + 8]
add edx, eax
mov dword [ebp + 0x10], edx
movsx eax, word [esi + 4]
sub dword [ebp + 0x14], eax
movsx eax, word [esi + 6]
sub dword [ebp + 0x18], eax
mov eax, dword [ebp + 0x14]
cmp eax, 0x280
jge near loc_00456a11  ; jge 0x456a11
movzx edx, word [esi]
imul edx, dword [ebp + 0x1c]
shr edx, 0x10
mov dword [ebp - 0xc], edx
add eax, edx
jle near loc_00456a11  ; jle 0x456a11
mov eax, dword [ebp + 0x18]
cmp eax, 0x1e0
jge near loc_00456a11  ; jge 0x456a11
movzx edx, word [esi + 2]
imul edx, dword [ebp + 0x1c]
shr edx, 0x10
mov dword [ebp - 0x10], edx
add eax, edx
jle near loc_00456a11  ; jle 0x456a11
mov dword [ebp - 4], 0
mov dword [ebp - 8], 0
xor eax, eax
cmp dword [ebp + 0x14], eax
jge short loc_00456962  ; jge 0x456962
xchg dword [ebp + 0x14], eax
sub dword [ebp - 4], eax
add dword [ebp - 0xc], eax
jmp short loc_00456972  ; jmp 0x456972

loc_00456962:
mov eax, dword [ebp - 0xc]
add eax, dword [ebp + 0x14]
sub eax, 0x280
jle short loc_00456972  ; jle 0x456972
sub dword [ebp - 0xc], eax

loc_00456972:
xor eax, eax
cmp dword [ebp + 0x18], eax
jge short loc_00456984  ; jge 0x456984
xchg dword [ebp + 0x18], eax
sub dword [ebp - 8], eax
add dword [ebp - 0x10], eax
jmp short loc_00456994  ; jmp 0x456994

loc_00456984:
mov eax, dword [ebp - 0x10]
add eax, dword [ebp + 0x18]
sub eax, 0x1e0
jle short loc_00456994  ; jle 0x456994
sub dword [ebp - 0x10], eax

loc_00456994:
xor eax, eax
mov edx, 1
div dword [ebp + 0x1c]
mov dword [ebp + 0x1c], eax
mul dword [ebp - 4]
shr eax, 0x10
movzx ebx, word [esi]
mov dword [ebp - 4], ebx
mov esi, dword [esi + 8]
add esi, eax
shl dword [ebp - 8], 0x10
mov edi, dword [ebp + 0x18]
imul edi, edi, 0x280
add edi, dword [ebp + 0x14]
add edi, edi
add edi, dword [ebp + 8]
mov edx, dword [ebp + 0x10]

loc_004569ca:
push esi
push edi
mov eax, dword [ebp - 8]
shr eax, 0x10
imul eax, dword [ebp - 4]
add esi, eax
xor ebx, ebx
mov ecx, dword [ebp - 0xc]

loc_004569dd:
shld eax, ebx, 0x10
and eax, 0xff
mov al, byte [esi + eax]
or al, al
je short loc_004569f4  ; je 0x4569f4
mov ax, word [edx + eax*2]
mov word [edi], ax

loc_004569f4:
add edi, 2
add ebx, dword [ebp + 0x1c]
loop loc_004569dd  ; loop 0x4569dd
pop edi
pop esi
add edi, 0x500
mov eax, dword [ebp + 0x1c]
add dword [ebp - 8], eax
dec dword [ebp - 0x10]
jne short loc_004569ca  ; jne 0x4569ca
xor ebx, ebx

loc_00456a11:
mov eax, ebx
pop edi
pop esi
pop ecx
pop ebx
add esp, 0x10
pop ebp
ret

fcn_00456a1c:
push ebp
mov ebp, esp
sub esp, 0x10
push ebx
push ecx
push esi
push edi
mov esi, dword [ebp + 0xc]
movsx eax, word [esi + 4]
sub dword [ebp + 0x10], eax
movsx eax, word [esi + 6]
sub dword [ebp + 0x14], eax
mov eax, dword [ebp + 0x10]
cmp eax, 0x1b8
jge near loc_00456b35  ; jge 0x456b35
movzx edx, word [esi]
add eax, edx
cmp eax, 0
jle near loc_00456b35  ; jle 0x456b35
mov eax, dword [ebp + 0x14]
cmp eax, 0x1b8
jge near loc_00456b35  ; jge 0x456b35
movzx edx, word [esi + 2]
add eax, edx
cmp eax, 0
jle near loc_00456b35  ; jle 0x456b35
mov dword [ebp - 4], 0
mov dword [ebp - 8], 0
movzx eax, word [esi]
mov dword [ebp - 0xc], eax
mov ax, word [esi + 2]
mov dword [ebp - 0x10], eax
mov eax, 0
cmp dword [ebp + 0x10], eax
jge short loc_00456aa5  ; jge 0x456aa5
mov edx, dword [ebp + 0x10]
mov dword [ebp + 0x10], eax
sub eax, edx
add dword [ebp - 4], eax
sub dword [ebp - 0xc], eax
jmp short loc_00456ab5  ; jmp 0x456ab5

loc_00456aa5:
mov eax, dword [ebp - 0xc]
add eax, dword [ebp + 0x10]
sub eax, 0x1b8
jle short loc_00456ab5  ; jle 0x456ab5
sub dword [ebp - 0xc], eax

loc_00456ab5:
mov eax, 0
cmp dword [ebp + 0x14], eax
jge short loc_00456acf  ; jge 0x456acf
mov edx, dword [ebp + 0x14]
mov dword [ebp + 0x14], eax
sub eax, edx
add dword [ebp - 8], eax
sub dword [ebp - 0x10], eax
jmp short loc_00456adf  ; jmp 0x456adf

loc_00456acf:
mov eax, dword [ebp - 0x10]
add eax, dword [ebp + 0x14]
sub eax, 0x1b8
jle short loc_00456adf  ; jle 0x456adf
sub dword [ebp - 0x10], eax

loc_00456adf:
movzx eax, word [esi]
mov ebx, eax
mul dword [ebp - 8]
add eax, dword [ebp - 4]
mov esi, dword [esi + 8]
add esi, eax
sub ebx, dword [ebp - 0xc]
mov dword [ebp - 4], ebx
mov eax, 0x1b8
sub eax, dword [ebp - 0xc]
add eax, eax
mov dword [ebp - 8], eax
mov edi, dword [ebp + 0x14]
imul edi, edi, 0x1b8
add edi, dword [ebp + 0x10]
add edi, edi
add edi, dword [ebp + 8]
mov ebx, dword [ebp - 0x10]
mov edx, dword [ebp + 0x18]

loc_00456b19:
mov ecx, dword [ebp - 0xc]

loc_00456b1c:
lodsb  ; lodsb al, byte [esi]
and eax, 0xff
je short loc_00456b27  ; je 0x456b27
mov word [edi], dx

loc_00456b27:
add edi, 2
loop loc_00456b1c  ; loop 0x456b1c
add esi, dword [ebp - 4]
add edi, dword [ebp - 8]
dec ebx
jne short loc_00456b19  ; jne 0x456b19

loc_00456b35:
pop edi
pop esi
pop ecx
pop ebx
add esp, 0x10
pop ebp
ret

fcn_00456b3e:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov edi, dword [ebp + 0x10]
mov ecx, dword [ebp + 0x14]
mov ebx, dword [ebp + 0x18]
mov ebp, dword [ebp + 0x1c]
shr ecx, 1
test edx, 2
je short loc_00456b6b  ; je 0x456b6b
sub edx, 2
sub esi, 2
sub edi, 2
inc ecx

loc_00456b6b:
push ebx
push ecx
push edx
push esi
push edi

loc_00456b70:
mov eax, dword [edx]
mov ebx, dword [esi]
sub ax, bx
xor bx, bx
sub eax, ebx
mov dword [edi], eax
add edx, 4
add esi, 4
add edi, 4
loop loc_00456b70  ; loop 0x456b70
pop edi
pop esi
pop edx
pop ecx
pop ebx
add edx, ebp
add esi, 0x500
add edi, 0x370
dec ebx
jne short loc_00456b6b  ; jne 0x456b6b
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00456ba5:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov ebp, dword [ebp + 0x14]
mov ebx, 0x1b8

loc_00456bbd:
push edi
push esi
mov ecx, 0xdc

loc_00456bc4:
mov eax, dword [edx]
or eax, eax
jne short loc_00456bd2  ; jne 0x456bd2
movsd  ; movsd dword es:[edi], dword ptr [esi]
add edx, 4
loop loc_00456bc4  ; loop 0x456bc4
jmp short loc_00456bf7  ; jmp 0x456bf7

loc_00456bd2:
or ax, ax
jne short loc_00456bdd  ; jne 0x456bdd
mov ax, word [esi]
mov word [edi], ax

loc_00456bdd:
test eax, 0xffff0000
jne short loc_00456bec  ; jne 0x456bec
mov ax, word [esi + 2]
mov word [edi + 2], ax

loc_00456bec:
add esi, 4
add edi, 4
add edx, 4
loop loc_00456bc4  ; loop 0x456bc4

loc_00456bf7:
pop esi
pop edi
add edi, ebp
add esi, 0x500
dec ebx
jne short loc_00456bbd  ; jne 0x456bbd
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00456c0a:
push ebp
mov ebp, esp
push ebx
push ecx
push esi
push edi
mov esi, dword [ebp + 8]
mov ecx, dword [ebp + 0xc]
mov ebx, dword [ebp + 0x10]
mov edx, dword [ebp + 0x14]

loc_00456c1d:
dec ecx
js short loc_00456c2d  ; js 0x456c2d
db 0x66, 0xad  ; lodsw ax, word [esi]
cmp ax, bx
jne short loc_00456c1d  ; jne 0x456c1d
mov word [esi - 2], dx
jmp short loc_00456c1d  ; jmp 0x456c1d

loc_00456c2d:
pop edi
pop esi
pop ecx
pop ebx
pop ebp
ret

fcn_00456c33:
push ebp
mov ebp, esp
sub esp, 0x10
push ebx
push ecx
push esi
push edi
mov esi, dword [ebp + 0xc]
movsx eax, word [esi + 4]
sub dword [ebp + 0x10], eax
movsx eax, word [esi + 6]
sub dword [ebp + 0x14], eax
mov eax, dword [ebp + 0x10]
cmp eax, dword [(_draw_area + 8)]  ; cmp eax, dword [0x4861c0]
jge near loc_00456d85  ; jge 0x456d85
movzx edx, word [esi]
add eax, edx
cmp eax, dword [_draw_area]  ; cmp eax, dword [0x4861b8]
jle near loc_00456d85  ; jle 0x456d85
mov eax, dword [ebp + 0x14]
cmp eax, dword [(_draw_area + 12)]  ; cmp eax, dword [0x4861c4]
jge near loc_00456d85  ; jge 0x456d85
movzx edx, word [esi + 2]
add eax, edx
cmp eax, dword [(_draw_area + 4)]  ; cmp eax, dword [0x4861bc]
jle near loc_00456d85  ; jle 0x456d85
mov dword [ebp - 4], 0
mov dword [ebp - 8], 0
movzx eax, word [esi]
mov dword [ebp - 0xc], eax
mov ax, word [esi + 2]
mov dword [ebp - 0x10], eax
mov eax, dword [_draw_area]  ; mov eax, dword [0x4861b8]
cmp dword [ebp + 0x10], eax
jge short loc_00456cc4  ; jge 0x456cc4
mov edx, dword [ebp + 0x10]
mov dword [ebp + 0x10], eax
sub eax, edx
add dword [ebp - 4], eax
sub dword [ebp - 0xc], eax
jmp short loc_00456cd5  ; jmp 0x456cd5

loc_00456cc4:
mov eax, dword [ebp - 0xc]
add eax, dword [ebp + 0x10]
sub eax, dword [(_draw_area + 8)]  ; sub eax, dword [0x4861c0]
jle short loc_00456cd5  ; jle 0x456cd5
sub dword [ebp - 0xc], eax

loc_00456cd5:
mov eax, dword [(_draw_area + 4)]  ; mov eax, dword [0x4861bc]
cmp dword [ebp + 0x14], eax
jge short loc_00456cef  ; jge 0x456cef
mov edx, dword [ebp + 0x14]
mov dword [ebp + 0x14], eax
sub eax, edx
add dword [ebp - 8], eax
sub dword [ebp - 0x10], eax
jmp short loc_00456d00  ; jmp 0x456d00

loc_00456cef:
mov eax, dword [ebp - 0x10]
add eax, dword [ebp + 0x14]
sub eax, dword [(_draw_area + 12)]  ; sub eax, dword [0x4861c4]
jle short loc_00456d00  ; jle 0x456d00
sub dword [ebp - 0x10], eax

loc_00456d00:
movzx eax, word [esi]
mov ebx, eax
mul dword [ebp - 8]
add eax, dword [ebp - 4]
mov esi, dword [esi + 8]
add esi, eax
sub ebx, dword [ebp - 0xc]
mov dword [ebp - 4], ebx
mov eax, 0x280
sub eax, dword [ebp - 0xc]
add eax, eax
mov dword [ebp - 8], eax
mov edi, dword [ebp + 0x14]
imul edi, edi, 0x280
add edi, dword [ebp + 0x10]
add edi, edi
add edi, dword [ebp + 8]
mov ebx, dword [ebp - 0x10]
mov edx, dword [ebp + 0x18]
shl edx, 2
add edx, dword [_pixel_fmt]  ; add edx, dword [0x47637c]
mov dx, word [edx*2 + ref_00488ef0]  ; mov dx, word [edx*2 + 0x488ef0]

loc_00456d4b:
mov ecx, dword [ebp - 0xc]
shr ecx, 1
jecxz loc_00456d68  ; jecxz 0x456d68

loc_00456d52:
db 0x66, 0xad  ; lodsw ax, word [esi]
or al, al
je short loc_00456d63  ; je 0x456d63
or word [edi], dx
or ah, ah
je short loc_00456d63  ; je 0x456d63
or word [edi + 2], dx

loc_00456d63:
add edi, 4
loop loc_00456d52  ; loop 0x456d52

loc_00456d68:
test dword [ebp - 0xc], 1
je short loc_00456d7c  ; je 0x456d7c
lodsb  ; lodsb al, byte [esi]
or al, al
je short loc_00456d79  ; je 0x456d79
or word [edi], dx

loc_00456d79:
add edi, 2

loc_00456d7c:
add esi, dword [ebp - 4]
add edi, dword [ebp - 8]
dec ebx
jne short loc_00456d4b  ; jne 0x456d4b

loc_00456d85:
pop edi
pop esi
pop ecx
pop ebx
add esp, 0x10
pop ebp
ret

section .data

ref_00488ef0:
dd 0xf8007c00
dd 0x0f00003f
dd 0x003f003f
dd 0x000ff800
