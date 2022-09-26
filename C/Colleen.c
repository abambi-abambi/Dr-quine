/*
	1
*/
#include <stdio.h>
char *str="/*%c	1%c*/%c#include <stdio.h>%cchar *str=%c%s%c;%cvoid f(){printf(str,10,10,10,10,34,str,34,10);}int main(){f();/*2*/return (0);}";
void f(){printf(str,10,10,10,10,34,str,34,10);}int main(){f();/*2*/return (0);}