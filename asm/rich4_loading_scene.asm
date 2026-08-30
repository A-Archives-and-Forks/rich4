extern _rich4_ddraw_primary_sf_ptr
extern _rich4_ddraw_offscreen_sf_ptr
extern _libc_free
extern _memcpy
extern _read_mkf
extern _rich4_data_mkf
extern fcn_00454edc
extern ref_0046cadc
extern ref_0046cae0
extern ref_0048a068
extern ref_0048a08c

global _rich4_show_loading_scene

section .text

_rich4_show_loading_scene:
push ebx
push esi
push edi
push ebp
push 0
push 0
push 0x259
mov edx, dword [_rich4_data_mkf]  ; mov edx, dword [0x48a0e4]
push edx
call _read_mkf  ; call 0x450441
mov ebx, eax
add esp, 0x10
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push 1
push ref_0048a068  ; push 0x48a068
push 0
push eax
call dword [edx + 0x64]  ; ucall
push 0x96000
push ebx
mov ecx, dword [ref_0048a08c]  ; mov ecx, dword [0x48a08c]
push ecx
call _memcpy  ; call 0x456de8
add esp, 0xc
mov eax, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov eax, dword [0x48a0e0]
mov edx, dword [eax]
push 0
push eax
call dword [edx + 0x80]  ; ucall
mov eax, dword [_rich4_ddraw_primary_sf_ptr]  ; mov eax, dword [0x48a0dc]
mov edx, dword [eax]
push 0x10
push ref_0046cadc  ; push 0x46cadc
mov esi, dword [_rich4_ddraw_offscreen_sf_ptr]  ; mov esi, dword [0x48a0e0]
push esi
mov edi, dword [ref_0046cae0]  ; mov edi, dword [0x46cae0]
push edi
mov ebp, dword [ref_0046cadc]  ; mov ebp, dword [0x46cadc]
push ebp
push eax
call dword [edx + 0x1c]  ; ucall
push ebx
call _libc_free  ; call 0x456e11
add esp, 4
call fcn_00454edc  ; call 0x454edc
pop ebp
pop edi
pop esi
pop ebx
ret

