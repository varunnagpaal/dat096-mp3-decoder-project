#include<stdio.h>

struct mpg123_regs_t {
  volatile unsigned int send_data;
  volatile unsigned int flag_read_data;
  };

struct mpg123_regs_t * mpg123_regs = (struct mpg123_regs_t *)0x80000900;

int main()
{
  unsigned int i = 1, num = 0;
  int up = 1;
  fprintf(stderr, "Start!\n");
  while(1) {

    if (i<55000) {
      *(unsigned int*)(0x80000900) = 16416; 
    }
    else {
      i = 1;
    }

    //fprintf(stderr, "Waiting..");
    while (!*(unsigned int*)0x80000900);
      //fprintf(stderr, ".");
   
    //fprintf(stderr, "\nSending\n");
    //*(unsigned int*)0x80000900 = i;

    //int result = *(unsigned int*)0x80000904;
    //fprintf(stderr, "Send: %d Result: %d\n", i, result);
  }
  return 0;
}
