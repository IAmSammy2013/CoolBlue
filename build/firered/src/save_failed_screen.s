@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	1, 0
	.type	 sSaveType,object
	.size	 sSaveType,2
sSaveType:
	.short	0x0
	.align	1, 0
	.type	 sUnused,object
	.size	 sUnused,2
sUnused:
	.short	0x0
	.type	 sSaveFailedScreenState,object
	.size	 sSaveFailedScreenState,1
sSaveFailedScreenState:
	.byte	0x0
	.section .rodata
	.align	1, 0
	.type	 sSaveFailedScreenPals,object
sSaveFailedScreenPals:
	.short	0x71c2
	.short	0x7fff
	.short	0x318c
	.short	0x675a
	.short	0x43c
	.short	0x3aff
	.short	0x664
	.short	0x4bd2
	.short	0x6546
	.short	0x7b14
	.short	0x0
	.short	0x7729
	.short	0x7686
	.short	0x4160
	.short	0x6183
	.short	0x71c2
	.size	 sSaveFailedScreenPals,32
.text
	.align	2, 0
	.globl	SetNotInSaveFailedScreen
	.type	 SetNotInSaveFailedScreen,function
	.thumb_func
SetNotInSaveFailedScreen:
	ldr	r1, .L5
	mov	r0, #0x0
	str	r0, [r1]
	bx	lr
.L6:
	.align	2, 0
.L5:
	.word	sIsInSaveFailedScreen
.Lfe1:
	.size	 SetNotInSaveFailedScreen,.Lfe1-SetNotInSaveFailedScreen
	.align	2, 0
	.globl	DoSaveFailedScreen
	.type	 DoSaveFailedScreen,function
	.thumb_func
DoSaveFailedScreen:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L8
	strh	r0, [r1]
	ldr	r1, .L8+0x4
	mov	r0, #0x1
	str	r0, [r1]
	bx	lr
.L9:
	.align	2, 0
.L8:
	.word	sSaveType
	.word	sIsInSaveFailedScreen
.Lfe2:
	.size	 DoSaveFailedScreen,.Lfe2-DoSaveFailedScreen
	.align	2, 0
	.globl	RunSaveFailedScreen
	.type	 RunSaveFailedScreen,function
	.thumb_func
RunSaveFailedScreen:
	push	{lr}
	ldr	r0, .L28
	ldrb	r1, [r0]
	add	r2, r0, #0
	cmp	r1, #0x8
	bls	.LCB52
	b	.L11	@long jump
.LCB52:
	lsl	r0, r1, #0x2
	ldr	r1, .L28+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L29:
	.align	2, 0
.L28:
	.word	sSaveFailedScreenState
	.word	.L25
	.align	2, 0
	.align	2, 0
.L25:
	.word	.L12
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L21
	.word	.L23
	.word	.L24
.L12:
	ldr	r0, .L30
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.L13	@cond_branch
	mov	r0, #0x0
	b	.L27
.L31:
	.align	2, 0
.L30:
	.word	sIsInSaveFailedScreen
.L13:
	ldr	r0, .L32
	ldr	r1, .L32+0x4
	mov	r2, #0x80
	bl	m4aMPlayVolumeControl
	bl	SaveCallbacks
	ldr	r1, .L32+0x8
	mov	r0, #0x1
	strb	r0, [r1]
	b	.L11
.L33:
	.align	2, 0
.L32:
	.word	gMPlayInfo_BGM
	.word	0xffff
	.word	sSaveFailedScreenState
.L14:
	bl	SaveMapTiles
	bl	SaveMapGPURegs
	bl	SaveMapTextColors
	bl	BlankPalettes
	mov	r0, #0x0
	mov	r1, #0x0
	bl	SetGpuReg
	ldr	r1, .L34
	mov	r0, #0x2
	strb	r0, [r1]
	b	.L11
.L35:
	.align	2, 0
.L34:
	.word	sSaveFailedScreenState
.L15:
	ldr	r1, .L36
	mov	r2, #0x80
	lsl	r2, r2, #0x7
	mov	r0, #0x0
	mov	r3, #0x0
	bl	RequestDma3Fill
	ldr	r0, .L36+0x4
	mov	r1, #0xa0
	lsl	r1, r1, #0x13
	mov	r2, #0x20
	mov	r3, #0x0
	bl	RequestDma3Copy
	ldr	r1, .L36+0x8
	mov	r0, #0x3
	strb	r0, [r1]
	b	.L11
.L37:
	.align	2, 0
