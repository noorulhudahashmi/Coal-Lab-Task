; MarksEvaluation.asm - Program to evaluate marks and display a message

org 100h               ; Start at address 100h for COM files

.data
msg1 db 10, 13, "Enter your marks (0-9): $"
msg_hard_work db 10, 13, "Need hard work.$"
msg_satisfactory db 10, 13, "Satisfactory.$"
msg_invalid db 10, 13, "Invalid input. Please enter a valid mark.$"

.code
main:
    ; Print prompt message
    mov dx, offset msg1
    mov ah, 9
    int 21h 

    ; Input a character
    mov ah, 1
    int 21h 

    ; Check if the input is a valid digit (0-9)
    cmp al, '0'          
    jb invalid_input      
    cmp al, '9'          
    ja invalid_input      

    ; Convert ASCII to numeric
    sub al, '0'          

    ; Check if marks are less than 5
    cmp al, 5            
    jl need_hard_work     

satisfactory:
    ; Print satisfactory message
    mov dx, offset msg_satisfactory
    jmp print_msg

need_hard_work:
    ; Print need hard work message
    mov dx, offset msg_hard_work

print_msg:
    mov ah, 9
    int 21h 
    jmp exit

invalid_input:
    ; Print invalid input message
    mov dx, offset msg_invalid
    mov ah, 9
    int 21h 

exit:
    ; Terminate the program
    mov ah, 4ch
    int 21h

end main 