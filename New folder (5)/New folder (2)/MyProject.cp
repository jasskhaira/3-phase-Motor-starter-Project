#line 1 "C:/Users/guru/Desktop/New folder (5)/MyProject.c"
char GLCD_DataPort at PORTB;
sbit GLCD_CS1 at RD2_bit;
sbit GLCD_CS2 at RD3_bit;
sbit GLCD_RS at RC4_bit;
sbit GLCD_RW at RC5_bit;
sbit GLCD_EN at RC6_bit;
sbit GLCD_RST at RC7_bit;
sbit GLCD_CS1_Direction at TRISD2_bit;
sbit GLCD_CS2_Direction at TRISD3_bit;
sbit GLCD_RS_Direction at TRISC4_bit;
sbit GLCD_RW_Direction at TRISC5_bit;
sbit GLCD_EN_Direction at TRISC6_bit;
sbit GLCD_RST_Direction at TRISC7_bit;
const code char jy[1024] = {
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 127, 127, 63, 63, 63, 63, 63, 31, 31, 31, 31, 31, 31, 31, 31, 31, 63, 63, 63, 63, 63, 127, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 191, 207, 231, 227, 243, 249, 248, 252, 252, 254, 248, 128, 254, 254, 255, 255, 255, 255, 143, 227, 243, 254, 254, 254, 126, 62, 188, 156, 200, 248, 240, 240, 224, 192, 129, 3, 7, 7, 31, 63, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 15, 63, 127, 255, 255, 255, 255, 255, 255, 255, 127, 63, 31, 7, 3, 1, 1, 1, 1, 129, 65, 193, 193, 193, 193, 193, 193, 193, 193, 65, 65, 65, 1, 1, 1, 145, 193, 129, 5, 1, 1, 1, 0, 6, 15, 63, 247, 247, 115, 123, 123, 121, 125, 127, 127, 252, 0, 0, 0, 129, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 255, 254, 252, 248, 224, 192, 0, 0, 0, 0, 3, 7, 31, 7, 3, 1, 0, 0, 0, 64, 32, 0, 4, 2, 1, 0, 0, 63, 63, 63, 63, 51, 33, 0, 48, 48, 48, 48, 56, 62, 63, 63, 31, 31, 0, 0, 0, 0, 0, 0, 0, 224, 255, 255, 255, 255, 127, 63, 31, 159, 199, 193, 224, 248, 252, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 56, 8, 8, 136, 8, 8, 56, 248, 15, 15, 15, 255, 255, 15, 15, 15, 252, 200, 200, 8, 8, 8, 200, 200, 252, 14, 15, 8, 200, 200, 8, 8, 24, 248, 8, 8, 8, 200, 200, 8, 8, 56, 24, 8, 8, 200, 200, 8, 8, 8, 248, 8, 8, 8, 204, 204, 14, 15, 15, 255, 15, 15, 12, 14, 14, 15, 15, 255, 159, 15, 15, 15, 15, 15, 15, 15, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 252, 252, 254, 254, 254, 252, 252, 252, 254, 252, 252, 252, 252, 252, 252, 252, 255, 255, 255, 252, 252, 252, 255, 255, 255, 252, 252, 252, 252, 252, 252, 252, 254, 255, 252, 252, 252, 252, 252, 252, 252, 254, 254, 252, 252, 252, 252, 252, 252, 252, 255, 252, 252, 252, 252, 252, 252, 252, 252, 255, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 252, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255
};



void main()
{

void Glcd_Init();
Glcd_Image(jy);
delay_ms(1000);
while(1);
}
