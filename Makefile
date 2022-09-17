# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anoury <anoury@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/02 20:37:55 by anoury            #+#    #+#              #
#    Updated: 2022/08/02 20:46:18 by anoury           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = minitalk.a

server = server.c

client = client.c

serve = server_bonus.c

clent = client_bonus.c

CFLAGS = -Wall -Werror -Wextra

CC = gcc

SRC = utils.c

INC = minitalk.h

all :$(NAME) 

OBJ = $(SRC:.c=.o)

$(NAME) : $(server) $(client)
	@$(CC) $(CFLAGS) $(SRC) $(server) -o server -I $(INC)
	@$(CC) $(CFLAGS) $(SRC) $(client) -o client -I $(INC)
	@echo "\x1b[34m" "The Compilation Starts Now ....."
	@echo "\x1b[32m" Everything is up ! 

clean :
	@rm -f $(OBJ)

bonus : $(serve) $(clent)
	@$(CC) $(CFLAGS) $(SRC) $(serve) -o server_bonus -I $(INC)
	@$(CC) $(CFLAGS) $(SRC) $(clent) -o client_bonus -I $(INC)
	@echo "\x1b[33m" Done Well Bonus Part Now compiled Yo!!!!

fclean : clean
	@echo "\x1b[31m" Everything Cleaned Now  !
	@rm -f $(NAME) $(bonus) server client client_bonus server_bonus

re : fclean all
