# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 13:10:14 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 13:10:16 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_isalpha(int c);

global	_ft_isalpha

section	.text

_ft_isalpha:
	cmp		rdi, 'A'
	jl		_retz
	cmp		rdi, 'z'
	jg		_retz
	cmp		rdi, 'Z'
	jle		_reto
	cmp		rdi, 'a'
	jge		_reto

_retz:
	mov		rax, 0
	ret

_reto:
	mov		rax, 1
	ret
