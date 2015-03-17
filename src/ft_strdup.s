# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/17 14:47:52 by aalliot           #+#    #+#              #
#    Updated: 2015/03/17 14:47:53 by aalliot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;char				*ft_strdup(const char *s1);

global	_ft_strdup
extern	_ft_strlen, _ft_memcpy, _malloc

section	.text

_ft_strdup:
	push	rdi
	call	_ft_strlen

	pop		rsi
	mov		rdi, rax
	mov		rbx, rsi
	push	rdi
	call	_malloc
	cmp		rax, 0x0
	je		_ret

	pop		rdx
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_memcpy

_ret:
	ret
