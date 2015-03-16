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
	;jc		_ret
	cmp		rax, 0
	je		_ret

	pop		rdx
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_memcpy

_ret:
	ret
