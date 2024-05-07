.model small
.stack 100h

.data
msg1 DB 'Enter 1st number $'
VAR1 DB ?
msg2 DB 'Enter 2nd number $'  
VAR2 DB ?

.code
main proc
MOV AX,@data
MOV DS,AX

MOV AH,9
LEA DX,msg1
INT 21H

MOV AH,1
INT 21H 
MOV VAR1,AL     
MOV BL,VAR1

MOV AH,2
MOV DL,0AH
INT 21H       
MOV DL,0DH
INT 21H 

MOV AH,9
LEA DX,msg2
INT 21H

MOV AH,1
INT 21H 
MOV VAR2,AL


add BL,VAR2

MOV AH,2
MOV DL,0AH
INT 21H        
MOV DL,0DH
INT 21H 

sub BL,30H





MOV AH,2 
MOV DL,BL        
INT 21H 

  

MOV AH,4CH
INT 21H
    
MAIN ENDP
END MAIN