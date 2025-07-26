; palindrome_check.asm - NASM 32-bit Linux (simpel version)

section .data
    str db "madam", 0

section .text
    global _start

_start:
    mov esi, str
    call strlen
    dec eax
    mov edi, eax
    xor ecx, ecx
    mov ebx, 1

.check:
    mov al, [str + ecx]
    mov dl, [str + edi]
    cmp al, dl
    jne .not_palindrome
    inc ecx
    dec edi
    cmp ecx, edi
    jl .check

    jmp .exit

.not_palindrome:
    mov ebx, 0

.exit:
    mov eax, 1
    int 0x80

strlen:
    xor eax, eax
.next:
    cmp byte [esi + eax], 0
    je .done
    inc eax
    jmp .next
.done:
    ret
