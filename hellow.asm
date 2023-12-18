;linux;
;nasm -f elf64 hellow.asm
;ld -o hellow hellow.o
;./hellow

section .data
  hellow db 'hellow world asm',0

section .text
  global _start

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, hellow
  mov rdx, 16
  syscall

  mov rax, 60
  xor rdi, rdi
  syscall
