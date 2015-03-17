;int		ft_puts(const char *str)

%define M_SCALL(nb)			0x2000000 | nb
%define STDOUT				1
%define WRITE				4

global	_ft_puts
extern	_ft_strlen

section	.data

null:
	.string	db	"(null)"

section	.text

_ft_puts:
	cmp		rdi, 0x0
	je		_ret_null

	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, STDOUT
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall

	push	10
	mov		rsi, rsp
	mov		rdi, STDOUT
	mov		rdx, 1
	mov		rax, M_SCALL(WRITE)

	syscall

	pop rax
	ret

_ret_null:
	lea		rsi, [rel null.string]
	mov		rdi, STDOUT
	mov		rdx, 6
	mov		rax, M_SCALL(WRITE)

	syscall

	push	10
	mov		rsi, rsp
	mov		rdi, STDOUT
	mov		rdx, 1
	mov		rax, M_SCALL(WRITE)

	syscall

	pop		rax
	ret
