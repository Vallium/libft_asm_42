global	_ft_strlen

section	.text

_ft_strlen:
	mov		rax, 0

_ft_w_strlen:
	cmp		byte[rdi], 0
	je		_ret

	inc		rax
	inc		rdi

	jmp		_ft_w_strlen

_ret:
	ret
