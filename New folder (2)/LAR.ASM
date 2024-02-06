data segment
array db 5,6,7,8,9
data ends
code segment
assume cs:code ds:data
start:
mov ax,data
mov ds,ax
lea si,array
mov cx,5
mov bl,0
l1:
mov al,[si]
cmp al,bl
jl nxt
mov bl,al
nxt:
inc si
dec cx
jnz l1
mov dl,al
add dl,48
mov ah,02h
int 21h
mov ah,4ch
int 21h
code ends
end start
