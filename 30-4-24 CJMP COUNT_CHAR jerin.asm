.model small
.stack 100h 
.data                                           
    msg1 db , 0 ah , 0dh , "Enter_a_sentence $"  
    msg2 db , 0 ah , 0dh , "Total_number_of_character $"
.code
main proc 
    mov ax , @data
    mov ds , ax 
       
       mov ah , 9 
       lea dx , msg1
       int 21h
       
       mov bl ,  30h
       
       lev:
        
        
       mov ah , 1 
       int 21h   
       
       
       cmp al , 0dh 
       je lev_1
       inc bl 
       jmp lev
       
       lev_1:
       mov ah, 2
       int 21h 
       mov dl , 0ah 
       int 21h 
       mov dl , 0dh 
       
       mov ah , 9 
       lea dx , msg2
       int 21h  
       
       mov ah , 2
       mov dl , bl 
       int 21h 
       
       dos:
       mov ah , 4ch 
       int 21h 
       
       main endp
  end main