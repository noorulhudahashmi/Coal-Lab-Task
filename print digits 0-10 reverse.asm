.model small
.stack 100h
.data
.code
main proc

mov cx,10            ;loop for print digits

mov dx,57 

 
 l1: 
;print digits
 mov ah,2
 int 21h
 
 dec dx
 
 loop l1

mov ah,4ch
int 21h

main endp
end main