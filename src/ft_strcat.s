;char				*ft_strcat(char *s1, const char *s2);

global	_ft_strcat

section	.text

_ft_strcat:
	push	rdi

_s1:
	cmp		byte[rdi], 0x0
	je		_s2
	inc		rdi
	jmp		_s1

_s2:
	cmp		byte[rsi], 0x0
	je		_ret

	movsb

	jmp		_s2

_ret:
	pop		rax
	ret
