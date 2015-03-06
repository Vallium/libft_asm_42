;void				ft_putchar_fd(char c, int fd);

global	_ft_putchar_fd

section	.text

_ft_putchar_fd:
	push	rdi

	mov		rdx, 1
	mov		rdi, rsi
	mov		rsi, rsp
	mov		rax, 0x2000004		;call write

	syscall

	pop		rax
	ret
