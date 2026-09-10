extern __imp__DirectSoundCreate@12
extern __imp__MessageBoxA@16
extern _gWindowHandle
extern _memset
extern _rich4_init_sound_effect_buffer
extern _rich4_dsound_ptr
extern _rich4_dsound_primary_buffer_ptr
extern _rich4_ui_sound_buffer
extern _rich4_command_sound_effect_buffer
extern _rich4_dsound_init_complete
extern _rich4_active_sound_effect_buffer
extern _rich4_effect_slot_table
extern _rich4_dsound_buffer_desc
extern _rich4_wave_format_desc

global _rich4_direct_sound_init

section .text

_rich4_direct_sound_init:
push ebx
push esi
push edi
mov edx, dword [_rich4_dsound_ptr]  ; mov edx, dword [0x47e748]
test edx, edx
jne near loc_00453cec  ; jne 0x453cec
cmp byte [_rich4_dsound_init_complete], 0  ; cmp byte [0x47e76c], 0
jne near loc_00453cec  ; jne 0x453cec
push edx
push _rich4_dsound_ptr  ; push 0x47e748
push edx
call fcn_0046121c  ; call 0x46121c
test eax, eax
je short loc_00453bad  ; je 0x453bad
push 0x10
push ref_00466220  ; push 0x466220
push ref_00466228  ; push 0x466228
push 0
call dword [cs:__imp__MessageBoxA@16]  ; ucall: call dword cs:[0x462308]
xor esi, esi
mov dword [_rich4_dsound_ptr], esi  ; mov dword [0x47e748], esi

loc_00453ba0:
mov byte [_rich4_dsound_init_complete], 1  ; mov byte [0x47e76c], 1
xor eax, eax
pop edi
pop esi
pop ebx
ret

loc_00453bad:
mov eax, dword [_rich4_dsound_ptr]  ; mov eax, dword [0x47e748]
mov edx, dword [eax]
push 3
mov ecx, dword [_gWindowHandle]  ; mov ecx, dword [0x48a0d4]
push ecx
push eax
call dword [edx + 0x18]  ; ucall
test eax, eax
je short loc_00453bef  ; je 0x453bef
push 0x10
push ref_0046625a  ; push 0x46625a
push ref_00466260  ; push 0x466260
push 0
call dword [cs:__imp__MessageBoxA@16]  ; ucall: call dword cs:[0x462308]
mov eax, dword [_rich4_dsound_ptr]  ; mov eax, dword [0x47e748]
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
xor ebx, ebx
mov dword [_rich4_dsound_ptr], ebx  ; mov dword [0x47e748], ebx
jmp short loc_00453ba0  ; jmp 0x453ba0

loc_00453bef:
mov dword [(_rich4_dsound_buffer_desc + 0)], 0x14  ; mov dword [0x48cb28], 0x14
mov dword [(_rich4_dsound_buffer_desc + 4)], 1  ; mov dword [0x48cb2c], 1
xor edi, edi
mov dword [(_rich4_dsound_buffer_desc + 8)], eax  ; mov dword [0x48cb30], eax
mov dword [(_rich4_dsound_buffer_desc + 12)], eax  ; mov dword [0x48cb34], eax
mov dword [(_rich4_dsound_buffer_desc + 16)], eax  ; mov dword [0x48cb38], eax
mov eax, dword [_rich4_dsound_ptr]  ; mov eax, dword [0x47e748]
mov edx, dword [eax]
push edi
push _rich4_dsound_primary_buffer_ptr  ; push 0x47e74c
push (_rich4_dsound_buffer_desc + 0)  ; push 0x48cb28
push eax
call dword [edx + 0xc]  ; ucall
test eax, eax
je short loc_00453c5a  ; je 0x453c5a
push 0x10
push ref_0046625a  ; push 0x46625a
push ref_00466287  ; push 0x466287
push edi
call dword [cs:__imp__MessageBoxA@16]  ; ucall: call dword cs:[0x462308]
mov eax, dword [_rich4_dsound_ptr]  ; mov eax, dword [0x47e748]
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
xor ecx, ecx
mov dword [_rich4_dsound_ptr], ecx  ; mov dword [0x47e748], ecx
jmp near loc_00453ba0  ; jmp 0x453ba0

