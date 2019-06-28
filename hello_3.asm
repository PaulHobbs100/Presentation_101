;
; nasm -f elf64 -o hello_3.o hello_3.asm &&  ld -o hello_3 hello_3.o && split hello_3
;
;nasm -f elf64 -o hello_3.o hello_3.asm
;ld -o hello_3 hello_3.o
;split hello_3


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

    sys_write   equ 1
    sys_exit    equ 60
    stdin       equ 0
    stdout      equ 1
    strerr      equ 2
    exit_ok     equ 0