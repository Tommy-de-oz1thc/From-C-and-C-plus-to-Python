; reverse.asm - NASM 64-bit Windows version
; Bruges med GoLink og msvcrt.dll

global main
extern printf

section .data
    str db "hello", 0
    msg db "Reversed: %s", 10, 0

section .text
main:
    sub rsp, 40

    ; find længde
    lea rsi, [str]
    call strlen
    mov rcx, rax
    dec rcx            ; rcx = len - 1
    xor rbx, rbx       ; rbx = 0

.loop:
    cmp rbx, rcx
    jge .done

    ; byt [str + rbx] og [str + rcx]
    mov al, [str + rbx]
    mov dl, [str + rcx]
    mov [str + rbx], dl
    mov [str + rcx], al

    inc rbx
    dec rcx
    jmp .loop

.done:
    lea rcx, [msg]
    lea rdx, [str]
    call printf
    ret

strlen:
    xor rax, rax
.next:
    cmp byte [rsi + rax], 0
    je .done
    inc rax
    jmp .next
.done:
    ret
