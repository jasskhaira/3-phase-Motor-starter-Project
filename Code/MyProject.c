void main()
{
 int phase1;
 int phase2;
 int a=0,b=0,c,refp1=0,refp2=0,d=0,j,g=0,h=0;

    TRISA=0;                                         // portA  as aoutput
    TRISC4_bit=0;                                   // relay pin as output
    TRISC3_bit=0;
    ANSEL=01100000;                                // adc select
    PORTA=0X00;                                    // portA  set low
    PORTC.F4=0;                                    // relay pins low
    PORTC.F3=0;
     ADC_Init();                                   //relay pins low
   phase1=ADC_Get_Sample(5);
   phase2=ADC_Get_Sample(6);

while(1)
{
        while(phase1==0 && phase2==0)                //phase sequence check
        {
           phase1=ADC_Get_Sample(5);
           phase2=ADC_Get_Sample(6);

            if(phase1!=0 && phase2==0)
            {
              a=a+1 ;
            }
            if(phase1==0 && phase2!=0)
            {
              b=b+1;
            }  }
            if(a>b)    //phase is corret
            {

            for(c=0;c<=500;c++)
            {
               phase1=ADC_Get_Sample(5);
               phase2=ADC_Get_Sample(6);
               if(refp1<=phase1)
                {
                  refp1=phase1;
                }
               if(refp2<=phase2)
                {
                  refp2=phase2;
                }
           }
            while(refp1>40 && refp2>40)
             {
               if(g==0)
               {
               for(j=0;j<=4;j++)
            {
            PORTA.F0=1;
            delay_ms(400);
            PORTA.F0=0;
            delay_ms(400);
            }
            g=g+1;
            delay_ms(500);
            }

             a=0;
             b=0;

              refp1=0;
              refp2=0;

             for(c=0;c<=500;c++)
            {
              phase1=ADC_Get_Sample(5);
              phase2=ADC_Get_Sample(6);
             if(refp1<=phase1)
               {
                 refp1=phase1;
               }
               if(refp2<=phase2)
               {
               refp2=phase2;
               }}
               if(refp1<40)
               {
               goto abc;
               }
               if(refp2<40)
               {
               goto abc;
               }
        while(phase1==0 && phase2==0)    //phase sequence check
        {
           phase1=ADC_Get_Sample(5);
           phase2=ADC_Get_Sample(6);

            if(phase1!=0 && phase2==0)
            {
              a=a+1 ;
            }
            if(phase1==0 && phase2!=0)
            {
              b=b+1;
            }  }
               if(b>a)
               { goto abc;}

               PORTA.F0=1;
               PORTC.F3=1;
               if(d==0)
               {
                PORTC.F4=1;
                delay_ms(100);
                 h=h+1;
                  if(h==50)
                  {
                  PORTC.F4=0;
                  d=d+1;
                  }

               } }
           abc:
           h=0;
           d=0;
           g=0;
           a=0;
           b=0;
            PORTA.F0=0;
            PORTA.F1=1;
            PORTC.F3=0;
            PORTC.F4=0;
            while(refp2<20)
            {
            phase2=ADC_Get_Sample(6);
           if(refp2<=phase2)
               {
               refp2=phase2;
               }
            }
        }

            if(a<b)    //phase is wrong
            {

              PORTA.F0=0;
              PORTA.F1=1;
              delay_ms(400);
              PORTA.F1=0;
              delay_ms(400);
            a=0;
            b=0;
            }
         phase1=ADC_Get_Sample(5);
         phase2=ADC_Get_Sample(6);

}}
