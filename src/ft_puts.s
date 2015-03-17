# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:46:55 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:46:57 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
	je		_null

	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, STDOUT
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall

	jmp		_ret

_null:
	lea		rsi, [rel null.string]
	mov		rdi, STDOUT
	mov		rdx, 6
	mov		rax, M_SCALL(WRITE)

	syscall

_ret:
	push	10
	mov		rsi, rsp
	mov		rdi, STDOUT
	mov		rdx, 1
	mov		rax, M_SCALL(WRITE)

	syscall

	pop rax
	ret
