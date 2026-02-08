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

write_number:
  push rbp
  mov rbp, rsp
.loop:
  mov rax, rdi
  mov rcx, 10
  xor rdx, rdx
  div rcx
  push rdx
  mov rdi, rax
  test rdi, rdi
  jnz .loop
.pop_loop:
  pop rdi
  call write_digit
  cmp rsp, rbp
  jmp .pop_loop
  mov rsp, rbp
  pop rbp
  ret

main:
  mov rdi, 12345
  call write_number
  mov rax, 60
  xor rdi, rdi
  syscall
