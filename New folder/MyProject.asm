
_main:

;MyProject.c,1 :: 		void main()
;MyProject.c,5 :: 		int a=0,b=0,c,refp1=0,refp2=0,d=0,j,g=0,h=0;
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
	CLRF       main_refp1_L0+0
	CLRF       main_refp1_L0+1
	CLRF       main_refp2_L0+0
	CLRF       main_refp2_L0+1
	CLRF       main_d_L0+0
	CLRF       main_d_L0+1
	CLRF       main_g_L0+0
	CLRF       main_g_L0+1
	CLRF       main_h_L0+0
	CLRF       main_h_L0+1
;MyProject.c,7 :: 		TRISA=0;                                          //portA  as aoutput
	CLRF       TRISA+0
;MyProject.c,8 :: 		TRISC4_bit=0;                                    //relay pin as output
	BCF        TRISC4_bit+0, BitPos(TRISC4_bit+0)
;MyProject.c,9 :: 		TRISC3_bit=0;
	BCF        TRISC3_bit+0, BitPos(TRISC3_bit+0)
;MyProject.c,11 :: 		PORTA=0X00;                                 // portA  set low
	CLRF       PORTA+0
;MyProject.c,12 :: 		PORTC.F4=0;                                    // relay pins low
	BCF        PORTC+0, 4
;MyProject.c,13 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;MyProject.c,14 :: 		ADC_Init();                                  //relay pins low
	CALL       _ADC_Init+0
;MyProject.c,15 :: 		phase1=ADC_Get_Sample(5);
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
;MyProject.c,16 :: 		phase2=ADC_Get_Sample(6);
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
;MyProject.c,18 :: 		while(1)
L_main0:
;MyProject.c,20 :: 		while(phase1==0 && phase2==0)                //phase sequence check
L_main2:
	MOVLW      0
	XORWF      main_phase1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVLW      0
	XORWF      main_phase1_L0+0, 0
L__main64:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
	MOVLW      0
	XORWF      main_phase2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVLW      0
	XORWF      main_phase2_L0+0, 0
L__main65:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
L__main62:
;MyProject.c,22 :: 		phase1=ADC_Get_Sample(5);
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
;MyProject.c,23 :: 		phase2=ADC_Get_Sample(6);
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
;MyProject.c,25 :: 		if(phase1!=0 && phase2==0)
	MOVLW      0
	XORWF      main_phase1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main66
	MOVLW      0
	XORWF      main_phase1_L0+0, 0
L__main66:
	BTFSC      STATUS+0, 2
	GOTO       L_main8
	MOVLW      0
	XORWF      main_phase2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main67
	MOVLW      0
	XORWF      main_phase2_L0+0, 0
L__main67:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
L__main61:
;MyProject.c,27 :: 		a=a+1 ;
	INCF       main_a_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_a_L0+1, 1
;MyProject.c,28 :: 		}
L_main8:
;MyProject.c,29 :: 		if(phase1==0 && phase2!=0)
	MOVLW      0
	XORWF      main_phase1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main68
	MOVLW      0
	XORWF      main_phase1_L0+0, 0
L__main68:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	MOVLW      0
	XORWF      main_phase2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main69
	MOVLW      0
	XORWF      main_phase2_L0+0, 0
L__main69:
	BTFSC      STATUS+0, 2
	GOTO       L_main11
L__main60:
;MyProject.c,31 :: 		b=b+1;
	INCF       main_b_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_b_L0+1, 1
;MyProject.c,32 :: 		}  }
L_main11:
	GOTO       L_main2
L_main3:
;MyProject.c,33 :: 		if(a>b)    //phase is corret
	MOVLW      128
	XORWF      main_b_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_a_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main70
	MOVF       main_a_L0+0, 0
	SUBWF      main_b_L0+0, 0
L__main70:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;MyProject.c,36 :: 		for(c=0;c<=500;c++)
	CLRF       main_c_L0+0
	CLRF       main_c_L0+1
L_main13:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_c_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVF       main_c_L0+0, 0
	SUBLW      244
L__main71:
	BTFSS      STATUS+0, 0
	GOTO       L_main14
;MyProject.c,38 :: 		phase1=ADC_Get_Sample(5);
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
;MyProject.c,39 :: 		phase2=ADC_Get_Sample(6);
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
;MyProject.c,40 :: 		if(refp1<=phase1)
	MOVLW      128
	XORWF      main_phase1_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_refp1_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main72
	MOVF       main_refp1_L0+0, 0
	SUBWF      main_phase1_L0+0, 0
