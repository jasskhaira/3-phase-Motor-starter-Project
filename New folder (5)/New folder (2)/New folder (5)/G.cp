#line 1 "C:/Users/guru/Desktop/New folder (5)/New folder (5)/G.c"
void main() {
TRISB=0X00;
while(1)
{
PORTB=0XFF;
Delay_ms(1000);
 PORTB=0X00;
Delay_ms(1000);
}

}
