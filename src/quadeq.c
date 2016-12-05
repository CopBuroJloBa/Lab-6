#include <stdio.h>
#include <math.h>


void quadraticEquation(float a, float b, float c, float *x1, float *x2){
	float D, t = 2;
	D = pow(b,2) - 4 * a * c;
	if(D >= 0){
		*x1 = (-b + sqrt(D))/(2 * a);
		*x2 = (-b - sqrt(D))/(2 * a);
		printf("x1 = %f",*x1);
		if(x1 != x2){
			printf("x2 = %f",*x2);
		}
	} else {
		printf("\nError, D = %f < 0",D);
	}
}
