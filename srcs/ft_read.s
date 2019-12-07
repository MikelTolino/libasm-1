; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_read.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/07 01:16:29 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/07 01:17:54 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text:
	global _ft_read

_ft_read:
	mov rax, 0x2000003 ; 0x2000000 (MacOS ?)+ 0x4 (write syscall)
	syscall ; 64 bits version of int 0x80
	ret
