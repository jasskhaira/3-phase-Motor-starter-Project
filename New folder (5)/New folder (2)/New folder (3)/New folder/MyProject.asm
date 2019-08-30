
_main:

;MyProject.c,27 :: 		void main()
;MyProject.c,29 :: 		Glcd_Init();
	CALL       _Glcd_Init+0
;MyProject.c,30 :: 		Glcd_Write_Text("WELCOME",45,3,0);
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      45
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;MyProject.c,31 :: 		Delay_ms(1000);
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
;MyProject.c,32 :: 		Glcd_Image(jy);
	MOVLW      _jy+0
	MOVWF      FARG_Glcd_Image_image+0
	MOVLW      hi_addr(_jy+0)
	MOVWF      FARG_Glcd_Image_image+1
	CALL       _Glcd_Image+0
;MyProject.c,33 :: 		Delay_ms(1000);
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
;MyProject.c,34 :: 		while(1)
L_main2:
;MyProject.c,36 :: 		Glcd_Write_Text("WELCOME",45,3,0);
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      45
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;MyProject.c,37 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;MyProject.c,40 :: 		}
	GOTO       L_main2
;MyProject.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
