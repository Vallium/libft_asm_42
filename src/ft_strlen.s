;size_t				ft_strlen(const char *s);

global	_ft_strlen

section	.text

_ft_strlen:
	mov		rax, 0
	mov		rcx, -1

	cld
	repnz	scasb

	not		rcx
	lea		rax, [rcx - 1]
	ret
