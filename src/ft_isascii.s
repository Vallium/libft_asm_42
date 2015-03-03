global	_ft_isascii

section	.text

_ft_isascii:
	cmp		rdi, 0
	jl		_retz
	cmp		rdi, 127
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
