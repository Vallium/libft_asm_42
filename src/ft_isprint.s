# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:45:33 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:45:35 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_isprint(int c);

global	_ft_isprint

section	.text

_ft_isprint:
	cmp		rdi, 0x20
	jl		_retz
	cmp		rdi, 0x7E
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