L__main72:
	BTFSS      STATUS+0, 0
	GOTO       L_main16
;MyProject.c,42 :: 		refp1=phase1;
	MOVF       main_phase1_L0+0, 0
	MOVWF      main_refp1_L0+0
	MOVF       main_phase1_L0+1, 0
	MOVWF      main_refp1_L0+1
;MyProject.c,43 :: 		}
L_main16:
;MyProject.c,44 :: 		if(refp2<=phase2)
	MOVLW      128
	XORWF      main_phase2_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_refp2_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main73
	MOVF       main_refp2_L0+0, 0
	SUBWF      main_phase2_L0+0, 0
L__main73:
	BTFSS      STATUS+0, 0
	GOTO       L_main17
;MyProject.c,46 :: 		refp2=phase2;
	MOVF       main_phase2_L0+0, 0
	MOVWF      main_refp2_L0+0
	MOVF       main_phase2_L0+1, 0
	MOVWF      main_refp2_L0+1
;MyProject.c,47 :: 		}
L_main17:
;MyProject.c,36 :: 		for(c=0;c<=500;c++)
	INCF       main_c_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_c_L0+1, 1
;MyProject.c,48 :: 		}
	GOTO       L_main13
L_main14:
;MyProject.c,49 :: 		while(refp1>40 && refp2>40)
L_main18:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_refp1_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVF       main_refp1_L0+0, 0
	SUBLW      40
L__main74:
	BTFSC      STATUS+0, 0
	GOTO       L_main19
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_refp2_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main75
	MOVF       main_refp2_L0+0, 0
	SUBLW      40
L__main75:
	BTFSC      STATUS+0, 0
	GOTO       L_main19
L__main59:
;MyProject.c,51 :: 		if(g==0)
	MOVLW      0
	XORWF      main_g_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main76
	MOVLW      0
	XORWF      main_g_L0+0, 0
L__main76:
	BTFSS      STATUS+0, 2
	GOTO       L_main22
;MyProject.c,53 :: 		for(j=0;j<=4;j++)
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main23:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_j_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main77
	MOVF       main_j_L0+0, 0
	SUBLW      4
L__main77:
	BTFSS      STATUS+0, 0
	GOTO       L_main24
;MyProject.c,55 :: 		PORTA.F0=1;
	BSF        PORTA+0, 0
;MyProject.c,56 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
;MyProject.c,57 :: 		PORTA.F0=0;
	BCF        PORTA+0, 0
;MyProject.c,58 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
;MyProject.c,53 :: 		for(j=0;j<=4;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;MyProject.c,59 :: 		}
	GOTO       L_main23
L_main24:
;MyProject.c,60 :: 		g=g+1;
	INCF       main_g_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_g_L0+1, 1
;MyProject.c,61 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
	NOP
;MyProject.c,62 :: 		}
L_main22:
;MyProject.c,64 :: 		a=0;
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
;MyProject.c,65 :: 		b=0;
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
;MyProject.c,67 :: 		refp1=0;
	CLRF       main_refp1_L0+0
	CLRF       main_refp1_L0+1
;MyProject.c,68 :: 		refp2=0;
	CLRF       main_refp2_L0+0
	CLRF       main_refp2_L0+1
;MyProject.c,70 :: 		for(c=0;c<=500;c++)
	CLRF       main_c_L0+0
	CLRF       main_c_L0+1
L_main29:
	MOVLW      128
	XORLW      1
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_c_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main78
	MOVF       main_c_L0+0, 0
	SUBLW      244
L__main78:
	BTFSS      STATUS+0, 0
	GOTO       L_main30
;MyProject.c,72 :: 		phase1=ADC_Get_Sample(5);
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
;MyProject.c,73 :: 		phase2=ADC_Get_Sample(6);
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
;MyProject.c,74 :: 		if(refp1<=phase1)
	MOVLW      128
	XORWF      main_phase1_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_refp1_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main79
	MOVF       main_refp1_L0+0, 0
	SUBWF      main_phase1_L0+0, 0
L__main79:
	BTFSS      STATUS+0, 0
	GOTO       L_main32
;MyProject.c,76 :: 		refp1=phase1;
	MOVF       main_phase1_L0+0, 0
	MOVWF      main_refp1_L0+0
	MOVF       main_phase1_L0+1, 0
	MOVWF      main_refp1_L0+1
