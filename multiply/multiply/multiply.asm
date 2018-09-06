.include "m128def.inc"
.cseg
.org 0x00
ldi r16,02
ldi r17,05
ldi r18,00
label: add r18,r16
dec r17
cpi r17,0
breq label1
jmp label
label1: end :
rjmp end