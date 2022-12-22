section .data
    zero db 0

section .text
    global _start

_start:
    mov edi, 0
    mov ecx, 0x100000000  ; Set up a loop to iterate through all 4GB of RAM

clear_loop:
    mov [edi], zero  ; Set the current memory location to zero
    add edi, 1  ; Increment the memory pointer
    loop clear_loop  ; Repeat the loop until ECX is zero

done:
    xor eax, eax  ; Set EAX to zero
    mov ebx, 0  ; Exit with a status code of zero
    int 0x80  ; Call the kernel to terminate the process

