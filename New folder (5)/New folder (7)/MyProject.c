// Glcd module connections
char GLCD_DataPort at PORTB;
sbit GLCD_CS1 at RC5_bit;
sbit GLCD_CS2 at RC4_bit;
sbit GLCD_RS at RC3_bit;
sbit GLCD_RW at RC2_bit;
sbit GLCD_EN at RC1_bit;
sbit GLCD_RST at RC0_bit;
sbit GLCD_CS1_Direction at TRISC5_bit;
sbit GLCD_CS2_Direction at TRISC4_bit;
sbit GLCD_RS_Direction at TRISC3_bit;
sbit GLCD_RW_Direction at TRISC2_bit;
sbit GLCD_EN_Direction at TRISC1_bit;
sbit GLCD_RST_Direction at TRISC0_bit;


void main()
{ int a,b,c,d;
  Glcd_Init();
  Glcd_Write_Text("WELCOME",45,3,0);
      Delay_ms(1000);
  while(1)
  {
   Glcd_Write_Text("SELECT THE DESIRED FUNCION",20,1,0);
     if()//ecm tester loop
     {
      while(a==1)
      {
      Glcd_Write_Text("ECM TESTER",20,1,0);
      }
      a=0;
     }
     if()    //voltmeter loop
       { b=b+1
       while(b==1)
       {
       Glcd_Write_Text("VOLTMETER",20,1,0);
       }
        b=0;
       }//END
       if()//key testing loop
       {c=c+1;
       while(c==1)
       {
       Glcd_Write_Text("TESTING KEY",20,1,0);
       
       }
       }
  };
}
