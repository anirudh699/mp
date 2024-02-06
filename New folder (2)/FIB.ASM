data segment
 msg db 10,13, "enter the number"
 msg1 db 10,13,"series is:$"
 data ends
 code segment
 assume cs:code, ds:data
 start:
 mov ax, data
 mov ds, ax
 lea dx, msg
 mov ah, 09h
 int 21h
 mov ah, 01h
 int 21h
 sub al, 30h
 mov ch, al
 lea dx, msg1
 mov ah, 09h
 int 21h
 mov bh, 01h
 mov bl, 00h
 mov cl, 00h
 skip:
 cmp ch, 00h
 jz last
 mov dl, cl
 add dl, 30h
 mov ah, 02h
 int 21h
 add bh, bl
 mov cl, bh
 mov bh, bl
 mov bl, cl
 dec ch
 jnz skip
 last:
 mov ah, 4ch
 int 21h
 code ends
 end start
