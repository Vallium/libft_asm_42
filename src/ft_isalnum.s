# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 13:10:05 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 13:10:07 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_isalnum(int c);

global	_ft_isalnum

section	.text

extern	_ft_isalpha, _ft_isdigit

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	je		_reto
	call	_ft_isdigit
	cmp		rax, 1
	je		_reto

_retz:
	mov		rax, 0
	ret
_reto:
	mov		rax, 1
	ret
