char GLCD_DataPort at PORTB;
sbit GLCD_CS1 at RC6_bit;
sbit GLCD_CS2 at RC7_bit;
sbit GLCD_RS  at RD4_bit;
sbit GLCD_RW  at RD5_bit;
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
TRISA=0X01;
ANSEL=0X04;
 ANSELH=0;
  Glcd_Init();
 Glcd_Write_Text("WELCOME", 10, 2, 0) ;
     Delay_ms(1000);
   Glcd_Fill(0);
  Glcd_Write_Text("MD", 10, 2, 0) ;
     Glcd_Write_Text("AUTOCODES", 10, 6, 0) ;
         Delay_ms(1000);
     Glcd_Fill(0);
  while(1){
          Glcd_Write_Text("SELECT THE DESIRED OPTION", 10, 2, 0);
    if(Button(PORTA,4,1,1)) //VOLTMETER TESTING LOOP
  {
   Glcd_Fill(0);
   Glcd_Write_Text("Voltmeter", 10, 1, 0);
   ADC_Init();
     while(Button(PORTE,0,1,1))
     {
     float V1,V2;
       V1=ADC_Get_Sample(0);
       V2=(V1*5*10)/1023;
Glcd_Write_Text( V2, 10, 1, 0);
     }
     Glcd_Fill(0);
    }
    if(Button(PORTA,4,1,1))    // ecm testing loop
       {
         Glcd_Fill(0);
        Glcd_Write_Text("Ecm Tester", 10, 1, 0);
        {
        while(Button(PORTE,0,1,1)) 
        {
           if
        
        }
        
        }
       
       
       }
      }
}