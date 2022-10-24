# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aarbaoui <aarbaoui@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/24 15:01:59 by aarbaoui          #+#    #+#              #
#    Updated: 2022/10/24 15:02:52 by aarbaoui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libftprintf.a
SRCS= ft_printf.c ft_putchar.c ft_putmem.c ft_putnbr.c ft_putnbr_b.c ft_putnbr_u.c ft_putstr.c
OBJS= ${SRCS:%.c=%.o}
FLAGS= -Wall -Werror -Wextra
CC = cc

all:${NAME}

${NAME}:${OBJS}
	@ar rc $(NAME) $(OBJS)

%.o:%.c
	${CC} ${FLAGS} -c $<

clean:
	@rm -f ${OBJS}

fclean:clean
	@rm -f ${NAME}

re:fclean all