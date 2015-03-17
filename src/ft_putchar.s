# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:46:39 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:46:40 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
