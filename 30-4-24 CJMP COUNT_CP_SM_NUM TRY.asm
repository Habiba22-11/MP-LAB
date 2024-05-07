.MODEL SMALL

.STACK 100H

.DATA
   ; OFFSET EQU 1000H   ; Offset where the input line is stored
    NUM_COUNT DB 0     ; Variable to store the count of numbers
    CAPITAL_COUNT DB 0 ; Variable to store the count of capital letters
    SMALL_COUNT DB 0   ; Variable to store the count of small letters
   ; INPUT_BUFFER DB 80 DUP('$') ; Buffer to store input line 
    
    
    NUM_MSG DB "Numbers Count: $"
    CAPITAL_MSG DB "Capital Letters Count: $"
    ;SMALL_MSG DB "Small Letters Count: $

.CODE



MAIN PROC
    
       MOV AX, @DATA       ; Initialize DS
       MOV DS, AX


MOV NUM_COUNT, 0    ; Initialize counts to zero
MOV CAPITAL_COUNT, 0
MOV SMALL_COUNT, 0

    MOV BL,0 
    MOV AH,1
    INT 21H 


    COUNT_LOOP:
; MOV AL,BL
CMP AL,0DH
JE END_COUNT_LOOP
;INC BL
;INT 21H

    
    
     CMP AL, '0'         ; Check if the character is a number
    JNGE EXIT    ; If less than '0', check for capital letter
    CMP AL, '9'         ; Check if the character is a number
    JNLE CHECK_CAPITAL    ; If greater than '9', check for capital letter
    INC NUM_COUNT       ; Increment count of numbers
    JMP CONTINUE_LOOP

CHECK_CAPITAL:
    CMP AL, 'A'         ; Check if the character is a capital letter
    JNGE EXIT      ; If less than 'A', check for small letter
    CMP AL, 'Z'         ; Check if the character is a capital letter
    JNLE CHECK_SMALL      ; If greater than 'Z', check for small letter
    INC CAPITAL_COUNT   ; Increment count of capital letters
    JMP CONTINUE_LOOP

CHECK_SMALL:
    CMP AL, 'a'         ; Check if the character is a small letter
    JNGE EXIT    ; If less than 'a', move to next character
    CMP AL, 'z'         ; Check if the character is a small letter
    JNLE CONTINUE_LOOP    ; If greater than 'z', move to next character
    INC SMALL_COUNT     ; Increment count of small letters

CONTINUE_LOOP:
    INC BL              ; Move to next character
    LOOP COUNT_LOOP   



;JMP L1


   ; END:
      
;MOV AH,2
;MOV DL,0AH
;INT 21H
;MOV DL,0DH
;INT 21H
 
 


;MOV AH,2
;ADD BL,48
;MOV DL,BL
;INT 21H 
      ;MOV AH,9
      ;LEA DX,MSG1
      ;INT 21H

         
         
      END_COUNT_LOOP:
    ; Display the counts
    MOV AH, 09H         ; DOS function to display string
    LEA DX, NUM_MSG     ; Load address of message for numbers count
    INT 21H             ; Display message
    MOV DL, NUM_COUNT   ; Load number count
    ADD DL, '0'         ; Convert count to ASCII character
    MOV AH, 2         ; DOS function to display character
    INT 21H             ; Display character

    LEA DX, CAPITAL_MSG ; Load address of message for capital letters count
    INT 21H             ; Display message
    MOV DL, CAPITAL_COUNT ; Load capital letters count
    ADD DL, '0'         ; Convert count to ASCII character
    MOV AH, 2        ; DOS function to display character
    INT 21H             ; Display character

    ;LEA DX, SMALL_MSG   ; Load address of message for small letters count
   ; INT 21H             ; Display message
    MOV DL, SMALL_COUNT; Load small letters count
    ADD DL, '0'         ; Convert count to ASCII character
    MOV AH, 2         ; DOS function to display character
    INT 21H       
         
         
         
         
         
    EXIT:

MOV AH, 4CH
INT 21H


  MAIN ENDP

END MAIN  



