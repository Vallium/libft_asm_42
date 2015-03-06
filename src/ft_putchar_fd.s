;void				ft_putchar_fd(char c, int fd);

%define M_SCALL(nb)			0x2000000 | nb
%define WRITE				4

global	_ft_putchar_fd

section	.text

_ft_putchar_fd:
	push	rdi

	mov		rdx, 1
	mov		rdi, rsi
	mov		rsi, rsp
	mov		rax, M_SCALL(WRITE)

	syscall

	pop		rax
	ret
