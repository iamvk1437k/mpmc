ASSUME CS:CODE,DS:DATA
DATA SEGMENT 
X DB 01H,02H,03H,04H,05H ;
DATA ENDS
CODE SEGMENT
START:MOV AX,DATA 
MOV DS,AX 
MOV CX,05H 
LEA SI,X+04 
LEA DI,X+04+05 
UP: MOV BL,[SI] 
MOV [DI],BL 
DEC SI 
DEC DI
DEC CX 
JNZ UP
MOV AH,4CH
INT 21H
CODE ENDS
END START

