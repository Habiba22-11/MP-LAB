.model small
.stack 100h
.data
msg1 db '***********$'
msg2 db '*         *$'
msg3 db '*   $'
msg4 db '   *$'
 
 
 a db ?
 b db ?
 c db ?
 

.code  
main proc 
     
     mov ax,@data
     mov ds,ax
       
       
     mov ah,2
     mov dl,'?'
     int 21h
     
     mov ah,1
     int 21h
     mov a,al              
           ;or mov bl,al
     mov bl,a
     
      
     mov ah,1
     int 21h
     mov b,al             
               ; or mov cl,al
     mov bh,b        
     
           
             
     mov ah,1
     int 21h
     mov c,al   
               ;or mov bh,al
     mov cl,c          
                   
     
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
     lea dx,msg2
     mov ah,9
     int 21h
      
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h 
     lea dx,msg2
     mov ah,9
     int 21h

 

     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg2
     mov ah,9
     int 21h  
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg2
     mov ah,9
     int 21h 
     
      
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h  
     lea dx,msg3 
     mov ah,9
     int 21h
     
     
     mov ah,2
     mov dl,BL    ;printing 1st scanned value 
     int 21h
       
    
     mov dl,BH
     int 21h     ;printing 2nd scanned value
     
     mov dl,CL  ;printing 3rd scanned value
     int 21h        
    
     lea dx,msg4
     mov ah,9
     int 21h
       
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg2
     mov ah,9
     int 21h   
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg2
     mov ah,9
     int 21h    
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
     int 21h
     lea dx,msg2
     mov ah,9
     int 21h 
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah 
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
     
      
     
     
     ;mov ah,2
     ;mov dl,07h
     ;int 21h 
     
     
     mov ah,4ch
     int 21h
     
   main endp
   end main