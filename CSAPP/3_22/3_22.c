#include <stdio.h>
#include <stdint.h>

#define max_int 2147483647
#define max_long 9223372036854775808llu
uint64_t fact_do(uint64_t n)
{
	uint64_t result = 1;
	do
	{
		result *= n;
		n = n-1;
	} while (n > 1);
	return result;
}

int main()
{
	uint64_t n,x=1;

	do
	{
		x = x+1;
		n=fact_do(x);
	} while (n <= max_int);
	printf("n! is a 32 bits int number,the max value of n is %llu\n",x-1);


	x=1;
	do
	{
		x = x+1;
		n=fact_do(x);
	} while (n <= max_long);
	printf("n! is a 64 bits long number,the max value of n is %llu\n",x-1);
	return 0;
}
