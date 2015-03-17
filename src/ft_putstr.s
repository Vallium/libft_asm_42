# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:47:12 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:47:14 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void				ft_putstr(const char *s);

%define M_SCALL(nb)			0x2000000 | nb
%define STDOUT				1
%define WRITE				4

global	_ft_putstr
extern	_ft_strlen

section	.text

_ft_putstr:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, STDOUT
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall

	ret
