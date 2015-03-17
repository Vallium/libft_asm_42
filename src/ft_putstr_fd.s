# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr_fd.s                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:47:20 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:47:21 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
