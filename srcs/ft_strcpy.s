; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/06 03:23:14 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/06 18:39:41 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text:
	global _ft_strcpy

_ft_strcpy:
	push rdi ; get parameter (pointer) - dst - +64 src
	push rsi ; get second parameter
	_start_loop:
		cmp [rdi + 64], byte 0x0 ; compare rsi char to \0
		jz _end_loop ; if compare true then go to flag _end_loop
		mov rsp, [rsi]
		mov [rdi], rsp
		inc rdi
		inc rsi
		jmp _start_loop ; restart loop
	_end_loop:
	mov rax, rdi ; move to return registry
	ret
