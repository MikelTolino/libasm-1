# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartin <lmartin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/05 14:27:57 by lmartin           #+#    #+#              #
#    Updated: 2019/12/06 03:28:13 by lmartin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC			=	gcc -Wall -Wextra -Werror

NASM		=	nasm

FLAGS		=	-f macho64

AR			=	ar -rc

RM			=	rm -rf

DIR_HEADERS =	./includes/

DIR_SRCS	=	./srcs/

SRC			=	ft_strlen.s \
				ft_strcpy.s

SRCS		=	$(addprefix $(DIR_SRCS), $(SRC))

OBJS 		=	$(SRCS:.s=.o)

TEST_MAIN	=	main.c

TEST_OUT	=	test

NAME 		=	libasm.a

all:			$(NAME)

$(NAME) :		$(OBJS)
				$(AR) $(NAME) $(OBJS)
				ranlib $(NAME)

%.o: %.s
				$(NASM) $(FLAGS) -I $(DIR_HEADERS) -s $< -o $@

test:			$(NAME)
				$(CC) -I $(DIR_HEADERS) $(NAME) $(TEST_MAIN) -o $(TEST_OUT)

bonus:

clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME)
				$(RM) $(TEST_OUT)

re:				fclean all

re_bonus:		fclean bonus

.PHONY:			all, clean, fclean, re, bonus
