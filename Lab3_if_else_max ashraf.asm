 .MODEL SMALL
 .STACK 100H
 .DATA 
     IN1 DB 'ENTER FIRST NUMBER $'  
     IN2 DB 'ENTER SECOND NUMBER $'      
     NEW_LINE DB 0DH,0AH,'$'
     RES DB 'MAX IS $'
 .CODE
 
 MAIN PROC
   MOV AX,@DATA 
   MOV DS,AX
   
  MOV AH,9
  LEA DX,IN1
  INT 21H
  
  MOV AH ,1
  INT 21H
  MOV BL,AL    
   
  MOV AH,9
  LEA DX,NEW_LINE
  INT 21H
  
  MOV AH,9
  LEA DX,IN2
  INT 21H
  
  MOV AH ,1
  INT 21H
  MOV BH,AL  
  
  MOV AH,9
  LEA DX,NEW_LINE
  INT 21H
   
   CMP BL,BH
   JGE IF_
   JMP ELSE_
   
   IF_:
         MOV AH,9
         LEA DX,RES
         INT 21H 
         MOV AH,2    
         MOV DL,BL
         INT 21H         
         JMP END            
   ELSE_:
         MOV AH,9
         LEA DX,RES
         INT 21H  
         MOV AH,2    
         MOV DL,BH
         INT 21H
         JMP END
     
   END:           
      MOV AH,4CH
      INT 21H   
      
  MAIN ENDP  
 END MAIN


