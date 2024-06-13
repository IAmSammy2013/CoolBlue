@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sBikeTransitions,object
sBikeTransitions:
	.word	BikeTransition_FaceDirection
	.word	BikeTransition_TurnDirection
	.word	BikeTransition_MoveDirection
	.word	BikeTransition_Downhill
	.word	BikeTransition_Uphill
	.size	 sBikeTransitions,20
	.align	2, 0
	.type	 sBikeInputHandlers,object
sBikeInputHandlers:
	.word	BikeInputHandler_Normal
	.word	BikeInputHandler_Turning
	.word	BikeInputHandler_Slope
	.size	 sBikeInputHandlers,12
.text
	.align	2, 0
	.globl	MovePlayerOnBike
	.type	 MovePlayerOnBike,function
	.thumb_func
MovePlayerOnBike:
	push	{r4, lr}
	add	sp, sp, #-0x4
	mov	r3, sp
	strb	r0, [r3]
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	ldr	r4, .L3
	mov	r0, sp
	bl	GetBikeTransitionId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x16
	add	r0, r0, r4
	mov	r1, sp
	ldrb	r1, [r1]
	ldr	r2, [r0]
	add	r0, r1, #0
	bl	_call_via_r2
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	sBikeTransitions
.Lfe1:
	.size	 MovePlayerOnBike,.Lfe1-MovePlayerOnBike
	.align	2, 0
	.type	 GetBikeTransitionId,function
	.thumb_func
GetBikeTransitionId:
	push	{r4, lr}
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	ldr	r4, .L6
	ldr	r3, .L6+0x4
	ldrb	r3, [r3, #0x8]
	lsl	r3, r3, #0x2
	add	r3, r3, r4
	ldr	r3, [r3]
	bl	_call_via_r3
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r4}
	pop	{r1}
	bx	r1
.L7:
	.align	2, 0
.L6:
	.word	sBikeInputHandlers
	.word	gPlayerAvatar
.Lfe2:
	.size	 GetBikeTransitionId,.Lfe2-GetBikeTransitionId
	.align	2, 0
	.type	 BikeInputHandler_Normal,function
	.thumb_func
