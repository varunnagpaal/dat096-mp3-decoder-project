#include <stdio.h>

void main()
{

    int i, out;

    while(1) {
    /*    for(i=0;i<5000000;i++)
            *(int *)(0x80000600) = 0x3;
	out = *(int *)(0x80000600);
	fprintf(stderr, "Tre: %d\n", out);
        for(i=0;i<5000000;i++)
            *(int *)(0x80000600) = 0x0;
	out = *(int *)(0x80000600);
	fprintf(stderr, "Noll: %d\n", out);*/
        for(i=0;i<1000000;i++)
            *(int *)(0x80000600) = 0x3;
	for(i=0;i<1000000;i++)
            *(int *)(0x80000600) = 0x2;
	for(i=0;i<1000000;i++)
            *(int *)(0x80000600) = 0x1;
	for(i=0;i<1000000;i++)
            *(int *)(0x80000600) = 0x0;
    }
}
