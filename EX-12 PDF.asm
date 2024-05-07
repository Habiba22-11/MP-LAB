.model small
.stack 100h
.data
msg1 db '***********$'
msg2 db '****$'

 

.code  
main proc 
    
     mov dl,'?'
     mov ah,2
     int 21h
     
     mov ah,1
     int 21h
     mov bl,al
     
     mov ah,1
     int 21h
     mov cl,al
     
     mov ah,1
     int 21h

     mov bh,al 
     
      mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h 
    
     mov ax,@data
     mov ds,ax
     lea dx,msg1
     mov ah,9
     int 21h
     
       mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h    
     lea dx,msg1
     mov ah,9
     int 21h
      
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h 
     lea dx,msg1
     mov ah,9
     int 21h

 

     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg1
     mov ah,9
     int 21h  
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h


     lea dx,msg1
     mov ah,9
     int 21h 
     
      
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h  
     
     lea dx,msg2  ; printing less star to put the scanned value
     mov ah,9
     int 21h
     
     
     mov dl,bl 
     
     mov ah,2    ;printing scanned value
     int 21h
     
    
     mov dl,cl
     int 21h     ;printing scanned value
     
     mov dl,bh  ;printing scanned value
     int 21h        
    
     lea dx,msg2
     mov ah,9
     int 21h
       
       
       
       
     
    
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg1
     mov ah,9
     int 21h   
     
     mov ah,2
     mov dl,0dh
     int 21h


     mov dl,0ah 
     int 21h
     lea dx,msg1
     mov ah,9
     int 21h    
     
       mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg1
     mov ah,9
     int 21h 
     
       mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg1
     mov ah,9
     int 21h 
     
       mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg1
     mov ah,9
     int 21h 
     
      
     
     
     mov ah,2
     mov dl,07h
     int 21h 
     
     
     mov ah,4ch
     int 21h
     
   main endp
   end main