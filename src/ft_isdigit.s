# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 13:10:38 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 13:10:41 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_isdigit(int c)

global	_ft_isdigit

section	.text

_ft_isdigit:
	cmp		rdi, '0'
	jl		_retz
	cmp		rdi, '9'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
