;nasm -felf64 hello_5e1.asm && gcc -no-pie hello_5e1.o -o hello_5e1 && ./hello_5e1

%include "includes.inc"
global      main
extern      puts
section .text                           ;Text section (code)
    main:
        mov     rdi, msg                ;String to display, note null terminator!
        call    puts                    ;Print it Using standard labrary, defaults to stdout
        ret                             ;return to operating system

section .data                           ;Data section
    msg:        db "Hi Honey Badgers! with C standard library",10,"and Wombats",0
    msglen      equ $ - msg