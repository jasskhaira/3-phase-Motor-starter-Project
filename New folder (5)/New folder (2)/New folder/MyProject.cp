#line 1 "C:/Users/guru/Desktop/New folder (5)/New folder/MyProject.c"
void main()
{
 TRISB.F0 = 0;

 while(1)
 {
 PORTB.F0 = 1;
 Delay_ms(1000);
 PORTB.F0 = 0;
 Delay_ms(1000);
 }
}
