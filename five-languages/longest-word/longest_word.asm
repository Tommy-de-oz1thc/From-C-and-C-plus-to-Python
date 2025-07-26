; longest_word.asm – Find det længste ord i brugerinput (Linux 64-bit)

section .bss
    input resb 256
    longest resb 256
    temp resb 256

section .data
    prompt db "Indtast en sætning: ", 0
    prompt_len equ $ - prompt

    result_msg db "Det længste ord er: ", 0
    result_msg_len equ $ - result_msg

section .text
    global _start

_start:
    ; Skriv prompt
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt
    mov rdx, prompt_len
    syscall

    ; Læs input
    mov rax, 0
    mov rdi, 0
    mov rsi, input
    mov rdx, 256
    syscall
    mov rcx, rax        ; rcx = input length

    ; Init
    xor rbx, rbx        ; rbx = index i input
    xor r8, r8          ; r8 = længde af temp ord
    xor r9, r9          ; r9 = max længde
    xor r10, r10        ; r10 = index i longest

.next_char:
    cmp rbx, rcx
    jge .done_input

    mov al, [input + rbx]
    cmp al, ' '
    je .compare_word
    cmp al, 10          ; newline
    je .compare_word

    ; tilføj til temp
    mov [temp + r8], al
    inc r8
    inc rbx
    jmp .next_char

.compare_word:
    cmp r8, r9
    jle .reset_temp

    ; kopier temp -> longest
    mov r9, r8          ; opdater max længde
    mov rsi, temp
    mov rdi, longest
    mov rcx, r8
.rep:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    loop .rep

.reset_temp:
    xor r8, r8          ; nulstil temp længde
    inc rbx
    jmp .next_char

.done_input:
    ; skriv resultattekst
    mov rax, 1
    mov rdi, 1
    mov rsi, result_msg
    mov rdx, result_msg_len
    syscall

    ; skriv longest ord
    mov rax, 1
    mov rdi, 1
    mov rsi, longest
    mov rdx, r9
    syscall

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall
