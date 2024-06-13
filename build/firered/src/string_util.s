@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	gStringVar1
	.section ewram_data,"aw"
	.type	 gStringVar1,object
	.size	 gStringVar1,32
gStringVar1:
	.space	32
	.globl	gStringVar2
	.type	 gStringVar2,object
	.size	 gStringVar2,20
gStringVar2:
	.space	20
	.globl	gStringVar3
	.type	 gStringVar3,object
	.size	 gStringVar3,20
gStringVar3:
	.space	20
	.globl	gStringVar4
	.type	 gStringVar4,object
	.size	 gStringVar4,1000
gStringVar4:
	.space	1000
	.globl	gUnknownStringVar
	.type	 gUnknownStringVar,object
	.size	 gUnknownStringVar,16
gUnknownStringVar:
	.byte	0x0
	.space	15
	.section .rodata
	.type	 sDigits,object
sDigits:
	.byte	0xa1
	.byte	0xa2
	.byte	0xa3
	.byte	0xa4
	.byte	0xa5
	.byte	0xa6
	.byte	0xa7
	.byte	0xa8
	.byte	0xa9
	.byte	0xaa
	.byte	0xbb
	.byte	0xbc
	.byte	0xbd
	.byte	0xbe
	.byte	0xbf
	.byte	0xc0
	.size	 sDigits,16
	.align	2, 0
	.type	 sPowersOfTen,object
sPowersOfTen:
	.word	0x1
	.word	0xa
	.word	0x64
	.word	0x3e8
	.word	0x2710
	.word	0x186a0
	.word	0xf4240
	.word	0x989680
	.word	0x5f5e100
	.word	0x3b9aca00
	.size	 sPowersOfTen,40
.text
	.align	2, 0
	.globl	StringCopy_Nickname
	.type	 StringCopy_Nickname,function
	.thumb_func
StringCopy_Nickname:
	push	{r4, r5, lr}
	add	r4, r0, #0
	mov	r5, #0xa
	mov	r3, #0x0
.L8:
	add	r2, r4, r3
	add	r0, r1, r3
	ldrb	r0, [r0]
	strb	r0, [r2]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xff
	bne	.L7	@cond_branch
	add	r0, r2, #0
	b	.L11
.L7:
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, r5
	bcc	.L8	@cond_branch
	add	r0, r4, r3
	mov	r1, #0xff
	strb	r1, [r0]
.L11:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 StringCopy_Nickname,.Lfe1-StringCopy_Nickname
	.align	2, 0
	.globl	StringGet_Nickname
	.type	 StringGet_Nickname,function
	.thumb_func
StringGet_Nickname:
	push	{r4, lr}
	add	r3, r0, #0
	mov	r4, #0xa
	mov	r2, #0x0
.L16:
	add	r1, r3, r2
	ldrb	r0, [r1]
	cmp	r0, #0xff
	bne	.L15	@cond_branch
	add	r0, r1, #0
	b	.L19
.L15:
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, r4
	bcc	.L16	@cond_branch
	add	r0, r3, r2
	mov	r1, #0xff
	strb	r1, [r0]
.L19:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 StringGet_Nickname,.Lfe2-StringGet_Nickname
	.align	2, 0
	.globl	StringCopy_PlayerName
	.type	 StringCopy_PlayerName,function
	.thumb_func
StringCopy_PlayerName:
	push	{r4, r5, lr}
	add	r4, r0, #0
	mov	r5, #0x7
	mov	r3, #0x0
.L24:
	add	r2, r4, r3
	add	r0, r1, r3
	ldrb	r0, [r0]
	strb	r0, [r2]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xff
	bne	.L23	@cond_branch
	add	r0, r2, #0
	b	.L27
.L23:
	add	r3, r3, #0x1
	cmp	r3, r5
	blt	.L24	@cond_branch
	add	r0, r4, r3
	mov	r1, #0xff
	strb	r1, [r0]
.L27:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 StringCopy_PlayerName,.Lfe3-StringCopy_PlayerName
	.align	2, 0
	.globl	StringCopy
	.type	 StringCopy,function
	.thumb_func
StringCopy:
	push	{lr}
	add	r3, r0, #0
	b	.L33
.L31:
	strb	r2, [r3]
	add	r3, r3, #0x1
	add	r1, r1, #0x1
.L33:
	ldrb	r2, [r1]
	add	r0, r2, #0
	cmp	r0, #0xff
	bne	.L31	@cond_branch
	mov	r0, #0xff
	strb	r0, [r3]
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 StringCopy,.Lfe4-StringCopy
	.align	2, 0
	.globl	StringAppend
	.type	 StringAppend,function
	.thumb_func
