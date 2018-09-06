.include "m128def.inc"
.cseg 
.org 0x00
ldi r19,00
ldi r18,00
ldi r16,10
ldi r17,03
loop:cp r16,r17
brlo label
sub r16,r17
inc r18
cpi r16,0
breq label2
jmp loop
label: mov r19,r16
label2: end: rjmp end


