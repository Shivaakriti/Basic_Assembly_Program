.include "m128def.inc"


.cseg
.org 0x00

ldi r16,$2E
ldi r17,$43
ldi r18,$62
ldi r19,$30
mul r16,r19
mov r3,r0
mov r2,r1
mul r16,r18
add r2,r0
mov r8,r1
mul r17,r19
adc r2,r0
adc r8,r1
mul r17,r18
adc r8,r0
clc
mov r9,r1
end: rjmp end