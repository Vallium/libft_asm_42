;int		ft_puts_fd(const char *str, int fd)

global	_ft_puts_fd
extern	_ft_strlen

section	.text

_ft_puts_fd:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, rsi
	pop		rsi
	mov		rax, 0x2000004		;call write

	syscall

	push	10
	mov		rsi, rsp
	mov		rdx, 1
	mov		rax, 0x2000004		;call write

	syscall

	pop rax
	ret