StringAppend:
	push	{lr}
	add	r2, r0, #0
	b	.L39
.L37:
	add	r2, r2, #0x1
.L39:
	ldrb	r0, [r2]
	cmp	r0, #0xff
	bne	.L37	@cond_branch
	add	r0, r2, #0
	bl	StringCopy
	pop	{r1}
	bx	r1
.Lfe5:
	.size	 StringAppend,.Lfe5-StringAppend
	.align	2, 0
	.globl	StringCopyN
	.type	 StringCopyN,function
	.thumb_func
StringCopyN:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	add	r6, r1, #0
	lsl	r2, r2, #0x18
	lsr	r5, r2, #0x18
	mov	r3, #0x0
	add	r0, r5, #0
	cmp	r3, r0
	bcs	.L42	@cond_branch
	add	r2, r0, #0
.L44:
	add	r1, r4, r3
	add	r0, r6, r3
	ldrb	r0, [r0]
	strb	r0, [r1]
	add	r0, r3, #0x1
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
	cmp	r3, r2
	bcc	.L44	@cond_branch
.L42:
	add	r0, r4, r5
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 StringCopyN,.Lfe6-StringCopyN
	.align	2, 0
	.globl	StringAppendN
	.type	 StringAppendN,function
	.thumb_func
StringAppendN:
	push	{lr}
	add	r3, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	b	.L51
.L49:
	add	r3, r3, #0x1
.L51:
	ldrb	r0, [r3]
	cmp	r0, #0xff
	bne	.L49	@cond_branch
	add	r0, r3, #0
	bl	StringCopyN
	pop	{r1}
	bx	r1
.Lfe7:
	.size	 StringAppendN,.Lfe7-StringAppendN
	.align	2, 0
	.globl	StringLength
	.type	 StringLength,function
	.thumb_func
StringLength:
	push	{lr}
	add	r2, r0, #0
	mov	r1, #0x0
	ldrb	r0, [r2]
	cmp	r0, #0xff
	beq	.L54	@cond_branch
.L55:
	add	r0, r1, #0x1
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	add	r0, r2, r1
	ldrb	r0, [r0]
	cmp	r0, #0xff
	bne	.L55	@cond_branch
.L54:
	add	r0, r1, #0
	pop	{r1}
	bx	r1
.Lfe8:
	.size	 StringLength,.Lfe8-StringLength
	.align	2, 0
	.globl	StringCompare
	.type	 StringCompare,function
	.thumb_func
StringCompare:
	push	{lr}
	add	r2, r0, #0
	b	.L64
.L60:
	cmp	r0, #0xff
	bne	.L61	@cond_branch
	mov	r0, #0x0
	b	.L63
.L61:
	add	r2, r2, #0x1
	add	r1, r1, #0x1
.L64:
	ldrb	r0, [r2]
	ldrb	r3, [r1]
	cmp	r0, r3
	beq	.L60	@cond_branch
	ldrb	r0, [r2]
	ldrb	r1, [r1]
	sub	r0, r0, r1
.L63:
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 StringCompare,.Lfe9-StringCompare
	.align	2, 0
	.globl	StringCompareN
	.type	 StringCompareN,function
	.thumb_func
StringCompareN:
	push	{r4, lr}
	add	r3, r0, #0
	b	.L66
.L68:
	cmp	r0, #0xff
	beq	.L73	@cond_branch
	add	r3, r3, #0x1
	add	r1, r1, #0x1
	sub	r2, r2, #0x1
	cmp	r2, #0
	bne	.L66	@cond_branch
.L73:
	mov	r0, #0x0
	b	.L72
.L66:
	ldrb	r0, [r3]
	ldrb	r4, [r1]
	cmp	r0, r4
	beq	.L68	@cond_branch
	ldrb	r0, [r3]
	ldrb	r1, [r1]
	sub	r0, r0, r1
.L72:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 StringCompareN,.Lfe10-StringCompareN
	.align	2, 0
	.globl	ConvertIntToDecimalStringN
	.type	 ConvertIntToDecimalStringN,function
	.thumb_func
ConvertIntToDecimalStringN:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r4, r0, #0
	add	r6, r1, #0
	lsl	r3, r3, #0x18
	ldr	r0, .L93
	lsr	r3, r3, #0x16
	sub	r3, r3, #0x4
	add	r3, r3, r0
	ldr	r0, [r3]
	mov	r7, #0x0
	cmp	r2, #0x1
	bne	.L75	@cond_branch
	mov	r7, #0x2
.L75:
	cmp	r2, #0x2
	bne	.L76	@cond_branch
	mov	r7, #0x1
