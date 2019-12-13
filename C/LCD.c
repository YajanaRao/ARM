#include<lpc21xx.h>

void cmdfun(unsigned int);
void datafun(unsigned int);
void delay(unsigned int);

int main()
{
	unsigned  char msg[]={"KLETECH"};
	unsigned  int c[]={0x38,0x06,0x0e,0x80};
	unsigned char i,j;
	PINSEL0=0X00000000;
	IODIR0=0X000007FF; //SET DIRECTION OF PIN FROM P0.0 TO P0.10 AS O/P

	for(i=0;i<4;i++)
	{
		cmdfun(c[i]);
		delay(10000);
	}

	while(1)
	{
		cmdfun(0x80);
 		delay(1000);
 
		for(j=0;j<7;j++)
		{
				datafun(msg[j]);
				delay(1000);
		}  
		delay(1000);
		delay(1000);
		cmdfun(0x01);
		delay(1000);
		delay(1000);
	}  
}

void cmdfun(unsigned int value)
{
	unsigned int y;
	y=value;
	IOCLR0=0X00000300; //RW=0, RS=0
	IOSET0=y;
	IOSET0=0x00000400; //EN=1
	delay(10);
	IOCLR0=0x00000400; //EN=0
	
}

void datafun(unsigned int value)
{
	unsigned int y;
	y=value;
	IOCLR0=0X00000200; //RW=0
	IOSET0=0X00000100;// RS=1
	IOSET0=y;
	IOSET0=0x00000400; //EN=1
	delay(10);
	IOCLR0=0x00000400; //EN=0
	
}

void delay(unsigned int x)
{
   unsigned int temp;
   for(temp=0;temp<x;temp++);
}





