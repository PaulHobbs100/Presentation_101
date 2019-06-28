;
; nasm -f elf64 -o hello_4.o hello_4.asm &&  ld -o hello_4 hello_4.o && split hello_4
;
;nasm -f elf64 -o hello_4.o hello_4.asm
;ld -o hello_4 hello_4.o
;split hello_4

%include "includes.inc"
global _start                   ;Define entry point
section .text                   ;Text section (code)
    _start:
        mov rax, sys_write      ;Value for sys_write
        mov rdi, stdout         ;Destination        
        mov rsi, msg            ;Address of source string (msg)
        mov rdx, msglen         ;Length of string (msg)   
        syscall                 ;Linux system call           
        mov rax,sys_exit        ;Value for sys_exit      
        mov rdi, exit_ok        ;Return value        
        syscall                 ;Linux system call         

section .data                   ;Data section
    msg:        db "Hi Honey Badgers!",10
    msglen      equ $ - msg