; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/06 00:47:13 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/06 02:47:40 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text
	global _ft_strlen

_ft_strlen:
	push rdi ; get parameter (pointer)
	mov rcx, 0x0 ; count set to 0
	_start_loop:
		cmp [rdi], byte 0x0 ; compare rdi char to \0
		jz _end_loop ; if compare true then go to flag _end_loop
		inc rcx	; increment count
		inc rdi ; move pointer
		jmp _start_loop ; restart loop
	_end_loop:
	mov rax, rcx ; move to return registry
	pop rcx ; restore rcx
	ret
