; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/06 21:24:34 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/06 21:29:34 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text:
	global _ft_strcmp

_ft_strcmp:
	push rdx ; cpy char
	push rcx ; count
	mov rdx, 0x0
	mov rcx, 0x0
	cmp rdi, 0x0 ; NULL check
	jz _is_null
	cmp rsi, 0x0
	jz _is_null
	_is_null:
		cmp rdi, rsi
		
	_start_loop:
		mov dl, byte [rsi + rcx] ; put char pointed by rsi + rcx in dl (dl is rdx 8 bits (1 char - 8 bits))
		mov byte [rdi + rcx], dl ; put char in rdi + rcx
		cmp [rsi + rcx], byte 0x0 ; compare rsi char to \0
		jz _end_loop ; if compare true then go to flag _end_loop
		inc rcx
		jmp _start_loop ; restart loop
	_end_loop:
	mov rax, rdi ; return dst
	pop rdx
	pop rcx
	ret
