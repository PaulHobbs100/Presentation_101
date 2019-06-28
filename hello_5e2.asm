;nasm -felf64 hello_5e2.asm && gcc -no-pie hello_5e2.o -o hello_5e2 && ./hello_5e2

%include "includes.inc"
global      main
extern      puts
section .text                           ;Text section (code)
    main:
        mov     rdi, msg                ;String to display, note null terminator!
        call    puts                    ;Print it Using standard labrary, defaults to stdout
        mov     rdi, msg2               ;String to display, note null terminator!
        call    puts                    ;Print it Using standard labrary, defaults to stdout

        ret                             ;return to operating system

section .data                           ;Data section
    msg:        db "Hi Honey Badgers! with C standard library",0
    msg2:       db "and Wombats",0