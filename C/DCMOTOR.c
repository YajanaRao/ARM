#include<lpc21xx.h>

void delay(unsigned int);

int main()
{
	PINSEL0=0X00000000;
	IODIR0=0X00000003; //SET DIRECTION OF PIN FROM P0.1 TO P0.4 AS O/P
	while(1)
	{
		IOSET0=0X00000001; // clockwise
  	delay(10);
		IOSET0=0X00000000;
  	delay(10);
		delay(1000);  
		IOSET0=0X00000002; // Anticlockwise
  	delay(10);
		IOSET0=0X00000003;
  	delay(10);	
	}
}

void delay(unsigned int x)
{
   unsigned int temp;
   for(temp=0;temp<x;temp++);
}
