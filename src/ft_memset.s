;void				*ft_memset(void *b, int c, size_t len);

global	_ft_memset

section	.text

_ft_memset:
	push	rdi
	mov		rcx, rdx
	mov		rax, rsi

	cld
	rep		stosb

	pop		rax
	ret
