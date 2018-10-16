#include <stdio.h>
#include "../CSAPP/basic.h"

int show_size()
{
	float x;
	double y;
	printf("请输入单精度浮点数x和双精度浮点数y(用空格分隔):");
	scanf("%f %lf",&x,&y);
	printf("x所占字节为:%d\n",sizeof(x));
	printf("y所占字节为:%d\n",sizeof(y));
	printf("x+y所占字节为:%d\n",sizeof(x+y));
	printf("y+x所占字节为:%d\n",sizeof(y+x));
	return 0;
}

int judge()
{
	float f;
	double d;
	printf("请输入单精度浮点数x和双精度浮点数y(用空格分隔):");
	scanf("%f %lf",&f,&d);
	if((f+d)-f==d)
		printf("(f+d)-f==d 为真\n");
	else
		printf("(f+d)-f==d 为假\n");
	return 0;
}

int bytes()
{
	float f;
	double d,da,sum;
	printf("请输入单精度浮点数f和双精度浮点数d(用空格分隔):");
	scanf("%f %lf",&f,&d);
	printf("the value of f is %f\n",f);
	printf("the value of f+d is %f\n\n",f+d);

//----------------------------
	printf("the bits of f is:");
	show_bytes(&f,sizeof(f));

	da=d;
	printf("the bits of double f is:");
	show_bytes(&d,sizeof(d));

	sum=f+d;
	printf("the bits of f+d is:");
	show_bytes(&sum,sizeof(sum));

	printf("\n");

//----------------------------
	printf("the value of (f+d)-f is %f\n",(f+d)-f);
	printf("the value of d is %f\n",d);
	return 0;
}

int main()
{
//	show_size();
	bytes();
	return 0;
}
