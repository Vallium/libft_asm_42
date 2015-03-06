;void				ft_putchar(char c);

global	_ft_putchar

section	.text

_ft_putchar:
	push	rdi

	mov		rdx, 1
	mov		rdi, 1
	mov		rsi, rsp
	mov		rax, 0x2000004		;call write

	syscall

	pop		rax
	ret
