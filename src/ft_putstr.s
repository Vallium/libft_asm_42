;void				ft_putstr(const char *s);

global	_ft_putstr
extern	_ft_strlen

section	.text

_ft_putstr:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, 1
	pop		rsi
	mov		rax, 0x2000004		;call write

	syscall

	ret
