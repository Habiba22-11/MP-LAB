  .MODEL SMALL
  .STACK 100H
  .CODE
  MAIN PROC  
    
    
    ;VALUE JA ASSIGN TAI SHOW KORBE   
    
    MOV AH,2   ;OUTPUT INSTRUCTION
    MOV DL,'?'  ;? PRINT HOBE
    INT 21H 
    
      
      
      
      
      ;USER INPUT   
      
        
       
     ;NEW LINE ER JONNO           
       MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H    
      
     ;NEW LINE CODE SES
      
      
      
      
      
    MOV AH,1 ;USER INPUT INSTRUCTION ...SINGLE CHARACTER
    INT 21H  ;KEYBOARD THEKE INPUT DIBO
    MOV BL,AL   ;BL  STORE/SHIFT KORBO
    
                 
                 
       MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H           
                 
                 
                 
                 
                 
                 
                 
                 
                 
     MOV AH,2  ;USER OUTPUT TA DEKHAR JONNO
    MOV DL,BL    ;BL A VALUE K DL A STRORE KORBO
    INT 21H    ;OUTPUT TA DEKHBO
    
       
       
       
       
      
       
    
    
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN
  