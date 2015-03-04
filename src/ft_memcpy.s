;void				*ft_memcpy(void *dst, const void *src, size_t n);

global	_ft_memcpy

section	.text

_ft_memcpy:
	push	rdi
	push	rsi

_cpy:
	cmp		rdx, 0
	je		_ret

	movsb
	dec		rdx
	jmp		_cpy

_ret:
	pop		rsi
	pop		rdi
	mov		rax, rdi
	ret
