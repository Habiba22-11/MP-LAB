.MODEL SMALL
.STACK 100H
.DATA 

A DB 'ENTER FIRST DIGIT $'
B DB 'INPUT SECOND DIGIT $'
C DB 'RESULT $'


.CODE 
   
MAIN PROC
    
    
MOV AX,@DATA
MOV DS,AX


MOV AH,9
LEA DX,A      
INT 21H


MOV AH,1
INT 21H
MOV BL,AL
     
     
     
   ;new line
      MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H     
     
     

MOV AH,9
LEA DX,B
INT 21H


MOV AH,1
INT 21H
MOV BH,AL

   
   
    ;new line
      MOV AH,2           
      MOV DL,0DH
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H  
   
   
   
   
MOV AH,9
LEA DX,C
INT 21H


ADD BL,BH ;B1 = B1+BH
SUB BL,48
 MOV AH,2
 MOV DL,BL
 INT 21H
 
 EXIT:
 MOV AH,4CH 
 INT 21H
 MAIN ENDP
END MAIN