.L36:
	.word	0x600c000
	.word	sSaveFailedScreenPals
	.word	sSaveFailedScreenState
.L16:
	bl	ClearMapBuffer
	ldr	r0, .L38
	bl	PrintTextOnSaveFailedScreen
	bl	UpdateMapBufferWithText
	ldr	r1, .L38+0x4
	mov	r0, #0x4
	strb	r0, [r1]
	b	.L11
.L39:
	.align	2, 0
.L38:
	.word	gText_SaveFailedCheckingBackup
	.word	sSaveFailedScreenState
.L17:
	mov	r0, #0x50
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x10
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x12
	mov	r1, #0x0
	bl	SetGpuReg
	ldr	r1, .L40
	mov	r0, #0x8
	bl	SetGpuReg
	mov	r1, #0x80
	lsl	r1, r1, #0x1
	mov	r0, #0x0
	bl	SetGpuReg
	ldr	r1, .L40+0x4
	mov	r0, #0x5
	strb	r0, [r1]
	b	.L11
.L41:
	.align	2, 0
.L40:
	.word	0x1f0c
	.word	sSaveFailedScreenState
.L18:
	bl	TryWipeDamagedSectors
	add	r1, r0, #0
	cmp	r1, #0x1
	bne	.L19	@cond_branch
	ldr	r0, .L42
	strh	r1, [r0]
	ldr	r0, .L42+0x4
	bl	PrintTextOnSaveFailedScreen
	b	.L20
.L43:
	.align	2, 0
.L42:
	.word	gSaveAttemptStatus
	.word	gText_SaveCompletePressA
.L19:
	ldr	r0, .L44
	mov	r1, #0xff
	strh	r1, [r0]
	ldr	r0, .L44+0x4
	bl	PrintTextOnSaveFailedScreen
.L20:
	ldr	r1, .L44+0x8
	mov	r0, #0x6
	strb	r0, [r1]
	b	.L11
.L45:
	.align	2, 0
.L44:
	.word	gSaveAttemptStatus
	.word	gText_BackupMemoryDamaged
	.word	sSaveFailedScreenState
.L21:
	ldr	r0, .L46
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L11	@cond_branch
	mov	r0, #0x7
	strb	r0, [r2]
	b	.L11
.L47:
	.align	2, 0
.L46:
	.word	gMain
.L23:
	mov	r0, #0x0
	mov	r1, #0x0
	bl	SetGpuReg
	bl	RestoreMapTiles
	bl	BlankPalettes
	ldr	r1, .L48
	mov	r0, #0x8
	strb	r0, [r1]
	b	.L11
.L49:
	.align	2, 0
.L48:
	.word	sSaveFailedScreenState
.L24:
	ldr	r0, .L50
	ldr	r1, .L50+0x4
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	bl	m4aMPlayVolumeControl
	bl	RestoreMapTextColors
	bl	RestoreGPURegs
	bl	RestoreCallbacks
	ldr	r0, .L50+0x8
	mov	r1, #0x0
	str	r1, [r0]
	ldr	r0, .L50+0xc
	strb	r1, [r0]
.L11:
	mov	r0, #0x1
.L27:
	pop	{r1}
	bx	r1
.L51:
	.align	2, 0
.L50:
	.word	gMPlayInfo_BGM
	.word	0xffff
	.word	sIsInSaveFailedScreen
	.word	sSaveFailedScreenState
.Lfe3:
	.size	 RunSaveFailedScreen,.Lfe3-RunSaveFailedScreen
	.align	2, 0
	.type	 BlankPalettes,function
	.thumb_func
BlankPalettes:
	push	{r4, r5, lr}
	mov	r1, #0x0
	ldr	r5, .L58
	mov	r4, #0xa0
	lsl	r4, r4, #0x13
	mov	r2, #0x0
	ldr	r3, .L58+0x4
.L56:
	add	r0, r1, r4
	strh	r2, [r0]
	add	r0, r1, r3
	strh	r2, [r0]
	add	r1, r1, #0x2
	cmp	r1, r5
	ble	.L56	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L59:
	.align	2, 0
.L58:
	.word	0x1ff
	.word	0x5000200
.Lfe4:
	.size	 BlankPalettes,.Lfe4-BlankPalettes
	.align	2, 0
	.type	 RequestDmaCopyFromScreenBuffer,function
	.thumb_func
