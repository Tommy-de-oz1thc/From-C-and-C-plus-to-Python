; longest_word.asm – Windows version (GoLink + msvcrt.dll)

global main
extern printf, gets

section .data
    input db 256 dup(0)
    longest db 256 dup(0)
    temp db 256 dup(0)

    prompt db "Enter a sentence: ", 0
    result db "Longest word: %s", 10, 0

section .text
main:
    sub rsp, 40                 ; shadow space (required on Win64)

    ; print prompt
    lea rcx, [prompt]
    call printf

    ; read input
    lea rcx, [input]
    call gets

    ; rsi = input ptr, rdi = temp ptr
    lea rsi, [input]
    lea rdi, [temp]
    xor rbx, rbx                ; current length
    xor r8, r8                  ; max length

.next_char:
    mov al, [rsi]
    cmp al, 0
    je .check_last

    cmp al, ' '
    je .compare

    mov [rdi + rbx], al
    inc rbx
    inc rsi
    jmp .next_char

.compare:
    cmp rbx, r8
    jle .reset

    mov r8, rbx                ; update max length
    mov rcx, rbx
    lea rsi, [temp]
    lea rdi, [longest]
.copy:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    loop .copy

.reset:
    lea rdi, [temp]
    mov rcx, rbx
.clear_temp:
    mov byte [rdi], 0
    inc rdi
    loop .clear_temp

    xor rbx, rbx
    inc rsi
    jmp .next_char

.check_last:
    cmp rbx, r8
    jle .print_result

    mov rcx, rbx
    lea rsi, [temp]
    lea rdi, [longest]
.copy_last:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    loop .copy_last

.print_result:
    lea rcx, [result]
    lea rdx, [longest]
    call printf

    ret
