;int		ft_puts(const char *str)

global	_ft_puts
extern	_ft_strlen

section	.text

_ft_puts:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, 1
	pop		rsi
	mov		rax, 0x2000004

	syscall

	push	10
	pop		rax
	ret
