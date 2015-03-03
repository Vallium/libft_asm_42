global	_ft_isdigit

section	.text

_ft_isdigit:
	cmp		rdi, '0'
	jl		_retz
	cmp		rdi, '9'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
