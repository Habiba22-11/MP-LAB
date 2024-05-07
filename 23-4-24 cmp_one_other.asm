.MODEL SMALL

.STACK 100H

.DATA

MSG1 DB 0AH, 0DH, "ONE$" 
MSG2 DB 0AH, 0DH, "OTHERS$"

.CODE



   MAIN PROC

MOV AX, @DATA

MOV DS, AX

MOV AH, 1

INT 21H  



CMP AL, '1'

JE ONE

JMP OTHER  



ONE:

    MOV AH, 9

    LEA DX, MSG1

    INT 21H

    JMP DOS



OTHER:

    MOV AH, 9

    LEA DX, MSG2

    INT 21H

    JMP DOS

DOS:

  MOV AH, 4CH
 
  INT 21H

MAIN ENDP

END MAIN