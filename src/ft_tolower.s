# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:48:17 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:48:19 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_tolower(int c);

global	_ft_tolower

section	.text

_ft_tolower:
	cmp		rdi, 'A'
	jl		_ret
	cmp		rdi, 'Z'
	jg		_ret
	add		rdi, 32

_ret:
	mov		rax, rdi
	ret
