; vowel_count.asm - NASM 64-bit Windows version
; Tæl vokaler i en streng og udskriv resultatet
; Bruges med GoLink og msvcrt.dll

global main
extern printf

section .data
    str db "hello world", 0
    vowels db "aeiou", 0
    fmt db "Vowel count: %d", 10, 0

section .text
main:
    sub rsp, 40

    lea rsi, [str]       ; input string
    xor ecx, ecx         ; tæller = 0

.next_char:
    mov al, [rsi]
    cmp al, 0
    je .done

    push rcx
    push rsi
    lea rdi, [vowels]

.check_vowel:
    mov bl, [rdi]
    cmp bl, 0
    je .not_vowel
    cmp al, bl
    je .is_vowel
    inc rdi
    jmp .check_vowel

.is_vowel:
    pop rsi
    pop rcx
    inc ecx
    jmp .continue

.not_vowel:
    pop rsi
    pop rcx

.continue:
    inc rsi
    jmp .next_char

.done:
    mov eax, ecx
    mov ecx, fmt
    mov edx, eax
    call printf
    ret
