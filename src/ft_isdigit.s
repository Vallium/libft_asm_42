global	_ft_isdigit

section	.text

_ft_isaplpha:
	cmp		rdi, 0x30
	jl		_retz
	cmp		rdi, 0x39
	jo		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
