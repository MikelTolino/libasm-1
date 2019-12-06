; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/06 03:23:14 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/06 03:40:46 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text
	global _ft_strcpy

_ft_strcpy:
	push rdi ; get parameter (pointer) - dst - +32 src
	_start_loop:
		mov [rdi], [rdi + 64]
		inc rdi ; move pointer
		inc rdi + 64; move pointer
		jmp _start_loop ; restart loop
	_end_loop:
	mov rax, rdi ; move to return registry
	ret
