DATA SEGMENT
WORD1 db "ORANGES$"
in_no db 7
DATA ENDS
CODE SEGMENT
ASSUME cs: CODE, ds:DATA
START: MOV AX, DATA
MOV DS, AX
LEA si, WORD1
mov cl, in_no
apple :
mov AH,[si]
Xor ah, 20h
mov [di],ah
inc si
mov dl,[di]
MOV AH ,02H
INT 21H
loop Apple
MOV AH, 4CH
INT 21H
CODE ENDS
END START
