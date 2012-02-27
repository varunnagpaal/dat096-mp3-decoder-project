struct data_regs_t {
  volatile unsigned int flag_send_data;
  volatile unsigned int flag_read_data;
};

struct data_regs_t *data_regs = (struct data_regs_t *)0x80000900;

int main()
{
  unsigned int *i;
  unsigned int index, a, b, data;
  i=0x41800000;

  while(1) {
    while (data_regs->flag_read_data) {
      data_regs->flag_send_data=data; 
     
      if (index == 0) {
        a = *i;
        b = a>>16;
        data = b;
        index++;
      }
      else if (index == 1) {
        data = a;     
        index = 0;
        i++;
      }
      else
        index = 0;
    }
  }
}
