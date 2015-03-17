# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 13:09:40 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 13:09:42 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void				ft_bzero(void *s, size_t n);

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
