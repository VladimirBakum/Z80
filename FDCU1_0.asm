	ORG	23872
	ENT	$
BUFER	EQU	24470
	LD	SP,#0000
	LD	A,#02
	CALL	#1601
	LD	HL,INFORM
	CALL	OUT_TX
	LD	B,16
NEW_C	PUSH	BC
	LD	HL,INS_S
	CALL	OUT_TX
	CALL	B_P0
	LD	HL,READ
	CALL	OUT_TX
	LD	BC,#A005
	LD	HL,BUFER
	LD	DE,(SOURCE)
	CALL	#3D13
	LD	DE,(#5CF4)
	LD	(SOURCE),DE
	LD	A,#02
	CALL	#1601
	LD	HL,INS_T
	CALL	OUT_TX
	CALL	B_P0
	LD	HL,WRITE
	CALL	OUT_TX
	LD	BC,#A006
	LD	HL,BUFER
	LD	DE,(TARGET)
	CALL	#3D13
	LD	DE,(#5CF4)
	LD	(TARGET),DE
	LD	A,#02
	CALL	#1601
	POP	BC
	DJNZ	NEW_C
	LD	HL,END
	CALL	OUT_TX
	RET
	CALL	#3D13
SOURCE	DEFW	#0000
TARGET	DEFW	#0000
B_P0	LD	B,#03
BEEP	PUSH	BC
	LD	HL,#0280
	LD	DE,#0019
	CALL	#03B5
	LD	B,#05
HALT	HALT
	DJNZ	HALT
	POP	BC
	DJNZ	BEEP
PAUSE0	LD	A,#BF
	IN	A,(#FE)
	BIT	0,A
	JR	NZ,PAUSE0
	RET
OUT_TX	LD	A,(HL)
	CP	#FF
	RET	Z
	RST	#10
	INC	HL
	JR	OUT_TX
	RET
INFORM	DEFB	#16,#00,#02
	DEFM	"FULL DISK COPY UTILITY V1.0"
	DEFB	#16,#02,#05
	DEFM	"Written by Bakum V.I."
	DEFB	#16,#03,#04
	DEFM	"Program by James Advent"
	DEFB	#16,#04,#07
	DEFM	"(R)Soft  7/11-92"
	DEFB	#FF
INS_S	DEFB	#16,#0A,#06
	DEFM	"Insert SOURCE disk"
	DEFB	#FF
INS_T	DEFB	#16,#0A,#06
	DEFM	"Insert TARGET disk"
	DEFB	#FF
READ	DEFB	#16,#0A,#06
	DEFM	"     "
	DEFB	#12,#01,#10,#01
	DEFM	"READING"
	DEFB	#12,#00,#10,#00
	DEFM	"      "
	DEFB	#FF
WRITE	DEFB	#16,#0A,#06
	DEFM	"     "
	DEFB	#12,#01,#10,#02
	DEFM	"WRITING"
	DEFB	#12,#00,#10,#00
	DEFM	"      "
	DEFB	#FF
END	DEFB	#16,#0A,#03
	DEFM	"You disk copyed. Good-bye!"
	DEFB	#FF
