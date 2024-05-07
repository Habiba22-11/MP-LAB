.MODEL SMALL

.STACK 100H

.DATA



.CODE



   MAIN PROC

 

    MOV BX,5 
   
      
                    
      

  DES_LEV:
MOV AH, 2  
MOV DL,'*'  
;MOV DL,'#'
INT 21H

DEC BX
JNZ DES_LEV
 
      
      ;INC BX OR ADD 
      
      
      
      

     ; MOV AH,2           
     ; MOV DL,0DH
     ; INT 21H
     ; MOV DL,0AH
     ; INT 21H    



DOS:

  MOV AH, 4CH

  INT 21H

MAIN ENDP

END MAIN