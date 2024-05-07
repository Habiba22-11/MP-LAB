.MODEL SMALL

.STACK 100H


.CODE



MAIN PROC
MOV BL,0
MOV AH,1
INT 21H 
 
     CMP AL,0DH
     MOV BL,AL
     CMP BL,'0'
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
       ;MOV AH, 9
       ;LEA DX, MSG1
       ;INT 21H
       ;JMP DOS 
        
CMP AL,0DH
JE END1
INC BL
INT 21H
JMP PRINT1
    
    PRINT2:
       ;MOV AH, 9
       ;LEA DX, MSG2
       ;INT 21H
       ;JMP DOS   
       
       
CMP AL,0DH
JE END2
INC BL
INT 21H
JMP PRINT2

    PRINT3:
       ;MOV AH, 9
       ;LEA DX, MSG3
       ;INT 21H
       ;JMP DOS 
       
       
       
CMP AL,0DH
JE END3
INC BL
INT 21H
JMP PRINT3   
  
    
    
    
    
    
    
    
   ; L1:

;CMP AL,0DH
;JE END
;INC BL
;INT 21H
;JMP L1


    END1:
      
MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H
 
 


MOV AH,2
ADD BL,48
MOV DL,BL
INT 21H 

   
   END2:
      
MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H
 
 


MOV AH,2
ADD BL,48
MOV DL,BL
INT 21H 

   
   END3:
      
MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
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



