.model small
.stack 100h
.data
 
  
    str1 DB 'THE SUM OF ' 
     A DB ?
    str2 DB ' AND '
     B DB ?
    str3 DB ' IS $' 
  
.code

main proc  
    
    
    MOV AX,@Data   ;DATA SEG CODE INITIALIZE
    MOV DS,AX
   
     MOV AH,2
     MOV DL,'?'  
     INT 21H   
     
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
       
     
    MOV AH,9
    LEA DX,str1    
    INT 21H
  
     
     
     MOV  AH,2
     MOV DL,BL
     INT 21H
   
        
        
      
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN            
                         