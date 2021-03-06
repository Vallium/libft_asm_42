# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalliot <aalliot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/10 11:30:22 by aalliot           #+#    #+#              #
#*   Updated: 2015/03/04 18:23:52 by aalliot          ###   ########.fr       *#
#                                                                              #
# **************************************************************************** #

STATIC_LIB	= libfts.a
DEBUG_LIB	= libfts_debug.a
# DYNAMIC_LIB	= libfts.so

SRC			=	ft_isdigit.s		\
				ft_isascii.s		\
				ft_isprint.s		\
				ft_isalpha.s		\
				ft_isalnum.s		\
				ft_tolower.s		\
				ft_toupper.s		\
				ft_bzero.s			\
				ft_strlen.s			\
				ft_strcat.s			\
				ft_memcpy.s			\
				ft_memset.s			\
				ft_puts.s			\
				ft_puts_fd.s		\
				ft_strdup.s			\
				ft_putstr.s			\
				ft_putstr_fd.s		\
				ft_putchar.s		\
				ft_putchar_fd.s		\
				ft_cat.s			\
				ft_strchr.s			\
				ft_isspace.s		\
				ft_isupper.s		\
				ft_islower.s

DYNAMIC_OBJ	= $(patsubst %.s,$(DYNAMIC_DIR)/%.o,$(SRC))
STATIC_OBJ	= $(patsubst %.s,$(STATIC_DIR)/%.o,$(SRC))
DEBUG_OBJ	= $(patsubst %.s,$(DEBUG_DIR)/%.o,$(SRC))

HEAD_DIR	= includes
SRC_DIR		= src
DEBUG_DIR	= debug
STATIC_DIR	= static
DYNAMIC_DIR	= dynamic

CC			= gcc
NORMINETTE	= ~/project/colorminette/colorminette

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S),Linux)
	FLAGS	= -Wall -Wextra -Werror -Wno-unused-result
	NASM	= nasm -f macho64
else
	FLAGS	= -Wall -Wextra -Werror
	NASM	= nasm -f macho64 #
endif

$(shell mkdir -p $(STATIC_DIR) $(DEBUG_DIR)) # $(DYNAMIC_DIR))

all: $(STATIC_LIB)

debug : $(DEBUG_LIB)

# dynamic : $(DYNAMIC_LIB)

$(STATIC_LIB): $(STATIC_OBJ)
	ar rc $@ $(STATIC_OBJ)
	ranlib $@

$(DEBUG_LIB): $(DEBUG_OBJ)
	ar rc $@ $(DEBUG_OBJ)
	ranlib $@

# $(DYNAMIC_LIB): $(DYNAMIC_OBJ)
# 	$(CC) -O3 -shared -o $@ $(DYNAMIC_OBJ)

$(STATIC_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) -I $(HEAD_DIR) -o $@ $< # $(FLAGS)

$(DEBUG_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) -I $(HEAD_DIR) -o $@ $< -g # $(FLAGS) -g

# $(DYNAMIC_DIR)/%.o: $(SRC_DIR)/%.s
# 	$(NASM) -fPIC -I $(HEAD_DIR) -o $@ -c $< # $(FLAGS)

.PHONY: clean fclean re norme

bin: all
	@gcc -Wl,-no_pie -o ASM_test main.c $(STATIC_LIB)
	@echo "ASM_test compiled!"

# norme:
#	@$(NORMINETTE) $(SRC_DIR)/ $(HEAD_DIR)/

clean:
	@rm -f $(STATIC_OBJ) $(DYNAMIC_OBJ) $(DEBUG_OBJ)

fclean: clean
	@rm -f $(STATIC_LIB) $(DYNAMIC_LIB) $(DEBUG_LIB)

re: fclean
	make

reall: all
