.MODEL SMALL
.STACK 100H
   
     
     
.DATA
 
 MSG DB 3
 MSG1 DB ?
 
     
.CODE     
     
     
  MAIN PROC 
     
     ;DATA SEGMENT INITIALIZE
    MOV AX,@DATA
    MOV DS,AX    ; SES
      
    
    
     MOV AH,2  
     ADD MSG,48
     MOV DL,MSG
     INT 21H
    
         
    MOV AH,1
    INT 21H
    MOV MSG1,AL
    
    
   MOV AH,2
   MOV DL,10
   INT 21H
    MOV DL,13
    INT 21H
         
         
     MOV AH,2  
     MOV DL,MSG1
     INT 21H     
         
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN
  