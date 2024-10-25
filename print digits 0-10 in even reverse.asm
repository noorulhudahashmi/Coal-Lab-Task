.model small
.stack 100h
.data
.code
main proc

mov cx,5            ;loop for print digits

mov dx,56

 
 l1: 
  
;print digits
 mov ah,2
 int 21h
 
 dec dx
  dec dx
 
 loop l1

mov ah,4ch
int 21h

main endp
end main