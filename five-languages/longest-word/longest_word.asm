; longest_word.asm - NASM (simplificeret, hardkodet sætning)

section .data
    sentence db "hej med dig", 0

section .text
    global _start

_start:
    ; Dette er en placeholder – rigtig tokenisering er kompleks i ASM
    ; Eksempel: Du kan tilføje logik senere for at finde det længste ord
    ; Her stopper vi bare programmet.

    mov eax, 1
    int 0x80
