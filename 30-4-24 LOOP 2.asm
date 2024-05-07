.MODEL SMALL

.STACK 100H

.DATA



.CODE



   MAIN PROC

    MOV BX,5 
  

  DES_LEV:
MOV AH, 2  
MOV DL,'*'  
INT 21H  

MOV AH, 2  
MOV DL,' '  
INT 21H

DEC BX
JNZ DES_LEV
 
 

DOS:

  MOV AH, 4CH

  INT 21H

MAIN ENDP

END MAIN