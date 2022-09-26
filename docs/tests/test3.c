#include <stdio.h>

int main()
{
	char *str1 = "first %c, second %c, third %c\n";
	printf(str1, 'a', 'b', 'c');

	char *str2 = "first %1$c, second %2$c, third %3$c, again first %1$c\n";
	printf(str2, 'a', 'b', 'c');
}