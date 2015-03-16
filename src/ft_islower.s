;int 				ft_islower(int c);

section .text

global	_ft_islower

_ft_islower:
	cmp		rdi, 'a'
	jl		_retz
	cmp		rdi, 'z'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov	rax, 0
	ret
