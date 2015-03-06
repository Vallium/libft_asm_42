;void				ft_putstr_fd(const char *s, int fd);

global	_ft_putstr_fd
extern	_ft_strlen

section	.text

_ft_putstr_fd:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, rsi
	pop		rsi
	mov		rax, 0x2000004		;call write

	syscall
	ret
