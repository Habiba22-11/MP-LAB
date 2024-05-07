.model small
.stack 100h

     
.code

main proc  
    
    
    MOV  AH,2
     MOV DL,'*'
     INT 21H  
     
     
    ; MOV  AH,2    ;na dileo hobe
     MOV DL,'&'
     INT 21H   
      
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN  
  
  
  ;viva code  
  
  