BikeInputHandler_Normal:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r6, r0, #0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	sl, r1
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r9, r2
	ldr	r5, .L25
	ldrb	r0, [r5, #0x5]
	lsl	r4, r0, #0x3
	add	r4, r4, r0
	lsl	r4, r4, #0x2
	ldr	r0, .L25+0x4
	add	r4, r4, r0
	bl	GetPlayerMovementDirection
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	mov	r0, #0x0
	mov	r8, r0
	mov	r0, r8
	strb	r0, [r5, #0xa]
	ldrb	r0, [r4, #0x1e]
	bl	MetatileBehavior_IsCyclingRoadPullDownTile
	cmp	r0, #0x1
	bne	.L9	@cond_branch
	ldr	r0, .L25+0x8
	ldrh	r1, [r0, #0x2c]
	mov	r2, #0x2
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L10	@cond_branch
	strb	r2, [r5, #0x8]
	strb	r2, [r5, #0x2]
	ldrb	r0, [r6]
	cmp	r0, #0x1
	bhi	.L21	@cond_branch
	mov	r0, #0x3
	b	.L19
.L26:
	.align	2, 0
.L25:
	.word	gPlayerAvatar
	.word	gObjectEvents
	.word	gMain
.L10:
	ldrb	r0, [r6]
	cmp	r0, #0
	beq	.L20	@cond_branch
	strb	r2, [r5, #0x8]
	strb	r2, [r5, #0x2]
.L21:
	mov	r0, #0x4
	b	.L19
.L9:
	ldrb	r1, [r6]
	add	r0, r1, #0
	cmp	r0, #0
	bne	.L15	@cond_branch
.L20:
	strb	r7, [r6]
	ldr	r1, .L27
	mov	r0, #0x0
	b	.L23
.L28:
	.align	2, 0
.L27:
	.word	gPlayerAvatar
.L15:
	cmp	r0, r7
	beq	.L17	@cond_branch
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x2
	beq	.L17	@cond_branch
	mov	r0, #0x1
	strb	r0, [r5, #0x8]
	strb	r1, [r5, #0x9]
	mov	r0, r8
	strb	r0, [r5, #0x2]
	add	r0, r6, #0
	mov	r1, sl
	mov	r2, r9
	bl	GetBikeTransitionId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.L24
.L17:
	ldr	r1, .L29
	mov	r0, #0x2
.L23:
	strb	r0, [r1, #0x2]
.L24:
.L19:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L30:
	.align	2, 0
.L29:
	.word	gPlayerAvatar
.Lfe3:
	.size	 BikeInputHandler_Normal,.Lfe3-BikeInputHandler_Normal
	.align	2, 0
	.type	 BikeInputHandler_Turning,function
	.thumb_func
BikeInputHandler_Turning:
	push	{lr}
	ldr	r2, .L32
	ldrb	r1, [r2, #0x9]
	strb	r1, [r0]
	mov	r1, #0x0
	mov	r0, #0x1
	strb	r0, [r2, #0x2]
	strb	r1, [r2, #0x8]
	bl	Bike_SetBikeStill
	mov	r0, #0x1
	pop	{r1}
	bx	r1
.L33:
	.align	2, 0
.L32:
	.word	gPlayerAvatar
.Lfe4:
	.size	 BikeInputHandler_Turning,.Lfe4-BikeInputHandler_Turning
	.align	2, 0
	.type	 BikeInputHandler_Slope,function
	.thumb_func
BikeInputHandler_Slope:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r6, r0, #0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r9, r1
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r8, r2
	bl	GetPlayerMovementDirection
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	add	r7, r5, #0
	ldr	r4, .L43
	ldrb	r1, [r4, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L43+0x4
	add	r0, r0, r1
	ldrb	r0, [r0, #0x1e]
	bl	MetatileBehavior_IsCyclingRoadPullDownTile
	add	r2, r0, #0
	cmp	r2, #0x1
	bne	.L35	@cond_branch
	ldrb	r1, [r6]
	cmp	r1, r5
	beq	.L36	@cond_branch
	mov	r0, #0x0
	strb	r2, [r4, #0x8]
	strb	r1, [r4, #0x9]
	strb	r0, [r4, #0x2]
	add	r0, r6, #0
	mov	r1, r9
	mov	r2, r8
	bl	GetBikeTransitionId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.L42
.L44:
	.align	2, 0
.L43:
	.word	gPlayerAvatar
	.word	gObjectEvents
.L36:
	mov	r0, #0x2
	strb	r0, [r4, #0x2]
	strb	r0, [r4, #0x8]
	cmp	r5, #0x1
	bhi	.L38	@cond_branch
	mov	r0, #0x3
	b	.L42
.L38:
	mov	r0, #0x4
	b	.L42
.L35:
	mov	r0, #0x0
	strb	r0, [r4, #0x8]
	ldrb	r0, [r6]
	cmp	r0, #0
	beq	.L40	@cond_branch
	mov	r0, #0x2
	strb	r0, [r4, #0x2]
	b	.L42
.L40:
	strb	r7, [r6]
	strb	r0, [r4, #0x2]
	mov	r0, #0x0
.L42:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe5:
	.size	 BikeInputHandler_Slope,.Lfe5-BikeInputHandler_Slope
	.align	2, 0
	.type	 BikeTransition_FaceDirection,function
	.thumb_func
BikeTransition_FaceDirection:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	PlayerFaceDirection
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 BikeTransition_FaceDirection,.Lfe6-BikeTransition_FaceDirection
	.align	2, 0
	.type	 BikeTransition_TurnDirection,function
	.thumb_func
BikeTransition_TurnDirection:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r0, .L48
	ldrb	r1, [r0, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L48+0x4
	add	r5, r0, r1
	ldrb	r1, [r5, #0x1e]
	add	r0, r4, #0
	bl	CanBikeFaceDirectionOnRail
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L47	@cond_branch
	ldrb	r0, [r5, #0x18]
	lsr	r4, r0, #0x4
.L47:
	add	r0, r4, #0
	bl	PlayerFaceDirection
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L49:
	.align	2, 0
.L48:
	.word	gPlayerAvatar
	.word	gObjectEvents
.Lfe7:
	.size	 BikeTransition_TurnDirection,.Lfe7-BikeTransition_TurnDirection
	.align	2, 0
	.type	 BikeTransition_MoveDirection,function
	.thumb_func
BikeTransition_MoveDirection:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r6, r4, #0
	ldr	r0, .L63
	ldrb	r1, [r0, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L63+0x4
	add	r5, r0, r1
	ldrb	r1, [r5, #0x1e]
	add	r0, r4, #0
	bl	CanBikeFaceDirectionOnRail
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L51	@cond_branch
	ldrb	r0, [r5, #0x18]
	lsr	r0, r0, #0x4
	bl	BikeTransition_FaceDirection
	b	.L52
.L64:
	.align	2, 0
.L63:
	.word	gPlayerAvatar
	.word	gObjectEvents
.L51:
	add	r0, r4, #0
	bl	GetBikeCollision
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	mov	r2, #0xff
	lsl	r2, r2, #0x18
	add	r0, r0, r2
	lsr	r0, r0, #0x18
	cmp	r0, #0xa
	bhi	.L53	@cond_branch
	cmp	r1, #0x6
	bne	.L54	@cond_branch
	add	r0, r4, #0
	bl	PlayerJumpLedge
	b	.L52
.L54:
	sub	r0, r1, #0x5
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x3
	bls	.L52	@cond_branch
	add	r0, r4, #0
	bl	PlayerOnBikeCollide
	b	.L52
.L53:
	cmp	r1, #0xe
	beq	.L62	@cond_branch
	add	r0, r4, #0
	bl	PlayerIsMovingOnRockStairs
	cmp	r0, #0
	beq	.L60	@cond_branch
.L62:
	add	r0, r4, #0
	bl	PlayerWalkFast
	b	.L52
.L60:
	add	r0, r6, #0
	bl	PlayerRideWaterCurrent
.L52:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 BikeTransition_MoveDirection,.Lfe8-BikeTransition_MoveDirection
	.align	2, 0
	.type	 BikeTransition_Downhill,function
	.thumb_func
BikeTransition_Downhill:
	push	{lr}
	mov	r0, #0x1
	bl	GetBikeCollision
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0
	bne	.L66	@cond_branch
	mov	r0, #0x1
	bl	PlayerWalkFaster
	b	.L67
.L66:
	cmp	r0, #0x6
	bne	.L67	@cond_branch
	mov	r0, #0x1
	bl	PlayerJumpLedge
.L67:
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 BikeTransition_Downhill,.Lfe9-BikeTransition_Downhill
	.align	2, 0
	.type	 BikeTransition_Uphill,function
	.thumb_func
BikeTransition_Uphill:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r0, r4, #0
	bl	GetBikeCollision
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L70	@cond_branch
	add	r0, r4, #0
	bl	PlayerWalkNormal
.L70:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 BikeTransition_Uphill,.Lfe10-BikeTransition_Uphill
	.align	2, 0
	.type	 GetBikeCollision,function
	.thumb_func
GetBikeCollision:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x8
	add	r6, r0, #0
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	ldr	r0, .L72
	ldrb	r0, [r0, #0x5]
	lsl	r4, r0, #0x3
	add	r4, r4, r0
	lsl	r4, r4, #0x2
	ldr	r0, .L72+0x4
	add	r4, r4, r0
	ldrh	r1, [r4, #0x10]
	add	r0, sp, #0x4
	strh	r1, [r0]
	ldrh	r0, [r4, #0x12]
	mov	r5, sp
	add	r5, r5, #0x6
	strh	r0, [r5]
	add	r0, r6, #0
	add	r1, sp, #0x4
	add	r2, r5, #0
	bl	MoveCoords
	add	r0, sp, #0x4
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r5, r2]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, sp, #0x4
	mov	r3, #0x0
	ldrsh	r1, [r1, r3]
	mov	r3, #0x0
	ldrsh	r2, [r5, r3]
	str	r0, [sp]
	add	r0, r4, #0
	add	r3, r6, #0
	bl	GetBikeCollisionAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	sp, sp, #0x8
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L73:
	.align	2, 0
.L72:
	.word	gPlayerAvatar
	.word	gObjectEvents
.Lfe11:
	.size	 GetBikeCollision,.Lfe11-GetBikeCollision
	.align	2, 0
	.type	 GetBikeCollisionAt,function
	.thumb_func
GetBikeCollisionAt:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x4
	ldr	r4, [sp, #0x14]
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r4, r4, #0x18
	lsr	r5, r4, #0x18
	add	r6, r5, #0
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	lsl	r2, r2, #0x10
	asr	r2, r2, #0x10
	str	r5, [sp]
	bl	CheckForObjectEventCollision
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x4
	bhi	.L75	@cond_branch
	add	r0, r5, #0
	bl	MetatileBehavior_IsCrackedIce
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L76	@cond_branch
	mov	r0, #0xe
	b	.L78
.L76:
	cmp	r4, #0
	bne	.L75	@cond_branch
	add	r0, r6, #0
	bl	MetatileBehaviorForbidsBiking
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L75	@cond_branch
	mov	r4, #0x2
.L75:
	add	r0, r4, #0
.L78:
	add	sp, sp, #0x4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe12:
	.size	 GetBikeCollisionAt,.Lfe12-GetBikeCollisionAt
	.align	2, 0
	.globl	RS_IsRunningDisallowed
	.type	 RS_IsRunningDisallowed,function
	.thumb_func
RS_IsRunningDisallowed:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehaviorForbidsBiking
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L84	@cond_branch
	ldr	r0, .L85
	ldrb	r0, [r0, #0x17]
	cmp	r0, #0x8
	bne	.L81	@cond_branch
.L84:
	mov	r0, #0x1
	b	.L83
.L86:
	.align	2, 0
.L85:
	.word	gMapHeader
.L81:
	mov	r0, #0x0
.L83:
	pop	{r1}
	bx	r1
.Lfe13:
	.size	 RS_IsRunningDisallowed,.Lfe13-RS_IsRunningDisallowed
	.align	2, 0
	.globl	IsRunningDisallowed
	.type	 IsRunningDisallowed,function
	.thumb_func
IsRunningDisallowed:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L93
	ldrb	r1, [r0, #0x19]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L92	@cond_branch
	add	r0, r2, #0
	bl	MetatileBehaviorForbidsBiking
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L89	@cond_branch
.L92:
	mov	r0, #0x1
	b	.L91
.L94:
	.align	2, 0
.L93:
	.word	gMapHeader
.L89:
	mov	r0, #0x0
.L91:
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 IsRunningDisallowed,.Lfe14-IsRunningDisallowed
	.align	2, 0
	.type	 MetatileBehaviorForbidsBiking,function
	.thumb_func
MetatileBehaviorForbidsBiking:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r0, r4, #0
	bl	MetatileBehavior_IsRunningDisallowed
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L100	@cond_branch
	add	r0, r4, #0
	bl	MetatileBehavior_IsFortreeBridge
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L98	@cond_branch
	bl	PlayerGetElevation
	mov	r1, #0x1
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L98	@cond_branch
.L100:
	mov	r0, #0x1
	b	.L99
.L98:
	mov	r0, #0x0
.L99:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 MetatileBehaviorForbidsBiking,.Lfe15-MetatileBehaviorForbidsBiking
	.align	2, 0
	.type	 CanBikeFaceDirectionOnRail,function
	.thumb_func
CanBikeFaceDirectionOnRail:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	add	r5, r4, #0
	mov	r1, #0xfd
	lsl	r1, r1, #0x18
	add	r0, r0, r1
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bhi	.L102	@cond_branch
	add	r0, r4, #0
	bl	MetatileBehavior_IsIsolatedVerticalRail
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L107	@cond_branch
	add	r0, r4, #0
	bl	MetatileBehavior_IsVerticalRail
	b	.L109
.L102:
	add	r0, r5, #0
	bl	MetatileBehavior_IsIsolatedHorizontalRail
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L107	@cond_branch
	add	r0, r5, #0
	bl	MetatileBehavior_IsHorizontalRail
.L109:
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L105	@cond_branch
.L107:
	mov	r0, #0x0
	b	.L108
.L105:
	mov	r0, #0x1
.L108:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe16:
	.size	 CanBikeFaceDirectionOnRail,.Lfe16-CanBikeFaceDirectionOnRail
	.align	2, 0
	.globl	IsBikingDisallowedByPlayer
	.type	 IsBikingDisallowedByPlayer,function
	.thumb_func
IsBikingDisallowedByPlayer:
	push	{r4, lr}
	add	sp, sp, #-0x4
	ldr	r0, .L114
	ldrb	r1, [r0]
	mov	r0, #0x18
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L111	@cond_branch
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	PlayerGetDestCoords
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehaviorForbidsBiking
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L111	@cond_branch
	mov	r0, #0x0
	b	.L113
.L115:
	.align	2, 0
.L114:
	.word	gPlayerAvatar
.L111:
	mov	r0, #0x1
.L113:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe17:
	.size	 IsBikingDisallowedByPlayer,.Lfe17-IsBikingDisallowedByPlayer
	.align	2, 0
	.globl	IsPlayerNotUsingAcroBikeOnBumpySlope
	.type	 IsPlayerNotUsingAcroBikeOnBumpySlope,function
	.thumb_func
IsPlayerNotUsingAcroBikeOnBumpySlope:
	push	{lr}
	mov	r0, #0x4
	bl	TestPlayerAvatarFlags
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L117	@cond_branch
	ldr	r2, .L120
	ldr	r0, .L120+0x4
	ldrb	r1, [r0, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	ldrb	r0, [r0, #0x1e]
	bl	MetatileBehavior_IsBumpySlope
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L117	@cond_branch
	mov	r0, #0x0
	b	.L119
.L121:
	.align	2, 0
.L120:
	.word	gObjectEvents
	.word	gPlayerAvatar
.L117:
	mov	r0, #0x1
.L119:
	pop	{r1}
	bx	r1
.Lfe18:
	.size	 IsPlayerNotUsingAcroBikeOnBumpySlope,.Lfe18-IsPlayerNotUsingAcroBikeOnBumpySlope
	.align	2, 0
	.globl	GetOnOffBike
	.type	 GetOnOffBike,function
	.thumb_func
GetOnOffBike:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r1, .L126
	mov	r0, #0x0
	strb	r0, [r1]
	ldr	r0, .L126+0x4
	ldrb	r1, [r0]
	mov	r0, #0x6
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L123	@cond_branch
	mov	r0, #0x1
	bl	SetPlayerAvatarTransitionFlags
	bl	Overworld_ClearSavedMusic
	bl	Overworld_PlaySpecialMapMusic
	b	.L124
.L127:
	.align	2, 0
.L126:
	.word	gBikeCameraAheadPanback
	.word	gPlayerAvatar
.L123:
	add	r0, r2, #0
	bl	SetPlayerAvatarTransitionFlags
	mov	r4, #0x8d
	lsl	r4, r4, #0x1
	add	r0, r4, #0
	bl	Overworld_MusicCanOverrideMapMusic
	cmp	r0, #0
	beq	.L124	@cond_branch
	add	r0, r4, #0
	bl	Overworld_SetSavedMusic
	add	r0, r4, #0
	bl	Overworld_ChangeMusicTo
.L124:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe19:
	.size	 GetOnOffBike,.Lfe19-GetOnOffBike
	.align	2, 0
	.globl	BikeClearState
	.type	 BikeClearState,function
	.thumb_func
BikeClearState:
	push	{lr}
	ldr	r2, .L134
	mov	r3, #0x0
	strb	r3, [r2, #0x8]
	strb	r3, [r2, #0x9]
	strb	r3, [r2, #0xa]
	strb	r3, [r2, #0xb]
	str	r0, [r2, #0xc]
	str	r1, [r2, #0x10]
	strh	r3, [r2, #0x1c]
	mov	r1, #0x0
	add	r2, r2, #0x14
.L132:
	add	r0, r1, r2
	strb	r3, [r0]
	add	r0, r1, #0x1
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x7
	bls	.L132	@cond_branch
	pop	{r0}
	bx	r0
.L135:
	.align	2, 0
.L134:
	.word	gPlayerAvatar
.Lfe20:
	.size	 BikeClearState,.Lfe20-BikeClearState
	.align	2, 0
	.globl	Bike_UpdateBikeCounterSpeed
	.type	 Bike_UpdateBikeCounterSpeed,function
	.thumb_func
Bike_UpdateBikeCounterSpeed:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L137
	strb	r0, [r2, #0xa]
	lsr	r1, r0, #0x1
	add	r0, r0, r1
	strb	r0, [r2, #0xb]
	bx	lr
.L138:
	.align	2, 0
.L137:
	.word	gPlayerAvatar
.Lfe21:
	.size	 Bike_UpdateBikeCounterSpeed,.Lfe21-Bike_UpdateBikeCounterSpeed
	.align	2, 0
	.type	 Bike_SetBikeStill,function
	.thumb_func
Bike_SetBikeStill:
	ldr	r1, .L140
	mov	r0, #0x0
	strb	r0, [r1, #0xa]
	strb	r0, [r1, #0xb]
	bx	lr
.L141:
	.align	2, 0
.L140:
	.word	gPlayerAvatar
.Lfe22:
	.size	 Bike_SetBikeStill,.Lfe22-Bike_SetBikeStill
	.section .rodata
	.align	1, 0
.LC57:
	.short	0x1
	.short	0x2
	.short	0x4
.text
	.align	2, 0
	.globl	GetPlayerSpeed
	.type	 GetPlayerSpeed,function
	.thumb_func
GetPlayerSpeed:
	push	{lr}
	add	sp, sp, #-0x8
	ldr	r1, .L150
	mov	r0, sp
	mov	r2, #0x6
	bl	memcpy
	ldr	r2, .L150+0x4
	ldrb	r1, [r2]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L143	@cond_branch
	ldrb	r0, [r2, #0xa]
	lsl	r0, r0, #0x1
	add	r0, r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	b	.L149
.L151:
	.align	2, 0
.L150:
	.word	.LC57
	.word	gPlayerAvatar
.L143:
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L145	@cond_branch
	mov	r0, #0x3
	b	.L149
.L145:
	mov	r0, #0x88
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L147	@cond_branch
	mov	r0, #0x1
	b	.L149
.L147:
	mov	r0, #0x2
.L149:
	add	sp, sp, #0x8
	pop	{r1}
	bx	r1
.Lfe23:
	.size	 GetPlayerSpeed,.Lfe23-GetPlayerSpeed
	.align	2, 0
	.globl	Bike_HandleBumpySlopeJump
	.type	 Bike_HandleBumpySlopeJump,function
	.thumb_func
Bike_HandleBumpySlopeJump:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	ldr	r5, .L155
	ldrb	r1, [r5]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L153	@cond_branch
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	PlayerGetDestCoords
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	bl	MapGridGetMetatileBehaviorAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	MetatileBehavior_IsBumpySlope
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L153	@cond_branch
	mov	r0, #0x2
	strb	r0, [r5, #0x8]
	bl	GetPlayerMovementDirection
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	PlayerUseAcroBikeOnBumpySlope
.L153:
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L156:
	.align	2, 0
.L155:
	.word	gPlayerAvatar
.Lfe24:
	.size	 Bike_HandleBumpySlopeJump,.Lfe24-Bike_HandleBumpySlopeJump
	.section .rodata
	.type	 sAcroBikeJumpTimerList,object
sAcroBikeJumpTimerList:
	.byte	0x4
	.byte	0x0
	.size	 sAcroBikeJumpTimerList,2
	.align	2, 0
	.type	 sAcroBikeTricksList,object
sAcroBikeTricksList:
	.word	0x1
	.word	0x2
	.word	0xf
	.word	0xf
	.word	sAcroBikeJumpTimerList
	.word	sAcroBikeJumpTimerList
	.word	0x1
	.word	0x2
	.word	0x2
	.word	0xf
	.word	0xf
	.word	sAcroBikeJumpTimerList
	.word	sAcroBikeJumpTimerList
	.word	0x2
	.word	0x3
	.word	0x2
	.word	0xf
	.word	0xf
	.word	sAcroBikeJumpTimerList
	.word	sAcroBikeJumpTimerList
	.word	0x3
	.word	0x4
	.word	0x2
	.word	0xf
	.word	0xf
	.word	sAcroBikeJumpTimerList
	.word	sAcroBikeJumpTimerList
	.word	0x4
	.size	 sAcroBikeTricksList,112
.text
	.align	2, 0 @ Don't pad with nop

