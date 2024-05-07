.model small
.stack 100h
.data 
msg db 'ENTER THREE INITIALS: $'  

  a db ?
  b db ?
  c db ?


.code
main proc  
    
    mov ax,@data  ;initialize data segment
    mov ds,ax
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1 
    int 21h  
    mov a,al
    
    
    mov ah,1 
     int 21h 
    mov b,al
    
    
    mov ah,1 
    int 21h
    mov c,al 
    
    mov ah,2
    mov dl,0dh  ;caariage return
    int 21h
    mov dl,0ah  ;new line
    int 21h
    
    
    
    mov ah,2
    mov dl,a
    int 21h 
    


    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
      
     
    mov ah,2
    mov dl,b
    int 21h  
    
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
       
     
    mov ah,2
    mov dl,c
    int 21h   
   
    mov ah,4ch
    int 21h
    
  main endp
  end main