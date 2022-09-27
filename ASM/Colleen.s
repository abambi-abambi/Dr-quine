; 1-st comment - linebreak: 10, quote: 34
section .data
str: db "; 1-st comment - linebreak: 10, quote: 34%2$csection .data%2$cstr: db %3$c%1$s%3$c, 0%2$c%2$csection .text%2$cglobal main%2$cextern printf%2$c%2$cmain:%2$c	stack_prepare1:%2$c	push rbp%2$c	mov rbp, rsp%2$c%2$c	; 2-nd comments, which must be present in the main function%2$c	call goto_printf%2$c%2$c	stack_restore1:%2$c	leave%2$cret%2$c%2$cgoto_printf:%2$c	stack_prepare2:%2$c	push rbp%2$c	mov rbp, rsp%2$c%2$c	extern_call_printf:%2$c	mov rdi, str%2$c	mov rsi, str%2$c	mov rdx, 10%2$c	mov rcx, 34%2$c	call printf%2$c%2$c	stack_restore2:%2$c	mov rax, 0%2$c	leave%2$cret%2$c", 0

section .text
global main
extern printf

main:
	stack_prepare1:
	push rbp
	mov rbp, rsp

	; 2-nd comments, which must be present in the main function
	call goto_printf

	stack_restore1:
	leave
ret

goto_printf:
	stack_prepare2:
	push rbp
	mov rbp, rsp

	extern_call_printf:
	mov rdi, str
	mov rsi, str
	mov rdx, 10
	mov rcx, 34
	call printf

	stack_restore2:
	mov rax, 0
	leave
ret
