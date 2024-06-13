@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	GetPokedexCount
	.type	 GetPokedexCount,function
	.thumb_func
GetPokedexCount:
	push	{lr}
	ldr	r0, .L6
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	.L3	@cond_branch
	mov	r0, #0x0
	bl	GetKantoPokedexCount
	ldr	r1, .L6+0x4
	strh	r0, [r1]
	mov	r0, #0x1
	bl	GetKantoPokedexCount
	b	.L5
.L7:
	.align	2, 0
.L6:
	.word	gSpecialVar_0x8004
	.word	gSpecialVar_0x8005
.L3:
	mov	r0, #0x0
	bl	GetNationalPokedexCount
	ldr	r1, .L8
	strh	r0, [r1]
	mov	r0, #0x1
	bl	GetNationalPokedexCount
.L5:
	ldr	r1, .L8+0x4
	strh	r0, [r1]
	bl	IsNationalPokedexEnabled
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	pop	{r1}
	bx	r1
.L9:
	.align	2, 0
.L8:
	.word	gSpecialVar_0x8005
	.word	gSpecialVar_0x8006
.Lfe1:
	.size	 GetPokedexCount,.Lfe1-GetPokedexCount
	.align	2, 0
	.type	 GetProfOaksRatingMessageByCount,function
	.thumb_func
GetProfOaksRatingMessageByCount:
	push	{lr}
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	ldr	r1, .L32
	mov	r0, #0x0
	strh	r0, [r1]
	cmp	r2, #0x9
	bhi	.LCB74
	b	.L30	@long jump
.LCB74:
	cmp	r2, #0x13
	bhi	.L12	@cond_branch
	ldr	r0, .L32+0x4
	b	.L29
.L33:
	.align	2, 0
.L32:
	.word	gSpecialVar_Result
	.word	PokedexRating_Text_LessThan20
.L12:
	cmp	r2, #0x1d
	bhi	.L13	@cond_branch
	ldr	r0, .L34
	b	.L29
.L35:
	.align	2, 0
.L34:
	.word	PokedexRating_Text_LessThan30
.L13:
	cmp	r2, #0x27
	bhi	.L14	@cond_branch
	ldr	r0, .L36
	b	.L29
.L37:
	.align	2, 0
.L36:
	.word	PokedexRating_Text_LessThan40
.L14:
	cmp	r2, #0x31
	bhi	.L15	@cond_branch
	ldr	r0, .L38
	b	.L29
.L39:
	.align	2, 0
.L38:
	.word	PokedexRating_Text_LessThan50
.L15:
	cmp	r2, #0x3b
	bhi	.L16	@cond_branch
	ldr	r0, .L40
	b	.L29
.L41:
	.align	2, 0
.L40:
	.word	PokedexRating_Text_LessThan60
.L16:
	cmp	r2, #0x45
	bhi	.L17	@cond_branch
	ldr	r0, .L42
	b	.L29
.L43:
	.align	2, 0
.L42:
	.word	PokedexRating_Text_LessThan70
.L17:
	cmp	r2, #0x4f
	bhi	.L18	@cond_branch
	ldr	r0, .L44
	b	.L29
.L45:
	.align	2, 0
.L44:
	.word	PokedexRating_Text_LessThan80
.L18:
	cmp	r2, #0x59
	bhi	.L19	@cond_branch
	ldr	r0, .L46
	b	.L29
.L47:
	.align	2, 0
.L46:
	.word	PokedexRating_Text_LessThan90
.L19:
	cmp	r2, #0x63
	bhi	.L20	@cond_branch
	ldr	r0, .L48
	b	.L29
.L49:
	.align	2, 0
.L48:
	.word	PokedexRating_Text_LessThan100
.L20:
	cmp	r2, #0x6d
	bhi	.L21	@cond_branch
	ldr	r0, .L50
	b	.L29
.L51:
	.align	2, 0
.L50:
	.word	PokedexRating_Text_LessThan110
.L21:
	cmp	r2, #0x77
	bhi	.L22	@cond_branch
	ldr	r0, .L52
	b	.L29
.L53:
	.align	2, 0
.L52:
	.word	PokedexRating_Text_LessThan120
.L22:
	cmp	r2, #0x81
	bhi	.L23	@cond_branch
	ldr	r0, .L54
	b	.L29
.L55:
	.align	2, 0
.L54:
	.word	PokedexRating_Text_LessThan130
.L23:
	cmp	r2, #0x8b
	bhi	.L24	@cond_branch
	ldr	r0, .L56
	b	.L29
.L57:
	.align	2, 0
.L56:
	.word	PokedexRating_Text_LessThan140
.L24:
	cmp	r2, #0x95
	bls	.L31	@cond_branch
	cmp	r2, #0x96
	bne	.L26	@cond_branch
	mov	r0, #0x97
	bl	SpeciesToNationalPokedexNum
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x1
	bl	GetSetPokedexFlag
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L27	@cond_branch
.L31:
	ldr	r0, .L58
	b	.L29
.L59:
	.align	2, 0
.L58:
	.word	PokedexRating_Text_LessThan150
.L27:
	ldr	r1, .L60
	b	.L28
.L61:
	.align	2, 0
.L60:
	.word	gSpecialVar_Result
.L26:
	cmp	r2, #0x97
	beq	.L28	@cond_branch
.L30:
	ldr	r0, .L62
	b	.L29
.L63:
	.align	2, 0
.L62:
	.word	PokedexRating_Text_LessThan10
.L28:
	mov	r0, #0x1
	strh	r0, [r1]
	ldr	r0, .L64
.L29:
	pop	{r1}
	bx	r1
.L65:
	.align	2, 0
.L64:
	.word	PokedexRating_Text_Complete
.Lfe2:
	.size	 GetProfOaksRatingMessageByCount,.Lfe2-GetProfOaksRatingMessageByCount
	.align	2, 0
	.globl	GetProfOaksRatingMessage
	.type	 GetProfOaksRatingMessage,function
	.thumb_func
GetProfOaksRatingMessage:
	push	{lr}
	ldr	r0, .L67
	ldrh	r0, [r0]
	bl	GetProfOaksRatingMessageByCount
	bl	ShowFieldMessage
	pop	{r0}
	bx	r0
.L68:
	.align	2, 0
.L67:
	.word	gSpecialVar_0x8004
.Lfe3:
	.size	 GetProfOaksRatingMessage,.Lfe3-GetProfOaksRatingMessage
.text
	.align	2, 0 @ Don't pad with nop