loc_00453c5a:
mov edx, 1
mov word [_rich4_wave_format_desc], dx  ; mov word [0x48cb3c], dx
mov ecx, edx
mov word [(_rich4_wave_format_desc + 2)], dx  ; mov word [0x48cb3e], dx
mov edx, 0x5622
mov dword [(_rich4_wave_format_desc + 4)], edx  ; mov dword [0x48cb40], edx
mov dword [(_rich4_wave_format_desc + 8)], edx  ; mov dword [0x48cb44], edx
mov word [(_rich4_wave_format_desc + 12)], cx  ; mov word [0x48cb48], cx
mov word [(_rich4_wave_format_desc + 14)], 8  ; mov word [0x48cb4a], 8
xor edi, edi
mov word [(_rich4_wave_format_desc + 16)], di  ; mov word [0x48cb4c], di
mov eax, dword [_rich4_dsound_primary_buffer_ptr]  ; mov eax, dword [0x47e74c]
mov edx, dword [eax]
push _rich4_wave_format_desc  ; push 0x48cb3c
push eax
call dword [edx + 0x38]  ; ucall
test eax, eax
je short loc_00453cec  ; je 0x453cec
push 0x10
push ref_0046625a  ; push 0x46625a
push ref_004662b3  ; push 0x4662b3
push 0
call dword [cs:__imp__MessageBoxA@16]  ; ucall: call dword cs:[0x462308]
mov eax, dword [_rich4_dsound_ptr]  ; mov eax, dword [0x47e748]
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
xor eax, eax
mov dword [_rich4_dsound_ptr], eax  ; mov dword [0x47e748], eax
mov eax, dword [_rich4_dsound_primary_buffer_ptr]  ; mov eax, dword [0x47e74c]
mov edx, dword [eax]
push eax
call dword [edx + 8]  ; ucall
xor edx, edx
mov dword [_rich4_dsound_primary_buffer_ptr], edx  ; mov dword [0x47e74c], edx
jmp near loc_00453ba0  ; jmp 0x453ba0

loc_00453cec:
mov ebx, dword [esp + 0x10]
test ebx, ebx
je short loc_00453cfb  ; je 0x453cfb
call _rich4_init_sound_effect_buffer  ; call 0x4541e3
jmp short loc_00453d0b  ; jmp 0x453d0b

loc_00453cfb:
push 0x40
push ebx
push _rich4_effect_slot_table  ; push 0x48cae8
call _memset  ; call 0x456f60
add esp, 0xc

loc_00453d0b:
xor esi, esi
mov dword [_rich4_active_sound_effect_buffer], esi  ; mov dword [0x48cae4], esi
mov dword [_rich4_ui_sound_buffer], esi  ; mov dword [0x47e750], esi
mov dword [_rich4_command_sound_effect_buffer], esi  ; mov dword [0x47e754], esi
mov eax, 1
pop edi
pop esi
pop ebx
ret

fcn_0046121c:
jmp dword [__imp__DirectSoundCreate@12]  ; jmp dword [0x46247c]

section .data

ref_00466220:
db 'WARNING',0x00

ref_00466228:
db 'DirectSound Initial Error or SoundCard Not Found!',0x00

ref_0046625a:
db 'ERROR',0x00

ref_00466260:
db 'DirectSound SetCooperativeLevel Error!',0x00

ref_00466287:
db 'DirectSound CreateSoundPrimaryBuffer Error!',0x00

ref_004662b3:
db 'DirectSound SetFormat Error!',0x00