;MyProject.c,77 :: 		}
L_main32:
;MyProject.c,78 :: 		if(refp2<=phase2)
	MOVLW      128
	XORWF      main_phase2_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_refp2_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main80
	MOVF       main_refp2_L0+0, 0
	SUBWF      main_phase2_L0+0, 0
L__main80:
	BTFSS      STATUS+0, 0
	GOTO       L_main33
;MyProject.c,80 :: 		refp2=phase2;
	MOVF       main_phase2_L0+0, 0
	MOVWF      main_refp2_L0+0
	MOVF       main_phase2_L0+1, 0
	MOVWF      main_refp2_L0+1
;MyProject.c,81 :: 		}}
L_main33:
;MyProject.c,70 :: 		for(c=0;c<=500;c++)
	INCF       main_c_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_c_L0+1, 1
;MyProject.c,81 :: 		}}
	GOTO       L_main29
L_main30:
;MyProject.c,82 :: 		if(refp1<40)
	MOVLW      128
	XORWF      main_refp1_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main81
	MOVLW      40
	SUBWF      main_refp1_L0+0, 0
L__main81:
	BTFSC      STATUS+0, 0
	GOTO       L_main34
;MyProject.c,84 :: 		goto abc;
	GOTO       ___main_abc
;MyProject.c,85 :: 		}
L_main34:
;MyProject.c,86 :: 		if(refp2<40)
	MOVLW      128
	XORWF      main_refp2_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	MOVLW      40
	SUBWF      main_refp2_L0+0, 0
L__main82:
	BTFSC      STATUS+0, 0
	GOTO       L_main35
;MyProject.c,88 :: 		goto abc;
	GOTO       ___main_abc
;MyProject.c,89 :: 		}
L_main35:
;MyProject.c,90 :: 		while(phase1==0 && phase2==0)    //phase sequence check
L_main36:
	MOVLW      0
	XORWF      main_phase1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main83
	MOVLW      0
	XORWF      main_phase1_L0+0, 0
L__main83:
	BTFSS      STATUS+0, 2
	GOTO       L_main37
	MOVLW      0
	XORWF      main_phase2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main84
	MOVLW      0
	XORWF      main_phase2_L0+0, 0
L__main84:
	BTFSS      STATUS+0, 2
	GOTO       L_main37
L__main58:
;MyProject.c,92 :: 		phase1=ADC_Get_Sample(5);
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
;MyProject.c,93 :: 		phase2=ADC_Get_Sample(6);
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
;MyProject.c,95 :: 		if(phase1!=0 && phase2==0)
	MOVLW      0
	XORWF      main_phase1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main85
	MOVLW      0
	XORWF      main_phase1_L0+0, 0
L__main85:
	BTFSC      STATUS+0, 2
	GOTO       L_main42
	MOVLW      0
	XORWF      main_phase2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main86
	MOVLW      0
	XORWF      main_phase2_L0+0, 0
L__main86:
	BTFSS      STATUS+0, 2
	GOTO       L_main42
L__main57:
;MyProject.c,97 :: 		a=a+1 ;
	INCF       main_a_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_a_L0+1, 1
;MyProject.c,98 :: 		}
L_main42:
;MyProject.c,99 :: 		if(phase1==0 && phase2!=0)
	MOVLW      0
	XORWF      main_phase1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main87
	MOVLW      0
	XORWF      main_phase1_L0+0, 0
L__main87:
	BTFSS      STATUS+0, 2
	GOTO       L_main45
	MOVLW      0
	XORWF      main_phase2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main88
	MOVLW      0
	XORWF      main_phase2_L0+0, 0
L__main88:
	BTFSC      STATUS+0, 2
	GOTO       L_main45
L__main56:
;MyProject.c,101 :: 		b=b+1;
	INCF       main_b_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_b_L0+1, 1
;MyProject.c,102 :: 		}  }
L_main45:
	GOTO       L_main36
L_main37:
;MyProject.c,103 :: 		if(b>a)
	MOVLW      128
	XORWF      main_a_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_b_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main89
	MOVF       main_b_L0+0, 0
	SUBWF      main_a_L0+0, 0
L__main89:
	BTFSC      STATUS+0, 0
	GOTO       L_main46
;MyProject.c,104 :: 		{ goto abc;}
	GOTO       ___main_abc
L_main46:
;MyProject.c,106 :: 		PORTA.F0=1;
	BSF        PORTA+0, 0
