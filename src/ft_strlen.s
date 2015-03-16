;size_t				ft_strlen(const char *s);

global	_ft_strlen

section	.text

_ft_strlen:
	cmp		rdi, 0x0
	je		_ret
	mov		rax, 0
	mov		rcx, -1

	cld
	repnz	scasb

	not		rcx
	lea		rax, [rcx - 1]

_ret:
	ret
