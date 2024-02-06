data segment
    msg db "enter the string: $"
data ends

code segment
    assume cs:code, ds:data

start:
    mov ax, data
    mov ds, ax

    lea dx, msg
    mov ah, 09h
    int 21h

    mov cx, 0
    mov si, offset msg

read_loop:
    mov ah, 01h
    int 21h
    cmp al, 0dh
    je done_reading
    inc cx
    jmp read_loop

done_reading:
    mov dl, cl
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h

code ends

end start