.L76:
	add	r5, r0, #0
	cmp	r5, #0
	ble	.L78	@cond_branch
	ldr	r0, .L93+0x4
	mov	r8, r0
.L80:
	add	r0, r6, #0
	add	r1, r5, #0
	bl	__divsi3
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	mov	r0, r5
	mul	r0, r0, r2
	sub	r1, r6, r0
	cmp	r7, #0x1
	bne	.L81	@cond_branch
	add	r3, r4, #0
	add	r4, r4, #0x1
	cmp	r2, #0x9
	bls	.L92	@cond_branch
	b	.L87
.L94:
	.align	2, 0
.L93:
	.word	sPowersOfTen
	.word	sDigits
.L81:
	cmp	r2, #0
	bne	.L86	@cond_branch
	cmp	r5, #0x1
	bne	.L85	@cond_branch
.L86:
	mov	r7, #0x1
	add	r3, r4, #0
	add	r4, r4, #0x1
	cmp	r2, #0x9
	bhi	.L87	@cond_branch
.L92:
	mov	r6, r8
	add	r0, r2, r6
	ldrb	r0, [r0]
	b	.L88
.L87:
	mov	r0, #0xac
.L88:
	strb	r0, [r3]
	b	.L84
.L85:
	cmp	r7, #0x2
	bne	.L84	@cond_branch
	strb	r2, [r4]
	add	r4, r4, #0x1
.L84:
	add	r6, r1, #0
	add	r0, r5, #0
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0, #0
	cmp	r5, #0
	bgt	.L80	@cond_branch
.L78:
	mov	r0, #0xff
	strb	r0, [r4]
	add	r0, r4, #0
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe11:
	.size	 ConvertIntToDecimalStringN,.Lfe11-ConvertIntToDecimalStringN
	.align	2, 0
	.globl	ConvertIntToHexStringN
	.type	 ConvertIntToHexStringN,function
	.thumb_func
ConvertIntToHexStringN:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x4
	add	r6, r0, #0
	add	r7, r1, #0
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	mov	r1, #0x1
	mov	r0, #0x1
	cmp	r1, r3
	bcs	.L97	@cond_branch
.L99:
	lsl	r1, r1, #0x4
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, r3
	bcc	.L99	@cond_branch
.L97:
	mov	r3, #0x0
	cmp	r2, #0x1
	bne	.L101	@cond_branch
	mov	r3, #0x2
.L101:
	cmp	r2, #0x2
	bne	.L102	@cond_branch
	mov	r3, #0x1
.L102:
	add	r5, r1, #0
	cmp	r5, #0
	ble	.L104	@cond_branch
	ldr	r0, .L120
	mov	r8, r0
.L106:
	add	r0, r7, #0
	add	r1, r5, #0
	str	r3, [sp]
	bl	__divsi3
	add	r4, r0, #0
	add	r0, r7, #0
	add	r1, r5, #0
	bl	__modsi3
	add	r1, r0, #0
	ldr	r3, [sp]
	cmp	r3, #0x1
	bne	.L107	@cond_branch
	add	r2, r6, #0
	add	r6, r6, #0x1
	cmp	r4, #0xf
	bls	.L119	@cond_branch
	b	.L113
.L121:
	.align	2, 0
.L120:
	.word	sDigits
.L107:
	cmp	r4, #0
	bne	.L112	@cond_branch
	cmp	r5, #0x1
	bne	.L111	@cond_branch
.L112:
	mov	r3, #0x1
	add	r2, r6, #0
	add	r6, r6, #0x1
	cmp	r4, #0xf
	bhi	.L113	@cond_branch
.L119:
	mov	r7, r8
	add	r0, r4, r7
	ldrb	r0, [r0]
	b	.L114
.L113:
	mov	r0, #0xac
.L114:
	strb	r0, [r2]
	b	.L110
.L111:
	cmp	r3, #0x2
	bne	.L110	@cond_branch
	strb	r4, [r6]
	add	r6, r6, #0x1
.L110:
	add	r7, r1, #0
	add	r0, r5, #0
	cmp	r5, #0
	bge	.L117	@cond_branch
	add	r0, r0, #0xf
.L117:
	asr	r5, r0, #0x4
	cmp	r5, #0
	bgt	.L106	@cond_branch
.L104:
	mov	r0, #0xff
	strb	r0, [r6]
	add	r0, r6, #0
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe12:
	.size	 ConvertIntToHexStringN,.Lfe12-ConvertIntToHexStringN
	.align	2, 0
	.globl	StringExpandPlaceholders
	.type	 StringExpandPlaceholders,function
	.thumb_func
