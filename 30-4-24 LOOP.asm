.MODEL SMALL

.STACK 100H

.DATA



.CODE



   MAIN PROC

;MOV AX, @DATA 

   ; MOV CX,5 
   
      MOV CX,10 
       MOV AH, 2  ;akhane dileo hobe
       MOV DL,'*' ;
      
                    
      

  DES_LEV:
;MOV AH, 2   ; akhane dileo hobe
;MOV DL,'*'  ;
;MOV DL,'#'

INT 21H 


      MOV AH,2           
      MOV DL,0DH
      INT 21H
      MOV DL,0AH
      INT 21H    

LOOP DES_LEV 


DOS:

  MOV AH, 4CH

  INT 21H

MAIN ENDP

END MAIN