; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_write.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/07 00:00:01 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/07 03:54:13 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text:
	global _ft_write

_ft_write:
	push r8
	push r9
	cmp rsi, byte 0x0
	jz _is_null
	mov r8, rsi
	mov r9, rdx
	mov rsi, 1
	mov rax, 0x20000BD ; 0x2000000 (MacOS ?)+ 0x5C (fctnl syscall)
	syscall ; 64 bits version of int 0x80
	cmp eax, 0
	jle _is_null
	cmp edi, 0
	jl _is_null
	mov rsi, r8
	mov rdx, r9
	mov rax, 0x2000004 ; 0x2000000 (MacOS ?)+ 0x4 (write syscall)
	syscall ; 64 bits version of int 0x80
	pop r8
	pop r9
	ret

_is_null:
	mov rax, -1
	pop r8
	pop r9
	ret
