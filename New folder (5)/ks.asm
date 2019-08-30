
_main:

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
	CLRF       TRISA+0
	BCF        TRISC4_bit+0, BitPos(TRISC4_bit+0)
	BCF        TRISC3_bit+0, BitPos(TRISC3_bit+0)
	MOVLW      0
	MOVWF      ANSEL+0
	CLRF       PORTA+0
	BCF        PORTC+0, 4
	BCF        PORTC+0, 3
	CALL       _ADC_Init+0
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
L_main0:
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
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
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
	INCF       main_a_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_a_L0+1, 1
L_main8:
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
	INCF       main_b_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_b_L0+1, 1
L_main11:
	GOTO       L_main2
L_main3:
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
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
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
	MOVF       main_phase1_L0+0, 0
	MOVWF      main_refp1_L0+0
	MOVF       main_phase1_L0+1, 0
	MOVWF      main_refp1_L0+1
L_main16:
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
	MOVF       main_phase2_L0+0, 0
	MOVWF      main_refp2_L0+0
	MOVF       main_phase2_L0+1, 0
	MOVWF      main_refp2_L0+1
L_main17:
	INCF       main_c_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_c_L0+1, 1
	GOTO       L_main13
L_main14:
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
	MOVLW      0
	XORWF      main_g_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main76
	MOVLW      0
	XORWF      main_g_L0+0, 0
L__main76:
	BTFSS      STATUS+0, 2
	GOTO       L_main22
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
	BSF        PORTA+0, 0
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
	BCF        PORTA+0, 0
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
	GOTO       L_main23
L_main24:
	INCF       main_g_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_g_L0+1, 1
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
L_main22:
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
	CLRF       main_refp1_L0+0
	CLRF       main_refp1_L0+1
	CLRF       main_refp2_L0+0
	CLRF       main_refp2_L0+1
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
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
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
	MOVF       main_phase1_L0+0, 0
	MOVWF      main_refp1_L0+0
	MOVF       main_phase1_L0+1, 0
	MOVWF      main_refp1_L0+1
L_main32:
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
	MOVF       main_phase2_L0+0, 0
	MOVWF      main_refp2_L0+0
	MOVF       main_phase2_L0+1, 0
	MOVWF      main_refp2_L0+1
L_main33:
	INCF       main_c_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_c_L0+1, 1
	GOTO       L_main29
L_main30:
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
	GOTO       ___main_abc
L_main34:
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
	GOTO       ___main_abc
L_main35:
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
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
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
	INCF       main_a_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_a_L0+1, 1
L_main42:
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
	INCF       main_b_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_b_L0+1, 1
L_main45:
	GOTO       L_main36
L_main37:
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
	GOTO       ___main_abc
L_main46:
	BSF        PORTA+0, 0
	BSF        PORTC+0, 3
	MOVLW      0
	XORWF      main_d_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main90
	MOVLW      0
	XORWF      main_d_L0+0, 0
L__main90:
	BTFSS      STATUS+0, 2
	GOTO       L_main47
	BSF        PORTC+0, 4
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	NOP
	NOP
	INCF       main_h_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_h_L0+1, 1
	MOVLW      0
	XORWF      main_h_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main91
	MOVLW      50
	XORWF      main_h_L0+0, 0
L__main91:
	BTFSS      STATUS+0, 2
	GOTO       L_main49
	BCF        PORTC+0, 4
	INCF       main_d_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_d_L0+1, 1
L_main49:
L_main47:
	GOTO       L_main18
L_main19:
___main_abc:
	CLRF       main_h_L0+0
	CLRF       main_h_L0+1
	CLRF       main_d_L0+0
	CLRF       main_d_L0+1
	CLRF       main_g_L0+0
	CLRF       main_g_L0+1
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
	BCF        PORTA+0, 0
	BSF        PORTA+0, 1
	BCF        PORTC+0, 3
	BCF        PORTC+0, 4
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
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
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
	MOVF       main_phase2_L0+0, 0
	MOVWF      main_refp2_L0+0
	MOVF       main_phase2_L0+1, 0
	MOVWF      main_refp2_L0+1
L_main52:
	GOTO       L_main50
L_main51:
L_main12:
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
	BCF        PORTA+0, 0
	BSF        PORTA+0, 1
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main54:
	DECFSZ     R13+0, 1
	GOTO       L_main54
	DECFSZ     R12+0, 1
	GOTO       L_main54
	DECFSZ     R11+0, 1
	GOTO       L_main54
	BCF        PORTA+0, 1
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main55:
	DECFSZ     R13+0, 1
	GOTO       L_main55
	DECFSZ     R12+0, 1
	GOTO       L_main55
	DECFSZ     R11+0, 1
	GOTO       L_main55
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
L_main53:
	MOVLW      5
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase1_L0+1
	MOVLW      6
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0+0, 0
	MOVWF      main_phase2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_phase2_L0+1
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
