.MODEL SMALL

.STACK 100H

.DATA 

US_IN DB 'ENTER 2 NUMBERS $' 

     A DB ?
     STR DB ' AND $'
     B DB ?

MSG1 DB 0AH, 0DH, "MAXIMUM NUMBER $" 


.CODE



   MAIN PROC

MOV AX, @DATA

MOV DS, AX 


   MOV AH,9
   LEA DX,US_IN
   INT 21H

     MOV AH,1
     INT 21H
     MOV A,AL
     MOV BL,AL
     
       MOV AH,9
       LEA DX,STR
       INT 21H 
       
     MOV AH,1
     INT 21H
     MOV B,AL
     MOV BH,AL 



CMP BL,BH
JGE MAX
JMP MAX2 



MAX:

    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H 
    JMP DOS

MAX2:

   MOV AH, 9
   LEA DX, MSG1
   INT 21H
   MOV AH,2
   MOV DL,BH
   INT 21H 
   JMP DOS

DOS:

  MOV AH, 4CH

  INT 21H

MAIN ENDP

END MAIN