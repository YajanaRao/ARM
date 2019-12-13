#include<lpc21xx.h>
void delay(void);
unsigned char i;
unsigned int Disp[16]={0x003F0000, 0x00060000, 0x005B0000, 0x004F0000, 0x00660000,0x006D0000,
					   0x007D0000, 0x00070000, 0x007F0000, 0x006F0000, 0x00770000,0x007C0000,
					   0x00390000, 0x005E0000, 0x00790000, 0x00710000 };
int main()
{
	IODIR0=0xf0ff0000; // making po.16 to p0.23  and p0.28 to p0.31 output lines
	IOSET0=0xf0000000;
	IOCLR0=0x00ff0000;
	while(1)
	{
		for(i=0;i<10;i++)
		{
			IOSET0=Disp[i];
			//IOCLR0=0x00ff0000;										       
			delay();
			delay();
			delay();
			delay();
			delay();
			delay();
			delay();
			IOCLR0=0x00ff0000;	
		}
	}
}

void delay(void)
{ 
	unsigned long int j;
	for(j=0;j<650000;j++);
}	
