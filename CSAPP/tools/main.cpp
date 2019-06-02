#include <stdio.h>
#include <string.h>

// long int number(hex to decimalization)
int show_value()
{
	char vstr[20],str[20];
	int len,i;
	unsigned long int number;
	printf("please input a little_endian hex number:");
	scanf("%s",str);
	len=strlen(str);
	for(i=0;i<len-2;i=i+2)
	{
		vstr[i]=str[len-3-i];
		vstr[i+1]=str[len-i-2];
	}
	sscanf(vstr,"%x",&number);
	printf("the value of inputed little_endian hex number is: %ld",(long int)number);
	return 0;
}

int main()
{
	show_value();
	return 0;
}
