#include <reg51.h>
sbit p = P1^2;
sbit w = P2^5;

void delay_ms(float time)
{
	int cycles = (time * 1000)/1.085;
	TMOD = 0x20;
	TH1 = 65536 - cycles;
	TR1 = 1;
	while(TF1 != 1);
	TF1 = 0;
	TR1 = 0;
}

void main()
{
	p = 1;
	w = ~w;
	if(p==1)
		delay_ms(1);    // pass the value of time delay required in milli seconds
	else
		delay_ms(0.667);
}