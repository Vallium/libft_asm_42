;void				ft_bzero(void *s, size_t n);

global	_ft_bzero

section	.text

_ft_bzero:
	push	rdi
	mov		rcx, rsi
	mov		rax, 0x0

	cld
	rep		stosb

	pop		rax
	ret
