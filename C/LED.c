#include<lpc21xx.h>
void delay(void);
int main ()
{
	IODIR0=0x00ff0000;    ///po.16 to p0.23 are made output common anode leds
	IOCLR0=0x00ff0000;
	while(1)
	{
		IOSET0=0x00ff0000;
		delay();
		IOCLR0=0x00ff0000;
		delay();
	}
}

void delay(){
	int i;
	for(i=0;i<50000;i++);
}