```assembly
section .data
    array dw 10, 20, 30, 40, 50
    length equ ($-array)/2 ; Calculate the length of the array in words

section .bss
    sum resd 1 ; Reserve space for the sum

section .text
    global _start

_start:
    mov esi, array ; Point esi to the array
    mov ecx, length ; Initialize loop counter
    mov dword [sum], 0 ; Initialize sum to 0

loop:
    cmp ecx, 0 ;Check if loop counter is zero
    je loop_end ;Jump if loop counter is zero
    add dword [sum], word [esi] ; Add array element to sum
    add esi, 2 ; Move to the next array element
    loop loop ; Decrement loop counter and jump to loop if not 0

loop_end:
    ; Print the sum (using a system call for demonstration, specific implementation depends on OS)
    ; ...

    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```