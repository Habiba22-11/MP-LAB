  .MODEL SMALL
  .STACK 100H
  .CODE
  MAIN PROC
    MOV AH,2
    MOV DL,'?'
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
  END MAIN
  