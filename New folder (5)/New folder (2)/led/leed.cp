#line 1 "C:/Users/guru/Desktop/New folder (5)/led/leed.c"
char GLCD_DataPort at PORTB;
sbit GLCD_CS1 at RC6_bit;
sbit GLCD_CS2 at RC7_bit;
sbit GLCD_RS at RD4_bit;
sbit GLCD_RW at RD5_bit;
sbit GLCD_EN at RD6_bit;
sbit GLCD_RST at RD7_bit;
sbit GLCD_CS1_Direction at TRISC6_bit;
sbit GLCD_CS2_Direction at TRISC7_bit;
sbit GLCD_RS_Direction at TRISD4_bit;
sbit GLCD_RW_Direction at TRISD5_bit;
sbit GLCD_EN_Direction at TRISD6_bit;
sbit GLCD_RST_Direction at TRISD7_bit;
void main()
{
TRISA=0X00;
PORTA=0XFF;
Delay_ms(1000);
PORTA=0X00;
Delay_ms(1000);
 Glcd_Init();

 Glcd_Write_Text("WELCOME", 10, 2, 0) ;
 Delay_ms(1000);
 Glcd_Fill(0);
 Glcd_Set_Font( Arial, 8, 7, 32);
 Glcd_Write_Text("MD", 10, 2, 0) ;
 Glcd_Write_Text("AUTOCODES", 10, 6, 0) ;
 Delay_ms(1000);
 Glcd_Fill(0);
 while(1){
 Glcd_Write_Text("Hello world!", 10, 2, 0) ;
 Delay_ms(1000);

 PORTA=0XFF;
Delay_ms(1000);
PORTA=0X00;
Delay_ms(1000); }
}
