data segment
word1 db "how are you$"
total db 01h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,word1
mov bh, 01h
apple:
mov ah,[si]
mov bl,[di]
cmp ah,"."
jz print1
cmp ah,20h
jnz next
inc bh
next:inc si
loop apple
mov total,bh
print1:
mov al,bh
add al,30h
mov ah,02h
int 21h
mov ah,4ch
int 21h
code ends
end start
