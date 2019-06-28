;
; nasm -f elf64 -o hello_1.o hello_1.asm &&  ld -o hello_1 hello_1.o && split hello_1
;
;nasm -f elf64 -o hello_1.o hello_1.asm
;ld -o hello_1 hello_1.o
;split hello_1


global _start                   ;Define entry point
section .text                   ;Text section (code)
    _start:
        mov rax, 1              ;Value for sys_write
        mov rdi, 1        
        mov rsi, msg      
        mov rdx, 17             ;Length of string (msg)   
        syscall                 ;Linux system call           
        mov rax, 60             ;Value for sys_exit      
        mov rdi, 0        
        syscall                 ;Linux system call         

section .data                   ;Data section
    msg: db "Hi Honey Badgers! test"