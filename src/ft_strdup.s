;char				*ft_strdup(const char *s1);

global	_ft_strdup
extern	_ft_strlen
extern	_ft_memcpy

section	.text

_ft_strdup:
	push	rdi
	call	_ft_strlen




	mov		rdi, rax
	pop		rax

_cpy:
	cmp		rdx, 0
	je		_ret

	movsb
	dec		rdx
	jmp		_cpy

_ret:
	;pop		rsi
	;pop		rdi
	;mov		rax, rdi
	pop		rax
	ret
