global	_ft_tolower

section	.text

_ft_tolower:
	cmp		rdi, 'A'
	jl		_ret
	cmp		rdi, 'Z'
	jg		_ret
	add		rdi, 32

_ret:
	mov		rax, rdi
	ret
