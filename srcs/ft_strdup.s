; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/07 15:51:16 by lmartin           #+#    #+#              ;
;    Updated: 2019/12/07 15:54:50 by lmartin          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section.text:
	global _ft_strdup

_ft_strdup:
	call _ft_strlen ; call ft_strlen to get nb char to allocate
	inc rax ; + 1 for \0
	
