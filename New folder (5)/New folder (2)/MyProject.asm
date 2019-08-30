
_main:

	MOVLW      _jy+0
	MOVWF      FARG_Glcd_Image_image+0
	MOVLW      hi_addr(_jy+0)
	MOVWF      FARG_Glcd_Image_image+1
	CALL       _Glcd_Image+0
	MOVLW      15
	MOVWF      R11+0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      154
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
L_main1:
	GOTO       L_main1
L_end_main:
	GOTO       $+0
; end of _main