StringExpandPlaceholders:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
.L123:
	ldrb	r2, [r5]
	add	r5, r5, #0x1
	add	r0, r2, #0
	sub	r0, r0, #0xfa
	cmp	r0, #0x5
	bhi	.L145	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L148
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L149:
	.align	2, 0
.L148:
	.word	.L146
	.align	2, 0
	.align	2, 0
.L146:
	.word	.L145
	.word	.L145
	.word	.L128
	.word	.L127
	.word	.L145
	.word	.L147
.L127:
	ldrb	r0, [r5]
	add	r5, r5, #0x1
	bl	GetExpandedPlaceholder
	add	r1, r0, #0
	add	r0, r4, #0
	bl	StringExpandPlaceholders
	add	r4, r0, #0
	b	.L123
.L128:
	strb	r2, [r4]
	add	r4, r4, #0x1
	ldrb	r2, [r5]
	add	r5, r5, #0x1
	strb	r2, [r4]
	add	r4, r4, #0x1
	sub	r0, r2, #0x4
	cmp	r0, #0x14
	bhi	.L139	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L150
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L151:
	.align	2, 0
.L150:
	.word	.L140
	.align	2, 0
	.align	2, 0
.L140:
	.word	.L137
	.word	.L139
	.word	.L139
	.word	.L123
	.word	.L139
	.word	.L123
	.word	.L139
	.word	.L138
	.word	.L139
	.word	.L139
	.word	.L139
	.word	.L123
	.word	.L139
	.word	.L139
	.word	.L139
	.word	.L139
	.word	.L139
	.word	.L123
	.word	.L123
	.word	.L123
	.word	.L123
.L137:
	ldrb	r0, [r5]
	strb	r0, [r4]
	add	r5, r5, #0x1
	add	r4, r4, #0x1
.L138:
	ldrb	r0, [r5]
	strb	r0, [r4]
	add	r5, r5, #0x1
	add	r4, r4, #0x1
.L139:
	ldrb	r0, [r5]
	strb	r0, [r4]
	add	r5, r5, #0x1
	add	r4, r4, #0x1
	b	.L123
.L145:
	strb	r2, [r4]
	add	r4, r4, #0x1
	b	.L123
.L147:
	mov	r0, #0xff
	strb	r0, [r4]
	add	r0, r4, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe13:
	.size	 StringExpandPlaceholders,.Lfe13-StringExpandPlaceholders
	.section .rodata
.LC5:
	.byte	0xfc
	.byte	0x6
	.byte	0x6
	.byte	0xff
.LC7:
	.byte	0xfe
	.byte	0xfc
	.byte	0xe
	.byte	0x2
	.byte	0xff
.text
	.align	2, 0
	.globl	StringBraille
	.type	 StringBraille,function
	.thumb_func
StringBraille:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0xc
	add	r5, r0, #0
	add	r6, r1, #0
	ldr	r1, .L163
	mov	r0, sp
	mov	r2, #0x4
	bl	memcpy
	add	r4, sp, #0x4
	ldr	r1, .L163+0x4
	add	r0, r4, #0
	mov	r2, #0x5
	bl	memcpy
	add	r0, r5, #0
	mov	r1, sp
.L162:
	bl	StringCopy
	add	r5, r0, #0
.L153:
	ldrb	r0, [r6]
	add	r6, r6, #0x1
	cmp	r0, #0xfe
	beq	.L158	@cond_branch
	cmp	r0, #0xff
	bne	.L159	@cond_branch
	b	.L161
.L164:
	.align	2, 0
.L163:
	.word	.LC5
	.word	.LC7
.L158:
	add	r0, r5, #0
	add	r1, r4, #0
	b	.L162
.L159:
	strb	r0, [r5]
	add	r5, r5, #0x1
	add	r0, r0, #0x40
	strb	r0, [r5]
	add	r5, r5, #0x1
	b	.L153
.L161:
	strb	r0, [r5]
	add	r0, r5, #0
	add	sp, sp, #0xc
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 StringBraille,.Lfe14-StringBraille
	.align	2, 0
	.type	 ExpandPlaceholder_UnknownStringVar,function
	.thumb_func
ExpandPlaceholder_UnknownStringVar:
	ldr	r0, .L166
	bx	lr
.L167:
	.align	2, 0
.L166:
	.word	gUnknownStringVar
.Lfe15:
	.size	 ExpandPlaceholder_UnknownStringVar,.Lfe15-ExpandPlaceholder_UnknownStringVar
	.align	2, 0
	.type	 ExpandPlaceholder_PlayerName,function
	.thumb_func
