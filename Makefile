NAME	=	ircserv

CC		=	c++
CFLAGS	=	-Wall -Wextra -Werror -std=c++98

SRCS	=	$(wildcard srcs/*.cpp \
			srcs/cmds/*.cpp \
			main.cpp)
OBJS	=	$(SRCS:.cpp=.o)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
	@echo "$(NAME) has been created."

clean:
	@rm -f $(OBJS)
	@echo "$(NAME) objects have been deleted."

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) has been deleted."

re: fclean all

.PHONY: all clean fclean re
