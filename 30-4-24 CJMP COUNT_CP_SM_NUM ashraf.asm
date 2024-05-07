
.MODEL SMALL
 .STACK 100H
 .DATA 
   IN1 DB 'ENTER A VALUE $'
   NEW_LINE DB 0DH,0AH,'$'
   NUM DB 0DH,0AH,'NUMBER = $'
   CP DB 0DH,0AH,'CAPITAL = $'  
   SM DB 0DH,0AH,'SMALL = $'
 .CODE
 
 MAIN PROC
   MOV AX,@DATA 
   MOV DS,AX
   
   MOV AH,9
   LEA DX,IN1
   INT 21H
  
    MOV BL,30H 
    MOV BH,30H  
    MOV CH,30H
  INPUT:
       MOV AH ,1
       INT 21H 
         
       CMP AL,0DH
       JE PRINT
   
   CMP AL,'0'
   JNGE INPUT
   CMP AL,'9'
   JNLE CHECK_CAPITAL 
   INC BL 
   JMP INPUT
   CHECK_CAPITAL:  
       CMP AL,'A'
       JNGE INPUT
       CMP AL,'Z'
       JNLE CHECK_SMALL        
        INC BH     
         JMP INPUT
   CHECK_SMALL:
        CMP AL,'a'
       JNGE INPUT
       CMP AL,'z'
       JNLE END        
       INC CH   
         JMP INPUT
       
   
   PRINT:
         MOV AH,9
         LEA DX,NUM
         INT 21H 
         MOV AH,2    
         MOV DL,BL
         INT 21H
         
         MOV AH,9
         LEA DX,CP
         INT 21H 
         MOV AH,2    
         MOV DL,BH
         INT 21H
         
         MOV AH,9
         LEA DX,SM
         INT 21H 
         MOV AH,2    
         MOV DL,CH
         INT 21H
                  
         JMP END           
   
     
   END:           
      MOV AH,4CH
      INT 21H    
      
  MAIN ENDP  
 END MAIN