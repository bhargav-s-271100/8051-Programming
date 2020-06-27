#include<reg51.h>
sbit toggle = P0^2;
sbit wave = P0^1;
void timer0() interrupt 1
{	
	wave = ~wave;
}

void serial0() interrupt 4
{
	if(TI ==0)
		TI = 0;
	else
	{	
		ACC = SBUF;
		RI = 0;
	}		
}

void external_interrupt0() interrupt 0
{
	toggle = ~toggle;
}
void main()
{
	TMOD = 0x22;
	TH1 = 0xF6;
	TL1 = 0xA4;
	SCON = 0x50;
	IE = 0x93;
	TR1 = 1;
	TR0 = 1;
	while(1);
}	
	