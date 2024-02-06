data segment
num db 5,9,52,25
even db ?
odd db ?
data ends

code segment                    
assume cs:code,ds:datA

start:
mov ax, data
mov ds, ax
lea si,num
mov bl,0h
mov bh,0h
mov cl,[si]
inc si
up:mov al,[si]
ror al,1
jc xx
inc bl
jmp next
xx:inc bh
next: inc si
dec cl
jnz up
mov even,bl
mov odd,bh
mov ah,4ch
int 21h
code ends
end start
