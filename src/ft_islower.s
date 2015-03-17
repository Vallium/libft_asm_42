# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 13:10:52 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 13:10:55 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int 				ft_islower(int c);

section .text

global	_ft_islower

_ft_islower:
	cmp		rdi, 'a'
	jl		_retz
	cmp		rdi, 'z'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov	rax, 0
	ret
