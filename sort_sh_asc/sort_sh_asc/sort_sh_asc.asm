.include<m128def.inc>

.cseg
.org 0x00

ldi r17,5
ldi r16,5
outercounter:ldi zl,0x00
			ldi zh,0x01
			mov r16,r17
			innercounter: ld r18,z+
						ld r19,z
						cp r18,r19
						brlt notswap
							st -z,r19
							st z+,r19
							st z,r18
						notswap: dec r16
						cpi r16,0
						brne innercounter
			dec r17
			cpi r17,0
			brne outercounter 
end: rjmp end

