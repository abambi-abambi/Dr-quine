.PHONY: all clean fclean re

NAME1	= Colleen
SRC1	= Colleen.s
OBJ1	= $(SRC1:.s=.o)

NAME2	= Grace
SRC2	= Grace.s
OBJ2	= $(SRC2:.s=.o)

NAME3	= Sully
SRC3	= Sully.s
OBJ3	= $(SRC3:.s=.o)

CC		= clang
ASMFLAGS = -f elf64
CCFLAGS = -Wextra -Wall -Werror -m64 -no-pie -lc

all: $(NAME1) $(NAME2) $(NAME3) Makefile

$(NAME1): $(SRC1)
	nasm $(ASMFLAGS) $(SRC1)
	$(CC) $(CCFLAGS) $(OBJ1) -o $(NAME1)

$(NAME2): $(SRC2)
	nasm $(ASMFLAGS) $(SRC2)
	$(CC) $(CCFLAGS) $(OBJ2) -o $(NAME2)

%.o: %.s
	nasm $(ASMFLAGS) $(SRC3)

$(NAME3): $(OBJ3)
	$(CC) $(CCFLAGS) $(OBJ3) -o $(NAME3)

# ex00:
# ./Colleen
# ./Colleen > tmp_Colleen
# diff tmp_Colleen Colleen.s
# ./Colleen > tmp_Colleen; diff tmp_Colleen Colleen.s

# ex01:
# ./Grace
# diff Grace.s Grace_kid.s
# rm Grace_kid.s; ./Grace ; diff Grace_kid.s Grace.s

# ex02:
# ./Sully
# diff Sully_5.s  Sully_4.s
# diff Sully_4.s  Sully_3.s
# diff Sully_3.s  Sully_2.s
# diff Sully_2.s  Sully_1.s
# diff Sully_1.s  Sully_0.s
# diff Sully.s    Sully_5.s
# mkdir -p tmp; cp Sully tmp/; cd tmp/; ./Sully ; ls -al | grep Sully | wc -l
# diff ../Sully.s Sully_5.s ; diff ../Sully.s Sully_4.s ; diff Sully_5.s Sully_0.s

clean:
	rm -rf Colleen.o
	rm -rf Grace.o
	rm -rf Sully.o
	rm -rf tmp_Colleen
	rm -rf Grace_kid.s
	rm -rf Sully_0.s
	rm -rf Sully_0.o
	rm -rf Sully_0
	rm -rf Sully_1.s
	rm -rf Sully_1.o
	rm -rf Sully_1
	rm -rf Sully_2.s
	rm -rf Sully_2.o
	rm -rf Sully_2
	rm -rf Sully_3.s
	rm -rf Sully_3.o
	rm -rf Sully_3
	rm -rf Sully_4.s
	rm -rf Sully_4.o
	rm -rf Sully_4
	rm -rf Sully_5.s
	rm -rf Sully_5.o
	rm -rf Sully_5

fclean: clean
	rm -rf Colleen
	rm -rf Grace
	rm -rf Sully

re: fclean all