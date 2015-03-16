;char				*ft_strdup(const char *s1);

global	_ft_strdup
extern	_ft_strlen, _ft_memcpy, _malloc

section	.text

_ft_strdup:
	push	rdi
	call	_ft_strlen

	pop		rsi
	mov		rdi, rax
	mov		rbx, rsi
	push	rdi
	call	_malloc
	cmp		rax, 0
	je		_fail_ret

	pop		rdx
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_memcpy

	ret

_fail_ret:
	ret
