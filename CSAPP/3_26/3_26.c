#include <stdio.h>
#include <stdint.h>
#include "../basic.h"

long fun_a(unsigned long x)
{
	long val = 0;
	while(x != 0)
	{
		val = val ^ x;
		x = x >> 1;
	}
	val = val & 1;
	return val;
}

int main()
{
	unsigned long n;
	long number;
	printf("please input the argument of function fun_a:");
	scanf("%ul",&n);
	printf("the bytes of fun_a(x) is:");
	number = fun_a(n);
	show_bytes(&number,sizeof(long));
	return 0;
}
