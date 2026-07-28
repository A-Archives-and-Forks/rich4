extern _Post_0402_Message
extern _Wait_0402_Message
extern __imp__DefWindowProcA@16
extern __imp__mciSendStringA@16
extern _libc_sprintf
extern _rich4_direct_sound_init
extern fcn_00453d28
extern ref_0046cb02
extern ref_00476374

global fcn_00451677

section .text

fcn_0045156f:
push ebx
push esi
sub esp, 0x50
mov eax, dword [esp + 0x60]
mov ebx, dword [esp + 0x68]
cmp eax, 0x201
jb short loc_004515a6  ; jb 0x4515a6
jbe near loc_0045163c  ; jbe 0x45163c
cmp eax, 0x204
jb near loc_00451662  ; jb 0x451662
jbe near loc_0045163c  ; jbe 0x45163c
cmp eax, 0x401
je short loc_004515b6  ; je 0x4515b6
jmp near loc_00451662  ; jmp 0x451662

loc_004515a6:
cmp eax, 0x100
je near loc_0045163c  ; je 0x45163c
jmp near loc_00451662  ; jmp 0x451662

loc_004515b6:
mov edx, dword [esp + 0x5c]
push edx
push ref_00466118  ; push 0x466118
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
mov eax, dword [ebx + 0xc]
mov ecx, dword [ebx + 4]
sub eax, ecx
push eax
mov eax, dword [ebx + 8]
mov esi, dword [ebx]
sub eax, esi
push eax
push ecx
push esi
push ref_0046612d  ; push 0x46612d
lea eax, [esp + 0x14]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x18
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
mov eax, dword [esp + 0x5c]
push eax
push 0
push 0
push ref_00466150  ; push 0x466150
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
mov byte [ref_0046cb02], 1  ; mov byte [0x46cb02], 1

loc_00451632:
xor eax, eax

loc_00451634:
add esp, 0x50
pop esi
pop ebx
ret 0x10

loc_0045163c:
cmp byte [ref_0046cb02], 0  ; cmp byte [0x46cb02], 0
je short loc_00451632  ; je 0x451632
cmp byte [ref_0048c884], 0  ; cmp byte [0x48c884], 0
je short loc_00451632  ; je 0x451632
xor bl, bl
mov byte [ref_0046cb02], bl  ; mov byte [0x46cb02], bl
push 1
call _Post_0402_Message  ; call 0x401966
add esp, 4
jmp short loc_00451632  ; jmp 0x451632

loc_00451662:
push ebx
mov edx, dword [esp + 0x68]
push edx
push eax
mov ecx, dword [esp + 0x68]
push ecx
call dword [cs:__imp__DefWindowProcA@16]  ; ucall: call dword cs:[0x4622d8]
jmp short loc_00451634  ; jmp 0x451634

fcn_00451677:
push ebx
sub esp, 0x50
call fcn_00453d28  ; call 0x453d28
mov al, byte [esp + 0x60]
mov byte [ref_0048c884], al  ; mov byte [0x48c884], al
xor ah, ah
mov byte [ref_0046cb02], ah  ; mov byte [0x46cb02], ah
mov edx, dword [esp + 0x58]
push edx
push ref_0046616e  ; push 0x46616e
lea eax, [esp + 8]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0xc
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
je short loc_00451701  ; je 0x451701
mov ecx, dword [esp + 0x58]
push ecx
push ref_00476374  ; push 0x476374
push ref_00466189  ; push 0x466189
lea eax, [esp + 0xc]
push eax
call _libc_sprintf  ; call 0x457110
add esp, 0x10
push 0
push 0
push 0
lea eax, [esp + 0xc]
push eax
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
test eax, eax
je short loc_00451701  ; je 0x451701
push 1
call _rich4_direct_sound_init  ; call 0x453b55
add esp, 4
xor eax, eax
add esp, 0x50
pop ebx
ret

loc_00451701:
mov ebx, dword [esp + 0x5c]
push ebx
push fcn_0045156f  ; push 0x45156f
call _Wait_0402_Message  ; call 0x4018e7
mov ebx, eax
add esp, 8
push 0
push 0
push 0
push ref_004661a6  ; push 0x4661a6
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
push 0
push 0
push 0
push ref_004661b4  ; push 0x4661b4
call dword [cs:__imp__mciSendStringA@16]  ; ucall: call dword cs:[0x46245c]
push 1
call _rich4_direct_sound_init  ; call 0x453b55
add esp, 4
mov eax, ebx
add esp, 0x50
pop ebx
ret

section .data

ref_00466118:
db 'window vfw handle %d',0x00

ref_0046612d:
db 'put vfw destination at %d %d %d %d',0x00

ref_00466150:
db 'play vfw window from 0 notify',0x00

ref_0046616e:
db 'open avivideo!%s alias vfw',0x00

ref_00466189:
db 'open avivideo!%s%s alias vfw',0x00

ref_004661a6:
db 'stop vfw wait',0x00

ref_004661b4:
db 'close vfw wait',0x00,0x00

section .bss

ref_0048c884:
resb 4
