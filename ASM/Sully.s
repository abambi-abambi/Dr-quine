section .data
self:		db __FILE__, 0
name:		db "Sully_%d.s", 0
flags:		dd 1101
mode:		dd 110110100b
compile:	db "nasm -f elf64 Sully_%1$d.s; gcc -m64 -no-pie -lc Sully_%1$d.o -o Sully_%1$d; rm Sully_%1$d.o; ./Sully_%1$d", 0
str:		db "section .data%1$cself:		db __FILE__, 0%1$cname:		db %2$cSully_%%d.s%2$c, 0%1$cflags:		dd 1101%1$cmode:		dd 110110100b%1$ccompile:	db %2$cnasm -f elf64 Sully_%%1$d.s; gcc -m64 -no-pie -lc Sully_%%1$d.o -o Sully_%%1$d; rm Sully_%%1$d.o; ./Sully_%%1$d%2$c, 0%1$cstr:		db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal main%1$cextern dprintf%1$cextern asprintf%1$cextern system%1$cextern strchr%1$c%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$cmov r12, %4$d%1$c%1$cextern_call_asprintf_1time:%1$cmov rdi, rsp%1$cmov rsi, name%1$cmov rdx, r12%1$ccall asprintf%1$c%1$cfind_file_with_name:%1$cmov rdi, self%1$cmov rsi, '_'%1$ccall strchr%1$c%1$ccmp rax, 0 ; no such file? => goto exit_condition%1$cje exit_condition%1$c%1$creduce_value:%1$csub r12, 1%1$c%1$cextern_call_asprintf_2time:%1$cmov rdi, rsp%1$cmov rsi, name%1$cmov rdx, r12%1$ccall asprintf%1$c%1$cexit_condition:%1$ccmp r12, -1%1$cje  exit%1$c%1$csystem_call_open_#2:%1$cmov rax, 2%1$cmov rdi, [ rsp ]%1$cmov rsi, [ flags ]%1$cmov rdx, [ mode ]%1$csyscall%1$c%1$cextern_call_dprintf:%1$cmov rdi, rax ; fd%1$cmov rsi, str%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8,  str%1$cmov r9, r12%1$ccall dprintf%1$c%1$csystem_call_close_#3:%1$cmov rdi, rax%1$cmov rax, 3%1$csyscall%1$c%1$csystem_call_chmod_#90:%1$cmov rax, 90%1$cmov rdi, [ rsp ]%1$cmov rsi, 101101000b%1$csyscall%1$c%1$cextern_call_asprintf_3time:%1$cmov rdi, rsp%1$cmov rsi, compile%1$cmov rdx, r12%1$ccall asprintf%1$c%1$cextern_call_system:%1$cmov rdi, [ rsp ] ; for 1-st project step, use : mov rdi, compile f.ex. compile = /usr/bin/date value%1$ccall system%1$c%1$cexit:%1$cmov rax, 0%1$cleave%1$c%1$cret%1$c", 0

section .text
global main
extern dprintf
extern asprintf
extern system
extern strchr

main:
push rbp
mov rbp, rsp
mov r12, 5

extern_call_asprintf_1time:
mov rdi, rsp
mov rsi, name
mov rdx, r12
call asprintf

find_file_with_name:
mov rdi, self
mov rsi, '_'
call strchr

cmp rax, 0 ; no such file? => goto exit_condition
je exit_condition

reduce_value:
sub r12, 1

extern_call_asprintf_2time:
mov rdi, rsp
mov rsi, name
mov rdx, r12
call asprintf

exit_condition:
cmp r12, -1
je  exit

system_call_open_#2:
mov rax, 2
mov rdi, [ rsp ]
mov rsi, [ flags ]
mov rdx, [ mode ]
syscall

extern_call_dprintf:
mov rdi, rax ; fd
mov rsi, str
mov rdx, 10
mov rcx, 34
mov r8,  str
mov r9, r12
call dprintf

system_call_close_#3:
mov rdi, rax
mov rax, 3
syscall

system_call_chmod_#90:
mov rax, 90
mov rdi, [ rsp ]
mov rsi, 101101000b
syscall

extern_call_asprintf_3time:
mov rdi, rsp
mov rsi, compile
mov rdx, r12
call asprintf

extern_call_system:
mov rdi, [ rsp ] ; for 1-st project step, use : mov rdi, compile f.ex. compile = /usr/bin/date value
call system

exit:
mov rax, 0
leave

ret
