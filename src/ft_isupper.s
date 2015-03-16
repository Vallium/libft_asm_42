;int 				ft_isupper(int c);

section .text

global _ft_isupper

_ft_isupper:
		cmp		rdi, 'A'
		jl		_retz
		cmp		rdi, 'Z'
		jg		_retz

_reto:
		mov		rax, 1
		ret

_retz:
		mov		rax, 0
		ret
