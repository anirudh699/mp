data segment
msg db 'enter the string$'
msg1 db'reversed string is $'
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov di,400h
mov dx,offset msg
mov ah,09h
int 21h
mov cl,00h
l1:
mov ah,01h
int 21h
mov[di],al
inc di
inc cl
cmp al,0dh
jne l1
sub di,02h
mov dx,offset msg1
mov ah,09h
int 21h
l2:
mov dl,[di]
mov ah,02h
int 21h
dec di
dec cl
jnz l2
mov ah,4ch
int 21h
code ends
end start


