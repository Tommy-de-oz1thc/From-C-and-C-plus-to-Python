; palindrome_check.asm - NASM 64-bit Windows version
; Bruges med GoLink og msvcrt.dll

global main
extern printf

section .data
    str db "madam", 0
    msg_yes db "Palindrome: yes", 10, 0
    msg_no  db "Palindrome: no", 10, 0

section .text
main:
    sub rsp, 40             ; Shadow space

    lea rsi, [str]
    call strlen
    dec rax
    mov rdi, rax            ; rdi = højre ende
    xor rcx, rcx            ; rcx = venstre ende
    mov rbx, 1              ; antag: ja

.check:
    mov al, [str + rcx]
    mov dl, [str + rdi]
    cmp al, dl
    jne .not_palindrome
    inc rcx
    dec rdi
    cmp rcx, rdi
    jl .check

    jmp .print_result

.not_palindrome:
    mov rbx, 0

.print_result:
    cmp rbx, 1
    je .yes
    lea rcx, [msg_no]
    call printf
    jmp .exit

.yes:
    lea rcx, [msg_yes]
    call printf

.exit:
    ret

; strlen – returnerer længde i RAX
strlen:
    xor rax, rax
.next:
    cmp byte [rsi + rax], 0
    je .done
    inc rax
    jmp .next
.done:
    ret
