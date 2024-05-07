 .MODEL SMALL
 .STACK 100H
 .DATA 
   IN1 DB 'ENTER A VALUE $'
   NEW_LINE DB 0DH,0AH,'$'
   RES DB 'VALUE IS $'
   NUM DB 'NUMBER $'
   CP DB 'CAPITAL $'  
   SM DB 'SMALL $'
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
   
   CMP BL,'0'
   JNGE END
   CMP BL,'9'
   JNLE CHECK_CAPITAL 
   LEA BX,NUM  
   JMP PRINT 
    
   CHECK_CAPITAL:  
       CMP BL,'A'
       JNGE END
       CMP BL,'Z'
       JNLE CHECK_SMALL        
        LEA BX,CP     
       JMP PRINT     
  
   CHECK_SMALL:
        CMP BL,'a'
       JNGE END
       CMP BL,'z'
       JNLE END        
       LEA BX,SM        
       JMP PRINT  
   
   PRINT:
         MOV AH,9
         LEA DX,RES
         INT 21H 
         MOV AH,9    
         LEA DX,BX
         INT 21H         
         JMP END           
   
     
   END:           
      MOV AH,4CH
      INT 21H    
      
  MAIN ENDP  
 END MAIN


