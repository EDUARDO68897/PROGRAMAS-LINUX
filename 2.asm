section .data
    num1 db 0
    num2 db 0
    result db 0

section .text
    global _start

_start:
    mov eax, 3
    mov ebx, 0
    lea ecx, [num1]
    mov edx, 1
    int 0x80

    mov eax, 3
    mov ebx, 0
    lea ecx, [num2]
    mov edx, 1
    int 0x80

    mov al, [num1]
    sub al, '0'
    mov bl, [num2]
    sub bl, '0'
    sub al, bl
    mov [result], al

    add byte [result], '0'
    mov eax, 4
    mov ebx, 1
    lea ecx, [result]
    mov edx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
