#include <stdio.h>

int main()
{
	char *s = "new %c%s%c";
	printf(s, '"', s, '"');
}