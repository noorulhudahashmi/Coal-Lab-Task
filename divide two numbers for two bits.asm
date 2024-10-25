.model small
.stack 100h
.data
.code
main proc

 
mov al,100
mov bl,5
div bl
AAM      ; FOR two bits

mov ch,ah
mov cl,al

mov dl,ch
add dx,48

mov ah,2
int 21h
 
 mov dl,cl
add dx,48

mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main