.model small
.stack 100h 

.data
     a dw 12



.code 
main proc
      
    mov ah,2  
    mov dl,'s'
    int 21h  
    
    
    
    mov ah,4ch     
    int 21h 
    
    
    main endp
end main