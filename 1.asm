section .data
    num1 db 0
    num2 db 0
    res db 0

section .text
global _start

_start:
    mov eax,3
    mov ebx,0
    lea ecx,[num1]
    mov edx,1
    int 0x80

    mov eax,3
    mov ebx,0
    lea ecx,[num2]
    mov edx,1
    int 0x80

    mov al,[num1]
    sub al,'0'
    mov bl,[num2]
    sub bl,'0'
    add al,bl
    mov [res],al

    add byte [res],'0'
    mov eax,4
    mov ebx,1
    lea ecx,[res]
    mov edx,1
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
