global _rich4_copy_n_words_0
global _rich4_copy_n_words_1
global _strcpy
global __round_toward_zero
global fcn_00457dda
global fcn_00457ddb
global _libc_stricmp
global _libc_towupper

section .text

_rich4_copy_n_words_0:
push ebp
mov ebp, esp
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
jecxz loc_00456db6  ; jecxz 0x456db6
test esi, 3
je short loc_00456dac  ; je 0x456dac
db 0x66, 0xa5  ; movsw word es:[edi], word ptr [esi]
dec ecx
je short loc_00456db6  ; je 0x456db6

loc_00456dac:
shr ecx, 1
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
adc ecx, 0
db 0xf3, 0x66, 0xa5  ; rep movsw word es:[edi], word ptr [esi]

loc_00456db6:
pop edi
pop esi
pop ecx
pop ebp
ret

_rich4_copy_n_words_1:
push ebp
mov ebp, esp
push ecx
push esi
push edi
mov edi, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ecx, dword [ebp + 0x10]
jecxz loc_00456de3  ; jecxz 0x456de3
test edi, 3
je short loc_00456dd9  ; je 0x456dd9
db 0x66, 0xa5  ; movsw word es:[edi], word ptr [esi]
dec ecx
je short loc_00456de3  ; je 0x456de3

loc_00456dd9:
shr ecx, 1
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
adc ecx, 0
db 0xf3, 0x66, 0xa5  ; rep movsw word es:[edi], word ptr [esi]

loc_00456de3:
pop edi
pop esi
pop ecx
pop ebp
ret


_strcpy:
mov edx, dword [esp + 8]
mov eax, dword [esp + 4]
push eax

loc_00457d9f:
mov cl, byte [edx]
mov byte [eax], cl
cmp cl, 0
je short loc_00457db9  ; je 0x457db9
mov cl, byte [edx + 1]
add edx, 2
mov byte [eax + 1], cl
add eax, 2
cmp cl, 0
jne short loc_00457d9f  ; jne 0x457d9f

loc_00457db9:
pop eax
ret

endloc_00457dbb:
db 0x00

__round_toward_zero:
push eax
wait
fnstcw word [esp]
wait
push dword [esp]
mov byte [esp + 1], 0x1f
fldcw word [esp]
frndint
fldcw word [esp + 4]
wait
lea esp, [esp + 8]
ret

endloc_00457dd9:
db 0x00

fcn_00457dda:
ret

fcn_00457ddb:
ret







_libc_stricmp:
push ebx
mov ebx, dword [esp + 8]
mov edx, dword [esp + 0xc]

loc_00459dd0:
mov al, byte [ebx]
mov ah, byte [edx]
cmp al, 0x41
jb short loc_00459dde  ; jb 0x459dde
cmp al, 0x5a
ja short loc_00459dde  ; ja 0x459dde
add al, 0x20

loc_00459dde:
cmp ah, 0x41
jb short loc_00459deb  ; jb 0x459deb
cmp ah, 0x5a
ja short loc_00459deb  ; ja 0x459deb
add ah, 0x20

loc_00459deb:
cmp al, ah
jne short loc_00459df7  ; jne 0x459df7
test ah, ah
je short loc_00459df7  ; je 0x459df7
inc ebx
inc edx
jmp short loc_00459dd0  ; jmp 0x459dd0

loc_00459df7:
xor edx, edx
mov dl, al
mov al, ah
and eax, 0xff
sub edx, eax
mov eax, edx
pop ebx
ret




_libc_towupper:			; fcn_004608e2
push ebp
mov ebp, esp
mov eax, dword [ebp + 8]
cmp ax, 0x61
jb short loc_004608f7  ; jb 0x4608f7
cmp ax, 0x7a
ja short loc_004608f7  ; ja 0x4608f7
sub eax, 0x20

loc_004608f7:
pop ebp
ret

