# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:46:26 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:46:28 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void				*ft_memset(void *b, int c, size_t len);

global	_ft_memset

section	.text

_ft_memset:
	push	rdi
	mov		rcx, rdx
	mov		rax, rsi

	cld
	rep		stosb

	pop		rax
	ret
