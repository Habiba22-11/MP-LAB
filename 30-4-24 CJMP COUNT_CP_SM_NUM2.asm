.MODEL SMALL
.STACK 100H
.DATA 
   LINE DB 'ENTER A LINE $'
   T_NUM DB 0DH,0AH,'TOTAL NUMBER OF NUMBERS $'
   T_CP DB 0DH,0AH,'TOTAL NUMBER OF CAPITAL LATTERS $'  
   T_SM DB 0DH,0AH,'TOTAL NUMBER OF SMALL LATTERS $'


.CODE
 
 MAIN PROC
   MOV AX,@DATA 
   MOV DS,AX
   
   MOV AH,9
   LEA DX,LINE
   INT 21H
  
    ;MOV BL,30H   ;HEXADECIMAL
    ;MOV BH,30H  
    ;MOV CH,30H 
    
    
    MOV BL,0 
    MOV BH,0  
    MOV CH,0 
    
    
  INPUT_COUNT:
       MOV AH ,1
       INT 21H 
         
       CMP AL,0DH
       JE PRINT
   
   CMP AL,'0'
   JNGE INPUT_COUNT
   CMP AL,'9'
   JNLE CK_CP
   INC BL 
   JMP INPUT_COUNT
   CK_CP:  
       CMP AL,'A'
       JNGE INPUT_COUNT
       CMP AL,'Z'
       JNLE CK_SM        
        INC BH     
         JMP INPUT_COUNT
   CK_SM:
        CMP AL,'a'
       JNGE INPUT_COUNT
       CMP AL,'z'
       JNLE DOS       
       INC CH   
         JMP INPUT_COUNT
       
   
   PRINT:
         MOV AH,9
         LEA DX,T_NUM
         INT 21H 
         MOV AH,2
         ADD BL,48    
         MOV DL,BL
         INT 21H
         
         MOV AH,9
         LEA DX,T_CP
         INT 21H 
         MOV AH,2 
         ADD BH,48   
         MOV DL,BH
         INT 21H
         
         MOV AH,9
         LEA DX,T_SM
         INT 21H 
         MOV AH,2 
         ADD CH,48   
         MOV DL,CH
         INT 21H
                  
         JMP DOS           
   
     
   DOS: 
             
      MOV AH,4CH
      INT 21H    
      
  MAIN ENDP  
 END MAIN