;MyProject.c,107 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;MyProject.c,108 :: 		if(d==0)
	MOVLW      0
	XORWF      main_d_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main90
	MOVLW      0
	XORWF      main_d_L0+0, 0
L__main90:
	BTFSS      STATUS+0, 2
	GOTO       L_main47
;MyProject.c,110 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;MyProject.c,111 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	DECFSZ     R11+0, 1
	GOTO       L_main48
	NOP
;MyProject.c,112 :: 		h=h+1;
	INCF       main_h_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_h_L0+1, 1
;MyProject.c,113 :: 		if(h==50)
	MOVLW      0
	XORWF      main_h_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main91
	MOVLW      50
	XORWF      main_h_L0+0, 0
L__main91:
	BTFSS      STATUS+0, 2
	GOTO       L_main49
;MyProject.c,115 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;MyProject.c,116 :: 		d=d+1;
	INCF       main_d_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_d_L0+1, 1
;MyProject.c,117 :: 		}
L_main49:
;MyProject.c,119 :: 		} }
L_main47:
	GOTO       L_main18
L_main19:
;MyProject.c,120 :: 		abc:
___main_abc:
;MyProject.c,121 :: 		h=0;
	CLRF       main_h_L0+0
	CLRF       main_h_L0+1
;MyProject.c,122 :: 		d=0;
	CLRF       main_d_L0+0
	CLRF       main_d_L0+1
;MyProject.c,123 :: 		g=0;
	CLRF       main_g_L0+0
	CLRF       main_g_L0+1
;MyProject.c,124 :: 		a=0;
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
;MyProject.c,125 :: 		b=0;
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
;MyProject.c,126 :: 		PORTA.F0=0;
	BCF        PORTA+0, 0
;MyProject.c,127 :: 		PORTA.F1=1;
	BSF        PORTA+0, 1
;MyProject.c,128 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;MyProject.c,129 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;MyProject.c,130 :: 		while(refp2<20)
L_main50:
	MOVLW      128
	XORWF      main_refp2_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main92
	MOVLW      20
	SUBWF      main_refp2_L0+0, 0
L__main92:
	BTFSC      STATUS+0, 0
	GOTO       L_main51
;MyProject.c,132 :: 		phase2=ADC_Get_Sample(6);
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
;MyProject.c,133 :: 		if(refp2<=phase2)
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORWF      main_refp2_L0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main93
	MOVF       main_refp2_L0+0, 0
	SUBWF      R0+0, 0
L__main93:
	BTFSS      STATUS+0, 0
	GOTO       L_main52
;MyProject.c,135 :: 		refp2=phase2;
	MOVF       main_phase2_L0+0, 0
	MOVWF      main_refp2_L0+0
	MOVF       main_phase2_L0+1, 0
	MOVWF      main_refp2_L0+1
;MyProject.c,136 :: 		}
L_main52:
;MyProject.c,137 :: 		}
	GOTO       L_main50
L_main51:
;MyProject.c,138 :: 		}
L_main12:
;MyProject.c,140 :: 		if(a<b)    //phase is wrong
	MOVLW      128
	XORWF      main_a_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_b_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main94
	MOVF       main_b_L0+0, 0
	SUBWF      main_a_L0+0, 0
L__main94:
	BTFSC      STATUS+0, 0
	GOTO       L_main53
;MyProject.c,143 :: 		PORTA.F0=0;
	BCF        PORTA+0, 0
;MyProject.c,144 :: 		PORTA.F1=1;
	BSF        PORTA+0, 1
;MyProject.c,145 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main54:
	DECFSZ     R13+0, 1
	GOTO       L_main54
	DECFSZ     R12+0, 1
	GOTO       L_main54
	DECFSZ     R11+0, 1
	GOTO       L_main54
;MyProject.c,146 :: 		PORTA.F1=0;
	BCF        PORTA+0, 1
;MyProject.c,147 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main55:
	DECFSZ     R13+0, 1
	GOTO       L_main55
	DECFSZ     R12+0, 1
	GOTO       L_main55
	DECFSZ     R11+0, 1
	GOTO       L_main55
;MyProject.c,148 :: 		a=0;
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
;MyProject.c,149 :: 		b=0;
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
;MyProject.c,150 :: 		}
L_main53:
;MyProject.c,151 :: 		phase1=ADC_Get_Sample(5);
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
;MyProject.c,152 :: 		phase2=ADC_Get_Sample(6);
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
;MyProject.c,154 :: 		}}
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
