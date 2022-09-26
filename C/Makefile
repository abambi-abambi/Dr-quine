.PHONY: all clean fclean re

NAME1	= Colleen
SRC1	= Colleen.c
OBJ1	= $(SRC1:.c=.o)

NAME2	= Grace
SRC2	= Grace.c
OBJ2	= $(SRC2:.c=.o)

NAME3	= Sully
SRC3	= Sully.c
OBJ3	= $(SRC3:.c=.o)

CC		= clang

CCFLAGS	= -Wextra -Wall -Werror

all: $(NAME1) $(NAME2) $(NAME3) Makefile

$(NAME1):	$(OBJ1)
			$(CC) $(CCFLAGS) $(OBJ1) -o $(NAME1)

$(NAME2):	$(OBJ2)
			$(CC) $(CCFLAGS) $(OBJ2) -o $(NAME2)

$(NAME3):	$(OBJ3)
			$(CC) $(CCFLAGS) $(OBJ3) -o $(NAME3)

# ex00:
# ./Colleen > tmp_Colleen
# diff tmp_Colleen Colleen.c
# ./Colleen > tmp_Colleen; diff tmp_Colleen Colleen.c

# ex01:
# ./Grace
# diff Grace.c Grace_kid.c
# rm Grace_kid.c; ./Grace ; diff Grace_kid.c Grace.c

# ex02:
# ./Sully
# diff Sully_5.c  Sully_4.c
# diff Sully_4.c  Sully_3.c
# diff Sully_3.c  Sully_2.c
# diff Sully_2.c  Sully_1.c
# diff Sully_1.c  Sully_0.c
# diff Sully.c    Sully_5.c
# mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully ; ls -al | grep Sully | wc -l
# diff ../Sully.c Sully_5.c ; diff ../Sully.c Sully_4.c ; diff Sully_5.c Sully_0.c

clean:
	rm -rf Colleen.o
	rm -rf Grace.o
	rm -rf Sully.o
	rm -rf tmp_Colleen
	rm -rf Grace_kid.c
	rm -rf Sully_0.c
	rm -rf Sully_0
	rm -rf Sully_1.c
	rm -rf Sully_1
	rm -rf Sully_2.c
	rm -rf Sully_2
	rm -rf Sully_3.c
	rm -rf Sully_3
	rm -rf Sully_4.c
	rm -rf Sully_4
	rm -rf Sully_5.c
	rm -rf Sully_5

fclean: clean
	rm -rf Colleen
	rm -rf Grace
	rm -rf Sully

re: fclean all
