;char				*ft_strchr(const char *s, int c)

global	_ft_strchr

section	.text

_ft_strchr:
	cmp		byte[rdi], 0x0
	je		_ret_not_find
	cmp		rdi, rsi
	je		_ret
	inc		rdi
	jmp		_ft_strchr

_ret_not_find:
	mov		rax, 0x0
	ret

_ret
	mov		rax, rdi
	ret
