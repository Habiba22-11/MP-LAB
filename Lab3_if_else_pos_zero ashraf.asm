 .MODEL SMALL
 .STACK 100H
 .DATA 
    MSG1 DB 0AH,0DH,"Positive$"
    MSG2 DB 0AH,0DH,"Zero$" 
 .CODE
 
 MAIN PROC
   MOV AX,@DATA 
   MOV DS,AX
   MOV AH,1
   INT 21H
   
   CMP AL,'0'
   JE IF_
   JMP ELSE_
   
   IF_:
     MOV AH,9
     LEA DX,MSG2
     INT 21H
     JMP DOS 
         
    ELSE_:
        MOV AH,9
         LEA DX,MSG1
         INT 21H
         JMP DOS
     
     DOS:           
      MOV AH,4CH
      INT 21H   
      
  MAIN ENDP  
 END MAIN