RequestDmaCopyFromScreenBuffer:
	push	{lr}
	ldr	r0, .L61
	ldr	r1, .L61+0x4
	mov	r2, #0xa0
	lsl	r2, r2, #0x3
	mov	r3, #0x0
	bl	RequestDma3Copy
	pop	{r0}
	bx	r0
.L62:
	.align	2, 0
.L61:
	.word	gDecompressionBuffer+0x3800
	.word	0x600f800
.Lfe5:
	.size	 RequestDmaCopyFromScreenBuffer,.Lfe5-RequestDmaCopyFromScreenBuffer
	.align	2, 0
	.type	 RequestDmaCopyFromCharBuffer,function
	.thumb_func
RequestDmaCopyFromCharBuffer:
	push	{lr}
	ldr	r0, .L64
	ldr	r1, .L64+0x4
	mov	r2, #0x8c
	lsl	r2, r2, #0x6
	mov	r3, #0x0
	bl	RequestDma3Copy
	pop	{r0}
	bx	r0
.L65:
	.align	2, 0
.L64:
	.word	gDecompressionBuffer+0x20
	.word	0x600c020
.Lfe6:
	.size	 RequestDmaCopyFromCharBuffer,.Lfe6-RequestDmaCopyFromCharBuffer
	.align	2, 0
	.type	 FillBgMapBufferRect,function
	.thumb_func
