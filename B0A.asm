	ORG	50000
	DISP	32768
	LD	(L8BBF),SP
L8004	LD	A,#28
	LD	(L8BAC),A
	CALL	L88EE
	LD	DE,#0000
	LD	HL,#F000
	LD	BC,#0905
	CALL	L8997
	LD	SP,(L8BBF)
	XOR	A
	LD	(L8BA3),A
	LD	(L8BA5),A
L8023	LD	IX,#F000
	LD	HL,#F900
	LD	DE,#0000
L802D	LD	A,(IX+0)
	OR	A
	JR	Z,L806A
	DEC	A
	JR	Z,L8060
	LD	A,(IX+8)
	CP	#42
	JR	NZ,L8056
	LD	BC,L8B8F
	PUSH	IX
L8042	LD	A,(BC)
	OR	A
	JR	Z,L8050
	CP	(IX+0)
	JR	NZ,L8050
	INC	BC
	INC	IX
	JR	L8042
L8050	POP	IX
	JR	Z,L8060
	JR	L805D
L8056	LD	A,(IX+13)
	CP	#C0
	JR	NZ,L8060
L805D	LD	(HL),E
	INC	HL
	INC	D
L8060	INC	E
	PUSH	DE
	LD	DE,#0010
	ADD	IX,DE
	POP	DE
	JR	L802D
L806A	LD	(HL),#FF
	LD	A,D
	LD	(L8BA4),A
	LD	HL,#F900
	LD	(L8BB1),HL
	LD	HL,#F000
	LD	(L8BBB),HL
	LD	HL,L8BB0
	LD	(HL),#00
	DEC	HL
	LD	(HL),#07
	LD	(L8BBD),HL
	CALL	L88EE
	CALL	L8699
