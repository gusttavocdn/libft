NAME = libft.a

SRC = ft_strlen.c ft_strncmp.c \
	ft_isdigit.c ft_isalpha.c \
	ft_isalnum.c ft_isascii.c \
	ft_isprint.c ft_memset.c \
	ft_bzero.c ft_memcpy.c \
	ft_memmove.c ft_strlcpy.c \
	ft_strlcat.c ft_toupper.c \
	ft_tolower.c ft_strchr.c \
	ft_strrchr.c ft_memchr.c \
	ft_memcmp.c ft_strnstr.c \
	ft_calloc.c ft_strdup.c \
	ft_atoi.c ft_substr.c \
	ft_strjoin.c ft_strtrim.c \
	ft_itoa.c ft_strmapi.c \
	ft_striteri.c ft_putchar_fd.c \
	ft_putstr_fd.c ft_putendl_fd.c \
	ft_putnbr_fd.c ft_split.c \
	get_next_line.c ft_lstnew.c ft_lstadd_front.c \
	ft_lstsize.c ft_lstlast.c \
	ft_lstadd_back.c ft_lstdelone.c \
	ft_lstclear.c ft_lstiter.c \
	ft_lstmap.c ft_printf.c \
	ft_utoa.c ft_calc_hex_length.c \
	ft_decimal_to_hex.c ft_print_hex_int.c \
	ft_print_pointer.c ft_print_unsigned_int.c \
	ft_putstr_reversed.c ft_putnbr_int.c \
	ft_putstr_int.c ft_putchar_int.c \

OBJS = ${SRC:.c=.o}

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

CC = cc

INC = libft.h

all:	${NAME}

${NAME}: ${OBJS} ${INC}
	ar -rcs ${NAME} ${OBJS} ${INC}

.c.o:
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

clean:
	${RM} ${OBJS} ${BONUS_OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: clean all fclean re bonus
