global main:

write_digit:
  add rdi, '0'
  mov rax, 1
  mov rsi, rdi
  push rdi
  mov rdi, 1
  mov rdx, 1
  mov rsi, rsp
  syscall
  pop rdi
  ret

main:
  mov rdi, 9
  call write_digit
  mov rax, 60
  xor rdi, rdi
  syscall
