; 1-st comment - linebreak: 10, quote: 34
section .data
str: db "; 1-st comment - linebreak: 10, quote: 34%2$csection .data%2$cstr: db %3$c%1$s%3$c, 0%2$c%2$csection .text%2$cglobal main%2$cextern printf%2$c%2$cmain:%2$cpush rbp%2$cmov rbp, rsp%2$c%2$c; 2-nd comments, which must be present in the main function%2$ccall goto_printf%2$cleave%2$cret%2$c%2$cgoto_printf:%2$cpush rbp%2$cmov rbp, rsp%2$cmov rdi, str%2$cmov rsi, str%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall printf%2$cmov rax, 0%2$cleave%2$cret%2$c", 0

section .text
global main
extern printf

main:
push rbp
mov rbp, rsp

; 2-nd comments, which must be present in the main function
call goto_printf
leave
ret

goto_printf:
push rbp
mov rbp, rsp
mov rdi, str
mov rsi, str
mov rdx, 10
mov rcx, 34
call printf
mov rax, 0
leave
ret
