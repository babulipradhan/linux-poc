section .text
   global _start

section .text

_start:

    mov eax,34
    syscall

    mov eax,231
    mov edi,0
    int 0x80    ;call kernel
    syscall
