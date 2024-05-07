.model small
.stack 100h
;.data
  
  ;msg db ?
  
  
.code

main proc
    
    
     ;MOV AH,2
     ;MOV DL,'?'  
     ;INT 21H      
    
    
    MOV AH,1        
    INT 21H
    MOV BL,AL                  ;mov bl,al
       
       
       
     MOV AH,1        
     INT 21H
     MOV AH,AL ;MOV AL,BL            ;mov bh,al 
       
     ADD BL,AH 
     SUB BL,48   
       
    
     MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H 
      
    
        
                    
     MOV AH,2 
     
     MOV DL,BL 
    
    INT 21H    
      
        
        
      
      MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN            
                                                              