ExpandPlaceholder_PlayerName:
	ldr	r0, .L169
	ldr	r0, [r0]
	bx	lr
.L170:
	.align	2, 0
.L169:
	.word	gSaveBlock2Ptr
.Lfe16:
	.size	 ExpandPlaceholder_PlayerName,.Lfe16-ExpandPlaceholder_PlayerName
	.align	2, 0
	.type	 ExpandPlaceholder_StringVar1,function
	.thumb_func
ExpandPlaceholder_StringVar1:
	ldr	r0, .L172
	bx	lr
.L173:
	.align	2, 0
.L172:
	.word	gStringVar1
.Lfe17:
	.size	 ExpandPlaceholder_StringVar1,.Lfe17-ExpandPlaceholder_StringVar1
	.align	2, 0
	.type	 ExpandPlaceholder_StringVar2,function
	.thumb_func
ExpandPlaceholder_StringVar2:
	ldr	r0, .L175
	bx	lr
.L176:
	.align	2, 0
.L175:
	.word	gStringVar2
.Lfe18:
	.size	 ExpandPlaceholder_StringVar2,.Lfe18-ExpandPlaceholder_StringVar2
	.align	2, 0
	.type	 ExpandPlaceholder_StringVar3,function
	.thumb_func
ExpandPlaceholder_StringVar3:
	ldr	r0, .L178
	bx	lr
.L179:
	.align	2, 0
.L178:
	.word	gStringVar3
.Lfe19:
	.size	 ExpandPlaceholder_StringVar3,.Lfe19-ExpandPlaceholder_StringVar3
	.align	2, 0
	.type	 ExpandPlaceholder_KunChan,function
	.thumb_func
ExpandPlaceholder_KunChan:
	push	{lr}
	ldr	r0, .L184
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x8]
	cmp	r0, #0
	beq	.L181	@cond_branch
	ldr	r0, .L184+0x4
	b	.L183
.L185:
	.align	2, 0
.L184:
	.word	gSaveBlock2Ptr
	.word	gExpandedPlaceholder_Chan
.L181:
	ldr	r0, .L186
.L183:
	pop	{r1}
	bx	r1
.L187:
	.align	2, 0
.L186:
	.word	gExpandedPlaceholder_Kun
.Lfe20:
	.size	 ExpandPlaceholder_KunChan,.Lfe20-ExpandPlaceholder_KunChan
	.align	2, 0
	.type	 ExpandPlaceholder_RivalName,function
	.thumb_func
ExpandPlaceholder_RivalName:
	push	{lr}
	ldr	r0, .L194
	ldr	r0, [r0]
	ldr	r2, .L194+0x4
	add	r1, r0, r2
	ldrb	r0, [r1]
	cmp	r0, #0xff
	bne	.L189	@cond_branch
	ldr	r0, .L194+0x8
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x8]
	cmp	r0, #0
	bne	.L190	@cond_branch
	ldr	r0, .L194+0xc
	b	.L193
.L195:
	.align	2, 0
.L194:
	.word	gSaveBlock1Ptr
	.word	0x3a60
	.word	gSaveBlock2Ptr
	.word	gExpandedPlaceholder_Green
.L190:
	ldr	r0, .L196
	b	.L193
.L197:
	.align	2, 0
.L196:
	.word	gExpandedPlaceholder_Red
.L189:
	add	r0, r1, #0
.L193:
	pop	{r1}
	bx	r1
.Lfe21:
	.size	 ExpandPlaceholder_RivalName,.Lfe21-ExpandPlaceholder_RivalName
	.align	2, 0
	.type	 ExpandPlaceholder_Version,function
	.thumb_func
ExpandPlaceholder_Version:
	ldr	r0, .L199
	bx	lr
.L200:
	.align	2, 0
.L199:
	.word	gExpandedPlaceholder_Ruby
.Lfe22:
	.size	 ExpandPlaceholder_Version,.Lfe22-ExpandPlaceholder_Version
	.align	2, 0
	.type	 ExpandPlaceholder_Magma,function
	.thumb_func
ExpandPlaceholder_Magma:
	ldr	r0, .L202
	bx	lr
.L203:
	.align	2, 0
.L202:
	.word	gExpandedPlaceholder_Magma
.Lfe23:
	.size	 ExpandPlaceholder_Magma,.Lfe23-ExpandPlaceholder_Magma
	.align	2, 0
	.type	 ExpandPlaceholder_Aqua,function
	.thumb_func
ExpandPlaceholder_Aqua:
	ldr	r0, .L205
	bx	lr
.L206:
	.align	2, 0
.L205:
	.word	gExpandedPlaceholder_Aqua
