L8BCA	CALL	#4026
	CALL	NZ,#442C
	CALL	#4524
	XOR	A
	LD	(#5D17),A
	LD	A,#AA
	LD	(#5B00),A
	LD	A,#07
	OUT	(#FE),A
	LD	HL,#FF57
	LD	DE,#3D00
	LD	(#5CB2),HL
	LD	SP,HL
	LD	HL,#1303
	PUSH	HL
	EX	DE,HL
	JP	(HL)
	XOR	A
	LD	(#465E),A
	LD	(#4098),A
	LD	(#4667),A
	LD	HL,#5F00
	LD	(#4677),HL
	LD	HL,#0000
	LD	(#466A),HL
L8C06	CALL	#407B
	CALL	#4416
	CALL	#40A5
	CALL	#42CE
	CALL	#40D2
	LD	B,#00
	LD	HL,(#4677)
	ADD	HL,BC
	LD	(#4677),HL
	LD	IX,#464E
	CALL	#43BF
	CALL	#407B
	CALL	#42CE
	CALL	#4136
	LD	IX,#4656
	CALL	#43BF
	CALL	#420F
	LD	A,(#465E)
	OR	A
	RET	NZ
	LD	HL,(#4677)
	LD	A,(HL)
	INC	A
	RET	Z
	JR	L8C06
	LD	A,#01
	LD	HL,#4098
	SUB	(HL)
	LD	(HL),A
	LD	IX,#45AE
	LD	A,(IX+0)
	CP	(IX+1)
	JR	NZ,L8C60
	LD	A,(HL)
	PUSH	IX
	CALL	#442C
	POP	IX
L8C60	LD	A,(IX+0)
	PUSH	AF
	LD	C,#01
	CALL	#441F
	POP	AF
	LD	C,#18
	JP	#441F
	LD	DE,#4679
	LD	BC,(#4677)
	EXX
	LD	B,#18
L8C79	EXX
	LD	A,(BC)
	INC	BC
	CP	#FF
	JR	Z,L8C99
	LD	H,#00
	LD	L,A
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	PUSH	DE
	EX	DE,HL
	LD	HL,#F000
	ADD	HL,DE
	POP	DE
	PUSH	BC
	LD	BC,#0010
	LDIR
	POP	BC
	EXX
	DJNZ	L8C79
	EXX
L8C99	XOR	A
	LD	(DE),A
	RET
	LD	IX,#4679
	LD	C,#00
L8CA2	LD	A,(IX+0)
	OR	A
	JR	Z,L8CF1
	LD	A,(#4667)
	OR	A
	JR	Z,L8CB5
	LD	DE,(#4668)
	LD	B,A
	JR	L8CBE
L8CB5	LD	B,(IX+13)
	LD	E,(IX+14)
	LD	D,(IX+15)
L8CBE	JR	C,L8CF1
	LD	A,B
	DEC	A
	LD	(#4667),A
	PUSH	BC
	PUSH	DE
	LD	BC,#0105
	CALL	#42A5
	EX	AF,AF'
	POP	DE
	POP	BC
	INC	E
	LD	A,E
	CP	#10
	JR	C,L8CD9
	INC	D
	LD	E,#00
L8CD9	LD	(#4668),DE
	LD	HL,(#464E)
	INC	HL
	LD	(#464E),HL
	EX	AF,AF'
	DJNZ	L8CBE
	EX	AF,AF'
	LD	DE,#0010
	ADD	IX,DE
	INC	C
	EX	AF,AF'
	JR	NC,L8CA2
L8CF1	LD	HL,(#4661)
	LD	(#4664),HL
	LD	A,(#4663)
	LD	(#4666),A
	JP	#41F1
	LD	BC,#0105
	LD	DE,#0008
	LD	HL,#5B00
	CALL	#441F
	LD	IX,#5B80
	LD	A,(IX+99)
	CALL	#4368
	LD	A,(IX+100)
	LD	(#4670),A
	LD	E,(IX+97)
	LD	D,(IX+98)
	LD	HL,(#466A)
	LD	A,H
	OR	L
	JR	NZ,L8D2F
	LD	(#466C),DE
	LD	H,D
	LD	L,E
L8D2F	PUSH	DE
	CALL	#4358
	EX	DE,HL
	CALL	#4358
	EX	DE,HL
	SBC	HL,DE
	POP	DE
	JR	Z,L8D41
	LD	DE,(#466A)
L8D41	LD	IX,#4679
	LD	C,#00
L8D47	LD	A,(IX+13)
	SUB	L
	LD	B,A
	OR	A
L8D4D	JR	C,L8DB3
	LD	A,(#466E)
	DEC	A
	CP	D
	JR	NC,L8D6A
	LD	A,#03
	LD	(#465E),A
	LD	A,(#4676)
	ADD	A,B
	SUB	(IX+13)
	JR	NC,L8D65
	XOR	A
L8D65	LD	(#4676),A
	JR	L8DB3
L8D6A	LD	A,(#4670)
	ADD	A,C
	CP	#80
	JR	C,L8D79
	LD	A,#02
	LD	(#465E),A
	JR	L8DB3
L8D79	PUSH	BC
	PUSH	DE
	LD	BC,#0106
	CALL	#428A
	EX	AF,AF'
	POP	DE
	INC	E
	LD	A,E
	CP	#10
	JR	C,L8D8C
	INC	D
	LD	E,#00
L8D8C	LD	HL,(#4656)
	INC	HL
	LD	(#4656),HL
	POP	BC
	EX	AF,AF'
	DJNZ	L8D4D
	EX	AF,AF'
	PUSH	DE
	LD	DE,(#466C)
	LD	(IX+14),E
	LD	(IX+15),D
	LD	DE,#0010
	ADD	IX,DE
	POP	DE
	LD	(#466C),DE
	INC	C
	LD	L,#00
	EX	AF,AF'
	JR	NC,L8D47
L8DB3	LD	A,C
	LD	(#466F),A
	LD	(#466A),DE
	LD	A,(#4676)
	OR	A
	RET	Z
	PUSH	HL
	PUSH	DE
	PUSH	BC
	LD	HL,(#4673)
	LD	DE,(#4671)
	LD	BC,(#4675)
	CALL	#441F
	POP	BC
	POP	DE
	POP	HL
	XOR	A
	LD	(#4676),A
	RET
	LD	A,(#466F)
	OR	A
	RET	Z
	CALL	#4416
	LD	IX,#F880
	LD	(IX-128),#00
	LD	BC,#0000
	LD	HL,#F000
	LD	DE,#0010
L8DF2	LD	A,(HL)
	OR	A
	JR	Z,L8DFE
	DEC	A
	JR	NZ,L8DFA
	INC	B
L8DFA	INC	C
	ADD	HL,DE
	JR	L8DF2
L8DFE	EX	DE,HL
	LD	A,(#466F)
	LD	H,#00
	LD	L,A
	ADD	A,C
	LD	(IX+100),A
	LD	(IX+116),B
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	LD	B,H
	LD	C,L
	LD	HL,#4679
	LDIR
	EX	DE,HL
	LD	(HL),#00
	DEC	HL
	LD	D,(HL)
	DEC	HL
	LD	A,(HL)
	DEC	HL
	ADD	A,(HL)
	PUSH	AF
	AND	#0F
	LD	E,A
	POP	AF
	RRCA
	RRCA
	RRCA
	RRCA
	AND	#0F
	ADD	A,D
	LD	D,A
	LD	(IX+97),E
	LD	(IX+98),D
	CALL	#4358
	LD	HL,(#466E)
	LD	H,#00
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	OR	A
	SBC	HL,DE
	LD	(IX+101),L
	LD	(IX+102),H
	LD	HL,#F000
	LD	DE,#0000
	LD	BC,#0906
	JP	#441F
	CALL	#42A5
	RET	C
	LD	A,(#4663)
	LD	HL,#4666
	CP	(HL)
	CCF
	RET	NC
	LD	HL,(#4661)
	LD	DE,(#4664)
	DEC	HL
	DEC	DE
	OR	A
	SBC	HL,DE
	CCF
	RET
	LD	HL,(#4661)
	PUSH	HL
	CALL	#431B
	POP	DE
	INC	D
	LD	(#4661),DE
	LD	HL,(#465F)
	LD	B,(HL)
	LD	C,#00
	INC	HL
	LD	A,(HL)
	INC	HL
	LD	H,(HL)
	LD	L,A
	ADD	HL,BC
	OR	A
	SBC	HL,DE
	JR	Z,L8E8F
	OR	A
	RET
L8E8F	CALL	#41F1
	LD	A,(#4663)
	INC	A
	JR	L8E9C
	XOR	A
	LD	(#4676),A
L8E9C	LD	HL,(#45AD)
	LD	H,#00
	LD	B,H
	LD	C,A
	ADD	HL,HL
	LD	DE,#4624
	ADD	HL,DE
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
	LD	H,B
	LD	L,C
	ADD	HL,HL
	ADD	HL,BC
	ADD	HL,DE
	LD	A,(HL)
	OR	A
	JR	NZ,L8EB6
	SCF
	RET
L8EB6	LD	(#465F),HL
	INC	HL
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
	LD	(#4661),DE
	LD	A,(#45AD)
	CP	#00
	JR	Z,L8EDF
	CP	#01
	JR	Z,L8EDF
	CP	#02
	LD	A,(#4663)
	JR	NZ,L8EDA
	ADD	A,C
	DEC	A
	CALL	NZ,#437B
	JR	L8EDF
L8EDA	ADD	A,C
	DEC	A
	CALL	NZ,#43A6
L8EDF	LD	A,C
	LD	(#4663),A
	OR	A
	RET
	LD	A,(#4676)
	OR	A
	JR	NZ,L8EF7
L8EEB	LD	(#4671),DE
	LD	(#4673),HL
	LD	(#4675),BC
	RET
L8EF7	LD	A,(#4675)
	CP	C
	JR	Z,L8F02
L8EFD	CALL	#41F1
	JR	L8EEB
L8F02	PUSH	HL
	LD	HL,(#4671)
	LD	A,(#4676)
	ADD	A,L
	PUSH	AF
	AND	#0F
	LD	L,A
	POP	AF
	RRCA
	RRCA
	RRCA
	RRCA
	AND	#0F
	ADD	A,H
	LD	H,A
	OR	A
	SBC	HL,DE
	POP	HL
	JR	NZ,L8EFD
	LD	HL,#4676
	INC	(HL)
	RET
	XOR	A
	SRL	D
	RRA
	SRL	D
	RRA
	SRL	D
	RRA
	SRL	D
	RRA
	OR	E
	LD	E,A
	RET
	LD	B,#28
	CP	#19
	JR	Z,L8F40
	LD	B,#50
	CP	#16
	JR	NZ,L8F40
	LD	B,#A0
L8F40	LD	A,B
	LD	(#466E),A
	RET
	LD	A,(#45AD)
	CP	#02
	RET	NZ
	DI
	LD	A,#43
	LD	I,A
	CALL	#12AC
	LD	A,#3F
	LD	I,A
	EI
	RET
	LD	HL,#6000
	LD	DE,#0005
	LD	BC,#3B00
L8F62	LD	A,(HL)
	EX	AF,AF'
	LD	A,(DE)
	LD	(HL),A
	EX	AF,AF'
	LD	(DE),A
	INC	HL
	INC	DE
	DEC	BC
	LD	A,B
	OR	C
	JR	NZ,L8F62
	RET
	PUSH	BC
	LD	HL,#6000
	LD	DE,#0000
	LD	BC,#4000
	DI
	LD	A,#05
	OUT	(#3E),A
	CALL	#4398
	LD	A,#02
	OUT	(#3E),A
	EI
	POP	BC
	RET
	LD	B,(IX+3)
	LD	C,(IX+2)
	CALL	#2D2B
	LD	B,(IX+1)
	LD	C,(IX+0)
	CALL	#2D2B
	LD	A,#20
	CALL	#2D28
	RST	#28
	DEFB	#04 ;multiply
	DEFB	#01 ;exchange
	DEFB	#32 ;mod,div
	DEFB	#01 ;exchange
	DEFB	#02 ;delete
	DEFB	#38 ;end calc
	CALL	#2DA5
	LD	H,#00
	LD	L,(IX+4)
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	LD	DE,#5800
	ADD	HL,DE
	LD	D,H
	LD	E,L
	INC	DE
	LD	A,(IX+7)
	PUSH	BC
	CALL	#4408
	POP	BC
	LD	A,#20
	SUB	C
	LD	C,A
	LD	A,(IX+6)
	CALL	#4408
	LD	C,#60
	LD	A,(IX+5)
	INC	C
	DEC	C
	RET	Z
	LD	(HL),A
	DEC	C
	JR	Z,L8FDD
	LD	B,#00
	LDIR
L8FDD	INC	HL
	INC	DE
	RET
	LD	HL,#F000
	LD	DE,#0000
	LD	BC,#0905
	PUSH	AF
	XOR	A
	LD	(#5D10),A
	DEC	A
	LD	(#5C3A),A
	POP	AF
	JP	#3D13
	RLCA
	LD	D,#00
	LD	E,A
	LD	HL,#45A7
	LD	(HL),D
	LD	HL,#45B0
	ADD	HL,DE
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
	EX	DE,HL
	XOR	A
	LD	(#5C08),A
	LD	(#45AA),HL
	PUSH	HL
	LD	IX,#45A6
	LD	H,#00
	LD	L,(IX+1)
	LD	A,L
	LD	(#45AC),A
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	LD	DE,#5800
	ADD	HL,DE
	LD	A,(#45A8)
	PUSH	HL
	LD	D,H
	LD	E,L
	INC	DE
	LD	BC,#00FF
	LD	(HL),A
	LDIR
	POP	HL
	POP	DE
L9033	LD	(IX+0),#1A
	LD	A,(#45AC)
	LD	(IX+1),A
L903D	LD	A,(DE)
	INC	DE
	LD	BC,#45A9
	CP	#10
	JR	Z,L904B
	DEC	BC
	CP	#11
	JR	NZ,L9057
L904B	LD	A,(DE)
	INC	DE
	PUSH	DE
	LD	D,A
	RLCA
	RLCA
	RLCA
	OR	D
	POP	DE
	LD	(BC),A
	JR	L903D
L9057	BIT	7,A
	JR	Z,L9061
	AND	#7F
	LD	DE,(#45AA)
L9061	PUSH	DE
	PUSH	HL
	CALL	#44BF
	POP	HL
	LD	C,#06
L9069	LD	B,#08
	PUSH	HL
L906C	PUSH	BC
	LD	D,H
	LD	E,L
	INC	HL
	LD	BC,#001F
	LDIR
	LD	A,(#45A8)
	LD	(DE),A
	POP	BC
	DJNZ	L906C
	POP	HL
	HALT
	DEC	C
	JR	NZ,L9069
	POP	DE
	LD	A,(#5C08)
	OR	A
	JR	Z,L9033
	RET
	LD	DE,(#5C36)
	LD	H,#00
	LD	L,A
	PUSH	HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,DE
	EX	DE,HL
	POP	HL
	LD	BC,#454B
	ADD	HL,BC
	LD	C,(HL)
	EX	DE,HL
	EXX
	PUSH	HL
	LD	DE,(#45A6)
	LD	L,D
	LD	H,#00
	LD	D,#00
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,DE
	LD	DE,#5800
	ADD	HL,DE
	LD	B,#08
L90B4	LD	DE,(#45A8)
	PUSH	HL
	EXX
	LD	B,#08
	LD	A,(HL)
L90BD	RLCA
	RLC	C
	JR	C,L90CD
	EXX
	BIT	0,A
	JR	NZ,L90CA
	LD	(HL),E
	JR	L90CB
L90CA	LD	(HL),D
L90CB	INC	HL
	EXX
L90CD	DJNZ	L90BD
	INC	HL
	EXX
	POP	HL
	LD	DE,#0020
	ADD	HL,DE
	DJNZ	L90B4
	LD	A,#06
	LD	HL,(#45A6)
	ADD	A,L
	LD	L,A
	SUB	#20
	JR	C,L90E8
	LD	L,A
	LD	A,#08
	ADD	A,H
	LD	H,A
L90E8	LD	(#45A6),HL
	POP	HL
	EXX
	RET
L90EE	LD	HL,#1004
	LD	(#45A6),HL
	XOR	A
	LD	(#5C08),A
L90F8	LD	HL,#5D19
	PUSH	HL
	CP	(HL)
	LD	HL,#45A9
	LD	(HL),#24
	JR	NZ,L9106
	LD	(HL),#12
L9106	PUSH	AF
	ADD	A,#41
	CALL	#44BF
	POP	AF
	POP	HL
	INC	A
	CP	#04
	JR	NZ,L90F8
	LD	A,(#5C08)
	OR	A
	JR	Z,L90EE
	CP	#0D
	RET	Z
	CP	#08
	JR	NZ,L9128
	LD	A,(HL)
	OR	A
	JR	Z,L90EE
	DEC	A
	LD	(HL),A
	JR	L90EE
L9128	CP	#09
	JR	NZ,L90EE
	LD	A,(HL)
	INC	A
	CP	#04
	JR	Z,L90EE
	LD	(HL),A
	JR	L90EE
	DEFB	#03,#81,#88,#88,#C0,#42,#84,#81,#81,#81,#C0,#C0
	DEFB	#81,#82,#81,#C0,#24,#12,#0C,#18,#06,#0C,#0C,#C0
	DEFB	#0C,#0C,#81,#81,#C0,#82,#C0,#90,#84,#18,#0C,#90
	DEFB	#90,#30,#30,#88,#84,#22,#0C,#90,#06,#90,#24,#90
	DEFB	#0C,#05,#18,#84,#82,#84,#88,#88,#88,#28,#42,#00
	DEFB	#00,#2D,#00,#00,#00,#00,#00,#00,#00,#D4,#45,#B8
	DEFB	#45,#F1,#45,#0D,#46
	DEFB	#10,7,"INSERT ",#10,2,"INPUT ",#10,7,"DISK    ",#A0
	DEFB	#10,7,"INSERT ",#10,2,"OUTPUT ",#10,7,"DISK    ",#A0
	DEFB	#10,1,"OUTPUT DIRECTORY	FULL!	",#A0
	DEFB	#10,1,"OUTPUT DISK FULL!   ",#A0
	DEFB	#2C,#46,#33,#46,#3A,#46,#44,#46,#10,#00,#48,#A0
	DEFB	#00,#60,#00,#10,#00,#48,#A0
	DEFB	#00,#60,#00,#10,#00,#48,#A0
	DEFB	#00,#60,#3B,#00,#60,#00,#10,#00,#48,#A0
	DEFB	#00,#60,#40,#00,#60,#00,#00,#00,#00,#00,#0C,#2D
	DEFB	#36,#12,#00,#00,#00,#00,#08,#2D,#36,#12,#00,#00
	DEFB	#00,#00,#00,#00,#00,#00,#00,#00,#00,#00,#00,#00
	DEFB	#00,#00,#00,#00,#00,#00,#00,#00,#00,#00,#00,#00,#00
