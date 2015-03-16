;void				*ft_memcpy(void *dst, const void *src, size_t n);

global	_ft_memcpy

section	.text

_ft_memcpy:
	push	rdi

_cpy:
	cmp		rdx, 0
	je		_ret

	movsb
	dec		rdx
	jmp		_cpy

_ret:
	pop		rax
	ret
