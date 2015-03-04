global	_ft_bzero

section	.text

_ft_bzero:
	push	rdi
	mov		rcx, rsi
	mov		rax, 0x0

	cld
	rep		stosb

	pop		rax
	ret
;	mov		rax, rdi
;	cmp		rsi, 0
;	je		_ret
;
;_ft_w_bzero:
;	mov		byte[rdi], 0x0
;
;	inc		rdi
;	dec		rsi
;
;	cmp		rsi, 0
;	je		_ret
;
;	jmp		_ft_w_bzero
;
;_ret:
;	ret
