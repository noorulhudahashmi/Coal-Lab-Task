.model small
.stack 100h
.data
.code
main proc

mov cx,26          ; print digits

mov dx,65           ;ascii code for starting

 
 l1: 
;print digits
 mov ah,2
 int 21h
 
 inc dx
 
 loop l1

mov ah,4ch
int 21h

main endp
end main