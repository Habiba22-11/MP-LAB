.model small

.stack 100h

.data

 a db 'Input two numbers $'

 b db  0AH, 0DH,'Largest number $'
 

.code

main proc



mov ax, @data

mov ds,ax


 mov ah,9

 lea dx,a

 int 21h

mov ah, 1

int 21h



mov bl,al

int 21h


mov bh,al

biggest:

cmp bl,bh

 jg L1



jmp L2  

L2:

mov ah,9

 lea dx,b

int 21h



 mov ah, 2
 mov dl,bh
 int 21h

 jmp exit



L1:

mov ah,9

 lea dx,b

 int 21h



 mov ah, 2

 mov dl,bl

 int 21h

jmp exit



 exit:

mov ah, 4ch



int 21h

main endp  


 end main