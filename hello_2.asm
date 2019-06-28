;
; nasm -f elf64 -o hello_2.o hello_2.asm &&  ld -o hello_2 hello_2.o && split hello_2
;
;nasm -f elf64 -o hello_2.o hello_2.asm
;ld -o hello_2 hello_2.o
;split hello_2


global _start                   ;Define entry point
section .text                   ;Text section (code)
    _start:
        mov rax, 1              ;Value for sys_write
        mov rdi, 1              ;Destination        
        mov rsi, msg            ;Address of source string (msg)
        mov rdx, msglen         ;Length of string (msg)   
        syscall                 ;Linux system call           
        mov rax, 60             ;Value for sys_exit      
        mov rdi, 0              ;Return value        
        syscall                 ;Linux system call         

section .data                   ;Data section
    msg:        db "Hi Honey Badgers!",10
    msglen      equ $ - msg

    