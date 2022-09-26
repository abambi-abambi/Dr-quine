#include <stdio.h>

int main()
{
	// char *s = "new %c%s%s";
	// printf(s, 'a', s, s);

	char *str = "new %s%s";
	// printf(str, str);
	printf(str, str, str);
}