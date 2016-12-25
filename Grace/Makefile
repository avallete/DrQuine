# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: avallete <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/18 13:18:20 by avallete          #+#    #+#              #
#    Updated: 2015/03/01 18:39:21 by avallete         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_PATH:=./
SRC_NAME:=Grace.c
CC=clang
CFLAGS=-Wall -Wextra -Werror
OBJ_PATH =./obj/
OBJ_NAME=$(SRC_NAME:.c=.o)
SRC=$(addprefix $(SRC_PATH), $(SRC_NAME))
OBJ=$(addprefix $(OBJ_PATH), $(OBJ_NAME))
NAME=Grace
RED=\033[30;41m
GREEN=\033[32m
CYAN=\033[36m
ORANGE=\033[33m
NC=\033[0m

all: $(NAME)

$(NAME):$(OBJ)
	@echo "${GREEN}Compile $(NAME) with $(CFLAGS)${NC}";
	@$(CC) $(CLFAGS) $(OBJ) -o $(NAME)

$(OBJ_PATH)%.o:$(SRC_PATH)%.c
	@mkdir -p $(OBJ_PATH)
	@echo "${ORANGE}Create bynary $(NAME) : $@ with $<${NC}";
	@$(CC) $(CFLAGS) -o $@ -c $<

clean:
	@echo "${RED} Delete OBJ files ${NC}"
	@rm -rf $(OBJ_PATH)

fclean: clean
	@echo "${RED} Delete $(NAME) file ${NC}"
	@rm -rf $(NAME)

re: fclean all clean

.PHONY: all clean fclean re
