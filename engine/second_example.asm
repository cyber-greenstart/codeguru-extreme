start:
mov bx, 0xcccc
push cs ;top_of_stack = cs  ss:sp = cs sp = sp-2
pop ss ;ss = top_of_stack 

mov word [bx], 0xcccc ;[ds:bx] = 0xcccc



;ip = 35 = ax  cs:ip פקודה ip+גודל הפקודה
;mov [bx], 0xcccc ds:bx = 0xcccc
;push cs ss:sp = cs sp-2