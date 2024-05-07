.model small
.stack 100h
.data
 
   
     A DB ?
     B DB ?
     
  
.code

main proc  
    
    
   ; MOV AX,@Data   ;DATA SEG CODE INITIALIZE
   ; MOV DS,AX
   
        
      
       ;user 2 input addition
     
     MOV AH,1
     INT 21H
     MOV A,AL
     
      
     MOV BL,A 
       
     MOV AH,1
     INT 21H
     MOV B,AL  
         
     
     ADD BL,B 
     SUB BL,48
   
  
      
       ;new line
      MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H   
      
      
     
     MOV  AH,2
     MOV DL,BL
     INT 21H
   
        
        
      
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN            
                           