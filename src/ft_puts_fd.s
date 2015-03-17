# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts_fd.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:47:03 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:47:04 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_puts_fd(const char *str, int fd)

%define M_SCALL(nb)			0x2000000 | nb
%define WRITE				4

global	_ft_puts_fd
extern	_ft_strlen

section	.text

_ft_puts_fd:
	cmp		rdi, 0x0
	je		_ret

	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, rsi
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall

	push	10
	mov		rsi, rsp
	mov		rdx, 1
	mov		rax, M_SCALL(WRITE)

	syscall

	pop rax

_ret:
	ret