.Lfe24:
	.size	 ExpandPlaceholder_Aqua,.Lfe24-ExpandPlaceholder_Aqua
	.align	2, 0
	.type	 ExpandPlaceholder_Maxie,function
	.thumb_func
ExpandPlaceholder_Maxie:
	ldr	r0, .L208
	bx	lr
.L209:
	.align	2, 0
.L208:
	.word	gExpandedPlaceholder_Maxie
.Lfe25:
	.size	 ExpandPlaceholder_Maxie,.Lfe25-ExpandPlaceholder_Maxie
	.align	2, 0
	.type	 ExpandPlaceholder_Archie,function
	.thumb_func
ExpandPlaceholder_Archie:
	ldr	r0, .L211
	bx	lr
.L212:
	.align	2, 0
.L211:
	.word	gExpandedPlaceholder_Archie
.Lfe26:
	.size	 ExpandPlaceholder_Archie,.Lfe26-ExpandPlaceholder_Archie
	.align	2, 0
	.type	 ExpandPlaceholder_Groudon,function
	.thumb_func
ExpandPlaceholder_Groudon:
	ldr	r0, .L214
	bx	lr
.L215:
	.align	2, 0
.L214:
	.word	gExpandedPlaceholder_Groudon
.Lfe27:
	.size	 ExpandPlaceholder_Groudon,.Lfe27-ExpandPlaceholder_Groudon
	.align	2, 0
	.type	 ExpandPlaceholder_Kyogre,function
	.thumb_func
ExpandPlaceholder_Kyogre:
	ldr	r0, .L217
	bx	lr
.L218:
	.align	2, 0
.L217:
	.word	gExpandedPlaceholder_Kyogre
.Lfe28:
	.size	 ExpandPlaceholder_Kyogre,.Lfe28-ExpandPlaceholder_Kyogre
	.section .rodata
	.align	2, 0
	.type	 funcs.93,object
funcs.93:
	.word	ExpandPlaceholder_UnknownStringVar
	.word	ExpandPlaceholder_PlayerName
	.word	ExpandPlaceholder_StringVar1
	.word	ExpandPlaceholder_StringVar2
	.word	ExpandPlaceholder_StringVar3
	.word	ExpandPlaceholder_KunChan
	.word	ExpandPlaceholder_RivalName
	.word	ExpandPlaceholder_Version
	.word	ExpandPlaceholder_Magma
	.word	ExpandPlaceholder_Aqua
	.word	ExpandPlaceholder_Maxie
	.word	ExpandPlaceholder_Archie
	.word	ExpandPlaceholder_Groudon
	.word	ExpandPlaceholder_Kyogre
.text
	.align	2, 0
	.globl	GetExpandedPlaceholder
	.type	 GetExpandedPlaceholder,function
	.thumb_func
GetExpandedPlaceholder:
	push	{lr}
	cmp	r0, #0xd
	bhi	.L220	@cond_branch
	ldr	r1, .L223
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	bl	_call_via_r0
	b	.L222
.L224:
	.align	2, 0
.L223:
	.word	funcs.93
.L220:
	ldr	r0, .L225
.L222:
	pop	{r1}
	bx	r1
.L226:
	.align	2, 0
.L225:
	.word	gExpandedPlaceholder_Empty
.Lfe29:
	.size	 GetExpandedPlaceholder,.Lfe29-GetExpandedPlaceholder
	.align	2, 0
	.globl	StringFill
	.type	 StringFill,function
	.thumb_func
StringFill:
	push	{lr}
	add	r3, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r0, #0x0
	cmp	r0, r2
	bcs	.L229	@cond_branch
.L231:
	strb	r1, [r3]
	add	r3, r3, #0x1
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, r2
	bcc	.L231	@cond_branch
.L229:
	mov	r0, #0xff
	strb	r0, [r3]
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.Lfe30:
	.size	 StringFill,.Lfe30-StringFill
	.align	2, 0
	.globl	StringCopyPadded
	.type	 StringCopyPadded,function
	.thumb_func
StringCopyPadded:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	b	.L234
.L236:
	strb	r1, [r4]
	add	r5, r5, #0x1
	add	r4, r4, #0x1
	cmp	r3, #0
	beq	.L234	@cond_branch
	sub	r0, r3, #0x1
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
.L234:
	ldrb	r1, [r5]
	add	r0, r1, #0
	cmp	r0, #0xff
	bne	.L236	@cond_branch
	sub	r0, r3, #0x1
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
	ldr	r0, .L243
	cmp	r3, r0
	beq	.L240	@cond_branch
	add	r1, r0, #0
