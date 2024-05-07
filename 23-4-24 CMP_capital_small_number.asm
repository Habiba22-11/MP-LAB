.MODEL SMALL

.STACK 100H

.DATA  


US_IN DB 'ENTER A CHARACTER $'

MSG1 DB 0AH, 0DH, "CAPITAL LATTER$" 
MSG2 DB 0AH, 0DH, "SMALL LATTER$"  
MSG3 DB 0AH, 0DH, "NUMBER$"

.CODE



   MAIN PROC

MOV AX, @DATA

MOV DS, AX  



   MOV AH,9
   LEA DX,US_IN
   INT 21H



MOV AH, 1

INT 21H  

     CMP AL,'0'

     JNGE DOS

     CMP AL,'9'
     JNLE CK_CP
       
     JMP PRINT3
    
   
   
   CK_CP:
   
      CMP AL,'A'
      JNGE DOS 


     CMP AL,'Z'
     JNLE CK_SM   
      
     JMP PRINT1
     
   CK_SM:

     CMP AL,'a'
     JNGE DOS 


     CMP AL,'z'
     JNLE DOS 
    
     JMP PRINT2

    
    PRINT1:
       MOV AH, 9
       LEA DX, MSG1
       INT 21H
       JMP DOS 
       
    
    PRINT2:
       MOV AH, 9
       LEA DX, MSG2
       INT 21H
       JMP DOS 

    PRINT3:
       MOV AH, 9
       LEA DX, MSG3
       INT 21H
       JMP DOS    

DOS:

  MOV AH, 4CH
 
  INT 21H

MAIN ENDP

END MAIN