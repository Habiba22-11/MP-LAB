.model small
.stack 100h    


;user 2 input addition
.data
  
  
  ;variable initialize
  msg1 db 'Enter the 1st number: $' 
     
  msg2 db 'Enter the 2nd number: $' 
  
  msg3  db 'sum: $' 
     
     A DB ?
     B DB ?
     
  
.code

main proc  
    
    
   
    MOV AX,@Data   ;DATA SEG CODE INITIALIZE
    MOV DS,AX
   
        
    MOV AH,9
    LEA DX,MSG1    
    INT 21H 
      
     
     MOV AH,1
     INT 21H
     MOV A,AL
     
      
     MOV BL,A 
      
    ;new line
      MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H    
      
      
      MOV AH,9
    LEA DX,MSG2    
    INT 21H 
       
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
              
        MOV AH,9
    LEA DX,MSG3    
    INT 21H 
      
     
     MOV  AH,2
     MOV DL,BL
     INT 21H
   
        
        
      
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN            
                         