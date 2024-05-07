.MODEL SMALL

.STACK 100H 

.DATA 
   LINE DB 'ENTER A LINE $'
   T_CH DB 0DH,0AH,'TOTAL NUMBER OF CHARACTERS $'  
   

.CODE



MAIN PROC  
    
   MOV AX,@DATA 
   MOV DS,AX
   
   MOV AH,9
   LEA DX,LINE
   INT 21H
    
MOV BL,0
;MOV AH,1
;INT 21H 


    L1:  
    
    MOV AH,1
    INT 21H 

CMP AL,0DH
JE COUNT
INC BL
;INT 21H
JMP L1


    COUNT:
      
MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H
 
MOV AH,9
LEA DX,T_CH
INT 21H 


MOV AH,2
ADD BL,48
MOV DL,BL
INT 21H 



    DOS:

MOV AH, 4CH
INT 21H


  MAIN ENDP

END MAIN  



