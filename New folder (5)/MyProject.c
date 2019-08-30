char GLCD_DataPort at PORTB;
sbit GLCD_CS1 at RD2_bit;
sbit GLCD_CS2 at RD3_bit;
sbit GLCD_RS  at RC4_bit;
sbit GLCD_RW  at RC5_bit;
sbit GLCD_EN at RC6_bit;
sbit GLCD_RST at RC7_bit;

sbit GLCD_CS1_Direction at TRISD2_bit;
sbit GLCD_CS2_Direction at TRISD3_bit;
sbit GLCD_RS_Direction at TRISC4_bit;
sbit GLCD_RW_Direction at TRISC5_bit;
sbit GLCD_EN_Direction at TRISC6_bit;
sbit GLCD_RST_Direction at TRISC7_bit;



void main()
{

void Glcd_Init();

     Glcd_Write_Data("HELLO");
     while(1);
}