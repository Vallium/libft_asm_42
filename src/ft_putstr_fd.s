;void				ft_putstr_fd(const char *s, int fd);

%define M_SCALL(nb)			0x2000000 | nb
%define WRITE				4

global	_ft_putstr_fd
extern	_ft_strlen

section	.text

_ft_putstr_fd:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, rsi
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall
	ret
