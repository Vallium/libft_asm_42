# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isspace.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:45:44 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:45:46 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int					ft_isspace(int c)

section .text

global _ft_isspace

_ft_isspace:
	cmp		rdi, 9
	je		_reto
	cmp		rdi, 10
	je		_reto
	cmp		rdi, 11
	je		_reto
	cmp		rdi, 12
	je		_reto
	cmp		rdi, 13
	je		_reto
	cmp		rdi, 32
	je		_reto
	mov		rax, 0
	ret

_reto:
	mov		rax, 1
	ret
