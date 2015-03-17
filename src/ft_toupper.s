# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:48:24 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:48:26 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_toupper(int c);

global	_ft_toupper

section	.text

_ft_toupper:
	cmp		rdi, 'a'
	jl		_ret
	cmp		rdi, 'z'
	jg		_ret
	sub		rdi, 32

_ret:
	mov		rax, rdi
	ret
