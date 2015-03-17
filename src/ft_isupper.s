# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:45:58 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:46:00 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int 				ft_isupper(int c);

section .text

global _ft_isupper

_ft_isupper:
	cmp		rdi, 'A'
	jl		_retz
	cmp		rdi, 'Z'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
