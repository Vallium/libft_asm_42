;int		ft_puts(const char *str)

extern	_ft_strlen
global	_ft_puts

section	.text

_ft_puts:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, 1
	pop		rsi
	mov		rax, 0x00004

	syscall

	push	10
	pop		rax
	ret
