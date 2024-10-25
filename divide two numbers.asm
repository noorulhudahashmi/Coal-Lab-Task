.model small
.stack 100h
.data
.code
main proc

 
mov ax,10
mov bx,5
div bx

add ax,48


mov dl,al

mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main