#include <stdio.h>
// #define S "new %c %s"
int main()
{
	char *s = "new %c%s";
	// printf(s, 'a');
	printf(s, 'a', s);
	// printf(S, 'a', S);
}