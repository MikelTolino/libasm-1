# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/05 14:27:57 by lmartin           #+#    #+#              #
#    Updated: 2019/12/07 20:15:11 by lmartin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

## PIMPED MAKEFILE ##

# COLORS #

# This is a minimal set of ANSI/VT100 color codes
_END		=	\x1b[0m
_BOLD		=	\x1b[1m
_UNDER		=	\x1b[4m
_REV		=	\x1b[7m

# Colors
_GREY		=	\x1b[30m
_RED		=	\x1b[31m
_GREEN		=	\x1b[32m
_YELLOW		=	\x1b[33m
_BLUE		=	\x1b[34m
_PURPLE		=	\x1b[35m
_CYAN		=	\x1b[36m
_WHITE		=	\x1b[37m

# Inverted, i.e. colored backgrounds
_IGREY		=	\x1b[40m
_IRED		=	\x1b[41m
_IGREEN		=	\x1b[42m
_IYELLOW	=	\x1b[43m
_IBLUE		=	\x1b[44m
_IPURPLE	=	\x1b[45m
_ICYAN		=	\x1b[46m
_IWHITE		=	\x1b[47m

# **************************************************************************** #

## VARIABLES ##

# COMPILATION #

CC			=	gcc

CC_FLAGS	=	-Wall -Wextra -Werror

NASM		=	nasm

NASM_FLAGS	=	-f macho64

AR			=	ar -rc

RANLIB		=	ranlib


# DELETE #

RM			=	rm -rf


# DIRECTORIES #

DIR_HEADERS =	./includes/

DIR_SRCS	=	./srcs/

DIR_OBJS	=	./compiled_srcs/


# FILES #

SRC			=	ft_strlen.s \
				ft_strcpy.s \
				ft_strcmp.s \
				ft_write.s \
				ft_read.s \
				ft_strdup.s

SRCS		=	$(SRC)

MAIN_SRC	=	testlib.c


# COMPILED_SOURCES #

OBJS 		=	$(SRCS:%.s=$(DIR_OBJS)%.o)

MAIN_OBJ	=	$(MAIN_SRC:%.c=$(DIR_OBJS)%.o)

NAME 		=	libasm.a


# EXECUTABLE #

EXEC		=	testlib


# **************************************************************************** #

## RULES ##

# VARIABLES RULES #

$(NAME):		$(OBJS)
				@echo "$(_GREEN) All files compiled. $(_END)✅"
				@$(AR) $(NAME) $(OBJS)
				@ranlib $(NAME)
				@echo "$(_GREEN) Library '$(NAME)' compiled. $(_END)✅"

$(EXEC):		$(NAME) $(MAIN_OBJ)
				@$(CC) $(CC_FLAGS) -I $(DIR_HEADERS) $(NAME) $(MAIN_OBJ) -o $(EXEC)
				@echo "$(_GREEN) Executable '$(EXEC)' created. $(_END)✅"

# COMPILED_SOURCES RULES #

$(OBJS):		| $(DIR_OBJS)

$(DIR_OBJS)%.o: $(DIR_SRCS)%.s
				@$(NASM) $(NASM_FLAGS) -I $(DIR_HEADERS) -s $< -o $@

$(DIR_OBJS)%.o: %.c
				@$(CC) $(CC_FLAGS) -I $(DIR_HEADERS) -c $< -o $@

$(DIR_OBJS):
				@mkdir $(DIR_OBJS)


# OBLIGATORY PART #

all:			$(NAME)

clean:
				@$(RM) $(DIR_OBJS)
				@$(RM) $(EXEC)
				@echo "$(_RED)'"$(DIR_OBJS)"' has been deleted. $(_END)🗑️"

fclean:			clean
				@$(RM) $(NAME)
				@echo "$(_RED)'"$(NAME)"' has been deleted. $(_END)🗑️"

re:				fclean all


# BONUS #

bonus:			all

re_bonus:		fclean bonus


# PHONY #

.PHONY:			all, clean, fclean, re, bonus, re_bonus
