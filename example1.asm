mov di, ax ; our starting point
mov ax, 0xcccc ; breakpoint = 0xcc

push ds
pop es

add di, tail ; add the offset of our tail
add di, 0x100 ; add 0x100 (in the engine looks like next line)
; stosw
; writes ax to es:di & di+=2
stosw
stosw
stosw
stosw
stosw
tail:



;00000000  89C7              mov di,ax
;00000002  B8CCCC            mov ax,0xcccc
;00000005  81C71200          add di,0x12
;00000009  81C70001          add di,0x100
;0000000D  AB                stosw
;0000000E  AB                stosw
;0000000F  AB                stosw
;00000010  AB                stosw
;00000011  AB                stosw
;00000012  CC                int3 (breakpoint)
;00000013  CC                int3 (breakpoint)
