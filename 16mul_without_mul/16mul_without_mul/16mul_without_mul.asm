.include "m128def.inc"


.cseg
.org 0x00
 
 ldi r22,low(ramend)
 out spl,r22
 ldi r22,high(ramend)
 out sph,r22



ldi r16,$2e
ldi r17,$43

ldi r18,$62
ldi r19,$30
mov r20,r19
mov r21,r16
rcall add8
mov r3,r24
mov r2,r25
mov r20,r18
mov r21,r16
rcall add8
add r2,r24
mov r8,r25
mov r20,r19
mov r21,r17
rcall add8
adc r2,r24
adc r8,r25
mov r20,r17
mov r21,r18
rcall add8
adc r8,r24
clc
mov r9,r25
end: rjmp end



add8:ldi r23,00
ldi r24,00
ldi r25,00
label1 : add r24,r20
adc r25,r23
dec r21
cpi r21,0
brne label1

ret

