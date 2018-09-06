/*
 * MUL16BIT1.asm
 *
 *  Created: 29-08-2016 19:30:40
 *   Author: Administrator
 */ 
.INCLUDE "M128DEF.INC"
.CSEG
.ORG 0x0100
LDI R16,$55		;LOADING THE VALUES
LDI R17,$55			;IN R117,R16
LDI R18,$11		;AND 
LDI R19,$55			;R19,R18
MUL R19,R17			;PERFORMING MULTIPLICATION HENCEFORTH		
MOV R20,R0			
MOV R21,R1        
MUL R16,R19
MOV R22,R0
MOV R23,R1		  
MUL R17,R18
MOV R24,R0
MOV R25,R1
MUL R18,R16
MOV R26,R0
MOV R27,R1			;DONE WITH MULTIPLICATION
ADD R21,R22			;ADDING THE APPROPRIATE REGISTERS
ADC R23,R25			;FOR GETTING THE SOLUTION IN
ADD R21,R24			;R25 R23 R21 R20
ADC R23,R26
BRCC NEXT 
INC R27
NEXT:MOV R22,R23
MOV R23,R27
CLR R0
CLR R1
CLR R24
CLR R25
CLR R26
CLR R27
END: RJMP END		;END LOOP