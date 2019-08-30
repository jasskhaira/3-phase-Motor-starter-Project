
_main:

	CLRF       TRISA+0
	MOVLW      255
	MOVWF      PORTA+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
	CLRF       PORTA+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
	NOP
	CALL       _Glcd_Init+0
	MOVLW      ?lstr1_leed+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      10
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
	MOVLW      ?lstr2_leed+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      10
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
	MOVLW      ?lstr3_leed+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      10
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      6
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
L_main4:
	MOVLW      ?lstr4_leed+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      10
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
	MOVLW      255
	MOVWF      PORTA+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
	CLRF       PORTA+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
	GOTO       L_main4
L_end_main:
	GOTO       $+0
; end of _main