L808D	LD	A,(#5CF6)
	ADD	A,#41
	LD	(L8A18),A
	LD	DE,L8A10
	CALL	L878E
	LD	BC,(L8BA4)
	CALL	L873A
	LD	BC,#160A
	CALL	L8731
	LD	DE,#F8F5
	CALL	L878E
	LD	DE,L8AD9
	CALL	L878E
	IN	A,(#1F)
	CPL
	LD	B,A
	AND	#03
	JR	Z,L80BF
	LD	A,B
	AND	#0C
L80BF	LD	(L8B9D),A
	LD	IX,L8BA4
	CALL	L884C
	XOR	A
	LD	(#5C08),A
	LD	BC,(L8BA3)
L80D1	CALL	L8616
	CALL	L84D9
	CALL	L8616
	LD	(L8BA3),BC
	OR	A
	JR	Z,L8139
	CP	#4E
	JP	Z,L83A0
	CP	#4F
	JR	NZ,L80F4
	CALL	L89A4
	LD	HL,#1303
	EX	(SP),HL
	JP	#3D00
L80F4	CP	#56
	JR	Z,L812B
	CP	#44
	JR	Z,L810E
	CP	#4D
	JP	Z,L81A4
	CP	#48
	JR	NZ,L8109
	LD	C,#00
	JR	L80D1
L8109	CALL	L8804
	JR	L80D1
L810E	LD	DE,L8A8C
	CALL	L87F9
	LD	HL,#5D19
	JR	NZ,L811D
	LD	A,#01
	SUB	(HL)
	LD	(HL),A
L811D	LD	A,(HL)
	LD	C,#01
	CALL	L8997
	LD	C,#18
	CALL	L8997
	JP	L8004
L812B	PUSH	BC
	LD	DE,L89C4
	CALL	L878E
	CALL	L84D9
	POP	BC
	JP	L808D
L8139	LD	A,B
	OR	A
	JP	Z,L80D1
	CALL	L815D
	LD	DE,(#5C53)
L8145	LD	A,(DE)
	INC	DE
	CP	#24
	JR	NZ,L8145
	INC	DE
	INC	DE
	LD	BC,#0008
	LDIR
	CALL	L89A4
	LD	A,(IX+13)
	CP	#C0
	RET	NZ
	INC	C
	RET
L815D	LD	B,#00
	LD	HL,#F900
	ADD	HL,BC
	LD	L,(HL)
	LD	H,B
L8165	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	LD	DE,#F000
	ADD	HL,DE
	PUSH	HL
	POP	IX
	RET
L8171	LD	DE,#0000
	LD	HL,#E700
	LD	BC,#0905
	CALL	L8997
	LD	HL,#EFDF
	LD	DE,#F8DF
	LD	B,#16
L8185	LD	A,(DE)
	CP	(HL)
	JR	NZ,L818E
	INC	HL
	INC	DE
	DJNZ	L8185
	RET
L818E	LD	DE,L8B31
	CALL	L878E
	LD	HL,#5AC0
	LD	D,#80
	LD	C,#40
	CALL	L8489
	LD	HL,#5D19
	JP	L811D
L81A4	CALL	L8956
	LD	HL,#0084
	LD	(L8BB7),HL
	LD	HL,#FB00
	LD	(HL),#FF
	LD	(L8BB9),HL
	LD	HL,#FA00
	LD	(L8BB5),HL
	LD	DE,#0010
	LD	IX,#F000
	XOR	A
	LD	(L8BA7),A
	LD	B,A
	LD	C,A
L81C8	LD	A,(IX+0)
	OR	A
	JR	Z,L81D9
	DEC	A
	JR	Z,L81D4
	LD	(HL),C
	INC	HL
	INC	B
L81D4	INC	C
	ADD	IX,DE
	JR	L81C8
L81D9	LD	(HL),#FF
	LD	A,B
	LD	(L8BA6),A
	LD	HL,L8BB4
	LD	(HL),#00
	DEC	HL
	LD	(HL),#83
	LD	(L8BBD),HL
	CALL	L88EE
	CALL	L8699
L81F0	LD	DE,L8A3B
	CALL	L878E
	LD	BC,#1600
	CALL	L8731
	LD	BC,(L8BA6)
	CALL	L873A
	LD	DE,L8B05
	CALL	L878E
	LD	IX,L8BA6
	CALL	L884C
	LD	BC,(L8BA5)
L8214	CALL	L8616
	CALL	L84D9
	CALL	L8616
	LD	(L8BA5),BC
	CP	#43
	JR	Z,L824A
	CP	#45
	JP	Z,L82CB
	CP	#4E
	JP	Z,L83AF
	CP	#52
	JP	Z,L8023
	CP	#41
	JP	Z,L83E5
	CP	#48
	JR	NZ,L8241
	LD	C,#00
	JR	L8214
L8241	OR	A
	CALL	Z,L83F9
	CALL	L8804
	JR	L8214
L824A	LD	A,(L8BA7)
	OR	A
	JR	Z,L8214
	LD	HL,#0000
	EXX
	LD	BC,#FB00
	LD	DE,#5F00
	EXX
L825B	EXX
	LD	A,(BC)
	LD	(DE),A
	INC	BC
	INC	DE
	EXX
	CP	#FF
	JR	Z,L8275
	PUSH	HL
	LD	H,#00
	LD	L,A
	CALL	L8165
	POP	HL
	LD	E,(IX+13)
	LD	D,#00
	ADD	HL,DE
	JR	L825B
L8275	PUSH	HL
	LD	A,#2D
	LD	(L8BAC),A
	CALL	L88EE
	CALL	L889A
	LD	A,#38
	LD	(#5C48),A
	LD	HL,L8BCA
	LD	DE,#4000
	LD	BC,#0679
	LDIR
	POP	HL
	LD	(#4650),HL
	LD	(#4658),HL
	LD	A,(L89BE)
	LD	(#45AD),A
	CALL	L8880
	CALL	L88B4
	LD	IX,#464E
	LD	(IX+0),#00
	LD	(IX+1),#00
	CALL	#43BF
	LD	IX,#4656
	LD	(IX+0),#00
	LD	(IX+1),#00
	CALL	#43BF
	LD	HL,#5EFF
	LD	DE,#4000
	JP	#401C
L82CB	LD	DE,L8A66
	CALL	L87F9
	JP	NZ,L81F0
	CALL	L8171
	LD	HL,(L8BB9)
	DEC	HL
L82DB	INC	HL
	LD	A,(HL)
	INC	A
	JR	Z,L82F1
	LD	D,H
	LD	E,L
L82E2	INC	DE
	LD	A,(DE)
	CP	#FF
	JR	Z,L82DB
	CP	(HL)
	JR	NC,L82E2
	LD	B,A
	LD	A,(HL)
	LD	(DE),A
	LD	(HL),B
	JR	L82E2
L82F1	LD	IX,#EFF0
	LD	HL,(L8BB9)
	LD	BC,#0000
	LD	DE,#0010
	LD	(IX+0),#00
	LD	(IX+13),#00
	LD	(IX+14),#00
	LD	(IX+15),#01
	JR	L8327
L8310	LD	A,(IX+0)
	OR	A
	JR	Z,L832B
	LD	A,C
	CP	(HL)
	JR	NZ,L831F
	INC	HL
	LD	(IX+0),#01
L831F	LD	A,(IX+0)
	DEC	A
	JR	NZ,L8326
	INC	B
L8326	INC	C
L8327	ADD	IX,DE
	JR	L8310
L832B	LD	DE,#FFF0
L832E	ADD	IX,DE
	LD	A,(IX+0)
	OR	A
	JR	Z,L8340
	DEC	A
	JR	NZ,L8340
	DEC	B
	DEC	C
	LD	(IX+0),A
	JR	L832E
L8340	LD	A,C
	SUB	B
	LD	(L8BA6),A
	LD	A,(IX+13)
	ADD	A,(IX+14)
	LD	D,(IX+15)
	LD	E,A
	AND	#F0
	RRCA
	RRCA
	RRCA
	RRCA
	ADD	A,D
	LD	D,A
	LD	A,E
	AND	#0F
	LD	E,A
	LD	IX,#F880
	LD	(IX+97),E
	LD	(IX+98),D
	LD	(IX+100),C
	LD	(IX+116),B
	LD	A,#A0
	BIT	3,(IX+99)
	JR	Z,L8375
	LD	A,#50
L8375	SUB	D
	LD	H,#00
	LD	L,A
	LD	D,H
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	OR	A
	SBC	HL,DE
	LD	(IX+101),L
	LD	(IX+102),H
	CALL	L8394
	XOR	A
	LD	(L8BA5),A
	LD	(L8BA3),A
	JP	L81A4
L8394	LD	HL,#F000
	LD	DE,#0000
	LD	BC,#0906
	JP	L8997
L83A0	LD	HL,L808D
	PUSH	HL
	LD	DE,L8AAC
	CALL	L878E
	LD	DE,#F8F5
	JR	L83CC
L83AF	LD	HL,L81A4
	PUSH	HL
	PUSH	BC
	LD	DE,L8AAC
	CALL	L878E
	POP	BC
	LD	B,#00
	LD	HL,(L8BB5)
	ADD	HL,BC
	LD	L,(HL)
	LD	H,B
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	LD	BC,#F000
	ADD	HL,BC
	EX	DE,HL
L83CC	CALL	L854D
	PUSH	DE
	CALL	L8171
	POP	DE
	LD	HL,L8BC1
	LD	BC,#0008
	LDIR
	CALL	L8394
	LD	A,#28
	LD	(L8BAC),A
	RET
L83E5	PUSH	BC
	LD	A,B
	LD	C,#00
L83E9	OR	A
	JR	Z,L83F5
	PUSH	AF
	CALL	L83F9
	POP	AF
	INC	C
	DEC	A
	JR	L83E9
L83F5	POP	BC
	JP	L8214
L83F9	LD	A,B
	OR	A
	RET	Z
	PUSH	BC
	LD	B,#00
	LD	E,#FF
	LD	HL,L8BB7
	LD	(L8BBD),HL
	LD	HL,(L8BB5)
	ADD	HL,BC
	LD	C,(HL)
	LD	HL,(L8BB9)
L840F	LD	A,(HL)
	INC	HL
	INC	E
	CP	#FF
	JR	NZ,L8425
	PUSH	BC
	CALL	L84BC
	POP	BC
	LD	(HL),#FF
	DEC	HL
	LD	(HL),C
	LD	HL,L8BA7
	INC	(HL)
	JR	L843C
L8425	CP	C
	JR	NZ,L840F
	CALL	L84BC
	CALL	L8462
	LD	D,H
	LD	E,L
	DEC	DE
L8431	LD	A,(HL)
	LD	(DE),A
	INC	HL
	INC	DE
	INC	A
	JR	NZ,L8431
	LD	HL,L8BA7
	DEC	(HL)
L843C	CALL	L849F
	LD	BC,#1617
	CALL	L8731
	LD	DE,L8A63
	CALL	L878E
	LD	BC,#1616
	CALL	L8731
	LD	BC,(L8BA7)
	CALL	L873A
	LD	HL,L8BB3
	LD	(L8BBD),HL
	POP	BC
	LD	A,#01
	RET
L8462	PUSH	DE
	PUSH	HL
	LD	A,(L8BB8)
	LD	D,A
	LD	A,E
	SUB	D
	LD	H,#00
	LD	L,A
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	LD	DE,(L8B99)
	LD	D,#00
	ADD	HL,DE
	LD	DE,#5800
	ADD	HL,DE
	LD	D,#08
	PUSH	BC
	LD	C,#0A
	CALL	L8489
	POP	BC
	POP	HL
	POP	DE
	RET
L8489	LD	A,(HL)
	AND	#C7
	LD	E,A
	LD	A,(HL)
	ADD	A,#08
	AND	#38
	OR	E
	LD	B,C
	PUSH	HL
L8495	LD	(HL),A
	INC	HL
	DJNZ	L8495
	POP	HL
	HALT
	DEC	D
	JR	NZ,L8489
	RET
L849F	LD	HL,(L8B9A)
	PUSH	HL
	LD	HL,(L8B9C)
	LD	A,(L8BAE)
	LD	H,A
	PUSH	HL
	CALL	L8699
	POP	HL
	LD	A,H
	LD	(L8BAE),A
	LD	A,L
	LD	(L8B9C),A
	POP	HL
	LD	(L8B9A),HL
	RET
L84BC	LD	A,(L8BB8)
	CP	E
	JR	Z,L84C7
	JR	C,L84C7
	LD	A,E
	JR	L84CE
L84C7	ADD	A,#15
	CP	E
	RET	NC
	LD	A,E
	SUB	#15
L84CE	LD	(L8BB8),A
	PUSH	DE
	PUSH	HL
	CALL	L849F
	POP	HL
	POP	DE
	RET
L84D9	CALL	L84DF
	JP	L8917
L84DF	LD	A,(L8BAE)
	LD	D,A
L84E3	XOR	A
	LD	(L8B9E),A
	LD	A,(L8B9D)
	OR	A
	JR	Z,L850D
	IN	A,(#1F)
	AND	#1F
	JR	Z,L850D
	RRCA
	JR	NC,L84F9
L84F6	LD	A,#01
	RET
L84F9	RRCA
	JR	NC,L84FF
L84FC	LD	A,#FF
	RET
L84FF	RRCA
	JR	NC,L8504
L8502	LD	A,D
	RET
L8504	RRCA
	JR	NC,L850B
L8507	LD	A,D
	NEG
	RET
L850B	XOR	A
	RET
L850D	LD	A,#01
	LD	(L8B9E),A
	LD	A,(#5C08)
	OR	A
	JR	Z,L84E3
	LD	E,A
	XOR	A
	LD	(#5C08),A
	LD	A,#7F
	IN	A,(#FE)
	RRCA
	JR	NC,L850B
	LD	A,#BF
	IN	A,(#FE)
	RRCA
	JR	NC,L850B
	LD	A,#F7
	IN	A,(#FE)
	BIT	4,A
	JR	Z,L84FC
	LD	A,#EF
	IN	A,(#FE)
	CPL
	AND	#1C
	JR	NZ,L8543
	LD	A,E
	CP	#61
	RET	C
	SUB	#20
	RET
L8543	BIT	2,A
	JR	NZ,L84F6
	BIT	3,A
	JR	NZ,L8507
	JR	L8502
L854D	LD	A,(L8BAD)
	PUSH	AF
	LD	A,#01
	LD	(L8BAD),A
	LD	HL,L8BC1
	LD	B,#09
	LD	A,(L8BAB)
	LD	C,A
	EXX
	LD	C,A
	EXX
L8562	CALL	L8601
	CALL	L85ED
	CALL	L8601
	CP	#0C
	JR	NZ,L857F
	LD	A,B
	CP	#09
	JR	Z,L8562
	DEC	C
	DEC	HL
	INC	B
	LD	A,#20
	LD	(HL),A
	CALL	L85E4
	JR	L8562
L857F	CP	#06
	JR	NZ,L858E
	PUSH	HL
	LD	HL,#5C6A
	LD	A,#08
	XOR	(HL)
	LD	(HL),A
	POP	HL
	JR	L8562
L858E	CP	#0D
	JR	NZ,L8597
	CALL	L85DE
	JR	L85D9
L8597	CP	#07
	JR	NZ,L85C9
	CALL	L85DE
	LD	HL,L8BC1
	PUSH	DE
	EXX
	LD	A,C
	EXX
	LD	C,A
	LD	B,#08
L85A8	LD	A,(DE)
	EX	AF,AF'
	LD	A,(HL)
	LD	(DE),A
	EX	AF,AF'
	LD	(HL),A
	CALL	L85E4
	INC	C
	INC	HL
	INC	DE
	DJNZ	L85A8
	POP	DE
	INC	B
L85B8	DEC	HL
	LD	A,(HL)
	INC	HL
	CP	#20
	JR	NZ,L8562
	DEC	HL
	DEC	C
	INC	B
	LD	A,B
	CP	#09
	JR	Z,L8562
	JR	L85B8
L85C9	CP	#20
	JR	C,L8562
	CP	#80
	JR	NC,L8562
	LD	(HL),A
	CALL	L85E4
	INC	HL
	INC	C
	DJNZ	L8562
L85D9	POP	AF
	LD	(L8BAD),A
	RET
L85DE	LD	(HL),#20
	INC	HL
	DJNZ	L85DE
	RET
L85E4	PUSH	AF
	LD	A,C
	LD	(L8BAB),A
	POP	AF
	JP	L874B
L85ED	CALL	L85F3
	JP	L8917
L85F3	PUSH	HL
	LD	HL,#5C08
	LD	(HL),#00
L85F9	LD	A,(HL)
	OR	A
	JR	Z,L85F9
	LD	(HL),#00
	POP	HL
	RET
L8601	PUSH	BC
	PUSH	HL
	PUSH	AF
	LD	A,C
	LD	(L8BAB),A
	LD	HL,L8BAC
	LD	A,#80
	XOR	(HL)
	LD	(HL),A
	CALL	L87D8
	POP	AF
	POP	HL
	POP	BC
	RET
L8616	PUSH	AF
	LD	A,B
	OR	A
	JR	Z,L8697
	PUSH	BC
	LD	IX,(L8BBD)
	LD	D,#00
L8622	LD	A,(L8BAE)
	LD	B,A
	LD	A,(IX+1)
	CP	C
	JR	Z,L8645
	JR	C,L8631
	SUB	B
	JR	L863E
L8631	LD	H,A
	PUSH	BC
L8633	ADD	A,#16
	DJNZ	L8633
	POP	BC
	DEC	A
	CP	C
	JR	NC,L8645
	LD	A,H
	ADD	A,B
L863E	LD	(IX+1),A
	LD	D,#01
	JR	L8622
L8645	LD	A,D
	OR	A
	JR	Z,L8652
	PUSH	BC
	PUSH	IX
	CALL	L8699
	POP	IX
	POP	BC
L8652	LD	A,(IX+1)
	LD	B,A
	LD	A,C
	SUB	B
	LD	C,A
	LD	B,#00
	CALL	#2D2B
	LD	BC,(L8BAE)
	LD	B,#00
	CALL	#2D2B
	RST	#28
	DEFB	#32 ;mod,div
	DEFB	#38 ;end calc
	CALL	#2DA5
	PUSH	BC
	CALL	#2DA5
	LD	HL,L8B9A
	ADD	HL,BC
	LD	C,(HL)
	POP	HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,BC
	LD	BC,#5800
	ADD	HL,BC
	LD	(L8BA8),HL
	LD	A,(HL)
	XOR	#50
	LD	C,A
	LD	B,#08
	LD	A,(IX+0)
	RLCA
	JR	NC,L8692
	LD	B,#0A
L8692	LD	(HL),C
	INC	HL
	DJNZ	L8692
	POP	BC
L8697	POP	AF
	RET
L8699	LD	HL,(L8BBD)
	LD	C,(HL)
	INC	HL
	LD	B,(HL)
	INC	HL
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
	INC	B
	JR	L86A7
L86A6	INC	DE
L86A7	DJNZ	L86A6
	LD	H,C
	LD	L,#00
	LD	B,#03
	PUSH	DE
	LD	DE,L8B97
	LD	IX,L8B9A
L86B6	RRC	H
	JR	NC,L86C1
	INC	L
	LD	A,(DE)
	LD	(IX+0),A
	INC	IX
L86C1	INC	DE
	DJNZ	L86B6
	POP	DE
	LD	A,L
	LD	(L8BAE),A
	LD	HL,(L8BBB)
	EXX
	LD	E,A
	LD	C,#16
L86D0	LD	B,E
	XOR	A
	LD	(L8725),A
L86D5	EXX
	LD	A,(DE)
	CP	#FF
	JR	NZ,L86E9
	CALL	L8717
	LD	B,#0A
L86E0	LD	A,#20
	CALL	L874B
	DJNZ	L86E0
	JR	L870F
L86E9	INC	DE
	PUSH	DE
	EX	DE,HL
	LD	H,#00
	LD	L,A
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,DE
	CALL	L8717
	LD	B,#08
L86F9	LD	A,(HL)
	CALL	L874B
	INC	HL
	DJNZ	L86F9
	BIT	7,C
	JR	Z,L870D
	LD	A,#2F
	CALL	L874B
	LD	A,(HL)
	CALL	L874B
L870D	EX	DE,HL
	POP	DE
L870F	EXX
	DJNZ	L86D5
	DEC	C
	JR	NZ,L86D0
	EXX
	RET
L8717	EXX
	LD	A,(L8725)
	INC	A
	LD	(L8725),A
	LD	IX,L8B99
	LD	A,(IX+0)
L8725	EQU	$-1
	LD	(L8BAB),A
	LD	A,#16
	SUB	C
	LD	(L8BAA),A
	EXX
	RET
L8731	LD	A,B
	LD	(L8BAA),A
	LD	A,C
	LD	(L8BAB),A
	RET
L873A	LD	B,#00
	CALL	#2D2B
	RST	#28
	DEFB	#2E ;str$
	DEFB	#38 ;end calc
	CALL	#2BF1
	CALL	L878E
	JP	#16BF
L874B	PUSH	BC
	PUSH	DE
	PUSH	HL
	LD	H,#00
	LD	L,A
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	LD	DE,#3C00
	ADD	HL,DE
	EX	DE,HL
	LD	A,(L8BAA)
	LD	C,A
	AND	#18
	LD	H,A
	LD	A,C
	AND	#07
	RRCA
	RRCA
	RRCA
	LD	L,A
	LD	A,(L8BAB)
	PUSH	AF
	ADD	A,L
	LD	L,A
	POP	AF
	INC	A
	CP	#20
	JR	C,L877B
	LD	A,(L8BAA)
	INC	A
	LD	(L8BAA),A
	XOR	A
L877B	LD	(L8BAB),A
	LD	BC,#4000
	ADD	HL,BC
	LD	B,#08
L8784	LD	A,(DE)
	INC	DE
	LD	(HL),A
	INC	H
	DJNZ	L8784
	POP	HL
	POP	DE
	POP	BC
	RET
L878E	XOR	A
	LD	(L8BAD),A
L8792	LD	A,(DE)
	INC	DE
	CP	#80
	RET	NC
	CP	#20
	JR	NC,L87D0
	CP	#16
	JR	NZ,L87AA
	LD	A,(DE)
	LD	B,A
	INC	DE
	LD	A,(DE)
	LD	C,A
	INC	DE
	CALL	L8731
	JR	L8792
L87AA	CP	#10
	JR	NZ,L87C1
	LD	A,(L8BAC)
	AND	#38
	LD	B,A
	LD	A,(DE)
L87B5	OR	B
	LD	(L8BAC),A
	INC	DE
	LD	A,#01
	LD	(L8BAD),A
	JR	L8792
L87C1	CP	#11
	RET	NZ
	LD	A,(L8BAC)
	AND	#07
	LD	B,A
	LD	A,(DE)
	RLCA
	RLCA
	RLCA
	JR	L87B5
L87D0	CALL	L87D8
	CALL	L874B
	JR	L8792
L87D8	PUSH	AF
	LD	A,(L8BAD)
	OR	A
	JR	Z,L87F7
	LD	HL,(L8BAA)
	LD	BC,(L8BAB)
	LD	H,#00
	LD	B,H
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,BC
	LD	BC,#5800
	ADD	HL,BC
	LD	A,(L8BAC)
	LD	(HL),A
L87F7	POP	AF
	RET
L87F9	PUSH	BC
	CALL	L878E
	CALL	L84D9
	CP	#59
	POP	BC
	RET
L8804	CP	#04
	JR	C,L880B
	CP	#FD
	RET	C
L880B	LD	D,A
	DEC	A
	JR	Z,L881B
	LD	A,D
	INC	A
	JR	NZ,L8822
	LD	A,C
	OR	A
	JR	NZ,L8822
	LD	A,B
	DEC	A
	JR	L884A
L881B	LD	A,C
	INC	A
	CP	B
	LD	A,#00
	JR	Z,L884A
L8822	LD	A,D
	ADD	A,C
	JP	P,L8836
	LD	DE,(L8BAE)
	LD	D,#00
	LD	HL,L8BA0
	ADD	HL,DE
	LD	D,#FF
	LD	E,A
	ADD	HL,DE
	ADD	A,(HL)
L8836	CP	B
	JR	C,L884A
	LD	E,A
	LD	A,(L8B9F)
	SUB	E
	NEG
	PUSH	AF
	LD	A,(L8BAE)
	LD	E,A
	POP	AF
	CP	E
	JR	C,L884A
	SUB	E
L884A	LD	C,A
	RET
L884C	LD	C,(IX+0)
	LD	B,#00
	CALL	#2D2B
	LD	BC,(L8BAE)
	LD	B,#00
	CALL	#2D2B
	RST	#28
	DEFB	#32 ;mod,div
	DEFB	#02 ;delete
	DEFB	#38 ;end calc
	CALL	#2DA5
	LD	A,(IX+0)
	SUB	C
	LD	(L8B9F),A
	LD	HL,L8BA2
	LD	B,#03
L8870	LD	(HL),A
	DEC	HL
	DJNZ	L8870
	LD	B,A
	LD	A,(L8BAE)
	ADD	A,B
	INC	C
L887A	DEC	C
	RET	Z
	INC	HL
	LD	(HL),A
	JR	L887A
L8880	LD	HL,(#5C53)
	LD	(#5C4B),HL
	LD	(HL),#80
	INC	HL
	LD	(#5C59),HL
	LD	(HL),#0D
	INC	HL
	INC	HL
	LD	(#5C61),HL
	LD	(#5C63),HL
	LD	(#5C65),HL
	RET
L889A	LD	A,(L89BE)
	CP	#02
	RET	NZ
	EXX
	LD	BC,L89BF
	EXX
	DI
	LD	A,#42
	LD	I,A
	SCF
	CALL	#12AC
	LD	A,#3F
	LD	I,A
	EI
	RET
L88B4	LD	A,(#5D19)
	LD	C,A
	LD	D,A
	LD	HL,#5CC8
	LD	B,#04
L88BE	LD	A,(HL)
	INC	HL
	INC	A
	JR	Z,L88CA
	LD	A,#04
	SUB	B
	LD	D,A
	CP	C
	JR	NZ,L88CC
L88CA	DJNZ	L88BE
L88CC	LD	A,C
	LD	(#45AF),A
	PUSH	AF
	LD	A,D
	LD	(#5D19),A
	CALL	#4524
	LD	A,(#5D19)
	LD	(#45AE),A
	POP	AF
	LD	(#5D19),A
	LD	HL,#5A00
	LD	DE,#5A01
	LD	BC,#00FF
	LDIR
	RET
L88EE	LD	HL,#4000
	LD	DE,#4001
	LD	BC,#17FF
	LD	(HL),#00
	LDIR
	INC	HL
	INC	DE
	LD	BC,#02FF
	LD	A,(L8BAC)
	LD	(HL),A
	LDIR
	LD	H,B
	LD	L,A
	LD	(#5C8D),HL
	LD	(#5C8F),HL
	LD	(#5C48),A
	RRCA
	RRCA
	RRCA
	OUT	(#FE),A
	RET
L8917	PUSH	AF
	PUSH	BC
	PUSH	DE
	PUSH	HL
	PUSH	IX
	LD	IX,L8B75
	LD	A,(L8B9E)
	OR	A
	JR	NZ,L892B
	LD	IX,L8B82
L892B	LD	B,(IX+0)
	INC	IX
L8930	LD	L,(IX+0)
	INC	IX
	LD	H,(IX+0)
	INC	IX
	LD	E,(IX+0)
	INC	IX
	LD	D,(IX+0)
	INC	IX
	PUSH	BC
	PUSH	IX
	CALL	#03B5
	POP	IX
	POP	BC
	DJNZ	L8930
	POP	IX
	POP	HL
	POP	DE
	POP	BC
	POP	AF
	RET
L8956	LD	B,#02
	CALL	L8984
	JR	NZ,L897E
	CALL	L8984
	JR	NZ,L897E
	LD	B,#03
	LD	HL,#0000
	DI
	LD	A,#05
	OUT	(#3E),A
	LD	(HL),#00
	LD	A,(HL)
	OR	A
	JR	NZ,L897C
	LD	(HL),#FF
	LD	A,(HL)
	INC	A
	LD	A,#02
	OUT	(#3E),A
	JR	Z,L897E
L897C	LD	B,#00
L897E	LD	A,B
	LD	(L89BE),A
	EI
	RET
L8984	LD	C,#0F
	IN	A,(C)
	OR	A
	RET	Z
	INC	A
	RET	Z
	DEC	C
	DEC	C
	IN	A,(C)
	INC	A
	JR	NZ,L8995
	INC	A
	RET
L8995	XOR	A
	RET
L8997	PUSH	AF
	XOR	A
	LD	(#5D10),A
	DEC	A
	LD	(IY+0),A
	POP	AF
	JP	#3D13
L89A4	LD	HL,(#5C3D)
	PUSH	HL
	LD	HL,L89B2
	PUSH	HL
	LD	(#5C3D),SP
	RST	8
	DEFB	#FF
L89B2	POP	HL
	LD	(#5C3D),HL
	LD	A,#38
	LD	(L8BAC),A
	JP	L88EE
L89BE	DEFB	#00
L89BF	DEFB	#52,#6D,#C3,#8F,#43
L89C4	DEFB	#16,#16,0,#10,7,#11,2
	DEFB	"     BETA COMMANDER ver 1.4	 "
	DEFB	"  by Trubinov J.U. on 06.04.91	 "
	DEFB	#10,0,#11,5,#80
L8A10	DEFB	#16,#16,0,#10,0,#11,6,"<"
L8A18	DEFB	"A> Title:	   Exe-files:	"
	DEFB	#16,#16,#1D,#80
L8A3B	DEFB	#16,#16,0,#10,0,#11,6
	DEFB	"    file(s)	       0   marked",#80
L8A63	DEFB	"  ",#80
L8A66	DEFB	#16,#17,0,#10,2,#11,7
	DEFB	"Erase marked files (Y/N) ?"
	DEFB	#10,0,#11,5,#80
L8A8C	DEFB	#16,#17,0,#10,2,#11,7
	DEFB	"Change	drive (Y/N) ?"
	DEFB	#10,0,#11,5,#80
L8AAC	DEFB	#16,#17,0,#10,7,#11,2
	DEFB	"Enter new name:",#10,5
	DEFB	"		  ",#16,#17,#10,#80
L8AD9	DEFB	#16,#17,0,#10,7,#11,3
	DEFB	"Home/Mark/reName d/Drive/dOs/Ver"
	DEFB	#10,0,#11,5,#80
L8B05	DEFB	#16,#17,0,#10,7,#11,3
	DEFB	"Home/reName/All/Copy/Erase/Ret	 "
	DEFB	#10,0,#11,5,#80
L8B31	DEFB	#16,#16,0
	DEFB	" Your CONFUSE and your	command	 "
	DEFB	"	   is ABORTed !		 ",#80
L8B75	DEFB	3,#E8,3,2,0,#64,0,4,0,#F4,1,2,0
L8B82	DEFB	3,#E8,3,5,0,#64,0,#0D,0,#F4,1,8,0
L8B8F	DEFB	"boot	 "
L8B97	DEFB	0,#0B
L8B99	DEFB	#16
L8B9A	DEFW	0
L8B9C	DEFB	0
L8B9D	DEFB	0
L8B9E	DEFB	0
L8B9F	DEFB	0
L8BA0	DEFB	0,0
L8BA2	DEFB	0
L8BA3	DEFB	0
L8BA4	DEFB	0
L8BA5	DEFB	0
L8BA6	DEFB	0
L8BA7	DEFB	0
L8BA8	DEFW	0
L8BAA	DEFB	0
L8BAB	DEFB	0
L8BAC	DEFB	0
L8BAD	DEFB	0
L8BAE	DEFB	0,0
L8BB0	DEFB	0
L8BB1	DEFW	0
L8BB3	DEFB	0
L8BB4	DEFB	0
L8BB5	DEFW	0
L8BB7	DEFB	0
L8BB8	DEFB	0
L8BB9	DEFW	0
L8BBB	DEFW	0
L8BBD	DEFW	0
L8BBF	DEFW	0
L8BC1	DEFB	0,0,0,0,0,0,0,0,0
