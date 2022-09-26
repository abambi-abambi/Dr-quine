.PHONY: all clean fclean re

NAME1	= Colleen.class
SRC1	= Colleen.java

NAME2	= Grace.class
SRC2_1	= ex01.java
SRC2_2	= Grace.java

NAME3	= Sully.class
SRC3	= Sully.java

all: $(NAME1) $(NAME2) $(NAME3) Makefile

$(NAME1): $(SRC1)
	javac $(SRC1)

$(NAME2): $(SRC2_1)
	cpp -P $(SRC2_1) $(SRC2_2)
	javac $(SRC2_2)

$(NAME3): $(SRC3)
	javac $(SRC3)

# ex00:
# java Colleen
# java Colleen > tmp_Colleen
# diff tmp_Colleen Colleen.java
# java Colleen > tmp_Colleen; diff tmp_Colleen Colleen.java

# ex01:
# java Grace
# nl Grace_kid.java
# diff ex01.java Grace_kid.java
# rm Grace_kid.java; java Grace ; diff Grace_kid.java ex01.java

# ex02:
# java Sully
# diff Sully_5.java  Sully_4.java
# diff Sully_4.java  Sully_3.java
# diff Sully_3.java  Sully_2.java
# diff Sully_2.java  Sully_1.java
# diff Sully_1.java  Sully_0.java
# diff Sully.java    Sully_5.java
# mkdir -p tmp; cp Sully.class tmp/; cd tmp/; java Sully ; ls -al | grep Sully | wc -l
# diff ../Sully.java Sully_5.java ; diff ../Sully.java Sully_4.java ; diff Sully_5.java Sully_0.java

clean:
	rm -rf tmp_Colleen
	rm -rf Grace_kid.java
	rm -rf Grace.java
	rm -rf Sully_0.java
	rm -rf Sully_0.class
	rm -rf Sully_1.java
	rm -rf Sully_1.class
	rm -rf Sully_2.java
	rm -rf Sully_2.class
	rm -rf Sully_3.java
	rm -rf Sully_3.class
	rm -rf Sully_4.java
	rm -rf Sully_4.class
	rm -rf Sully_5.java
	rm -rf Sully_5.class

fclean: clean
	rm -rf Colleen.class
	rm -rf Grace.class
	rm -rf Sully.class

re: fclean all
