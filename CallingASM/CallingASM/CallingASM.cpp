// CallingASM.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"

extern "C" void CalculateSums_(int a, int b, int c, int *s1, int *s2, int *s3);

int main()
{
	int a = 3, b = 5, c = 8;
	int s1a, s2a, s3a;
	CalculateSums_(a, b, c, &s1a, &s2a, &s3a);
	//再次做求和运算，以便验证汇编语言函数CalculateSums_的结果。
	int s1b = a + b + c;
	int s2b = a*a + b*b + c*c;
	int s3b = a*a*a + b*b*b + c*c*c;
	printf("Input: a:  %4d b:  %4d c:  %4d\n", a, b, c);
	printf("Output: s1a:  %4d s2a:  %4d s3a:  %4d\n", s1a, s2a, s3a);
	printf("        s1b:  %4d s2b:  %4d s3b:  %4d\n", s1b, s2b, s3b);
    return 0;
}

