# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:46:16 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:46:17 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void				*ft_memcpy(void *dst, const void *src, size_t n);

global	_ft_memcpy

section	.text

_ft_memcpy:
	push	rdi

_cpy:
	cmp		rdx, 0
	je		_ret

	movsb
	dec		rdx
	jmp		_cpy

_ret:
	pop		rax
	ret
