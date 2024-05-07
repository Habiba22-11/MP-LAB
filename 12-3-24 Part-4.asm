.model small
.stack 100h
.data
     
     str1 db 'start ' 
     a db '2'
     str2 db ' end $'
     
.code

main proc  
    
    
   
    MOV AX,@Data   ;DATA SEG CODE INITIALIZE
    MOV DS,AX
   
        
    MOV AH,9
    LEA DX,str1    
    INT 21H  
    
    
      
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN  
  
  
  ;viva code  
  
  
 