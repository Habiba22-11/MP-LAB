.model small
.stack 100h 

;1 input initialize & 1 user input addition
.data
  
  
  ;variable initialize
  msg db 'Hello World $' ;STING ER ENDING BUJHANOR JONNO & SIGN USE KORI
     
     
     
     VAR1 DB 2
     VAR2 DB ?
     
  
.code

main proc  
    
    
    MOV AX,@Data   ;DATA SEG CODE INITIALIZE
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG    ;STRING VARIABLE PRINT 
    ;LOAD EFFECTIVE ADDRESS...VARIABLE ER ADDRESS K DIYE DIBE
    INT 21H
        
        
        
        
      ;new line
      MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H   
      
      
     
     MOV AH,1
     INT 21H
     MOV VAR2,AL
     MOV BL,VAR2  
     
     ADD BL,VAR1  
     
      
     
      
      ;new line
      MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H   
      
      
     ;output
     MOV  AH,2
     MOV DL,BL
     INT 21H
    
    
   
      
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN            
                           