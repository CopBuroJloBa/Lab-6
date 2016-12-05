#include <math.h>
#include <stdio.h>
#include "quadeq.h"

int main(){
	float a, b, c;
	float x1=0, x2=0;
	printf("ax^2 + bx + c = 0\n");
	printf("Enter a, b, c: ");
	scanf("%f %f %f",&a, &b, &c);
	quadraticEquation(a, b, c, &x1, &x2);
	return 0;
}
