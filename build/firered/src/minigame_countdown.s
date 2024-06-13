@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	StartMinigameCountdown
	.type	 StartMinigameCountdown,function
	.thumb_func
StartMinigameCountdown:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	ldr	r0, [sp, #0x18]
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	lsl	r6, r6, #0x10
	lsr	r6, r6, #0x10
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	ldr	r0, .L5
	mov	r1, #0x50
	str	r3, [sp]
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L5+0x4
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	strh	r4, [r1, #0xc]
	strh	r5, [r1, #0xe]
	strh	r6, [r1, #0x10]
	ldr	r3, [sp]
	strh	r3, [r1, #0x12]
	mov	r0, r8
	strh	r0, [r1, #0x14]
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L6:
	.align	2, 0
.L5:
	.word	Task_MinigameCountdown
	.word	gTasks
.Lfe1:
	.size	 StartMinigameCountdown,.Lfe1-StartMinigameCountdown
	.align	2, 0
	.globl	IsMinigameCountdownRunning
	.type	 IsMinigameCountdownRunning,function
	.thumb_func
IsMinigameCountdownRunning:
	push	{lr}
	ldr	r0, .L8
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L9:
	.align	2, 0
.L8:
	.word	Task_MinigameCountdown
.Lfe2:
	.size	 IsMinigameCountdownRunning,.Lfe2-IsMinigameCountdownRunning
	.align	2, 0
	.type	 Task_MinigameCountdown,function
	.thumb_func
Task_MinigameCountdown:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0xc
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	lsl	r0, r6, #0x2
	add	r0, r0, r6
	lsl	r0, r0, #0x3
	ldr	r1, .L21
	add	r5, r0, r1
	mov	r1, #0x0
	ldrsh	r0, [r5, r1]
	cmp	r0, #0x1
	beq	.L13	@cond_branch
	cmp	r0, #0x1
	bgt	.L19	@cond_branch
	cmp	r0, #0
	beq	.L12	@cond_branch
	b	.L11
.L22:
	.align	2, 0
.L21:
	.word	gTasks+0x8
.L19:
	cmp	r0, #0x2
	beq	.L15	@cond_branch
	b	.L11
.L12:
	ldrh	r0, [r5, #0x4]
	ldrh	r1, [r5, #0x6]
	bl	Load321StartGfx
	ldrh	r0, [r5, #0x4]
	ldrh	r1, [r5, #0x6]
	mov	r3, #0x8
	ldrsh	r2, [r5, r3]
	mov	r4, #0xa
	ldrsh	r3, [r5, r4]
	ldrb	r4, [r5, #0xc]
	str	r4, [sp]
	bl	CreateNumberSprite
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r5, #0xe]
	ldrh	r0, [r5, #0x4]
	ldrh	r1, [r5, #0x6]
	mov	r3, #0x8
	ldrsh	r2, [r5, r3]
	mov	r4, #0xa
	ldrsh	r3, [r5, r4]
	ldrb	r4, [r5, #0xc]
	str	r4, [sp]
	add	r4, r5, #0
	add	r4, r4, #0x10
	str	r4, [sp, #0x4]
	add	r4, r4, #0x2
	str	r4, [sp, #0x8]
	bl	CreateStartSprite
	b	.L20
.L13:
	ldrb	r0, [r5, #0xe]
	bl	RunMinigameCountdownDigitsAnim
	cmp	r0, #0
	bne	.L11	@cond_branch
	ldrb	r0, [r5, #0xe]
	ldrb	r1, [r5, #0x10]
	ldrb	r2, [r5, #0x12]
	bl	StartStartGraphic
	mov	r0, #0xe
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r4, .L23
	add	r0, r0, r4
	bl	FreeSpriteOamMatrix
	mov	r3, #0xe
	ldrsh	r1, [r5, r3]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r4
	bl	DestroySprite
.L20:
	ldrh	r0, [r5]
	add	r0, r0, #0x1
	strh	r0, [r5]
	b	.L11
.L24:
	.align	2, 0
.L23:
	.word	gSprites
.L15:
	ldrb	r0, [r5, #0x10]
	bl	IsStartGraphicAnimRunning
	cmp	r0, #0
	bne	.L11	@cond_branch
	mov	r4, #0x10
	ldrsh	r1, [r5, r4]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r4, .L25
	add	r0, r0, r4
	bl	DestroySprite
	mov	r0, #0x12
	ldrsh	r1, [r5, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r4
	bl	DestroySprite
	ldrh	r0, [r5, #0x4]
	bl	FreeSpriteTilesByTag
	ldrh	r0, [r5, #0x6]
	bl	FreeSpritePaletteByTag
	add	r0, r6, #0
	bl	DestroyTask
.L11:
	add	sp, sp, #0xc
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L26:
	.align	2, 0
.L25:
	.word	gSprites
.Lfe3:
	.size	 Task_MinigameCountdown,.Lfe3-Task_MinigameCountdown
	.align	2, 0
	.type	 RunMinigameCountdownDigitsAnim,function
	.thumb_func
RunMinigameCountdownDigitsAnim:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	ldr	r0, .L53
	add	r4, r1, r0
	mov	r1, #0x2e
	ldrsh	r0, [r4, r1]
	cmp	r0, #0x7
	bls	.LCB286
	b	.L28	@long jump
.LCB286:
	lsl	r0, r0, #0x2
	ldr	r1, .L53+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L54:
	.align	2, 0
.L53:
	.word	gSprites
	.word	.L46
	.align	2, 0
	.align	2, 0
.L46:
	.word	.L29
	.word	.L30
	.word	.L33
	.word	.L35
	.word	.L37
	.word	.L41
	.word	.L43
	.word	.L51
.L29:
	mov	r1, #0x80
	lsl	r1, r1, #0x4
	add	r0, r4, #0
	mov	r2, #0x1a
	bl	SetSpriteMatrixAnchor
	ldrh	r0, [r4, #0x2e]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2e]
.L30:
	mov	r2, #0x32
	ldrsh	r0, [r4, r2]
	cmp	r0, #0
	bne	.L31	@cond_branch
	mov	r0, #0x32
	bl	PlaySE
.L31:
	ldrh	r0, [r4, #0x32]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x32]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x13
	ble	.L28	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0x32]
	add	r0, r4, #0
	mov	r1, #0x1
	b	.L49
.L33:
	add	r0, r4, #0
	add	r0, r0, #0x3f
	ldrb	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L28	@cond_branch
	b	.L50
.L35:
	ldrh	r0, [r4, #0x32]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x32]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x3
	ble	.L28	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0x32]
	ldrh	r0, [r4, #0x2e]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2e]
	add	r0, r4, #0
	mov	r1, #0x2
	bl	StartSpriteAffineAnim
	b	.L28
.L37:
	ldrh	r0, [r4, #0x22]
	sub	r0, r0, #0x4
	strh	r0, [r4, #0x22]
	ldrh	r0, [r4, #0x32]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x32]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x7
	ble	.L28	@cond_branch
	ldrh	r1, [r4, #0x36]
	mov	r2, #0x36
	ldrsh	r0, [r4, r2]
	cmp	r0, #0x1
	bgt	.L39	@cond_branch
	add	r1, r1, #0x1
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	StartSpriteAnim
	mov	r0, #0x0
	strh	r0, [r4, #0x32]
	b	.L50
.L39:
	mov	r0, #0x7
	strh	r0, [r4, #0x2e]
.L51:
	mov	r0, #0x0
	b	.L48
.L41:
	ldrh	r0, [r4, #0x22]
	add	r0, r0, #0x4
	strh	r0, [r4, #0x22]
	ldrh	r0, [r4, #0x32]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x32]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x7
	ble	.L28	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0x32]
	add	r0, r4, #0
	mov	r1, #0x3
.L49:
	bl	StartSpriteAffineAnim
.L50:
	ldrh	r0, [r4, #0x2e]
	add	r0, r0, #0x1
	b	.L52
.L43:
	add	r0, r4, #0
	add	r0, r0, #0x3f
	ldrb	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L28	@cond_branch
	ldrh	r0, [r4, #0x36]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x36]
	mov	r0, #0x1
.L52:
	strh	r0, [r4, #0x2e]
.L28:
	mov	r0, #0x1
.L48:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 RunMinigameCountdownDigitsAnim,.Lfe4-RunMinigameCountdownDigitsAnim
	.align	2, 0
	.type	 StartStartGraphic,function
	.thumb_func
StartStartGraphic:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	ldr	r0, .L56
	mov	r8, r0
	lsl	r4, r1, #0x4
	add	r4, r4, r1
	lsl	r4, r4, #0x2
	add	r5, r4, r0
	ldr	r0, .L56+0x4
	strh	r0, [r5, #0x26]
	lsl	r3, r2, #0x4
	add	r3, r3, r2
	lsl	r3, r3, #0x2
	mov	r1, r8
	add	r2, r3, r1
	strh	r0, [r2, #0x26]
	add	r5, r5, #0x3e
	ldrb	r6, [r5]
	mov	r1, #0x5
	neg	r1, r1
	add	r0, r1, #0
	and	r0, r0, r6
	strb	r0, [r5]
	add	r2, r2, #0x3e
	ldrb	r0, [r2]
	and	r1, r1, r0
	strb	r1, [r2]
	mov	r0, #0x1c
	add	r8, r8, r0
	add	r4, r4, r8
	ldr	r0, .L56+0x8
	str	r0, [r4]
	add	r3, r3, r8
	str	r0, [r3]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L57:
	.align	2, 0
.L56:
	.word	gSprites
	.word	0xffd8
	.word	SpriteCB_Start
.Lfe5:
	.size	 StartStartGraphic,.Lfe5-StartStartGraphic
	.align	2, 0
	.type	 IsStartGraphicAnimRunning,function
	.thumb_func
IsStartGraphicAnimRunning:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r3, #0x0
	ldr	r2, .L60
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r2, r2, #0x1c
	add	r1, r1, r2
	ldr	r1, [r1]
	ldr	r0, .L60+0x4
	cmp	r1, r0
	bne	.L59	@cond_branch
	mov	r3, #0x1
.L59:
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.L61:
	.align	2, 0
.L60:
	.word	gSprites
	.word	SpriteCB_Start
.Lfe6:
	.size	 IsStartGraphicAnimRunning,.Lfe6-IsStartGraphicAnimRunning
	.align	2, 0
	.type	 SpriteCB_Start,function
	.thumb_func
SpriteCB_Start:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r5, #0
	add	r4, r4, #0x2e
	mov	r1, #0x2e
	ldrsh	r0, [r5, r1]
	cmp	r0, #0x4
	bhi	.L63	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L76
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L77:
	.align	2, 0
.L76:
	.word	.L73
	.align	2, 0
	.align	2, 0
.L73:
	.word	.L64
	.word	.L65
	.word	.L67
	.word	.L69
	.word	.L71
.L64:
	mov	r0, #0x40
	strh	r0, [r4, #0x8]
	ldrh	r0, [r5, #0x26]
	lsl	r0, r0, #0x4
	strh	r0, [r4, #0xa]
	ldrh	r0, [r4]
	add	r0, r0, #0x1
	strh	r0, [r4]
.L65:
	ldrh	r1, [r4, #0x8]
	ldrh	r2, [r4, #0xa]
	add	r0, r1, r2
	strh	r0, [r4, #0xa]
	add	r1, r1, #0x1
	strh	r1, [r4, #0x8]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x14
	strh	r0, [r5, #0x26]
	cmp	r0, #0
	blt	.L63	@cond_branch
	mov	r0, #0x32
	bl	PlaySE
	mov	r0, #0x0
	strh	r0, [r5, #0x26]
	ldrh	r0, [r4]
	add	r0, r0, #0x1
	strh	r0, [r4]
	b	.L63
.L67:
	ldrh	r0, [r4, #0x2]
	add	r0, r0, #0xc
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x7f
	ble	.L68	@cond_branch
	mov	r0, #0x32
	bl	PlaySE
	mov	r0, #0x0
	strh	r0, [r4, #0x2]
	ldrh	r0, [r4]
	add	r0, r0, #0x1
	strh	r0, [r4]
.L68:
	ldr	r0, .L78
	mov	r2, #0x2
	ldrsh	r1, [r4, r2]
	lsl	r1, r1, #0x1
	add	r1, r1, r0
	mov	r2, #0x0
	ldrsh	r0, [r1, r2]
	asr	r0, r0, #0x4
	b	.L75
.L79:
	.align	2, 0
.L78:
	.word	gSineTable
.L69:
	ldrh	r0, [r4, #0x2]
	add	r0, r0, #0x10
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x7f
	ble	.L70	@cond_branch
	mov	r0, #0x32
	bl	PlaySE
	mov	r0, #0x0
	strh	r0, [r4, #0x2]
	ldrh	r0, [r4]
	add	r0, r0, #0x1
	strh	r0, [r4]
.L70:
	ldr	r1, .L80
	mov	r2, #0x2
	ldrsh	r0, [r4, r2]
	lsl	r0, r0, #0x1
	add	r0, r0, r1
	ldrh	r0, [r0]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x15
.L75:
	neg	r0, r0
	strh	r0, [r5, #0x26]
	b	.L63
.L81:
	.align	2, 0
.L80:
	.word	gSineTable
.L71:
	ldrh	r0, [r4, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x28
	ble	.L63	@cond_branch
	ldr	r0, .L82
	str	r0, [r5, #0x1c]
.L63:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L83:
	.align	2, 0
.L82:
	.word	SpriteCallbackDummy
.Lfe7:
	.size	 SpriteCB_Start,.Lfe7-SpriteCB_Start
	.section .rodata
	.align	1, 0
	.type	 sSpritePal_321Start,object
sSpritePal_321Start:
	.short	0x7353
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x7c1f
	.short	0x1084
	.short	0x18d0
	.short	0x151c
	.short	0x2113
	.short	0x257f
	.short	0x1dd5
	.short	0x26ff
	.short	0x7fff
	.size	 sSpritePal_321Start,32
	.align	1, 0
	.type	 sSpriteSheet_321Start,object
sSpriteSheet_321Start:
	.short	0x10
	.short	0xe
	.short	0x35
	.short	0xf000
	.short	0x4001
	.short	0xf001
	.short	0x300
	.short	0xe0ff
	.short	0x15
	.short	0xffff
	.short	0xffff
	.short	0x88df
	.short	0xdf88
	.short	0xd814
	.short	0xeeee
	.short	0x200
	.short	0xf0ee
	.short	0xf1e
	.short	0x0
	.short	0xd888
	.short	0xfff
	.short	0xdeee
	.short	0xff88
	.short	0xb5
	.short	0xf81e
	.short	0x56f0
	.short	0x170
	.short	0x300f
	.short	0x8f66
	.short	0x300
	.short	0xc87e
	.short	0x340
	.short	0xb00
	.short	0x7320
	.short	0x7b10
	.short	0x120
	.short	0x4300
	.short	0xee
	.short	0xcccc
	.short	0x888b
	.short	0x8ccc
	.short	0xfff8
	.short	0xcc04
	.short	0xfff8
	.short	0x8800
	.short	0x7f10
	.short	0x88ff
	.short	0x8806
	.short	0x8f00
	.short	0xcccc
	.short	0x310
	.short	0x1e00
	.short	0x8e
	.short	0xcc88
	.short	0x8ccc
	.short	0xc8ff
	.short	0xcccc
	.short	0xf050
	.short	0xf00
	.short	0xff
	.short	0x8803
	.short	0xccc8
	.short	0x7f8c
	.short	0xcc
	.short	0x1013
	.short	0x1003
	.short	0x1063
	.short	0x1050
	.short	0x5088
	.short	0x1003
	.short	0xf40f
	.short	0x1750
	.short	0xf3f0
	.short	0x1610
	.short	0x9320
	.short	0x20a8
	.short	0x8f03
	.short	0x2daa
	.short	0xaa
	.short	0x6f10
	.short	0xf0
	.short	0x76
	.short	0x8834
	.short	0x400
	.short	0xaa00
	.short	0xff98
	.short	0xaaff
	.short	0x889a
	.short	0x3088
	.short	0xaaaa
	.short	0x130
	.short	0x910
	.short	0xffff
	.short	0xaaa8
	.short	0xc0
	.short	0x2e
	.short	0xa82b
	.short	0xffaa
	.short	0xa98f
	.short	0x2daa
	.short	0x9888
	.short	0x1a20
	.short	0x209a
	.short	0x73
	.short	0x8a37
	.short	0x380
	.short	0x897d
	.short	0x300
	.short	0x1310
	.short	0x1c31
	.short	0xf3f0
	.short	0x190
	.short	0x10a9
	.short	0xdd5f
	.short	0x400
	.short	0x8200
	.short	0x1088
	.short	0xd082
	.short	0x1f
	.short	0x891e
	.short	0x200
	.short	0xf80f
	.short	0x8888
	.short	0x11f8
	.short	0xf118
	.short	0x61ae
	.short	0xf067
	.short	0xfd01
	.short	0x1f0
	.short	0xbf1
	.short	0x50f0
	.short	0xfff1
	.short	0xfff1
	.short	0xff51
	.short	0xf1de
	.short	0xfeff
	.short	0xfff1
	.short	0xfff1
	.short	0xfff1
	.short	0xff81
	.short	0x2000
	.short	0xd070
	.short	0x6312
	.short	0x238d
	.short	0xcb88
	.short	0xff01
	.short	0xccb8
	.short	0x11bc
	.short	0x12ff
	.short	0x8713
	.short	0x722
	.short	0xccc8
	.short	0x8fbc
	.short	0x1700
	.short	0xfff1
	.short	0x7b2
	.short	0xf0b0
	.short	0xef
	.short	0x8f10
	.short	0xff71
	.short	0xfff0
	.short	0xf08f
	.short	0xff0f
	.short	0xa888
	.short	0x1ff
	.short	0x11e3
	.short	0x11f0
	.short	0x118f
	.short	0xf292
	.short	0x7301
	.short	0xff21
	.short	0xe601
	.short	0x7f01
	.short	0xf89a
	.short	0x1200
	.short	0xbfff
	.short	0x200
	.short	0x120f
	.short	0x321f
	.short	0x32a1
	.short	0x101f
	.short	0xd17f
	.short	0x207f
	.short	0xfb8f
	.short	0xb42
	.short	0x6760
	.short	0xfb70
	.short	0xdfd1
	.short	0x6342
	.short	0x2288
	.short	0xf0fa
	.short	0xff1f
	.short	0x1ff0
	.short	0x190
	.short	0x7352
	.short	0x6f10
	.short	0xccf1
	.short	0x1f0
	.short	0x1f0
	.short	0xe1f1
	.short	0x80
	.short	0x88aa
	.short	0xff00
	.short	0xeee8
	.short	0x8ff0
	.short	0xf1ff
	.short	0x33ff
	.short	0x123
	.short	0x1b7
	.short	0xf360
	.short	0xf0fd
	.short	0x8101
	.short	0x907b
	.short	0x8b03
	.short	0x4f70
	.short	0xeee8
	.short	0x1ee
	.short	0xccce
	.short	0xde03
	.short	0x300
	.short	0x8c00
	.short	0x8fcc
	.short	0x88cc
	.short	0xffcc
	.short	0x2a88
	.short	0xcc8f
	.short	0x9601
	.short	0x1cc
	.short	0xccaa
	.short	0x6310
	.short	0xfccc
	.short	0x3f0
	.short	0x360
	.short	0x1f0
	.short	0x1f0
	.short	0x1f0
	.short	0x9390
	.short	0xaa8f
	.short	0xd082
	.short	0xff03
	.short	0x8fff
	.short	0x8faa
	.short	0xde01
	.short	0xfda8
	.short	0x7811
	.short	0x6300
	.short	0x3f0
	.short	0x1f04
	.short	0x9003
	.short	0x1d00
	.short	0xf08a
	.short	0xff56
	.short	0xfb72
	.short	0x1742
	.short	0xf7f0
	.short	0x180
	.short	0x6310
	.short	0x310
	.short	0x6f00
	.short	0xdff1
	.short	0x31bf
	.short	0x8aff
	.short	0x310
	.short	0x1e00
	.short	0xf4
	.short	0x6780
	.short	0x3f4
	.short	0x1f0
	.short	0xf0fa
	.short	0xf001
	.short	0xf001
	.short	0xe101
	.short	0x1336
	.short	0x8da1
	.short	0x2302
	.short	0xf7ed
	.short	0xbc11
	.short	0x3df2
	.short	0x1b23
	.short	0x3a14
	.short	0x13de
	.short	0xf0db
	.short	0x4af
	.short	0x53e5
	.short	0xf
	.short	0xff22
	.short	0x5c02
	.short	0x8ff8
	.short	0x3ff0
	.short	0x5b43
	.short	0x10ef
	.short	0xf03b
	.short	0x203f
	.short	0xf1f
	.short	0x2a11
	.short	0x7b16
	.short	0x7ff6
	.short	0x2030
	.short	0x29f
	.short	0x88be
	.short	0x2f0
	.short	0x1257
	.short	0xf05b
	.short	0xf0bf
	.short	0xf001
	.short	0xee01
	.short	0x180
	.short	0xa600
	.short	0x6f14
	.short	0x2f0
	.short	0x409c
	.short	0x6403
	.short	0x87
	.short	0x4f4
	.short	0x1084
	.short	0xa3
	.short	0x48f
	.short	0xffba
	.short	0x1603
	.short	0xfff0
	.short	0x11b0
	.short	0x8ba4
	.short	0xab01
	.short	0x9f46
	.short	0xeecc
	.short	0x8f8e
	.short	0xee7b
	.short	0xbd04
	.short	0x2050
	.short	0x3f23
	.short	0x1f54
	.short	0x138c
	.short	0x2047
	.short	0xff3f
	.short	0xd736
	.short	0xf356
	.short	0x390
	.short	0xe310
	.short	0xef10
	.short	0x5710
	.short	0xec00
	.short	0x310
	.short	0x8f57
	.short	0x330
	.short	0x10f0
	.short	0xc803
	.short	0x9e00
	.short	0x3f13
	.short	0x1217
	.short	0x8f
	.short	0x8c8d
	.short	0xccff
	.short	0x6800
	.short	0x330
	.short	0x5510
	.short	0x4300
	.short	0xf0f5
	.short	0xf0d1
	.short	0xf001
	.short	0x8101
	.short	0x8fee
	.short	0xbb04
	.short	0x34ff
	.short	0x52bb
	.short	0x14f0
	.short	0x88fc
	.short	0x5f01
	.short	0x88aa
	.short	0xa07
	.short	0xe9aa
	.short	0x310
	.short	0x9b44
	.short	0x3303
	.short	0xff
	.short	0x27
	.short	0x18f
	.short	0x5fdf
	.short	0x8f
	.short	0x980b
	.short	0x1300
	.short	0x4a35
	.short	0x2f23
	.short	0x5307
	.short	0xa404
	.short	0xa0fe
	.short	0x703
	.short	0x1024
	.short	0x2717
	.short	0xf07f
	.short	0x6003
	.short	0x3
	.short	0xa8e3
	.short	0xf0f3
	.short	0x7003
	.short	0x5503
	.short	0x131f
	.short	0xaa21
	.short	0x38a
	.short	0xc097
	.short	0xf567
	.short	0xd0f0
	.short	0x1f0
	.short	0x1f0
	.short	0xfe90
	.short	0x18a9
	.short	0xa91f
	.short	0xfb00
	.short	0x887f
	.short	0xfb32
	.short	0x9ff5
	.short	0x718
	.short	0x9ff5
	.short	0x130
	.short	0x2018
	.short	0xf751
	.short	0xf0ff
	.short	0x118d
	.short	0x4031
	.short	0x48eb
	.short	0xd083
	.short	0x501e
	.short	0x15e7
	.short	0xf594
	.short	0xdfe2
	.short	0x7f00
	.short	0xe740
	.short	0x188
	.short	0xf04b
	.short	0xf03d
	.short	0x1001
	.short	0x1023
	.short	0x3f2b
	.short	0x8eee
	.short	0x310
	.short	0x30f0
	.short	0x8318
	.short	0x8013
	.short	0x5722
	.short	0x7ff3
	.short	0x93fa
	.short	0x237f
	.short	0xf0a3
	.short	0x61
	.short	0x320
	.short	0xff80
	.short	0x8003
	.short	0xebf8
	.short	0x1ff4
	.short	0xdff3
	.short	0x1ff0
	.short	0x300
	.short	0xf3e
	.short	0xf609
	.short	0x320
	.short	0xf0fd
	.short	0xf05f
	.short	0xf001
	.short	0x7001
	.short	0x1401
	.short	0x322
	.short	0xf0f
	.short	0x1b03
	.short	0x10df
	.short	0x1303
	.short	0xf866
	.short	0x310
	.short	0x1c03
	.short	0xa323
	.short	0x3f53
	.short	0x1750
	.short	0x80e3
	.short	0x1003
	.short	0x4313
	.short	0xcbdf
	.short	0xffcc
	.short	0x8008
	.short	0x8201
	.short	0x20f1
	.short	0x3
	.short	0x3c1
	.short	0x165d
	.short	0xccb1
	.short	0x8ecc
	.short	0xe300
	.short	0xff
	.short	0x2355
	.short	0x96df
	.short	0x1397
	.short	0x18db
	.short	0x209c
	.short	0x433f
	.short	0x849c
	.short	0xff43
	.short	0x360
	.short	0xe310
	.short	0xef10
	.short	0xf710
	.short	0xcb95
	.short	0xd3f5
	.short	0x1f0
	.short	0x1f0
	.short	0xf0df
	.short	0x6601
	.short	0xa83f
	.short	0x1d03
	.short	0x300
	.short	0x3103
	.short	0x3a0
	.short	0x7a02
	.short	0xaa5f
	.short	0x340
	.short	0x1388
	.short	0xd06e
	.short	0xfb03
	.short	0x1003
	.short	0x7703
	.short	0xff2b
	.short	0xe72a
	.short	0xff9a
	.short	0xf700
	.short	0x2b97
	.short	0x6fd0
	.short	0x3d0
	.short	0xf3f0
	.short	0xfff0
	.short	0xf0f8
	.short	0xf001
	.short	0xf001
	.short	0x4201
	.short	0x50cf
	.short	0x8f6b
	.short	0xf888
	.short	0x22ff
	.short	0xf35c
	.short	0x207e
	.short	0x16e7
	.short	0x1691
	.short	0xf099
	.short	0x5041
	.short	0xf3eb
	.short	0xffff
	.short	0x5f21
	.short	0xe740
	.short	0xb7ca
	.short	0x7ff0
	.short	0x7ff0
	.short	0xbff7
	.short	0x1f0
	.short	0x1f0
	.short	0xf0e0
	.short	0xf001
	.short	0x8001
	.short	0x1
	.short	0x0
	.size	 sSpriteSheet_321Start,1108
	.align	2, 0
.LC16:
	.word	sSpriteSheet_321Start
	.short	0xe00
	.space	2
	.align	2, 0
.LC18:
	.word	sSpritePal_321Start
	.space	4
.text
	.align	2, 0
	.type	 Load321StartGfx,function
	.thumb_func
Load321StartGfx:
	push	{r4, lr}
	add	sp, sp, #-0x10
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	ldr	r2, .L85
	ldr	r3, [r2, #0x4]		@ created by thumb_load_double_from_address
	ldr	r2, [r2]		@ created by thumb_load_double_from_address
	str	r2, [sp]
	str	r3, [sp, #0x4]
	ldr	r2, .L85+0x4
	ldr	r3, [r2, #0x4]		@ created by thumb_load_double_from_address
	ldr	r2, [r2]		@ created by thumb_load_double_from_address
	str	r2, [sp, #0x8]
	str	r3, [sp, #0xc]
	lsl	r0, r0, #0x10
	ldr	r3, .L85+0x8
	ldr	r2, [sp, #0x4]
	and	r2, r2, r3
	orr	r2, r2, r0
	str	r2, [sp, #0x4]
	ldr	r2, .L85+0xc
	add	r4, sp, #0x8
	ldr	r0, [r4, #0x4]
	and	r0, r0, r2
	orr	r0, r0, r1
	str	r0, [r4, #0x4]
	mov	r0, sp
	bl	LoadCompressedSpriteSheet
	add	r0, r4, #0
	bl	LoadSpritePalette
	add	sp, sp, #0x10
	pop	{r4}
	pop	{r0}
	bx	r0
.L86:
	.align	2, 0
.L85:
	.word	.LC16
	.word	.LC18
	.word	0xffff
	.word	-0x10000
.Lfe8:
	.size	 Load321StartGfx,.Lfe8-Load321StartGfx
	.section .rodata
	.align	2, 0
	.type	 sOamData_Numbers,object
	.size	 sOamData_Numbers,8
sOamData_Numbers:
	.space	1
	.byte	0x3
	.space	1
	.byte	0x80
	.space	4
	.align	2, 0
	.type	 sOamData_Start,object
	.size	 sOamData_Start,8
sOamData_Start:
	.space	1
	.byte	0x40
	.space	1
	.byte	0xc0
	.space	4
	.align	2, 0
	.type	 sAnim_Numbers_Three,object
sAnim_Numbers_Three:
	.short	0x0
	.byte	0x1
	.space	1
	.short	-0x1
	.space	2
	.size	 sAnim_Numbers_Three,8
	.align	2, 0
	.type	 sAnim_Numbers_Two,object
sAnim_Numbers_Two:
	.short	0x10
	.byte	0x1
	.space	1
	.short	-0x1
	.space	2
	.size	 sAnim_Numbers_Two,8
	.align	2, 0
	.type	 sAnim_Numbers_One,object
sAnim_Numbers_One:
	.short	0x20
	.byte	0x1
	.space	1
	.short	-0x1
	.space	2
	.size	 sAnim_Numbers_One,8
	.align	2, 0
	.type	 sAnimTable_Numbers,object
sAnimTable_Numbers:
	.word	sAnim_Numbers_Three
	.word	sAnim_Numbers_Two
	.word	sAnim_Numbers_One
	.size	 sAnimTable_Numbers,12
	.align	2, 0
	.type	 sAnim_StartLeft,object
sAnim_StartLeft:
	.short	0x30
	.byte	0x1
	.space	1
	.short	-0x1
	.space	2
	.size	 sAnim_StartLeft,8
	.align	2, 0
	.type	 sAnim_StartRight,object
sAnim_StartRight:
	.short	0x50
	.byte	0x1
	.space	1
	.short	-0x1
	.space	2
	.size	 sAnim_StartRight,8
	.align	2, 0
	.type	 sAnimTable_Start,object
sAnimTable_Start:
	.word	sAnim_StartLeft
	.word	sAnim_StartRight
	.size	 sAnimTable_Start,8
	.align	2, 0
	.type	 sAffineAnim_Numbers_0,object
sAffineAnim_Numbers_0:
	.short	0x100
	.short	0x100
	.byte	0x0
	.byte	0x0
	.space	2
	.short	0x7fff
	.space	6
	.size	 sAffineAnim_Numbers_0,16
	.align	2, 0
	.type	 sAffineAnim_Numbers_1,object
sAffineAnim_Numbers_1:
	.short	0x100
	.short	0x100
	.byte	0x0
	.byte	0x0
	.space	2
	.short	0x10
	.short	-0x10
	.byte	0x0
	.byte	0x8
	.space	2
	.short	0x7fff
	.space	6
	.size	 sAffineAnim_Numbers_1,24
	.align	2, 0
	.type	 sAffineAnim_Numbers_2,object
sAffineAnim_Numbers_2:
	.short	-0x12
	.short	0x12
	.byte	0x0
	.byte	0x8
	.space	2
	.short	0x7fff
	.space	6
	.size	 sAffineAnim_Numbers_2,16
	.align	2, 0
	.type	 sAffineAnim_Numbers_3,object
sAffineAnim_Numbers_3:
	.short	0x6
	.short	-0x6
	.byte	0x0
	.byte	0x8
	.space	2
	.short	-0x4
	.short	0x4
	.byte	0x0
	.byte	0x8
	.space	2
	.short	0x100
	.short	0x100
	.byte	0x0
	.byte	0x0
	.space	2
	.short	0x7fff
	.space	6
	.size	 sAffineAnim_Numbers_3,32
	.align	2, 0
	.type	 sAffineAnimTable_Numbers,object
sAffineAnimTable_Numbers:
	.word	sAffineAnim_Numbers_0
	.word	sAffineAnim_Numbers_1
	.word	sAffineAnim_Numbers_2
	.word	sAffineAnim_Numbers_3
	.size	 sAffineAnimTable_Numbers,16
	.align	2, 0
.LC20:
	.space	4
	.word	sOamData_Numbers
	.word	sAnimTable_Numbers
	.space	4
	.word	sAffineAnimTable_Numbers
	.word	SpriteCallbackDummy
.text
	.align	2, 0
	.type	 CreateNumberSprite,function
	.thumb_func
CreateNumberSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x18
	mov	ip, r3
	ldr	r3, [sp, #0x30]
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	mov	r8, r3
	mov	r5, sp
	ldr	r4, .L88
	ldmia	r4!, {r3, r6, r7}
	stmia	r5!, {r3, r6, r7}
	ldmia	r4!, {r3, r6, r7}
	stmia	r5!, {r3, r6, r7}
	mov	r4, sp
	strh	r0, [r4]
	mov	r0, sp
	strh	r1, [r0, #0x2]
	lsl	r2, r2, #0x10
	asr	r2, r2, #0x10
	mov	r0, ip
	lsl	r6, r0, #0x10
	asr	r6, r6, #0x10
	mov	r0, sp
	add	r1, r2, #0
	add	r2, r6, #0
	mov	r3, r8
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	sp, sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L89:
	.align	2, 0
.L88:
	.word	.LC20
.Lfe9:
	.size	 CreateNumberSprite,.Lfe9-CreateNumberSprite
	.section .rodata
	.align	2, 0
.LC24:
	.space	4
	.word	sOamData_Start
	.word	sAnimTable_Start
	.space	4
	.word	gDummySpriteAffineAnimTable
	.word	SpriteCallbackDummy
.text
	.align	2, 0
	.type	 CreateStartSprite,function
	.thumb_func
CreateStartSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x18
	mov	ip, r3
	ldr	r6, [sp, #0x38]
	ldr	r3, [sp, #0x3c]
	mov	r9, r3
	ldr	r4, [sp, #0x40]
	mov	r8, r4
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	sl, r6
	mov	r4, sp
	ldr	r3, .L91
	ldmia	r3!, {r5, r6, r7}
	stmia	r4!, {r5, r6, r7}
	ldmia	r3!, {r5, r6, r7}
	stmia	r4!, {r5, r6, r7}
	mov	r3, sp
	strh	r0, [r3]
	mov	r0, sp
	strh	r1, [r0, #0x2]
	lsl	r2, r2, #0x10
	asr	r4, r2, #0x10
	ldr	r0, .L91+0x4
	add	r2, r2, r0
	asr	r2, r2, #0x10
	mov	r1, ip
	lsl	r5, r1, #0x10
	asr	r5, r5, #0x10
	mov	r0, sp
	add	r1, r2, #0
	add	r2, r5, #0
	mov	r3, sl
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r3, r9
	strh	r0, [r3]
	add	r4, r4, #0x20
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	mov	r0, sp
	add	r1, r4, #0
	add	r2, r5, #0
	mov	r3, sl
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r4, r8
	strh	r0, [r4]
	ldr	r2, .L91+0x8
	mov	r5, r9
	mov	r6, #0x0
	ldrsh	r1, [r5, r6]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	mov	r3, #0x4
	orr	r1, r1, r3
	strb	r1, [r0]
	mov	r7, #0x0
	ldrsh	r1, [r4, r7]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	orr	r1, r1, r3
	strb	r1, [r0]
	mov	r0, #0x0
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	mov	r1, #0x1
	bl	StartSpriteAnim
	add	sp, sp, #0x18
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L92:
	.align	2, 0
.L91:
	.word	.LC24
	.word	-0x200000
	.word	gSprites
.Lfe10:
	.size	 CreateStartSprite,.Lfe10-CreateStartSprite
.text
	.align	2, 0 @ Don't pad with nop

