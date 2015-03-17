# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 13:10:22 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 13:10:25 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_isascii(int c);

global	_ft_isascii

section	.text

_ft_isascii:
	cmp		rdi, 0
	jl		_retz
	cmp		rdi, 127
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
