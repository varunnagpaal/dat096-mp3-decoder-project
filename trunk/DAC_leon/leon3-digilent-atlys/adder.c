#include <stdio.h>

int main()
{

    int i, a, b, sum;
    while (1) {
   	 fprintf(stderr, "Enter the first value: ");
   	 scanf("%d", &a);
   	 *(int *)(0x80000800) = a;   
   	 fprintf(stderr, "Enter the second value: ");
   	 scanf("%d", &b);
   	 *(int *)(0x80000808) = b;   
   	 sum =  *(unsigned int *)(0x80000800);
   	 fprintf(stderr, "%d + %d = %d\n", a, b, sum);
    }
   return 0; 
}