FillBgMapBufferRect:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r4, [sp, #0x20]
	ldr	r5, [sp, #0x24]
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r9, r1
	lsl	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	mov	r8, r3
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r5, r5, #0x10
	lsr	r7, r5, #0x10
	lsr	r0, r2, #0x18
	add	r2, r0, r4
	cmp	r0, r2
	bge	.L68	@cond_branch
	mov	ip, r2
	ldr	r1, .L77
	mov	sl, r1
.L70:
	mov	r4, r9
	mov	r2, r8
	add	r1, r4, r2
	add	r3, r0, #0x1
	cmp	r4, r1
	bge	.L69	@cond_branch
	lsl	r2, r0, #0x6
	mov	r5, sl
.L74:
	lsl	r0, r4, #0x1
	add	r0, r2, r0
	add	r0, r0, r5
	strh	r6, [r0]
	add	r0, r6, r7
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	add	r0, r4, #0x1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	cmp	r4, r1
	blt	.L74	@cond_branch
.L69:
	lsl	r0, r3, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, ip
	blt	.L70	@cond_branch
.L68:
	bl	RequestDmaCopyFromScreenBuffer
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L78:
	.align	2, 0
.L77:
	.word	gDecompressionBuffer+0x3800
.Lfe7:
	.size	 FillBgMapBufferRect,.Lfe7-FillBgMapBufferRect
	.align	2, 0
	.type	 UpdateMapBufferWithText,function
	.thumb_func
UpdateMapBufferWithText:
	push	{lr}
	add	sp, sp, #-0x8
	mov	r0, #0xa
	str	r0, [sp]
	mov	r0, #0x1
	str	r0, [sp, #0x4]
	mov	r1, #0x1
	mov	r2, #0x5
	mov	r3, #0x1c
	bl	FillBgMapBufferRect
	add	sp, sp, #0x8
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 UpdateMapBufferWithText,.Lfe8-UpdateMapBufferWithText
	.align	2, 0
	.type	 ClearMapBuffer,function
	.thumb_func
ClearMapBuffer:
	push	{lr}
	add	sp, sp, #-0x8
	mov	r0, #0x14
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	mov	r1, #0x0
	mov	r2, #0x0
	mov	r3, #0x1e
	bl	FillBgMapBufferRect
	add	sp, sp, #0x8
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 ClearMapBuffer,.Lfe9-ClearMapBuffer
	.align	2, 0
	.type	 PrintTextOnSaveFailedScreen,function
	.thumb_func
PrintTextOnSaveFailedScreen:
	push	{r4, r5, lr}
	add	sp, sp, #-0x10
	add	r5, r0, #0
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x3
	bl	GenerateFontHalfRowLookupTable
	add	r1, sp, #0xc
	ldr	r2, .L82
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r4, .L82+0x4
	ldr	r2, .L82+0x8
	add	r0, r1, #0
	add	r1, r4, #0
	bl	CpuSet
	mov	r0, #0x2
	str	r0, [sp]
	mov	r0, #0x1c
	str	r0, [sp, #0x4]
	mov	r0, #0xa
	str	r0, [sp, #0x8]
	mov	r0, #0x2
	add	r1, r4, #0
	add	r2, r5, #0
	mov	r3, #0x2
	bl	HelpSystemRenderText
	bl	RequestDmaCopyFromCharBuffer
	add	sp, sp, #0x10
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L83:
	.align	2, 0
.L82:
	.word	0x1111
	.word	gDecompressionBuffer+0x20
	.word	0x1001180
.Lfe10:
	.size	 PrintTextOnSaveFailedScreen,.Lfe10-PrintTextOnSaveFailedScreen
	.align	2, 0
	.type	 TryWipeDamagedSectors,function
	.thumb_func
TryWipeDamagedSectors:
	push	{r4, r5, lr}
	mov	r5, #0x0
	ldr	r0, .L96
	ldr	r1, [r0]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.L94	@cond_branch
.L88:
	ldr	r0, [r4]
	bl	WipeDamagedSectors
	cmp	r0, #0
	bne	.L95	@cond_branch
	ldr	r0, .L96+0x4
	ldrb	r0, [r0]
	bl	HandleSavingData
	add	r5, r5, #0x1
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L94	@cond_branch
	ldr	r4, .L96
	cmp	r5, #0x2
	ble	.L88	@cond_branch
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.L92	@cond_branch
.L94:
	mov	r0, #0x1
	b	.L93
.L97:
	.align	2, 0
.L96:
	.word	gDamagedSaveSectors
	.word	sSaveType
.L95:
.L92:
	mov	r0, #0x0
.L93:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe11:
	.size	 TryWipeDamagedSectors,.Lfe11-TryWipeDamagedSectors
	.align	2, 0
	.type	 VerifySectorWipe,function
	.thumb_func
VerifySectorWipe:
	push	{r4, lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	ldr	r4, .L106
	mov	r3, #0x80
	lsl	r3, r3, #0x5
	mov	r1, #0x0
	add	r2, r4, #0
	bl	ReadFlash
	mov	r1, #0x0
	ldr	r2, .L106+0x4
.L102:
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L101	@cond_branch
	mov	r0, #0x1
	b	.L105
.L107:
	.align	2, 0
.L106:
	.word	gSaveDataBuffer
	.word	0x3ff
.L101:
	add	r0, r1, #0x1
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	add	r4, r4, #0x4
	cmp	r1, r2
	bls	.L102	@cond_branch
	mov	r0, #0x0
.L105:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe12:
	.size	 VerifySectorWipe,.Lfe12-VerifySectorWipe
	.align	2, 0
	.type	 WipeSector,function
	.thumb_func
WipeSector:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r7, r0, #0
	mov	r0, #0x0
	lsl	r6, r7, #0x10
	ldr	r1, .L119
	mov	r9, r1
	ldr	r1, .L119+0x4
	mov	r8, r1
.L111:
	mov	r4, #0x0
	add	r5, r0, #0x1
.L115:
	mov	r0, r9
	ldr	r3, [r0]
	lsr	r0, r6, #0x10
	add	r1, r4, #0
	mov	r2, #0x0
	bl	_call_via_r3
	add	r0, r4, #0x1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	cmp	r4, r8
	bls	.L115	@cond_branch
	add	r0, r7, #0
	bl	VerifySectorWipe
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	lsl	r0, r5, #0x10
	lsr	r0, r0, #0x10
	cmp	r1, #0
	beq	.L110	@cond_branch
	cmp	r0, #0x81
	bls	.L111	@cond_branch
.L110:
	add	r0, r1, #0
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L120:
	.align	2, 0
.L119:
	.word	ProgramFlashByte
	.word	0xfff
.Lfe13:
	.size	 WipeSector,.Lfe13-WipeSector
	.align	2, 0
	.type	 WipeDamagedSectors,function
	.thumb_func
WipeDamagedSectors:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	mov	r6, #0x0
.L125:
	mov	r4, #0x1
	lsl	r4, r4, r6
	add	r0, r5, #0
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L124	@cond_branch
	add	r0, r6, #0
	bl	WipeSector
	cmp	r0, #0
	bne	.L124	@cond_branch
	bic	r5, r5, r4
.L124:
	add	r6, r6, #0x1
	cmp	r6, #0x1f
	ble	.L125	@cond_branch
	cmp	r5, #0
	beq	.L129	@cond_branch
	mov	r0, #0x1
	b	.L131
.L129:
	mov	r0, #0x0
.L131:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 WipeDamagedSectors,.Lfe14-WipeDamagedSectors
	.comm	sIsInSaveFailedScreen, 4	@ 4
.text
	.align	2, 0 @ Don't pad with nop

