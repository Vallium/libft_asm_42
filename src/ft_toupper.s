global	_ft_toupper

section	.text

_ft_toupper:
	cmp		rdi, 'a'
	jl		_ret
	cmp		rdi, 'z'
	jg		_ret
	sub		rdi, 32

_ret:
	mov		rax, rdi
	ret
