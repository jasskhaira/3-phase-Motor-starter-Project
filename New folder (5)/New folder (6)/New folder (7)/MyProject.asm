
_main:

	CALL       _Glcd_Init+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      45
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
	MOVLW      _jy+0
	MOVWF      FARG_Glcd_Image_image+0
	MOVLW      hi_addr(_jy+0)
	MOVWF      FARG_Glcd_Image_image+1
	CALL       _Glcd_Image+0
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
L_main2:
	GOTO       L_main2
L_end_main:
	GOTO       $+0
; end of _main
