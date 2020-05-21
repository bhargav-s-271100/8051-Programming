#include <reg51.h>
#define pi 3.14
float radius = 0.2 ;
sbit wheel_bit = P3^5;

void delay()
{
	char i;
	TMOD |= 0x01;
	for(i=0 ; i<=14 ; i++)  // total delay of 1s
	{
		TL0 = 0;
		TH0 = 0;
		TR0 = 1;
		while(TF0 == 0);
		TF0 = 0;
		TR0 = 0;
	}
}

void main()
{
	int counts;
	float velocity;
	float circumference = 2 * pi * radius;
	TMOD = 0x50;
	TR1 = 1;
	delay();
	if(TF0 == 1)
		counts = 65536 + (TH1<<4 & TL1);
	else
		counts = (TH1<<4 & TL1);
	velocity = counts * circumference;  // unit is m/s
}