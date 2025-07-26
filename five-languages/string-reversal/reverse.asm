; reverse.asm - Vend en streng i NASM (Linux 32-bit, int 0x80)
; Denne version vender en streng hardkodet i datasektionen

section .data
    str db 'hello', 0
    len equ $ - str

section .text
    global _start

_start:
    mov esi, 0
    mov edi, len - 1

reverse_loop:
    cmp esi, edi
    jge done

    ; byt str[esi] og str[edi]
    mov al, [str + esi]
    mov bl, [str + edi]
    mov [str + esi], bl
    mov [str + edi], al

    inc esi
    dec edi
    jmp reverse_loop

done:
    ; skriv strengen ud (sys_write)
    mov eax, 4
    mov ebx, 1
    mov ecx, str
    mov edx, len
    int 0x80

    ; afslut (sys_exit)
    mov eax, 1
    xor ebx, ebx
    int 0x80
