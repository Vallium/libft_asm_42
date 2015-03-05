;char				*ft_strdup(const char *s1);

global	_ft_strdup
extern	_ft_strlen
extern	_ft_memcpy
extern	_malloc

section	.text

_ft_strdup:
	push	rdi
	call	_ft_strlen

	lea		rdi, [rax + 1]
	call	_malloc

	mov		rdx, rdi
	pop		rsi
	push	rax
	mov		rdi, rax
	call	_ft_memcpy

	pop		rax
	ret

_strcpy:
