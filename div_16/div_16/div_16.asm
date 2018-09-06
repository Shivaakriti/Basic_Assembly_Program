.include<m128def.inc>

.cseg
.org 0x00

ldi r16,00
ldi r17,01
ldi r18,00
ldi r19,10
ldi r20,00
ldi r21,00
label: sub r18,r16
sbc r19,r17
adiw r24,1
cpi r18,0
brne label
cpi r19,0
brne label 
end : rjmp end


