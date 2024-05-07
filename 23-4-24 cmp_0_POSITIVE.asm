.MODEL SMALL

.STACK 100H

.DATA

MSG1 DB 0AH, 0DH, "ZERO$" 
MSG2 DB 0AH, 0DH, "POSITIVE$"

.CODE



   MAIN PROC

MOV AX, @DATA

MOV DS, AX

MOV AH, 1

INT 21H 


     CMP AL,'0'
     JE ZERO
     
     CMP AL,'9'
     JLE POSITIVE 
 ;OR JNGE POSITIVE


ZERO:

    MOV AH, 9

   LEA DX, MSG1

   INT 21H

   JMP DOS

POSITIVE:

   MOV AH, 9

   LEA DX, MSG2

   INT 21H

   JMP DOS

DOS:

  MOV AH, 4CH

  INT 21H

MAIN ENDP

END MAIN