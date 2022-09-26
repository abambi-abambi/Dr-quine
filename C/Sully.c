#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#define STR "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c#include <fcntl.h>%1$c#define STR %2$c%3$s%2$c%1$cvoid	filemaker(char *name, int i)%1$c{%1$c	int fd;%1$c	char content[1371];%1$c	char gcc[64];%1$c%1$c	fd = open(name, O_RDWR | O_CREAT | O_TRUNC, 777);%1$c	sprintf(content, STR, 10, 34, STR, i, 37);%1$c	write(fd, content, 1370);%1$c	close(fd);%1$c	sprintf(gcc, %2$cgcc %5$cs -Wall -Wextra -Werror -o Sully_%5$cd; ./Sully_%5$cd%2$c, name, i, i);%1$c	system(gcc);%1$c}%1$c%1$cint main()%1$c{%1$c	char name[10];%1$c	int i = %4$d;%1$c%1$c	sprintf(name, %2$cSully_%5$cd.c%2$c, i);%1$c	if (access(name, F_OK) >= 0)%1$c	{%1$c		--i;%1$c		sprintf(name, %2$cSully_%5$cd.c%2$c, i);%1$c	}%1$c	if (i >= 0)%1$c		filemaker(name, i);%1$c	return (0);%1$c}%1$c"
void	filemaker(char *name, int i)
{
	int fd;
	char content[1371];
	char gcc[64];

	fd = open(name, O_RDWR | O_CREAT | O_TRUNC, 777);
	sprintf(content, STR, 10, 34, STR, i, 37);
	write(fd, content, 1370);
	close(fd);
	sprintf(gcc, "gcc %s -Wall -Wextra -Werror -o Sully_%d; ./Sully_%d", name, i, i);
	system(gcc);
}

int main()
{
	char name[10];
	int i = 5;

	sprintf(name, "Sully_%d.c", i);
	if (access(name, F_OK) >= 0)
	{
		--i;
		sprintf(name, "Sully_%d.c", i);
	}
	if (i >= 0)
		filemaker(name, i);
	return (0);
}
