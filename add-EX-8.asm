.model small
.stack 100h
.data
  
  
  ;variable initialize
  msg db ?  ;na dileo hobe .data part ta
  
  
.code

main proc
    
      ;? print
     MOV AH,2
     MOV DL,'?'  
     INT 21H      
    
     ;user input
     MOV AH,1        
     INT 21H
     MOV CL,AL                 
       
     
       
       
     ;addition  
     MOV AH,1        
     INT 21H
     ADD CL,AL
     SUB CL,48  ;0 er ascii value 48..tai -48 decimal a anar jonno
     
       
       
       
      ;new line
      MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H 
       
        
        
      ;output              
     MOV AH,2 
     MOV DL,CL 
     INT 21H    
      
        
        
      
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN            
                           