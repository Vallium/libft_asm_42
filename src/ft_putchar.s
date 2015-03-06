;void				ft_putchar(char c);

%define M_SCALL(nb)			0x2000000 | nb
%define STDOUT				1
%define WRITE				4

global	_ft_putchar

section	.text

_ft_putchar:
	push	rdi

	mov		rdx, 1
	mov		rdi, STDOUT
	mov		rsi, rsp
	mov		rax, M_SCALL(WRITE)

	syscall

	pop		rax
	ret
