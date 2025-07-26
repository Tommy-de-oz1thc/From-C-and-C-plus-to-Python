; vowel_count.asm - NASM (Linux 32-bit) - Tæl antal vokaler

section .data
    str db "hello world", 0
    vowels db "aeiou", 0
    len equ $ - str

section .bss
    count resb 1

section .text
    global _start

_start:
    xor ecx, ecx        ; tæller = 0
    mov esi, str

next_char:
    mov al, [esi]
    cmp al, 0
    je done

    push ecx
    push esi
    mov edi, vowels

check_vowel:
    mov bl, [edi]
    cmp bl, 0
    je not_vowel
    cmp al, bl
    je is_vowel
    inc edi
    jmp check_vowel

is_vowel:
    pop esi
    pop ecx
    inc ecx
    jmp continue

not_vowel:
    pop esi
    pop ecx

continue:
    inc esi
    jmp next_char

done:
    ; udskriv antal (dummy - bare exit her)
    mov eax, 1
    xor ebx, ebx
    int 0x80
