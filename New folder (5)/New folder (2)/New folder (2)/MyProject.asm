
_main:

	CLRF       TRISA+0
L_main0:
	CLRF       PORTA+0
	MOVLW      15
	MOVWF      R11+0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      154
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	MOVLW      255
	MOVWF      PORTA+0
	MOVLW      15
	MOVWF      R11+0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      154
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
