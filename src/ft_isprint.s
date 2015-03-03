global	_ft_isprint

section	.text

_ft_isprint:
	cmp		rdi, 0x20
	jl		_retz
	cmp		rdi, 0x7E
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
