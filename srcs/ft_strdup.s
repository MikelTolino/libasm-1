; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/07 15:51:16 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/07 16:46:15 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text:
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	cmp rdi, 0x0
	jz _error
	call _ft_strlen ; call ft_strlen to get nb char to allocate
	inc rax
	push rdi
	mov rdi, rax
	call _malloc
	cmp rax, 0x0
	jz _error
	pop rdi
	push rsi
	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy
	pop rsi
	ret

_error:
	mov rax, 0x0
	ret
