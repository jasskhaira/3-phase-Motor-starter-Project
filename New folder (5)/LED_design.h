#include<reg51.h>
sbit led00=P3^0;                          // led at PORT 3 pin 0
sbit led11=P3^1;                          // led at PORT 3 pin 1
sbit led22=P3^2;                          // led at PORT 3 pin 2
sbit led33=P3^3;                          // led at PORT 3 pin 3
sbit led44=P3^4;                          // led at PORT 3 pin 4
sbit led55=P3^5;                          // led at PORT 3 pin 5
sbit led66=P3^6;                          // led at PORT 3 pin 6
sbit led77=P3^7;                          // led at PORT 3 pin 7
void Delay(void);              // Delay function declaration
void main ()                        // main function
{
P3=0x00;                                   //output PORT
        
while(1)                               // infinite loop
    {
                        

//        *********************PORT 3**********************//
led00 = 1;                  // LED ON
Delay();
led00 = 0;                  // LED OFF
Delay();
led11 = 1;                  // LED ON
Delay();
led11 = 0;                  // LED OFF
Delay();
led22 = 1;                  // LED ON
Delay();
led22 = 0;                  // LED OFF
Delay();
led33 = 1;                  // LED ON
Delay();
led33 = 0;                  // LED OFF
Delay();
led44 = 1;                  // LED ON
Delay();
led44 = 0;                  // LED OFF
Delay();
led55 = 1;                  // LED ON
Delay();
led55 = 0;                  // LED OFF
Delay();
led66 = 1;                  // LED ON
Delay();
led66 = 0;                  // LED OFF
Delay();
led77 = 1;                  // LED ON
Delay();
led77 = 0;                  // LED OFF
Delay();
//        *********************PORT 1**********************//
//*********2 pair on-off*****//
led00 = 1;                  // LED ON
led11 = 1;                  // LED ON
Delay();
led00 = 0;                  // LED OFF
led11 = 0;                  // LED OFF
Delay();
led22 = 1;                  // LED ON
led33 = 1;                  // LED ON
Delay();
led22 = 0;                  // LED OFF
led33 = 0;                  // LED OFF
Delay();
led44 = 1;                  // LED ON
led55 = 1;                  // LED ON
Delay();
led44 = 0;                  // LED OFF
led55 = 0;                  // LED OFF
Delay();
led66 = 1;                  // LED ON
led77 = 1;                  // LED ON
Delay();
led66 = 0;                  // LED OFF
led77 = 0;                  // LED OFF
Delay();
//****** 4 pair on-off*********////////////

led00 = 1;                  // LED ON
led11 = 1;                  // LED ON
led22 = 1;                  // LED ON
led33 = 1;                  // LED ON
Delay();
led00 = 0;                  // LED OFF
led11 = 0;                  // LED OFF
led22 = 0;                  // LED OFF
led33 = 0;                  // LED OFF
Delay();
led44 = 1;                  // LED ON
led55 = 1;                  // LED ON
led66 = 1;                  // LED ON
led77 = 1;                  // LED ON
Delay();
led44 = 0;                  // LED OFF
led55 = 0;                  // LED OFF
led66 = 0;                  // LED OFF
led77 = 0;                  // LED OFF
Delay();
//**********end of pair*****//
//*******Other Patterns******///////////
P3=0x11;
Delay();
P3=0x22;
Delay();
P3=0x44;
Delay();
P3=0x88;
Delay();
P3=0x81;
Delay();
P3=0x42;
Delay();
P3=0x24;
Delay();
P3=0x18;
Delay();
P3=0x24;
Delay();
P3=0x42;
Delay();
P3=0x81;
Delay();
P3=0xc3;
Delay();
P3=0x3c;
Delay();
P3=0xc3;
Delay();
P3=0x00;
    }
}
void Delay()
{
int count=0;
        while(count!=1000)
        {
TMOD = 0x01;           // Timer0 mode1
TH0=0xFC ;             //initial value for 10ms
TL0=0x18;
TR0 = 1;               // timer0 start
                while (!TF0);      // check overflow condition
            TR0 = 0;               // Stop Timer
            TF0 = 0;               // Clear flag
count++;
  }
}