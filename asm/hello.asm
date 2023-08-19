;%include "functions.asm"

section .data
  msg1 db "Hello, assembler!", 0xa
  msg1_len equ $ - msg1
  msg2 db "Hail the Heroes of Erathia!", 0xa

section .text
  global _start

sprint:
  ret

quit:
  ret

_start:
  mov eax,msg1
  call sprint

  mov eax,msg2
  mov ebx,0x12345678
  call sprint

  call quit

  mov eax, 4
  mov ebx, 1
  mov ecx, msg1
  mov edx, msg1_len
  int 0x80

  mov eax,1
  int 0x80