.L241:
	strb	r2, [r4]
	add	r4, r4, #0x1
	sub	r0, r3, #0x1
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
	cmp	r3, r1
	bne	.L241	@cond_branch
.L240:
	mov	r0, #0xff
	strb	r0, [r4]
	add	r0, r4, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L244:
	.align	2, 0
.L243:
	.word	0xffff
.Lfe31:
	.size	 StringCopyPadded,.Lfe31-StringCopyPadded
	.align	2, 0
	.globl	StringFillWithTerminator
	.type	 StringFillWithTerminator,function
	.thumb_func
StringFillWithTerminator:
	push	{lr}
	lsl	r2, r1, #0x10
	lsr	r2, r2, #0x10
	mov	r1, #0xff
	bl	StringFill
	pop	{r1}
	bx	r1
.Lfe32:
	.size	 StringFillWithTerminator,.Lfe32-StringFillWithTerminator
	.align	2, 0
	.globl	StringCopyN_Multibyte
	.type	 StringCopyN_Multibyte,function
	.thumb_func
StringCopyN_Multibyte:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r3, r1, #0
	sub	r2, r2, #0x1
	mov	r5, #0x1
	neg	r5, r5
	b	.L255
.L251:
	strb	r0, [r4]
	add	r3, r3, #0x1
	add	r4, r4, #0x1
	sub	r0, r3, #0x1
	ldrb	r0, [r0]
	cmp	r0, #0xf9
	bne	.L249	@cond_branch
	ldrb	r0, [r3]
	strb	r0, [r4]
	add	r3, r3, #0x1
	add	r4, r4, #0x1
.L249:
	sub	r2, r2, #0x1
.L255:
	cmp	r2, r5
	beq	.L248	@cond_branch
	ldrb	r0, [r3]
	add	r1, r0, #0
	cmp	r1, #0xff
	bne	.L251	@cond_branch
.L248:
	mov	r0, #0xff
	strb	r0, [r4]
	add	r0, r4, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe33:
	.size	 StringCopyN_Multibyte,.Lfe33-StringCopyN_Multibyte
	.align	2, 0
	.globl	StringLength_Multibyte
	.type	 StringLength_Multibyte,function
	.thumb_func
StringLength_Multibyte:
	push	{lr}
	add	r2, r0, #0
	mov	r3, #0x0
	b	.L262
.L259:
	cmp	r1, #0xf9
	bne	.L260	@cond_branch
	add	r2, r2, #0x1
.L260:
	add	r2, r2, #0x1
	add	r3, r3, #0x1
.L262:
	ldrb	r1, [r2]
	add	r0, r1, #0
	cmp	r0, #0xff
	bne	.L259	@cond_branch
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.Lfe34:
	.size	 StringLength_Multibyte,.Lfe34-StringLength_Multibyte
	.align	2, 0
	.globl	WriteColorChangeControlCode
	.type	 WriteColorChangeControlCode,function
	.thumb_func
WriteColorChangeControlCode:
	push	{lr}
	add	r3, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	r0, #0xfc
	strb	r0, [r3]
	add	r3, r3, #0x1
	cmp	r1, #0x1
	beq	.L266	@cond_branch
	cmp	r1, #0x1
	bcc	.L265	@cond_branch
	cmp	r1, #0x2
	beq	.L267	@cond_branch
	b	.L264
.L265:
	mov	r0, #0x1
	strb	r0, [r3]
	b	.L270
.L266:
	mov	r0, #0x3
	strb	r0, [r3]
	b	.L270
.L267:
	strb	r1, [r3]
.L270:
	add	r3, r3, #0x1
.L264:
	strb	r2, [r3]
	add	r3, r3, #0x1
	mov	r0, #0xff
	strb	r0, [r3]
	add	r0, r3, #0
	pop	{r1}
	bx	r1
.Lfe35:
	.size	 WriteColorChangeControlCode,.Lfe35-WriteColorChangeControlCode
	.section .rodata
	.type	 lengths.115,object
lengths.115:
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
.text
	.align	2, 0
	.globl	GetExtCtrlCodeLength
	.type	 GetExtCtrlCodeLength,function
	.thumb_func
GetExtCtrlCodeLength:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	mov	r0, #0x0
	cmp	r1, #0x18
	bhi	.L272	@cond_branch
	ldr	r0, .L273
	add	r0, r1, r0
	ldrb	r0, [r0]
.L272:
	pop	{r1}
	bx	r1
.L274:
	.align	2, 0
.L273:
	.word	lengths.115
.Lfe36:
	.size	 GetExtCtrlCodeLength,.Lfe36-GetExtCtrlCodeLength
	.align	2, 0
	.type	 SkipExtCtrlCode,function
	.thumb_func
