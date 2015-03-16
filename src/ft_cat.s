;void				ft_cat(int fd);

%define M_SCALL(nb)			0x2000000 | nb
%define STDOUT				1
%define READ				3
%define WRITE				4
%define BUFF_SIZE			256

global	_ft_cat
extern	_ft_strlen, _ft_memcpy,

section	.text

_ft_cat:
	push	rdi
	call	_ft_strlen

	pop		rsi
	mov		rdi, rax
	mov		rbx, rsi
	push	rdi
	call	_malloc

	pop		rdx
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_memcpy

	ret