SkipExtCtrlCode:
	push	{r4, lr}
	add	r4, r0, #0
	b	.L280
.L278:
	add	r4, r4, #0x1
	ldrb	r0, [r4]
	bl	GetExtCtrlCodeLength
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r4, r4, r0
.L280:
	ldrb	r0, [r4]
	cmp	r0, #0xfc
	beq	.L278	@cond_branch
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe37:
	.size	 SkipExtCtrlCode,.Lfe37-SkipExtCtrlCode
	.align	2, 0
	.globl	StringCompareWithoutExtCtrlCodes
	.type	 StringCompareWithoutExtCtrlCodes,function
	.thumb_func
StringCompareWithoutExtCtrlCodes:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	mov	r6, #0x0
	b	.L284
.L285:
	cmp	r1, r0
	bcs	.L286	@cond_branch
	mov	r6, #0x1
	neg	r6, r6
	cmp	r0, #0xff
	bne	.L286	@cond_branch
	mov	r6, #0x1
.L286:
	ldrb	r0, [r4]
	cmp	r0, #0xff
	beq	.L290	@cond_branch
	add	r4, r4, #0x1
	add	r5, r5, #0x1
.L284:
	add	r0, r4, #0
	bl	SkipExtCtrlCode
	add	r4, r0, #0
	add	r0, r5, #0
	bl	SkipExtCtrlCode
	add	r5, r0, #0
	ldrb	r1, [r4]
	ldrb	r0, [r5]
	cmp	r1, r0
	bls	.L285	@cond_branch
	mov	r6, #0x1
	cmp	r1, #0xff
	bne	.L290	@cond_branch
	sub	r6, r6, #0x2
.L290:
	add	r0, r6, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe38:
	.size	 StringCompareWithoutExtCtrlCodes,.Lfe38-StringCompareWithoutExtCtrlCodes
	.align	2, 0
	.globl	ConvertInternationalString
	.type	 ConvertInternationalString,function
	.thumb_func
ConvertInternationalString:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	cmp	r1, #0x1
	bne	.L293	@cond_branch
	bl	StripExtCtrlCodes
	add	r0, r4, #0
	bl	StringLength
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r1, r2, #0
	add	r0, r1, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r3, r2, #0
	add	r1, r4, r1
	mov	r0, #0xfc
	strb	r0, [r1]
	add	r0, r3, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r3, r4, r3
	mov	r0, #0x16
	strb	r0, [r3]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	add	r2, r4, r2
	mov	r1, #0xff
	strb	r1, [r2]
	mov	r1, #0xff
	lsl	r1, r1, #0x18
	add	r0, r0, r1
	b	.L298
.L296:
	add	r1, r2, r4
	ldrb	r0, [r1]
	strb	r0, [r1, #0x2]
	sub	r0, r2, #0x1
	lsl	r0, r0, #0x18
.L298:
	lsr	r2, r0, #0x18
	cmp	r2, #0xff
	bne	.L296	@cond_branch
	mov	r0, #0xfc
	strb	r0, [r4]
	mov	r0, #0x15
	strb	r0, [r4, #0x1]
.L293:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe39:
	.size	 ConvertInternationalString,.Lfe39-ConvertInternationalString
	.align	2, 0
	.globl	StripExtCtrlCodes
	.type	 StripExtCtrlCodes,function
	.thumb_func
StripExtCtrlCodes:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	mov	r4, #0x0
	mov	r6, #0x0
	ldrb	r0, [r5]
	cmp	r0, #0xff
	beq	.L301	@cond_branch
.L302:
	add	r0, r5, r4
	ldrb	r0, [r0]
	cmp	r0, #0xfc
	bne	.L303	@cond_branch
	add	r0, r4, #0x1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	add	r0, r5, r4
	ldrb	r0, [r0]
	bl	GetExtCtrlCodeLength
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r4, r0
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	b	.L300
.L303:
	add	r2, r6, #0
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	add	r2, r5, r2
	add	r1, r4, #0
	add	r0, r1, #0x1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	add	r1, r5, r1
	ldrb	r0, [r1]
	strb	r0, [r2]
.L300:
	add	r0, r5, r4
	ldrb	r0, [r0]
	cmp	r0, #0xff
	bne	.L302	@cond_branch
.L301:
	add	r1, r5, r6
	mov	r0, #0xff
	strb	r0, [r1]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe40:
	.size	 StripExtCtrlCodes,.Lfe40-StripExtCtrlCodes
.text
	.align	2, 0 @ Don't pad with nop

