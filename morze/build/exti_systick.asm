
build/exti_systick.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000015fc  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  080016bc  080016bc  000116bc  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080016c0  080016c0  000116c0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080016c8  080016c8  000116c8  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080016cc  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              000002a8  20000434  08001b00  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  200006dc  08001b00  000206dc  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00001f2d  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000515  00000000  00000000  00022389  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00000ce4  00000000  00000000  0002289e  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000248  00000000  00000000  00023582  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000218  00000000  00000000  000237ca  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       0000097d  00000000  00000000  000239e2  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00000f38  00000000  00000000  0002435f  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00025297  2**0  CONTENTS, READONLY
 17 .debug_frame      000009bc  00000000  00000000  00025318  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080016a4 	.word	0x080016a4

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000438 	.word	0x20000438
 8000104:	080016a4 	.word	0x080016a4

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f001 f905 	bl	8001458 <SystemInit>
 800024e:	f001 f959 	bl	8001504 <__libc_init_array>
 8000252:	f001 f8df 	bl	8001414 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	080016cc 	.word	0x080016cc
 8000268:	20000434 	.word	0x20000434
 800026c:	200006dc 	.word	0x200006dc

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <NVIC_EnableIRQ>:
 8000274:	b580      	push	{r7, lr}
 8000276:	b082      	sub	sp, #8
 8000278:	af00      	add	r7, sp, #0
 800027a:	0002      	movs	r2, r0
 800027c:	1dfb      	adds	r3, r7, #7
 800027e:	701a      	strb	r2, [r3, #0]
 8000280:	1dfb      	adds	r3, r7, #7
 8000282:	781b      	ldrb	r3, [r3, #0]
 8000284:	001a      	movs	r2, r3
 8000286:	231f      	movs	r3, #31
 8000288:	401a      	ands	r2, r3
 800028a:	4b04      	ldr	r3, [pc, #16]	; (800029c <NVIC_EnableIRQ+0x28>)
 800028c:	2101      	movs	r1, #1
 800028e:	4091      	lsls	r1, r2
 8000290:	000a      	movs	r2, r1
 8000292:	601a      	str	r2, [r3, #0]
 8000294:	46c0      	nop			; (mov r8, r8)
 8000296:	46bd      	mov	sp, r7
 8000298:	b002      	add	sp, #8
 800029a:	bd80      	pop	{r7, pc}
 800029c:	e000e100 	.word	0xe000e100

080002a0 <NVIC_SetPriority>:
 80002a0:	b590      	push	{r4, r7, lr}
 80002a2:	b083      	sub	sp, #12
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	0002      	movs	r2, r0
 80002a8:	6039      	str	r1, [r7, #0]
 80002aa:	1dfb      	adds	r3, r7, #7
 80002ac:	701a      	strb	r2, [r3, #0]
 80002ae:	1dfb      	adds	r3, r7, #7
 80002b0:	781b      	ldrb	r3, [r3, #0]
 80002b2:	2b7f      	cmp	r3, #127	; 0x7f
 80002b4:	d932      	bls.n	800031c <NVIC_SetPriority+0x7c>
 80002b6:	4a2f      	ldr	r2, [pc, #188]	; (8000374 <NVIC_SetPriority+0xd4>)
 80002b8:	1dfb      	adds	r3, r7, #7
 80002ba:	781b      	ldrb	r3, [r3, #0]
 80002bc:	0019      	movs	r1, r3
 80002be:	230f      	movs	r3, #15
 80002c0:	400b      	ands	r3, r1
 80002c2:	3b08      	subs	r3, #8
 80002c4:	089b      	lsrs	r3, r3, #2
 80002c6:	3306      	adds	r3, #6
 80002c8:	009b      	lsls	r3, r3, #2
 80002ca:	18d3      	adds	r3, r2, r3
 80002cc:	3304      	adds	r3, #4
 80002ce:	681b      	ldr	r3, [r3, #0]
 80002d0:	1dfa      	adds	r2, r7, #7
 80002d2:	7812      	ldrb	r2, [r2, #0]
 80002d4:	0011      	movs	r1, r2
 80002d6:	2203      	movs	r2, #3
 80002d8:	400a      	ands	r2, r1
 80002da:	00d2      	lsls	r2, r2, #3
 80002dc:	21ff      	movs	r1, #255	; 0xff
 80002de:	4091      	lsls	r1, r2
 80002e0:	000a      	movs	r2, r1
 80002e2:	43d2      	mvns	r2, r2
 80002e4:	401a      	ands	r2, r3
 80002e6:	0011      	movs	r1, r2
 80002e8:	683b      	ldr	r3, [r7, #0]
 80002ea:	019b      	lsls	r3, r3, #6
 80002ec:	22ff      	movs	r2, #255	; 0xff
 80002ee:	401a      	ands	r2, r3
 80002f0:	1dfb      	adds	r3, r7, #7
 80002f2:	781b      	ldrb	r3, [r3, #0]
 80002f4:	0018      	movs	r0, r3
 80002f6:	2303      	movs	r3, #3
 80002f8:	4003      	ands	r3, r0
 80002fa:	00db      	lsls	r3, r3, #3
 80002fc:	409a      	lsls	r2, r3
 80002fe:	481d      	ldr	r0, [pc, #116]	; (8000374 <NVIC_SetPriority+0xd4>)
 8000300:	1dfb      	adds	r3, r7, #7
 8000302:	781b      	ldrb	r3, [r3, #0]
 8000304:	001c      	movs	r4, r3
 8000306:	230f      	movs	r3, #15
 8000308:	4023      	ands	r3, r4
 800030a:	3b08      	subs	r3, #8
 800030c:	089b      	lsrs	r3, r3, #2
 800030e:	430a      	orrs	r2, r1
 8000310:	3306      	adds	r3, #6
 8000312:	009b      	lsls	r3, r3, #2
 8000314:	18c3      	adds	r3, r0, r3
 8000316:	3304      	adds	r3, #4
 8000318:	601a      	str	r2, [r3, #0]
 800031a:	e027      	b.n	800036c <NVIC_SetPriority+0xcc>
 800031c:	4a16      	ldr	r2, [pc, #88]	; (8000378 <NVIC_SetPriority+0xd8>)
 800031e:	1dfb      	adds	r3, r7, #7
 8000320:	781b      	ldrb	r3, [r3, #0]
 8000322:	b25b      	sxtb	r3, r3
 8000324:	089b      	lsrs	r3, r3, #2
 8000326:	33c0      	adds	r3, #192	; 0xc0
 8000328:	009b      	lsls	r3, r3, #2
 800032a:	589b      	ldr	r3, [r3, r2]
 800032c:	1dfa      	adds	r2, r7, #7
 800032e:	7812      	ldrb	r2, [r2, #0]
 8000330:	0011      	movs	r1, r2
 8000332:	2203      	movs	r2, #3
 8000334:	400a      	ands	r2, r1
 8000336:	00d2      	lsls	r2, r2, #3
 8000338:	21ff      	movs	r1, #255	; 0xff
 800033a:	4091      	lsls	r1, r2
 800033c:	000a      	movs	r2, r1
 800033e:	43d2      	mvns	r2, r2
 8000340:	401a      	ands	r2, r3
 8000342:	0011      	movs	r1, r2
 8000344:	683b      	ldr	r3, [r7, #0]
 8000346:	019b      	lsls	r3, r3, #6
 8000348:	22ff      	movs	r2, #255	; 0xff
 800034a:	401a      	ands	r2, r3
 800034c:	1dfb      	adds	r3, r7, #7
 800034e:	781b      	ldrb	r3, [r3, #0]
 8000350:	0018      	movs	r0, r3
 8000352:	2303      	movs	r3, #3
 8000354:	4003      	ands	r3, r0
 8000356:	00db      	lsls	r3, r3, #3
 8000358:	409a      	lsls	r2, r3
 800035a:	4807      	ldr	r0, [pc, #28]	; (8000378 <NVIC_SetPriority+0xd8>)
 800035c:	1dfb      	adds	r3, r7, #7
 800035e:	781b      	ldrb	r3, [r3, #0]
 8000360:	b25b      	sxtb	r3, r3
 8000362:	089b      	lsrs	r3, r3, #2
 8000364:	430a      	orrs	r2, r1
 8000366:	33c0      	adds	r3, #192	; 0xc0
 8000368:	009b      	lsls	r3, r3, #2
 800036a:	501a      	str	r2, [r3, r0]
 800036c:	46c0      	nop			; (mov r8, r8)
 800036e:	46bd      	mov	sp, r7
 8000370:	b003      	add	sp, #12
 8000372:	bd90      	pop	{r4, r7, pc}
 8000374:	e000ed00 	.word	0xe000ed00
 8000378:	e000e100 	.word	0xe000e100

0800037c <LL_RCC_HSI_Enable>:
 800037c:	b580      	push	{r7, lr}
 800037e:	af00      	add	r7, sp, #0
 8000380:	4b04      	ldr	r3, [pc, #16]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000382:	681a      	ldr	r2, [r3, #0]
 8000384:	4b03      	ldr	r3, [pc, #12]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000386:	2101      	movs	r1, #1
 8000388:	430a      	orrs	r2, r1
 800038a:	601a      	str	r2, [r3, #0]
 800038c:	46c0      	nop			; (mov r8, r8)
 800038e:	46bd      	mov	sp, r7
 8000390:	bd80      	pop	{r7, pc}
 8000392:	46c0      	nop			; (mov r8, r8)
 8000394:	40021000 	.word	0x40021000

08000398 <LL_RCC_HSI_IsReady>:
 8000398:	b580      	push	{r7, lr}
 800039a:	af00      	add	r7, sp, #0
 800039c:	4b05      	ldr	r3, [pc, #20]	; (80003b4 <LL_RCC_HSI_IsReady+0x1c>)
 800039e:	681b      	ldr	r3, [r3, #0]
 80003a0:	2202      	movs	r2, #2
 80003a2:	4013      	ands	r3, r2
 80003a4:	3b02      	subs	r3, #2
 80003a6:	425a      	negs	r2, r3
 80003a8:	4153      	adcs	r3, r2
 80003aa:	b2db      	uxtb	r3, r3
 80003ac:	0018      	movs	r0, r3
 80003ae:	46bd      	mov	sp, r7
 80003b0:	bd80      	pop	{r7, pc}
 80003b2:	46c0      	nop			; (mov r8, r8)
 80003b4:	40021000 	.word	0x40021000

080003b8 <LL_RCC_SetSysClkSource>:
 80003b8:	b580      	push	{r7, lr}
 80003ba:	b082      	sub	sp, #8
 80003bc:	af00      	add	r7, sp, #0
 80003be:	6078      	str	r0, [r7, #4]
 80003c0:	4b06      	ldr	r3, [pc, #24]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003c2:	685b      	ldr	r3, [r3, #4]
 80003c4:	2203      	movs	r2, #3
 80003c6:	4393      	bics	r3, r2
 80003c8:	0019      	movs	r1, r3
 80003ca:	4b04      	ldr	r3, [pc, #16]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003cc:	687a      	ldr	r2, [r7, #4]
 80003ce:	430a      	orrs	r2, r1
 80003d0:	605a      	str	r2, [r3, #4]
 80003d2:	46c0      	nop			; (mov r8, r8)
 80003d4:	46bd      	mov	sp, r7
 80003d6:	b002      	add	sp, #8
 80003d8:	bd80      	pop	{r7, pc}
 80003da:	46c0      	nop			; (mov r8, r8)
 80003dc:	40021000 	.word	0x40021000

080003e0 <LL_RCC_GetSysClkSource>:
 80003e0:	b580      	push	{r7, lr}
 80003e2:	af00      	add	r7, sp, #0
 80003e4:	4b03      	ldr	r3, [pc, #12]	; (80003f4 <LL_RCC_GetSysClkSource+0x14>)
 80003e6:	685b      	ldr	r3, [r3, #4]
 80003e8:	220c      	movs	r2, #12
 80003ea:	4013      	ands	r3, r2
 80003ec:	0018      	movs	r0, r3
 80003ee:	46bd      	mov	sp, r7
 80003f0:	bd80      	pop	{r7, pc}
 80003f2:	46c0      	nop			; (mov r8, r8)
 80003f4:	40021000 	.word	0x40021000

080003f8 <LL_RCC_SetAHBPrescaler>:
 80003f8:	b580      	push	{r7, lr}
 80003fa:	b082      	sub	sp, #8
 80003fc:	af00      	add	r7, sp, #0
 80003fe:	6078      	str	r0, [r7, #4]
 8000400:	4b06      	ldr	r3, [pc, #24]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 8000402:	685b      	ldr	r3, [r3, #4]
 8000404:	22f0      	movs	r2, #240	; 0xf0
 8000406:	4393      	bics	r3, r2
 8000408:	0019      	movs	r1, r3
 800040a:	4b04      	ldr	r3, [pc, #16]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 800040c:	687a      	ldr	r2, [r7, #4]
 800040e:	430a      	orrs	r2, r1
 8000410:	605a      	str	r2, [r3, #4]
 8000412:	46c0      	nop			; (mov r8, r8)
 8000414:	46bd      	mov	sp, r7
 8000416:	b002      	add	sp, #8
 8000418:	bd80      	pop	{r7, pc}
 800041a:	46c0      	nop			; (mov r8, r8)
 800041c:	40021000 	.word	0x40021000

08000420 <LL_RCC_SetAPB1Prescaler>:
 8000420:	b580      	push	{r7, lr}
 8000422:	b082      	sub	sp, #8
 8000424:	af00      	add	r7, sp, #0
 8000426:	6078      	str	r0, [r7, #4]
 8000428:	4b06      	ldr	r3, [pc, #24]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 800042a:	685b      	ldr	r3, [r3, #4]
 800042c:	4a06      	ldr	r2, [pc, #24]	; (8000448 <LL_RCC_SetAPB1Prescaler+0x28>)
 800042e:	4013      	ands	r3, r2
 8000430:	0019      	movs	r1, r3
 8000432:	4b04      	ldr	r3, [pc, #16]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000434:	687a      	ldr	r2, [r7, #4]
 8000436:	430a      	orrs	r2, r1
 8000438:	605a      	str	r2, [r3, #4]
 800043a:	46c0      	nop			; (mov r8, r8)
 800043c:	46bd      	mov	sp, r7
 800043e:	b002      	add	sp, #8
 8000440:	bd80      	pop	{r7, pc}
 8000442:	46c0      	nop			; (mov r8, r8)
 8000444:	40021000 	.word	0x40021000
 8000448:	fffff8ff 	.word	0xfffff8ff

0800044c <LL_RCC_SetUSARTClockSource>:
 800044c:	b580      	push	{r7, lr}
 800044e:	b082      	sub	sp, #8
 8000450:	af00      	add	r7, sp, #0
 8000452:	6078      	str	r0, [r7, #4]
 8000454:	4b09      	ldr	r3, [pc, #36]	; (800047c <LL_RCC_SetUSARTClockSource+0x30>)
 8000456:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000458:	687a      	ldr	r2, [r7, #4]
 800045a:	0e12      	lsrs	r2, r2, #24
 800045c:	2103      	movs	r1, #3
 800045e:	4091      	lsls	r1, r2
 8000460:	000a      	movs	r2, r1
 8000462:	43d2      	mvns	r2, r2
 8000464:	401a      	ands	r2, r3
 8000466:	0011      	movs	r1, r2
 8000468:	687b      	ldr	r3, [r7, #4]
 800046a:	021b      	lsls	r3, r3, #8
 800046c:	0a1a      	lsrs	r2, r3, #8
 800046e:	4b03      	ldr	r3, [pc, #12]	; (800047c <LL_RCC_SetUSARTClockSource+0x30>)
 8000470:	430a      	orrs	r2, r1
 8000472:	631a      	str	r2, [r3, #48]	; 0x30
 8000474:	46c0      	nop			; (mov r8, r8)
 8000476:	46bd      	mov	sp, r7
 8000478:	b002      	add	sp, #8
 800047a:	bd80      	pop	{r7, pc}
 800047c:	40021000 	.word	0x40021000

08000480 <LL_RCC_PLL_Enable>:
 8000480:	b580      	push	{r7, lr}
 8000482:	af00      	add	r7, sp, #0
 8000484:	4b04      	ldr	r3, [pc, #16]	; (8000498 <LL_RCC_PLL_Enable+0x18>)
 8000486:	681a      	ldr	r2, [r3, #0]
 8000488:	4b03      	ldr	r3, [pc, #12]	; (8000498 <LL_RCC_PLL_Enable+0x18>)
 800048a:	2180      	movs	r1, #128	; 0x80
 800048c:	0449      	lsls	r1, r1, #17
 800048e:	430a      	orrs	r2, r1
 8000490:	601a      	str	r2, [r3, #0]
 8000492:	46c0      	nop			; (mov r8, r8)
 8000494:	46bd      	mov	sp, r7
 8000496:	bd80      	pop	{r7, pc}
 8000498:	40021000 	.word	0x40021000

0800049c <LL_RCC_PLL_IsReady>:
 800049c:	b580      	push	{r7, lr}
 800049e:	af00      	add	r7, sp, #0
 80004a0:	4b07      	ldr	r3, [pc, #28]	; (80004c0 <LL_RCC_PLL_IsReady+0x24>)
 80004a2:	681a      	ldr	r2, [r3, #0]
 80004a4:	2380      	movs	r3, #128	; 0x80
 80004a6:	049b      	lsls	r3, r3, #18
 80004a8:	4013      	ands	r3, r2
 80004aa:	22fe      	movs	r2, #254	; 0xfe
 80004ac:	0612      	lsls	r2, r2, #24
 80004ae:	4694      	mov	ip, r2
 80004b0:	4463      	add	r3, ip
 80004b2:	425a      	negs	r2, r3
 80004b4:	4153      	adcs	r3, r2
 80004b6:	b2db      	uxtb	r3, r3
 80004b8:	0018      	movs	r0, r3
 80004ba:	46bd      	mov	sp, r7
 80004bc:	bd80      	pop	{r7, pc}
 80004be:	46c0      	nop			; (mov r8, r8)
 80004c0:	40021000 	.word	0x40021000

080004c4 <LL_RCC_PLL_ConfigDomain_SYS>:
 80004c4:	b580      	push	{r7, lr}
 80004c6:	b082      	sub	sp, #8
 80004c8:	af00      	add	r7, sp, #0
 80004ca:	6078      	str	r0, [r7, #4]
 80004cc:	6039      	str	r1, [r7, #0]
 80004ce:	4b0e      	ldr	r3, [pc, #56]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004d0:	685b      	ldr	r3, [r3, #4]
 80004d2:	4a0e      	ldr	r2, [pc, #56]	; (800050c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004d4:	4013      	ands	r3, r2
 80004d6:	0019      	movs	r1, r3
 80004d8:	687a      	ldr	r2, [r7, #4]
 80004da:	2380      	movs	r3, #128	; 0x80
 80004dc:	025b      	lsls	r3, r3, #9
 80004de:	401a      	ands	r2, r3
 80004e0:	683b      	ldr	r3, [r7, #0]
 80004e2:	431a      	orrs	r2, r3
 80004e4:	4b08      	ldr	r3, [pc, #32]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004e6:	430a      	orrs	r2, r1
 80004e8:	605a      	str	r2, [r3, #4]
 80004ea:	4b07      	ldr	r3, [pc, #28]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004ec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004ee:	220f      	movs	r2, #15
 80004f0:	4393      	bics	r3, r2
 80004f2:	0019      	movs	r1, r3
 80004f4:	687b      	ldr	r3, [r7, #4]
 80004f6:	220f      	movs	r2, #15
 80004f8:	401a      	ands	r2, r3
 80004fa:	4b03      	ldr	r3, [pc, #12]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004fc:	430a      	orrs	r2, r1
 80004fe:	62da      	str	r2, [r3, #44]	; 0x2c
 8000500:	46c0      	nop			; (mov r8, r8)
 8000502:	46bd      	mov	sp, r7
 8000504:	b002      	add	sp, #8
 8000506:	bd80      	pop	{r7, pc}
 8000508:	40021000 	.word	0x40021000
 800050c:	ffc2ffff 	.word	0xffc2ffff

08000510 <LL_SYSCFG_SetEXTISource>:
 8000510:	b590      	push	{r4, r7, lr}
 8000512:	b083      	sub	sp, #12
 8000514:	af00      	add	r7, sp, #0
 8000516:	6078      	str	r0, [r7, #4]
 8000518:	6039      	str	r1, [r7, #0]
 800051a:	4a0f      	ldr	r2, [pc, #60]	; (8000558 <LL_SYSCFG_SetEXTISource+0x48>)
 800051c:	683b      	ldr	r3, [r7, #0]
 800051e:	21ff      	movs	r1, #255	; 0xff
 8000520:	400b      	ands	r3, r1
 8000522:	3302      	adds	r3, #2
 8000524:	009b      	lsls	r3, r3, #2
 8000526:	589b      	ldr	r3, [r3, r2]
 8000528:	683a      	ldr	r2, [r7, #0]
 800052a:	0c12      	lsrs	r2, r2, #16
 800052c:	210f      	movs	r1, #15
 800052e:	4091      	lsls	r1, r2
 8000530:	000a      	movs	r2, r1
 8000532:	43d2      	mvns	r2, r2
 8000534:	401a      	ands	r2, r3
 8000536:	0011      	movs	r1, r2
 8000538:	683b      	ldr	r3, [r7, #0]
 800053a:	0c1b      	lsrs	r3, r3, #16
 800053c:	687a      	ldr	r2, [r7, #4]
 800053e:	409a      	lsls	r2, r3
 8000540:	4805      	ldr	r0, [pc, #20]	; (8000558 <LL_SYSCFG_SetEXTISource+0x48>)
 8000542:	683b      	ldr	r3, [r7, #0]
 8000544:	24ff      	movs	r4, #255	; 0xff
 8000546:	4023      	ands	r3, r4
 8000548:	430a      	orrs	r2, r1
 800054a:	3302      	adds	r3, #2
 800054c:	009b      	lsls	r3, r3, #2
 800054e:	501a      	str	r2, [r3, r0]
 8000550:	46c0      	nop			; (mov r8, r8)
 8000552:	46bd      	mov	sp, r7
 8000554:	b003      	add	sp, #12
 8000556:	bd90      	pop	{r4, r7, pc}
 8000558:	40010000 	.word	0x40010000

0800055c <LL_FLASH_SetLatency>:
 800055c:	b580      	push	{r7, lr}
 800055e:	b082      	sub	sp, #8
 8000560:	af00      	add	r7, sp, #0
 8000562:	6078      	str	r0, [r7, #4]
 8000564:	4b06      	ldr	r3, [pc, #24]	; (8000580 <LL_FLASH_SetLatency+0x24>)
 8000566:	681b      	ldr	r3, [r3, #0]
 8000568:	2201      	movs	r2, #1
 800056a:	4393      	bics	r3, r2
 800056c:	0019      	movs	r1, r3
 800056e:	4b04      	ldr	r3, [pc, #16]	; (8000580 <LL_FLASH_SetLatency+0x24>)
 8000570:	687a      	ldr	r2, [r7, #4]
 8000572:	430a      	orrs	r2, r1
 8000574:	601a      	str	r2, [r3, #0]
 8000576:	46c0      	nop			; (mov r8, r8)
 8000578:	46bd      	mov	sp, r7
 800057a:	b002      	add	sp, #8
 800057c:	bd80      	pop	{r7, pc}
 800057e:	46c0      	nop			; (mov r8, r8)
 8000580:	40022000 	.word	0x40022000

08000584 <LL_AHB1_GRP1_EnableClock>:
 8000584:	b580      	push	{r7, lr}
 8000586:	b084      	sub	sp, #16
 8000588:	af00      	add	r7, sp, #0
 800058a:	6078      	str	r0, [r7, #4]
 800058c:	4b07      	ldr	r3, [pc, #28]	; (80005ac <LL_AHB1_GRP1_EnableClock+0x28>)
 800058e:	6959      	ldr	r1, [r3, #20]
 8000590:	4b06      	ldr	r3, [pc, #24]	; (80005ac <LL_AHB1_GRP1_EnableClock+0x28>)
 8000592:	687a      	ldr	r2, [r7, #4]
 8000594:	430a      	orrs	r2, r1
 8000596:	615a      	str	r2, [r3, #20]
 8000598:	4b04      	ldr	r3, [pc, #16]	; (80005ac <LL_AHB1_GRP1_EnableClock+0x28>)
 800059a:	695b      	ldr	r3, [r3, #20]
 800059c:	687a      	ldr	r2, [r7, #4]
 800059e:	4013      	ands	r3, r2
 80005a0:	60fb      	str	r3, [r7, #12]
 80005a2:	68fb      	ldr	r3, [r7, #12]
 80005a4:	46c0      	nop			; (mov r8, r8)
 80005a6:	46bd      	mov	sp, r7
 80005a8:	b004      	add	sp, #16
 80005aa:	bd80      	pop	{r7, pc}
 80005ac:	40021000 	.word	0x40021000

080005b0 <LL_APB1_GRP2_EnableClock>:
 80005b0:	b580      	push	{r7, lr}
 80005b2:	b084      	sub	sp, #16
 80005b4:	af00      	add	r7, sp, #0
 80005b6:	6078      	str	r0, [r7, #4]
 80005b8:	4b07      	ldr	r3, [pc, #28]	; (80005d8 <LL_APB1_GRP2_EnableClock+0x28>)
 80005ba:	6999      	ldr	r1, [r3, #24]
 80005bc:	4b06      	ldr	r3, [pc, #24]	; (80005d8 <LL_APB1_GRP2_EnableClock+0x28>)
 80005be:	687a      	ldr	r2, [r7, #4]
 80005c0:	430a      	orrs	r2, r1
 80005c2:	619a      	str	r2, [r3, #24]
 80005c4:	4b04      	ldr	r3, [pc, #16]	; (80005d8 <LL_APB1_GRP2_EnableClock+0x28>)
 80005c6:	699b      	ldr	r3, [r3, #24]
 80005c8:	687a      	ldr	r2, [r7, #4]
 80005ca:	4013      	ands	r3, r2
 80005cc:	60fb      	str	r3, [r7, #12]
 80005ce:	68fb      	ldr	r3, [r7, #12]
 80005d0:	46c0      	nop			; (mov r8, r8)
 80005d2:	46bd      	mov	sp, r7
 80005d4:	b004      	add	sp, #16
 80005d6:	bd80      	pop	{r7, pc}
 80005d8:	40021000 	.word	0x40021000

080005dc <LL_GPIO_SetPinMode>:
 80005dc:	b580      	push	{r7, lr}
 80005de:	b084      	sub	sp, #16
 80005e0:	af00      	add	r7, sp, #0
 80005e2:	60f8      	str	r0, [r7, #12]
 80005e4:	60b9      	str	r1, [r7, #8]
 80005e6:	607a      	str	r2, [r7, #4]
 80005e8:	68fb      	ldr	r3, [r7, #12]
 80005ea:	6819      	ldr	r1, [r3, #0]
 80005ec:	68bb      	ldr	r3, [r7, #8]
 80005ee:	68ba      	ldr	r2, [r7, #8]
 80005f0:	435a      	muls	r2, r3
 80005f2:	0013      	movs	r3, r2
 80005f4:	005b      	lsls	r3, r3, #1
 80005f6:	189b      	adds	r3, r3, r2
 80005f8:	43db      	mvns	r3, r3
 80005fa:	400b      	ands	r3, r1
 80005fc:	001a      	movs	r2, r3
 80005fe:	68bb      	ldr	r3, [r7, #8]
 8000600:	68b9      	ldr	r1, [r7, #8]
 8000602:	434b      	muls	r3, r1
 8000604:	6879      	ldr	r1, [r7, #4]
 8000606:	434b      	muls	r3, r1
 8000608:	431a      	orrs	r2, r3
 800060a:	68fb      	ldr	r3, [r7, #12]
 800060c:	601a      	str	r2, [r3, #0]
 800060e:	46c0      	nop			; (mov r8, r8)
 8000610:	46bd      	mov	sp, r7
 8000612:	b004      	add	sp, #16
 8000614:	bd80      	pop	{r7, pc}

08000616 <LL_GPIO_SetPinSpeed>:
 8000616:	b580      	push	{r7, lr}
 8000618:	b084      	sub	sp, #16
 800061a:	af00      	add	r7, sp, #0
 800061c:	60f8      	str	r0, [r7, #12]
 800061e:	60b9      	str	r1, [r7, #8]
 8000620:	607a      	str	r2, [r7, #4]
 8000622:	68fb      	ldr	r3, [r7, #12]
 8000624:	6899      	ldr	r1, [r3, #8]
 8000626:	68bb      	ldr	r3, [r7, #8]
 8000628:	68ba      	ldr	r2, [r7, #8]
 800062a:	435a      	muls	r2, r3
 800062c:	0013      	movs	r3, r2
 800062e:	005b      	lsls	r3, r3, #1
 8000630:	189b      	adds	r3, r3, r2
 8000632:	43db      	mvns	r3, r3
 8000634:	400b      	ands	r3, r1
 8000636:	001a      	movs	r2, r3
 8000638:	68bb      	ldr	r3, [r7, #8]
 800063a:	68b9      	ldr	r1, [r7, #8]
 800063c:	434b      	muls	r3, r1
 800063e:	6879      	ldr	r1, [r7, #4]
 8000640:	434b      	muls	r3, r1
 8000642:	431a      	orrs	r2, r3
 8000644:	68fb      	ldr	r3, [r7, #12]
 8000646:	609a      	str	r2, [r3, #8]
 8000648:	46c0      	nop			; (mov r8, r8)
 800064a:	46bd      	mov	sp, r7
 800064c:	b004      	add	sp, #16
 800064e:	bd80      	pop	{r7, pc}

08000650 <LL_GPIO_SetAFPin_8_15>:
 8000650:	b580      	push	{r7, lr}
 8000652:	b084      	sub	sp, #16
 8000654:	af00      	add	r7, sp, #0
 8000656:	60f8      	str	r0, [r7, #12]
 8000658:	60b9      	str	r1, [r7, #8]
 800065a:	607a      	str	r2, [r7, #4]
 800065c:	68fb      	ldr	r3, [r7, #12]
 800065e:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8000660:	68bb      	ldr	r3, [r7, #8]
 8000662:	0a1b      	lsrs	r3, r3, #8
 8000664:	68ba      	ldr	r2, [r7, #8]
 8000666:	0a12      	lsrs	r2, r2, #8
 8000668:	4353      	muls	r3, r2
 800066a:	68ba      	ldr	r2, [r7, #8]
 800066c:	0a12      	lsrs	r2, r2, #8
 800066e:	4353      	muls	r3, r2
 8000670:	68ba      	ldr	r2, [r7, #8]
 8000672:	0a12      	lsrs	r2, r2, #8
 8000674:	435a      	muls	r2, r3
 8000676:	0013      	movs	r3, r2
 8000678:	011b      	lsls	r3, r3, #4
 800067a:	1a9b      	subs	r3, r3, r2
 800067c:	43db      	mvns	r3, r3
 800067e:	400b      	ands	r3, r1
 8000680:	001a      	movs	r2, r3
 8000682:	68bb      	ldr	r3, [r7, #8]
 8000684:	0a1b      	lsrs	r3, r3, #8
 8000686:	68b9      	ldr	r1, [r7, #8]
 8000688:	0a09      	lsrs	r1, r1, #8
 800068a:	434b      	muls	r3, r1
 800068c:	68b9      	ldr	r1, [r7, #8]
 800068e:	0a09      	lsrs	r1, r1, #8
 8000690:	434b      	muls	r3, r1
 8000692:	68b9      	ldr	r1, [r7, #8]
 8000694:	0a09      	lsrs	r1, r1, #8
 8000696:	434b      	muls	r3, r1
 8000698:	6879      	ldr	r1, [r7, #4]
 800069a:	434b      	muls	r3, r1
 800069c:	431a      	orrs	r2, r3
 800069e:	68fb      	ldr	r3, [r7, #12]
 80006a0:	625a      	str	r2, [r3, #36]	; 0x24
 80006a2:	46c0      	nop			; (mov r8, r8)
 80006a4:	46bd      	mov	sp, r7
 80006a6:	b004      	add	sp, #16
 80006a8:	bd80      	pop	{r7, pc}

080006aa <LL_GPIO_SetOutputPin>:
 80006aa:	b580      	push	{r7, lr}
 80006ac:	b082      	sub	sp, #8
 80006ae:	af00      	add	r7, sp, #0
 80006b0:	6078      	str	r0, [r7, #4]
 80006b2:	6039      	str	r1, [r7, #0]
 80006b4:	687b      	ldr	r3, [r7, #4]
 80006b6:	683a      	ldr	r2, [r7, #0]
 80006b8:	619a      	str	r2, [r3, #24]
 80006ba:	46c0      	nop			; (mov r8, r8)
 80006bc:	46bd      	mov	sp, r7
 80006be:	b002      	add	sp, #8
 80006c0:	bd80      	pop	{r7, pc}

080006c2 <LL_GPIO_ResetOutputPin>:
 80006c2:	b580      	push	{r7, lr}
 80006c4:	b082      	sub	sp, #8
 80006c6:	af00      	add	r7, sp, #0
 80006c8:	6078      	str	r0, [r7, #4]
 80006ca:	6039      	str	r1, [r7, #0]
 80006cc:	687b      	ldr	r3, [r7, #4]
 80006ce:	683a      	ldr	r2, [r7, #0]
 80006d0:	629a      	str	r2, [r3, #40]	; 0x28
 80006d2:	46c0      	nop			; (mov r8, r8)
 80006d4:	46bd      	mov	sp, r7
 80006d6:	b002      	add	sp, #8
 80006d8:	bd80      	pop	{r7, pc}

080006da <LL_GPIO_TogglePin>:
 80006da:	b580      	push	{r7, lr}
 80006dc:	b082      	sub	sp, #8
 80006de:	af00      	add	r7, sp, #0
 80006e0:	6078      	str	r0, [r7, #4]
 80006e2:	6039      	str	r1, [r7, #0]
 80006e4:	687b      	ldr	r3, [r7, #4]
 80006e6:	695a      	ldr	r2, [r3, #20]
 80006e8:	683b      	ldr	r3, [r7, #0]
 80006ea:	405a      	eors	r2, r3
 80006ec:	687b      	ldr	r3, [r7, #4]
 80006ee:	615a      	str	r2, [r3, #20]
 80006f0:	46c0      	nop			; (mov r8, r8)
 80006f2:	46bd      	mov	sp, r7
 80006f4:	b002      	add	sp, #8
 80006f6:	bd80      	pop	{r7, pc}

080006f8 <LL_EXTI_EnableIT_0_31>:
 80006f8:	b580      	push	{r7, lr}
 80006fa:	b082      	sub	sp, #8
 80006fc:	af00      	add	r7, sp, #0
 80006fe:	6078      	str	r0, [r7, #4]
 8000700:	4b04      	ldr	r3, [pc, #16]	; (8000714 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000702:	6819      	ldr	r1, [r3, #0]
 8000704:	4b03      	ldr	r3, [pc, #12]	; (8000714 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000706:	687a      	ldr	r2, [r7, #4]
 8000708:	430a      	orrs	r2, r1
 800070a:	601a      	str	r2, [r3, #0]
 800070c:	46c0      	nop			; (mov r8, r8)
 800070e:	46bd      	mov	sp, r7
 8000710:	b002      	add	sp, #8
 8000712:	bd80      	pop	{r7, pc}
 8000714:	40010400 	.word	0x40010400

08000718 <LL_EXTI_EnableRisingTrig_0_31>:
 8000718:	b580      	push	{r7, lr}
 800071a:	b082      	sub	sp, #8
 800071c:	af00      	add	r7, sp, #0
 800071e:	6078      	str	r0, [r7, #4]
 8000720:	4b04      	ldr	r3, [pc, #16]	; (8000734 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000722:	6899      	ldr	r1, [r3, #8]
 8000724:	4b03      	ldr	r3, [pc, #12]	; (8000734 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000726:	687a      	ldr	r2, [r7, #4]
 8000728:	430a      	orrs	r2, r1
 800072a:	609a      	str	r2, [r3, #8]
 800072c:	46c0      	nop			; (mov r8, r8)
 800072e:	46bd      	mov	sp, r7
 8000730:	b002      	add	sp, #8
 8000732:	bd80      	pop	{r7, pc}
 8000734:	40010400 	.word	0x40010400

08000738 <LL_EXTI_EnableFallingTrig_0_31>:
 8000738:	b580      	push	{r7, lr}
 800073a:	b082      	sub	sp, #8
 800073c:	af00      	add	r7, sp, #0
 800073e:	6078      	str	r0, [r7, #4]
 8000740:	4b04      	ldr	r3, [pc, #16]	; (8000754 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 8000742:	68d9      	ldr	r1, [r3, #12]
 8000744:	4b03      	ldr	r3, [pc, #12]	; (8000754 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 8000746:	687a      	ldr	r2, [r7, #4]
 8000748:	430a      	orrs	r2, r1
 800074a:	60da      	str	r2, [r3, #12]
 800074c:	46c0      	nop			; (mov r8, r8)
 800074e:	46bd      	mov	sp, r7
 8000750:	b002      	add	sp, #8
 8000752:	bd80      	pop	{r7, pc}
 8000754:	40010400 	.word	0x40010400

08000758 <LL_EXTI_ClearFlag_0_31>:
 8000758:	b580      	push	{r7, lr}
 800075a:	b082      	sub	sp, #8
 800075c:	af00      	add	r7, sp, #0
 800075e:	6078      	str	r0, [r7, #4]
 8000760:	4b03      	ldr	r3, [pc, #12]	; (8000770 <LL_EXTI_ClearFlag_0_31+0x18>)
 8000762:	687a      	ldr	r2, [r7, #4]
 8000764:	615a      	str	r2, [r3, #20]
 8000766:	46c0      	nop			; (mov r8, r8)
 8000768:	46bd      	mov	sp, r7
 800076a:	b002      	add	sp, #8
 800076c:	bd80      	pop	{r7, pc}
 800076e:	46c0      	nop			; (mov r8, r8)
 8000770:	40010400 	.word	0x40010400

08000774 <LL_InitTick>:
 8000774:	b580      	push	{r7, lr}
 8000776:	b082      	sub	sp, #8
 8000778:	af00      	add	r7, sp, #0
 800077a:	6078      	str	r0, [r7, #4]
 800077c:	6039      	str	r1, [r7, #0]
 800077e:	6839      	ldr	r1, [r7, #0]
 8000780:	6878      	ldr	r0, [r7, #4]
 8000782:	f7ff fcc1 	bl	8000108 <__udivsi3>
 8000786:	0003      	movs	r3, r0
 8000788:	001a      	movs	r2, r3
 800078a:	4b06      	ldr	r3, [pc, #24]	; (80007a4 <LL_InitTick+0x30>)
 800078c:	3a01      	subs	r2, #1
 800078e:	605a      	str	r2, [r3, #4]
 8000790:	4b04      	ldr	r3, [pc, #16]	; (80007a4 <LL_InitTick+0x30>)
 8000792:	2200      	movs	r2, #0
 8000794:	609a      	str	r2, [r3, #8]
 8000796:	4b03      	ldr	r3, [pc, #12]	; (80007a4 <LL_InitTick+0x30>)
 8000798:	2205      	movs	r2, #5
 800079a:	601a      	str	r2, [r3, #0]
 800079c:	46c0      	nop			; (mov r8, r8)
 800079e:	46bd      	mov	sp, r7
 80007a0:	b002      	add	sp, #8
 80007a2:	bd80      	pop	{r7, pc}
 80007a4:	e000e010 	.word	0xe000e010

080007a8 <LL_SYSTICK_EnableIT>:
 80007a8:	b580      	push	{r7, lr}
 80007aa:	af00      	add	r7, sp, #0
 80007ac:	4b04      	ldr	r3, [pc, #16]	; (80007c0 <LL_SYSTICK_EnableIT+0x18>)
 80007ae:	681a      	ldr	r2, [r3, #0]
 80007b0:	4b03      	ldr	r3, [pc, #12]	; (80007c0 <LL_SYSTICK_EnableIT+0x18>)
 80007b2:	2102      	movs	r1, #2
 80007b4:	430a      	orrs	r2, r1
 80007b6:	601a      	str	r2, [r3, #0]
 80007b8:	46c0      	nop			; (mov r8, r8)
 80007ba:	46bd      	mov	sp, r7
 80007bc:	bd80      	pop	{r7, pc}
 80007be:	46c0      	nop			; (mov r8, r8)
 80007c0:	e000e010 	.word	0xe000e010

080007c4 <LL_USART_Enable>:
 80007c4:	b580      	push	{r7, lr}
 80007c6:	b082      	sub	sp, #8
 80007c8:	af00      	add	r7, sp, #0
 80007ca:	6078      	str	r0, [r7, #4]
 80007cc:	687b      	ldr	r3, [r7, #4]
 80007ce:	681b      	ldr	r3, [r3, #0]
 80007d0:	2201      	movs	r2, #1
 80007d2:	431a      	orrs	r2, r3
 80007d4:	687b      	ldr	r3, [r7, #4]
 80007d6:	601a      	str	r2, [r3, #0]
 80007d8:	46c0      	nop			; (mov r8, r8)
 80007da:	46bd      	mov	sp, r7
 80007dc:	b002      	add	sp, #8
 80007de:	bd80      	pop	{r7, pc}

080007e0 <LL_USART_SetTransferDirection>:
 80007e0:	b580      	push	{r7, lr}
 80007e2:	b082      	sub	sp, #8
 80007e4:	af00      	add	r7, sp, #0
 80007e6:	6078      	str	r0, [r7, #4]
 80007e8:	6039      	str	r1, [r7, #0]
 80007ea:	687b      	ldr	r3, [r7, #4]
 80007ec:	681b      	ldr	r3, [r3, #0]
 80007ee:	220c      	movs	r2, #12
 80007f0:	4393      	bics	r3, r2
 80007f2:	001a      	movs	r2, r3
 80007f4:	683b      	ldr	r3, [r7, #0]
 80007f6:	431a      	orrs	r2, r3
 80007f8:	687b      	ldr	r3, [r7, #4]
 80007fa:	601a      	str	r2, [r3, #0]
 80007fc:	46c0      	nop			; (mov r8, r8)
 80007fe:	46bd      	mov	sp, r7
 8000800:	b002      	add	sp, #8
 8000802:	bd80      	pop	{r7, pc}

08000804 <LL_USART_SetParity>:
 8000804:	b580      	push	{r7, lr}
 8000806:	b082      	sub	sp, #8
 8000808:	af00      	add	r7, sp, #0
 800080a:	6078      	str	r0, [r7, #4]
 800080c:	6039      	str	r1, [r7, #0]
 800080e:	687b      	ldr	r3, [r7, #4]
 8000810:	681b      	ldr	r3, [r3, #0]
 8000812:	4a05      	ldr	r2, [pc, #20]	; (8000828 <LL_USART_SetParity+0x24>)
 8000814:	401a      	ands	r2, r3
 8000816:	683b      	ldr	r3, [r7, #0]
 8000818:	431a      	orrs	r2, r3
 800081a:	687b      	ldr	r3, [r7, #4]
 800081c:	601a      	str	r2, [r3, #0]
 800081e:	46c0      	nop			; (mov r8, r8)
 8000820:	46bd      	mov	sp, r7
 8000822:	b002      	add	sp, #8
 8000824:	bd80      	pop	{r7, pc}
 8000826:	46c0      	nop			; (mov r8, r8)
 8000828:	fffff9ff 	.word	0xfffff9ff

0800082c <LL_USART_SetDataWidth>:
 800082c:	b580      	push	{r7, lr}
 800082e:	b082      	sub	sp, #8
 8000830:	af00      	add	r7, sp, #0
 8000832:	6078      	str	r0, [r7, #4]
 8000834:	6039      	str	r1, [r7, #0]
 8000836:	687b      	ldr	r3, [r7, #4]
 8000838:	681b      	ldr	r3, [r3, #0]
 800083a:	4a05      	ldr	r2, [pc, #20]	; (8000850 <LL_USART_SetDataWidth+0x24>)
 800083c:	401a      	ands	r2, r3
 800083e:	683b      	ldr	r3, [r7, #0]
 8000840:	431a      	orrs	r2, r3
 8000842:	687b      	ldr	r3, [r7, #4]
 8000844:	601a      	str	r2, [r3, #0]
 8000846:	46c0      	nop			; (mov r8, r8)
 8000848:	46bd      	mov	sp, r7
 800084a:	b002      	add	sp, #8
 800084c:	bd80      	pop	{r7, pc}
 800084e:	46c0      	nop			; (mov r8, r8)
 8000850:	ffffefff 	.word	0xffffefff

08000854 <LL_USART_SetStopBitsLength>:
 8000854:	b580      	push	{r7, lr}
 8000856:	b082      	sub	sp, #8
 8000858:	af00      	add	r7, sp, #0
 800085a:	6078      	str	r0, [r7, #4]
 800085c:	6039      	str	r1, [r7, #0]
 800085e:	687b      	ldr	r3, [r7, #4]
 8000860:	685b      	ldr	r3, [r3, #4]
 8000862:	4a05      	ldr	r2, [pc, #20]	; (8000878 <LL_USART_SetStopBitsLength+0x24>)
 8000864:	401a      	ands	r2, r3
 8000866:	683b      	ldr	r3, [r7, #0]
 8000868:	431a      	orrs	r2, r3
 800086a:	687b      	ldr	r3, [r7, #4]
 800086c:	605a      	str	r2, [r3, #4]
 800086e:	46c0      	nop			; (mov r8, r8)
 8000870:	46bd      	mov	sp, r7
 8000872:	b002      	add	sp, #8
 8000874:	bd80      	pop	{r7, pc}
 8000876:	46c0      	nop			; (mov r8, r8)
 8000878:	ffffcfff 	.word	0xffffcfff

0800087c <LL_USART_SetTransferBitOrder>:
 800087c:	b580      	push	{r7, lr}
 800087e:	b082      	sub	sp, #8
 8000880:	af00      	add	r7, sp, #0
 8000882:	6078      	str	r0, [r7, #4]
 8000884:	6039      	str	r1, [r7, #0]
 8000886:	687b      	ldr	r3, [r7, #4]
 8000888:	685b      	ldr	r3, [r3, #4]
 800088a:	4a05      	ldr	r2, [pc, #20]	; (80008a0 <LL_USART_SetTransferBitOrder+0x24>)
 800088c:	401a      	ands	r2, r3
 800088e:	683b      	ldr	r3, [r7, #0]
 8000890:	431a      	orrs	r2, r3
 8000892:	687b      	ldr	r3, [r7, #4]
 8000894:	605a      	str	r2, [r3, #4]
 8000896:	46c0      	nop			; (mov r8, r8)
 8000898:	46bd      	mov	sp, r7
 800089a:	b002      	add	sp, #8
 800089c:	bd80      	pop	{r7, pc}
 800089e:	46c0      	nop			; (mov r8, r8)
 80008a0:	fff7ffff 	.word	0xfff7ffff

080008a4 <LL_USART_SetBaudRate>:
 80008a4:	b5b0      	push	{r4, r5, r7, lr}
 80008a6:	b084      	sub	sp, #16
 80008a8:	af00      	add	r7, sp, #0
 80008aa:	60f8      	str	r0, [r7, #12]
 80008ac:	60b9      	str	r1, [r7, #8]
 80008ae:	607a      	str	r2, [r7, #4]
 80008b0:	603b      	str	r3, [r7, #0]
 80008b2:	2500      	movs	r5, #0
 80008b4:	2400      	movs	r4, #0
 80008b6:	687a      	ldr	r2, [r7, #4]
 80008b8:	2380      	movs	r3, #128	; 0x80
 80008ba:	021b      	lsls	r3, r3, #8
 80008bc:	429a      	cmp	r2, r3
 80008be:	d117      	bne.n	80008f0 <LL_USART_SetBaudRate+0x4c>
 80008c0:	68bb      	ldr	r3, [r7, #8]
 80008c2:	005a      	lsls	r2, r3, #1
 80008c4:	683b      	ldr	r3, [r7, #0]
 80008c6:	085b      	lsrs	r3, r3, #1
 80008c8:	18d3      	adds	r3, r2, r3
 80008ca:	6839      	ldr	r1, [r7, #0]
 80008cc:	0018      	movs	r0, r3
 80008ce:	f7ff fc1b 	bl	8000108 <__udivsi3>
 80008d2:	0003      	movs	r3, r0
 80008d4:	b29b      	uxth	r3, r3
 80008d6:	001d      	movs	r5, r3
 80008d8:	4b0e      	ldr	r3, [pc, #56]	; (8000914 <LL_USART_SetBaudRate+0x70>)
 80008da:	402b      	ands	r3, r5
 80008dc:	001c      	movs	r4, r3
 80008de:	086b      	lsrs	r3, r5, #1
 80008e0:	b29b      	uxth	r3, r3
 80008e2:	001a      	movs	r2, r3
 80008e4:	2307      	movs	r3, #7
 80008e6:	4013      	ands	r3, r2
 80008e8:	431c      	orrs	r4, r3
 80008ea:	68fb      	ldr	r3, [r7, #12]
 80008ec:	60dc      	str	r4, [r3, #12]
 80008ee:	e00c      	b.n	800090a <LL_USART_SetBaudRate+0x66>
 80008f0:	683b      	ldr	r3, [r7, #0]
 80008f2:	085a      	lsrs	r2, r3, #1
 80008f4:	68bb      	ldr	r3, [r7, #8]
 80008f6:	18d3      	adds	r3, r2, r3
 80008f8:	6839      	ldr	r1, [r7, #0]
 80008fa:	0018      	movs	r0, r3
 80008fc:	f7ff fc04 	bl	8000108 <__udivsi3>
 8000900:	0003      	movs	r3, r0
 8000902:	b29b      	uxth	r3, r3
 8000904:	001a      	movs	r2, r3
 8000906:	68fb      	ldr	r3, [r7, #12]
 8000908:	60da      	str	r2, [r3, #12]
 800090a:	46c0      	nop			; (mov r8, r8)
 800090c:	46bd      	mov	sp, r7
 800090e:	b004      	add	sp, #16
 8000910:	bdb0      	pop	{r4, r5, r7, pc}
 8000912:	46c0      	nop			; (mov r8, r8)
 8000914:	0000fff0 	.word	0x0000fff0

08000918 <LL_USART_IsActiveFlag_RXNE>:
 8000918:	b580      	push	{r7, lr}
 800091a:	b082      	sub	sp, #8
 800091c:	af00      	add	r7, sp, #0
 800091e:	6078      	str	r0, [r7, #4]
 8000920:	687b      	ldr	r3, [r7, #4]
 8000922:	69db      	ldr	r3, [r3, #28]
 8000924:	2220      	movs	r2, #32
 8000926:	4013      	ands	r3, r2
 8000928:	3b20      	subs	r3, #32
 800092a:	425a      	negs	r2, r3
 800092c:	4153      	adcs	r3, r2
 800092e:	b2db      	uxtb	r3, r3
 8000930:	0018      	movs	r0, r3
 8000932:	46bd      	mov	sp, r7
 8000934:	b002      	add	sp, #8
 8000936:	bd80      	pop	{r7, pc}

08000938 <LL_USART_IsActiveFlag_TC>:
 8000938:	b580      	push	{r7, lr}
 800093a:	b082      	sub	sp, #8
 800093c:	af00      	add	r7, sp, #0
 800093e:	6078      	str	r0, [r7, #4]
 8000940:	687b      	ldr	r3, [r7, #4]
 8000942:	69db      	ldr	r3, [r3, #28]
 8000944:	2240      	movs	r2, #64	; 0x40
 8000946:	4013      	ands	r3, r2
 8000948:	3b40      	subs	r3, #64	; 0x40
 800094a:	425a      	negs	r2, r3
 800094c:	4153      	adcs	r3, r2
 800094e:	b2db      	uxtb	r3, r3
 8000950:	0018      	movs	r0, r3
 8000952:	46bd      	mov	sp, r7
 8000954:	b002      	add	sp, #8
 8000956:	bd80      	pop	{r7, pc}

08000958 <LL_USART_IsActiveFlag_TXE>:
 8000958:	b580      	push	{r7, lr}
 800095a:	b082      	sub	sp, #8
 800095c:	af00      	add	r7, sp, #0
 800095e:	6078      	str	r0, [r7, #4]
 8000960:	687b      	ldr	r3, [r7, #4]
 8000962:	69db      	ldr	r3, [r3, #28]
 8000964:	2280      	movs	r2, #128	; 0x80
 8000966:	4013      	ands	r3, r2
 8000968:	3b80      	subs	r3, #128	; 0x80
 800096a:	425a      	negs	r2, r3
 800096c:	4153      	adcs	r3, r2
 800096e:	b2db      	uxtb	r3, r3
 8000970:	0018      	movs	r0, r3
 8000972:	46bd      	mov	sp, r7
 8000974:	b002      	add	sp, #8
 8000976:	bd80      	pop	{r7, pc}

08000978 <LL_USART_IsActiveFlag_TEACK>:
 8000978:	b580      	push	{r7, lr}
 800097a:	b082      	sub	sp, #8
 800097c:	af00      	add	r7, sp, #0
 800097e:	6078      	str	r0, [r7, #4]
 8000980:	687b      	ldr	r3, [r7, #4]
 8000982:	69da      	ldr	r2, [r3, #28]
 8000984:	2380      	movs	r3, #128	; 0x80
 8000986:	039b      	lsls	r3, r3, #14
 8000988:	4013      	ands	r3, r2
 800098a:	4a05      	ldr	r2, [pc, #20]	; (80009a0 <LL_USART_IsActiveFlag_TEACK+0x28>)
 800098c:	4694      	mov	ip, r2
 800098e:	4463      	add	r3, ip
 8000990:	425a      	negs	r2, r3
 8000992:	4153      	adcs	r3, r2
 8000994:	b2db      	uxtb	r3, r3
 8000996:	0018      	movs	r0, r3
 8000998:	46bd      	mov	sp, r7
 800099a:	b002      	add	sp, #8
 800099c:	bd80      	pop	{r7, pc}
 800099e:	46c0      	nop			; (mov r8, r8)
 80009a0:	ffe00000 	.word	0xffe00000

080009a4 <LL_USART_IsActiveFlag_REACK>:
 80009a4:	b580      	push	{r7, lr}
 80009a6:	b082      	sub	sp, #8
 80009a8:	af00      	add	r7, sp, #0
 80009aa:	6078      	str	r0, [r7, #4]
 80009ac:	687b      	ldr	r3, [r7, #4]
 80009ae:	69da      	ldr	r2, [r3, #28]
 80009b0:	2380      	movs	r3, #128	; 0x80
 80009b2:	03db      	lsls	r3, r3, #15
 80009b4:	4013      	ands	r3, r2
 80009b6:	4a05      	ldr	r2, [pc, #20]	; (80009cc <LL_USART_IsActiveFlag_REACK+0x28>)
 80009b8:	4694      	mov	ip, r2
 80009ba:	4463      	add	r3, ip
 80009bc:	425a      	negs	r2, r3
 80009be:	4153      	adcs	r3, r2
 80009c0:	b2db      	uxtb	r3, r3
 80009c2:	0018      	movs	r0, r3
 80009c4:	46bd      	mov	sp, r7
 80009c6:	b002      	add	sp, #8
 80009c8:	bd80      	pop	{r7, pc}
 80009ca:	46c0      	nop			; (mov r8, r8)
 80009cc:	ffc00000 	.word	0xffc00000

080009d0 <LL_USART_ClearFlag_IDLE>:
 80009d0:	b580      	push	{r7, lr}
 80009d2:	b082      	sub	sp, #8
 80009d4:	af00      	add	r7, sp, #0
 80009d6:	6078      	str	r0, [r7, #4]
 80009d8:	687b      	ldr	r3, [r7, #4]
 80009da:	2210      	movs	r2, #16
 80009dc:	621a      	str	r2, [r3, #32]
 80009de:	46c0      	nop			; (mov r8, r8)
 80009e0:	46bd      	mov	sp, r7
 80009e2:	b002      	add	sp, #8
 80009e4:	bd80      	pop	{r7, pc}

080009e6 <LL_USART_EnableIT_IDLE>:
 80009e6:	b580      	push	{r7, lr}
 80009e8:	b082      	sub	sp, #8
 80009ea:	af00      	add	r7, sp, #0
 80009ec:	6078      	str	r0, [r7, #4]
 80009ee:	687b      	ldr	r3, [r7, #4]
 80009f0:	681b      	ldr	r3, [r3, #0]
 80009f2:	2210      	movs	r2, #16
 80009f4:	431a      	orrs	r2, r3
 80009f6:	687b      	ldr	r3, [r7, #4]
 80009f8:	601a      	str	r2, [r3, #0]
 80009fa:	46c0      	nop			; (mov r8, r8)
 80009fc:	46bd      	mov	sp, r7
 80009fe:	b002      	add	sp, #8
 8000a00:	bd80      	pop	{r7, pc}

08000a02 <LL_USART_EnableIT_RXNE>:
 8000a02:	b580      	push	{r7, lr}
 8000a04:	b082      	sub	sp, #8
 8000a06:	af00      	add	r7, sp, #0
 8000a08:	6078      	str	r0, [r7, #4]
 8000a0a:	687b      	ldr	r3, [r7, #4]
 8000a0c:	681b      	ldr	r3, [r3, #0]
 8000a0e:	2220      	movs	r2, #32
 8000a10:	431a      	orrs	r2, r3
 8000a12:	687b      	ldr	r3, [r7, #4]
 8000a14:	601a      	str	r2, [r3, #0]
 8000a16:	46c0      	nop			; (mov r8, r8)
 8000a18:	46bd      	mov	sp, r7
 8000a1a:	b002      	add	sp, #8
 8000a1c:	bd80      	pop	{r7, pc}

08000a1e <LL_USART_ReceiveData8>:
 8000a1e:	b580      	push	{r7, lr}
 8000a20:	b082      	sub	sp, #8
 8000a22:	af00      	add	r7, sp, #0
 8000a24:	6078      	str	r0, [r7, #4]
 8000a26:	687b      	ldr	r3, [r7, #4]
 8000a28:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 8000a2a:	b29b      	uxth	r3, r3
 8000a2c:	b2db      	uxtb	r3, r3
 8000a2e:	0018      	movs	r0, r3
 8000a30:	46bd      	mov	sp, r7
 8000a32:	b002      	add	sp, #8
 8000a34:	bd80      	pop	{r7, pc}

08000a36 <LL_USART_TransmitData8>:
 8000a36:	b580      	push	{r7, lr}
 8000a38:	b082      	sub	sp, #8
 8000a3a:	af00      	add	r7, sp, #0
 8000a3c:	6078      	str	r0, [r7, #4]
 8000a3e:	000a      	movs	r2, r1
 8000a40:	1cfb      	adds	r3, r7, #3
 8000a42:	701a      	strb	r2, [r3, #0]
 8000a44:	1cfb      	adds	r3, r7, #3
 8000a46:	781b      	ldrb	r3, [r3, #0]
 8000a48:	b29a      	uxth	r2, r3
 8000a4a:	687b      	ldr	r3, [r7, #4]
 8000a4c:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a4e:	46c0      	nop			; (mov r8, r8)
 8000a50:	46bd      	mov	sp, r7
 8000a52:	b002      	add	sp, #8
 8000a54:	bd80      	pop	{r7, pc}
	...

08000a58 <rcc_config>:
 8000a58:	b580      	push	{r7, lr}
 8000a5a:	af00      	add	r7, sp, #0
 8000a5c:	2001      	movs	r0, #1
 8000a5e:	f7ff fd7d 	bl	800055c <LL_FLASH_SetLatency>
 8000a62:	f7ff fc8b 	bl	800037c <LL_RCC_HSI_Enable>
 8000a66:	46c0      	nop			; (mov r8, r8)
 8000a68:	f7ff fc96 	bl	8000398 <LL_RCC_HSI_IsReady>
 8000a6c:	0003      	movs	r3, r0
 8000a6e:	2b01      	cmp	r3, #1
 8000a70:	d1fa      	bne.n	8000a68 <rcc_config+0x10>
 8000a72:	23a0      	movs	r3, #160	; 0xa0
 8000a74:	039b      	lsls	r3, r3, #14
 8000a76:	0019      	movs	r1, r3
 8000a78:	2000      	movs	r0, #0
 8000a7a:	f7ff fd23 	bl	80004c4 <LL_RCC_PLL_ConfigDomain_SYS>
 8000a7e:	f7ff fcff 	bl	8000480 <LL_RCC_PLL_Enable>
 8000a82:	46c0      	nop			; (mov r8, r8)
 8000a84:	f7ff fd0a 	bl	800049c <LL_RCC_PLL_IsReady>
 8000a88:	0003      	movs	r3, r0
 8000a8a:	2b01      	cmp	r3, #1
 8000a8c:	d1fa      	bne.n	8000a84 <rcc_config+0x2c>
 8000a8e:	2000      	movs	r0, #0
 8000a90:	f7ff fcb2 	bl	80003f8 <LL_RCC_SetAHBPrescaler>
 8000a94:	2002      	movs	r0, #2
 8000a96:	f7ff fc8f 	bl	80003b8 <LL_RCC_SetSysClkSource>
 8000a9a:	46c0      	nop			; (mov r8, r8)
 8000a9c:	f7ff fca0 	bl	80003e0 <LL_RCC_GetSysClkSource>
 8000aa0:	0003      	movs	r3, r0
 8000aa2:	2b08      	cmp	r3, #8
 8000aa4:	d1fa      	bne.n	8000a9c <rcc_config+0x44>
 8000aa6:	2000      	movs	r0, #0
 8000aa8:	f7ff fcba 	bl	8000420 <LL_RCC_SetAPB1Prescaler>
 8000aac:	4b02      	ldr	r3, [pc, #8]	; (8000ab8 <rcc_config+0x60>)
 8000aae:	4a03      	ldr	r2, [pc, #12]	; (8000abc <rcc_config+0x64>)
 8000ab0:	601a      	str	r2, [r3, #0]
 8000ab2:	46c0      	nop			; (mov r8, r8)
 8000ab4:	46bd      	mov	sp, r7
 8000ab6:	bd80      	pop	{r7, pc}
 8000ab8:	20000000 	.word	0x20000000
 8000abc:	02dc6c00 	.word	0x02dc6c00

08000ac0 <gpio_config>:
 8000ac0:	b580      	push	{r7, lr}
 8000ac2:	af00      	add	r7, sp, #0
 8000ac4:	2380      	movs	r3, #128	; 0x80
 8000ac6:	029b      	lsls	r3, r3, #10
 8000ac8:	0018      	movs	r0, r3
 8000aca:	f7ff fd5b 	bl	8000584 <LL_AHB1_GRP1_EnableClock>
 8000ace:	2380      	movs	r3, #128	; 0x80
 8000ad0:	031b      	lsls	r3, r3, #12
 8000ad2:	0018      	movs	r0, r3
 8000ad4:	f7ff fd56 	bl	8000584 <LL_AHB1_GRP1_EnableClock>
 8000ad8:	2380      	movs	r3, #128	; 0x80
 8000ada:	005b      	lsls	r3, r3, #1
 8000adc:	4807      	ldr	r0, [pc, #28]	; (8000afc <gpio_config+0x3c>)
 8000ade:	2201      	movs	r2, #1
 8000ae0:	0019      	movs	r1, r3
 8000ae2:	f7ff fd7b 	bl	80005dc <LL_GPIO_SetPinMode>
 8000ae6:	2380      	movs	r3, #128	; 0x80
 8000ae8:	009b      	lsls	r3, r3, #2
 8000aea:	4804      	ldr	r0, [pc, #16]	; (8000afc <gpio_config+0x3c>)
 8000aec:	2201      	movs	r2, #1
 8000aee:	0019      	movs	r1, r3
 8000af0:	f7ff fd74 	bl	80005dc <LL_GPIO_SetPinMode>
 8000af4:	46c0      	nop			; (mov r8, r8)
 8000af6:	46bd      	mov	sp, r7
 8000af8:	bd80      	pop	{r7, pc}
 8000afa:	46c0      	nop			; (mov r8, r8)
 8000afc:	48000800 	.word	0x48000800

08000b00 <exti_config>:
 8000b00:	b580      	push	{r7, lr}
 8000b02:	af00      	add	r7, sp, #0
 8000b04:	2001      	movs	r0, #1
 8000b06:	f7ff fd53 	bl	80005b0 <LL_APB1_GRP2_EnableClock>
 8000b0a:	2100      	movs	r1, #0
 8000b0c:	2000      	movs	r0, #0
 8000b0e:	f7ff fcff 	bl	8000510 <LL_SYSCFG_SetEXTISource>
 8000b12:	2001      	movs	r0, #1
 8000b14:	f7ff fdf0 	bl	80006f8 <LL_EXTI_EnableIT_0_31>
 8000b18:	2001      	movs	r0, #1
 8000b1a:	f7ff fe0d 	bl	8000738 <LL_EXTI_EnableFallingTrig_0_31>
 8000b1e:	2001      	movs	r0, #1
 8000b20:	f7ff fdfa 	bl	8000718 <LL_EXTI_EnableRisingTrig_0_31>
 8000b24:	2005      	movs	r0, #5
 8000b26:	f7ff fba5 	bl	8000274 <NVIC_EnableIRQ>
 8000b2a:	2100      	movs	r1, #0
 8000b2c:	2005      	movs	r0, #5
 8000b2e:	f7ff fbb7 	bl	80002a0 <NVIC_SetPriority>
 8000b32:	46c0      	nop			; (mov r8, r8)
 8000b34:	46bd      	mov	sp, r7
 8000b36:	bd80      	pop	{r7, pc}

08000b38 <usart_config>:
 8000b38:	b580      	push	{r7, lr}
 8000b3a:	af00      	add	r7, sp, #0
 8000b3c:	2380      	movs	r3, #128	; 0x80
 8000b3e:	029b      	lsls	r3, r3, #10
 8000b40:	0018      	movs	r0, r3
 8000b42:	f7ff fd1f 	bl	8000584 <LL_AHB1_GRP1_EnableClock>
 8000b46:	2380      	movs	r3, #128	; 0x80
 8000b48:	0099      	lsls	r1, r3, #2
 8000b4a:	2390      	movs	r3, #144	; 0x90
 8000b4c:	05db      	lsls	r3, r3, #23
 8000b4e:	2202      	movs	r2, #2
 8000b50:	0018      	movs	r0, r3
 8000b52:	f7ff fd43 	bl	80005dc <LL_GPIO_SetPinMode>
 8000b56:	2380      	movs	r3, #128	; 0x80
 8000b58:	0099      	lsls	r1, r3, #2
 8000b5a:	2390      	movs	r3, #144	; 0x90
 8000b5c:	05db      	lsls	r3, r3, #23
 8000b5e:	2201      	movs	r2, #1
 8000b60:	0018      	movs	r0, r3
 8000b62:	f7ff fd75 	bl	8000650 <LL_GPIO_SetAFPin_8_15>
 8000b66:	2380      	movs	r3, #128	; 0x80
 8000b68:	0099      	lsls	r1, r3, #2
 8000b6a:	2390      	movs	r3, #144	; 0x90
 8000b6c:	05db      	lsls	r3, r3, #23
 8000b6e:	2203      	movs	r2, #3
 8000b70:	0018      	movs	r0, r3
 8000b72:	f7ff fd50 	bl	8000616 <LL_GPIO_SetPinSpeed>
 8000b76:	2380      	movs	r3, #128	; 0x80
 8000b78:	00d9      	lsls	r1, r3, #3
 8000b7a:	2390      	movs	r3, #144	; 0x90
 8000b7c:	05db      	lsls	r3, r3, #23
 8000b7e:	2202      	movs	r2, #2
 8000b80:	0018      	movs	r0, r3
 8000b82:	f7ff fd2b 	bl	80005dc <LL_GPIO_SetPinMode>
 8000b86:	2380      	movs	r3, #128	; 0x80
 8000b88:	00d9      	lsls	r1, r3, #3
 8000b8a:	2390      	movs	r3, #144	; 0x90
 8000b8c:	05db      	lsls	r3, r3, #23
 8000b8e:	2201      	movs	r2, #1
 8000b90:	0018      	movs	r0, r3
 8000b92:	f7ff fd5d 	bl	8000650 <LL_GPIO_SetAFPin_8_15>
 8000b96:	2380      	movs	r3, #128	; 0x80
 8000b98:	00d9      	lsls	r1, r3, #3
 8000b9a:	2390      	movs	r3, #144	; 0x90
 8000b9c:	05db      	lsls	r3, r3, #23
 8000b9e:	2203      	movs	r2, #3
 8000ba0:	0018      	movs	r0, r3
 8000ba2:	f7ff fd38 	bl	8000616 <LL_GPIO_SetPinSpeed>
 8000ba6:	2380      	movs	r3, #128	; 0x80
 8000ba8:	01db      	lsls	r3, r3, #7
 8000baa:	0018      	movs	r0, r3
 8000bac:	f7ff fd00 	bl	80005b0 <LL_APB1_GRP2_EnableClock>
 8000bb0:	2000      	movs	r0, #0
 8000bb2:	f7ff fc4b 	bl	800044c <LL_RCC_SetUSARTClockSource>
 8000bb6:	4b22      	ldr	r3, [pc, #136]	; (8000c40 <usart_config+0x108>)
 8000bb8:	210c      	movs	r1, #12
 8000bba:	0018      	movs	r0, r3
 8000bbc:	f7ff fe10 	bl	80007e0 <LL_USART_SetTransferDirection>
 8000bc0:	4b1f      	ldr	r3, [pc, #124]	; (8000c40 <usart_config+0x108>)
 8000bc2:	2100      	movs	r1, #0
 8000bc4:	0018      	movs	r0, r3
 8000bc6:	f7ff fe1d 	bl	8000804 <LL_USART_SetParity>
 8000bca:	4b1d      	ldr	r3, [pc, #116]	; (8000c40 <usart_config+0x108>)
 8000bcc:	2100      	movs	r1, #0
 8000bce:	0018      	movs	r0, r3
 8000bd0:	f7ff fe2c 	bl	800082c <LL_USART_SetDataWidth>
 8000bd4:	4b1a      	ldr	r3, [pc, #104]	; (8000c40 <usart_config+0x108>)
 8000bd6:	2100      	movs	r1, #0
 8000bd8:	0018      	movs	r0, r3
 8000bda:	f7ff fe3b 	bl	8000854 <LL_USART_SetStopBitsLength>
 8000bde:	4b18      	ldr	r3, [pc, #96]	; (8000c40 <usart_config+0x108>)
 8000be0:	2100      	movs	r1, #0
 8000be2:	0018      	movs	r0, r3
 8000be4:	f7ff fe4a 	bl	800087c <LL_USART_SetTransferBitOrder>
 8000be8:	4b16      	ldr	r3, [pc, #88]	; (8000c44 <usart_config+0x10c>)
 8000bea:	6819      	ldr	r1, [r3, #0]
 8000bec:	23e1      	movs	r3, #225	; 0xe1
 8000bee:	025b      	lsls	r3, r3, #9
 8000bf0:	4813      	ldr	r0, [pc, #76]	; (8000c40 <usart_config+0x108>)
 8000bf2:	2200      	movs	r2, #0
 8000bf4:	f7ff fe56 	bl	80008a4 <LL_USART_SetBaudRate>
 8000bf8:	4b11      	ldr	r3, [pc, #68]	; (8000c40 <usart_config+0x108>)
 8000bfa:	0018      	movs	r0, r3
 8000bfc:	f7ff fef3 	bl	80009e6 <LL_USART_EnableIT_IDLE>
 8000c00:	4b0f      	ldr	r3, [pc, #60]	; (8000c40 <usart_config+0x108>)
 8000c02:	0018      	movs	r0, r3
 8000c04:	f7ff fefd 	bl	8000a02 <LL_USART_EnableIT_RXNE>
 8000c08:	4b0d      	ldr	r3, [pc, #52]	; (8000c40 <usart_config+0x108>)
 8000c0a:	0018      	movs	r0, r3
 8000c0c:	f7ff fdda 	bl	80007c4 <LL_USART_Enable>
 8000c10:	46c0      	nop			; (mov r8, r8)
 8000c12:	4b0b      	ldr	r3, [pc, #44]	; (8000c40 <usart_config+0x108>)
 8000c14:	0018      	movs	r0, r3
 8000c16:	f7ff feaf 	bl	8000978 <LL_USART_IsActiveFlag_TEACK>
 8000c1a:	1e03      	subs	r3, r0, #0
 8000c1c:	d0f9      	beq.n	8000c12 <usart_config+0xda>
 8000c1e:	4b08      	ldr	r3, [pc, #32]	; (8000c40 <usart_config+0x108>)
 8000c20:	0018      	movs	r0, r3
 8000c22:	f7ff febf 	bl	80009a4 <LL_USART_IsActiveFlag_REACK>
 8000c26:	1e03      	subs	r3, r0, #0
 8000c28:	d0f3      	beq.n	8000c12 <usart_config+0xda>
 8000c2a:	2100      	movs	r1, #0
 8000c2c:	201b      	movs	r0, #27
 8000c2e:	f7ff fb37 	bl	80002a0 <NVIC_SetPriority>
 8000c32:	201b      	movs	r0, #27
 8000c34:	f7ff fb1e 	bl	8000274 <NVIC_EnableIRQ>
 8000c38:	46c0      	nop			; (mov r8, r8)
 8000c3a:	46bd      	mov	sp, r7
 8000c3c:	bd80      	pop	{r7, pc}
 8000c3e:	46c0      	nop			; (mov r8, r8)
 8000c40:	40013800 	.word	0x40013800
 8000c44:	20000000 	.word	0x20000000

08000c48 <EXTI0_1_IRQHandler>:
 8000c48:	b580      	push	{r7, lr}
 8000c4a:	b082      	sub	sp, #8
 8000c4c:	af00      	add	r7, sp, #0
 8000c4e:	4b3e      	ldr	r3, [pc, #248]	; (8000d48 <EXTI0_1_IRQHandler+0x100>)
 8000c50:	681b      	ldr	r3, [r3, #0]
 8000c52:	607b      	str	r3, [r7, #4]
 8000c54:	4b3d      	ldr	r3, [pc, #244]	; (8000d4c <EXTI0_1_IRQHandler+0x104>)
 8000c56:	681b      	ldr	r3, [r3, #0]
 8000c58:	687a      	ldr	r2, [r7, #4]
 8000c5a:	1ad3      	subs	r3, r2, r3
 8000c5c:	603b      	str	r3, [r7, #0]
 8000c5e:	2246      	movs	r2, #70	; 0x46
 8000c60:	683b      	ldr	r3, [r7, #0]
 8000c62:	4293      	cmp	r3, r2
 8000c64:	da03      	bge.n	8000c6e <EXTI0_1_IRQHandler+0x26>
 8000c66:	2001      	movs	r0, #1
 8000c68:	f7ff fd76 	bl	8000758 <LL_EXTI_ClearFlag_0_31>
 8000c6c:	e068      	b.n	8000d40 <EXTI0_1_IRQHandler+0xf8>
 8000c6e:	4b38      	ldr	r3, [pc, #224]	; (8000d50 <EXTI0_1_IRQHandler+0x108>)
 8000c70:	2201      	movs	r2, #1
 8000c72:	601a      	str	r2, [r3, #0]
 8000c74:	4b37      	ldr	r3, [pc, #220]	; (8000d54 <EXTI0_1_IRQHandler+0x10c>)
 8000c76:	681b      	ldr	r3, [r3, #0]
 8000c78:	2b00      	cmp	r3, #0
 8000c7a:	d121      	bne.n	8000cc0 <EXTI0_1_IRQHandler+0x78>
 8000c7c:	23c8      	movs	r3, #200	; 0xc8
 8000c7e:	005b      	lsls	r3, r3, #1
 8000c80:	683a      	ldr	r2, [r7, #0]
 8000c82:	429a      	cmp	r2, r3
 8000c84:	dd0b      	ble.n	8000c9e <EXTI0_1_IRQHandler+0x56>
 8000c86:	4b34      	ldr	r3, [pc, #208]	; (8000d58 <EXTI0_1_IRQHandler+0x110>)
 8000c88:	681b      	ldr	r3, [r3, #0]
 8000c8a:	2b00      	cmp	r3, #0
 8000c8c:	d007      	beq.n	8000c9e <EXTI0_1_IRQHandler+0x56>
 8000c8e:	4b32      	ldr	r3, [pc, #200]	; (8000d58 <EXTI0_1_IRQHandler+0x110>)
 8000c90:	681b      	ldr	r3, [r3, #0]
 8000c92:	1c59      	adds	r1, r3, #1
 8000c94:	4a30      	ldr	r2, [pc, #192]	; (8000d58 <EXTI0_1_IRQHandler+0x110>)
 8000c96:	6011      	str	r1, [r2, #0]
 8000c98:	4a30      	ldr	r2, [pc, #192]	; (8000d5c <EXTI0_1_IRQHandler+0x114>)
 8000c9a:	2103      	movs	r1, #3
 8000c9c:	54d1      	strb	r1, [r2, r3]
 8000c9e:	4b2d      	ldr	r3, [pc, #180]	; (8000d54 <EXTI0_1_IRQHandler+0x10c>)
 8000ca0:	2201      	movs	r2, #1
 8000ca2:	601a      	str	r2, [r3, #0]
 8000ca4:	4b29      	ldr	r3, [pc, #164]	; (8000d4c <EXTI0_1_IRQHandler+0x104>)
 8000ca6:	687a      	ldr	r2, [r7, #4]
 8000ca8:	601a      	str	r2, [r3, #0]
 8000caa:	2380      	movs	r3, #128	; 0x80
 8000cac:	009b      	lsls	r3, r3, #2
 8000cae:	4a2c      	ldr	r2, [pc, #176]	; (8000d60 <EXTI0_1_IRQHandler+0x118>)
 8000cb0:	0019      	movs	r1, r3
 8000cb2:	0010      	movs	r0, r2
 8000cb4:	f7ff fd11 	bl	80006da <LL_GPIO_TogglePin>
 8000cb8:	2001      	movs	r0, #1
 8000cba:	f7ff fd4d 	bl	8000758 <LL_EXTI_ClearFlag_0_31>
 8000cbe:	e03f      	b.n	8000d40 <EXTI0_1_IRQHandler+0xf8>
 8000cc0:	4b24      	ldr	r3, [pc, #144]	; (8000d54 <EXTI0_1_IRQHandler+0x10c>)
 8000cc2:	2200      	movs	r2, #0
 8000cc4:	601a      	str	r2, [r3, #0]
 8000cc6:	23c8      	movs	r3, #200	; 0xc8
 8000cc8:	005b      	lsls	r3, r3, #1
 8000cca:	683a      	ldr	r2, [r7, #0]
 8000ccc:	429a      	cmp	r2, r3
 8000cce:	dc16      	bgt.n	8000cfe <EXTI0_1_IRQHandler+0xb6>
 8000cd0:	4b21      	ldr	r3, [pc, #132]	; (8000d58 <EXTI0_1_IRQHandler+0x110>)
 8000cd2:	681b      	ldr	r3, [r3, #0]
 8000cd4:	1c59      	adds	r1, r3, #1
 8000cd6:	4a20      	ldr	r2, [pc, #128]	; (8000d58 <EXTI0_1_IRQHandler+0x110>)
 8000cd8:	6011      	str	r1, [r2, #0]
 8000cda:	4a20      	ldr	r2, [pc, #128]	; (8000d5c <EXTI0_1_IRQHandler+0x114>)
 8000cdc:	2101      	movs	r1, #1
 8000cde:	54d1      	strb	r1, [r2, r3]
 8000ce0:	2380      	movs	r3, #128	; 0x80
 8000ce2:	009b      	lsls	r3, r3, #2
 8000ce4:	4a1e      	ldr	r2, [pc, #120]	; (8000d60 <EXTI0_1_IRQHandler+0x118>)
 8000ce6:	0019      	movs	r1, r3
 8000ce8:	0010      	movs	r0, r2
 8000cea:	f7ff fcf6 	bl	80006da <LL_GPIO_TogglePin>
 8000cee:	2380      	movs	r3, #128	; 0x80
 8000cf0:	005b      	lsls	r3, r3, #1
 8000cf2:	4a1b      	ldr	r2, [pc, #108]	; (8000d60 <EXTI0_1_IRQHandler+0x118>)
 8000cf4:	0019      	movs	r1, r3
 8000cf6:	0010      	movs	r0, r2
 8000cf8:	f7ff fce3 	bl	80006c2 <LL_GPIO_ResetOutputPin>
 8000cfc:	e01a      	b.n	8000d34 <EXTI0_1_IRQHandler+0xec>
 8000cfe:	23c8      	movs	r3, #200	; 0xc8
 8000d00:	005b      	lsls	r3, r3, #1
 8000d02:	683a      	ldr	r2, [r7, #0]
 8000d04:	429a      	cmp	r2, r3
 8000d06:	dd15      	ble.n	8000d34 <EXTI0_1_IRQHandler+0xec>
 8000d08:	4b13      	ldr	r3, [pc, #76]	; (8000d58 <EXTI0_1_IRQHandler+0x110>)
 8000d0a:	681b      	ldr	r3, [r3, #0]
 8000d0c:	1c59      	adds	r1, r3, #1
 8000d0e:	4a12      	ldr	r2, [pc, #72]	; (8000d58 <EXTI0_1_IRQHandler+0x110>)
 8000d10:	6011      	str	r1, [r2, #0]
 8000d12:	4a12      	ldr	r2, [pc, #72]	; (8000d5c <EXTI0_1_IRQHandler+0x114>)
 8000d14:	2102      	movs	r1, #2
 8000d16:	54d1      	strb	r1, [r2, r3]
 8000d18:	2380      	movs	r3, #128	; 0x80
 8000d1a:	009b      	lsls	r3, r3, #2
 8000d1c:	4a10      	ldr	r2, [pc, #64]	; (8000d60 <EXTI0_1_IRQHandler+0x118>)
 8000d1e:	0019      	movs	r1, r3
 8000d20:	0010      	movs	r0, r2
 8000d22:	f7ff fcda 	bl	80006da <LL_GPIO_TogglePin>
 8000d26:	2380      	movs	r3, #128	; 0x80
 8000d28:	005b      	lsls	r3, r3, #1
 8000d2a:	4a0d      	ldr	r2, [pc, #52]	; (8000d60 <EXTI0_1_IRQHandler+0x118>)
 8000d2c:	0019      	movs	r1, r3
 8000d2e:	0010      	movs	r0, r2
 8000d30:	f7ff fcbb 	bl	80006aa <LL_GPIO_SetOutputPin>
 8000d34:	4b05      	ldr	r3, [pc, #20]	; (8000d4c <EXTI0_1_IRQHandler+0x104>)
 8000d36:	687a      	ldr	r2, [r7, #4]
 8000d38:	601a      	str	r2, [r3, #0]
 8000d3a:	2001      	movs	r0, #1
 8000d3c:	f7ff fd0c 	bl	8000758 <LL_EXTI_ClearFlag_0_31>
 8000d40:	46bd      	mov	sp, r7
 8000d42:	b002      	add	sp, #8
 8000d44:	bd80      	pop	{r7, pc}
 8000d46:	46c0      	nop			; (mov r8, r8)
 8000d48:	20000450 	.word	0x20000450
 8000d4c:	2000064c 	.word	0x2000064c
 8000d50:	20000650 	.word	0x20000650
 8000d54:	200006b0 	.word	0x200006b0
 8000d58:	20000648 	.word	0x20000648
 8000d5c:	20000454 	.word	0x20000454
 8000d60:	48000800 	.word	0x48000800

08000d64 <delay>:
 8000d64:	b580      	push	{r7, lr}
 8000d66:	4e02      	ldr	r6, [pc, #8]	; (8000d70 <delay+0xc>)
 8000d68:	3e01      	subs	r6, #1
 8000d6a:	2e00      	cmp	r6, #0
 8000d6c:	d1fc      	bne.n	8000d68 <delay+0x4>
 8000d6e:	bd80      	pop	{r7, pc}
 8000d70:	0011ffff 	.word	0x0011ffff
 8000d74:	46c0      	nop			; (mov r8, r8)
	...

08000d78 <systick_config>:
 8000d78:	b580      	push	{r7, lr}
 8000d7a:	af00      	add	r7, sp, #0
 8000d7c:	23fa      	movs	r3, #250	; 0xfa
 8000d7e:	009b      	lsls	r3, r3, #2
 8000d80:	4a07      	ldr	r2, [pc, #28]	; (8000da0 <systick_config+0x28>)
 8000d82:	0019      	movs	r1, r3
 8000d84:	0010      	movs	r0, r2
 8000d86:	f7ff fcf5 	bl	8000774 <LL_InitTick>
 8000d8a:	f7ff fd0d 	bl	80007a8 <LL_SYSTICK_EnableIT>
 8000d8e:	2301      	movs	r3, #1
 8000d90:	425b      	negs	r3, r3
 8000d92:	2100      	movs	r1, #0
 8000d94:	0018      	movs	r0, r3
 8000d96:	f7ff fa83 	bl	80002a0 <NVIC_SetPriority>
 8000d9a:	46c0      	nop			; (mov r8, r8)
 8000d9c:	46bd      	mov	sp, r7
 8000d9e:	bd80      	pop	{r7, pc}
 8000da0:	02dc6c00 	.word	0x02dc6c00

08000da4 <send_message>:
 8000da4:	b580      	push	{r7, lr}
 8000da6:	b084      	sub	sp, #16
 8000da8:	af00      	add	r7, sp, #0
 8000daa:	6078      	str	r0, [r7, #4]
 8000dac:	2300      	movs	r3, #0
 8000dae:	60fb      	str	r3, [r7, #12]
 8000db0:	e012      	b.n	8000dd8 <send_message+0x34>
 8000db2:	46c0      	nop			; (mov r8, r8)
 8000db4:	4b14      	ldr	r3, [pc, #80]	; (8000e08 <send_message+0x64>)
 8000db6:	0018      	movs	r0, r3
 8000db8:	f7ff fdce 	bl	8000958 <LL_USART_IsActiveFlag_TXE>
 8000dbc:	1e03      	subs	r3, r0, #0
 8000dbe:	d0f9      	beq.n	8000db4 <send_message+0x10>
 8000dc0:	687a      	ldr	r2, [r7, #4]
 8000dc2:	68fb      	ldr	r3, [r7, #12]
 8000dc4:	18d3      	adds	r3, r2, r3
 8000dc6:	781b      	ldrb	r3, [r3, #0]
 8000dc8:	4a0f      	ldr	r2, [pc, #60]	; (8000e08 <send_message+0x64>)
 8000dca:	0019      	movs	r1, r3
 8000dcc:	0010      	movs	r0, r2
 8000dce:	f7ff fe32 	bl	8000a36 <LL_USART_TransmitData8>
 8000dd2:	68fb      	ldr	r3, [r7, #12]
 8000dd4:	3301      	adds	r3, #1
 8000dd6:	60fb      	str	r3, [r7, #12]
 8000dd8:	687a      	ldr	r2, [r7, #4]
 8000dda:	68fb      	ldr	r3, [r7, #12]
 8000ddc:	18d3      	adds	r3, r2, r3
 8000dde:	781b      	ldrb	r3, [r3, #0]
 8000de0:	2b00      	cmp	r3, #0
 8000de2:	d1e6      	bne.n	8000db2 <send_message+0xe>
 8000de4:	46c0      	nop			; (mov r8, r8)
 8000de6:	4b08      	ldr	r3, [pc, #32]	; (8000e08 <send_message+0x64>)
 8000de8:	0018      	movs	r0, r3
 8000dea:	f7ff fda5 	bl	8000938 <LL_USART_IsActiveFlag_TC>
 8000dee:	1e03      	subs	r3, r0, #0
 8000df0:	d0f9      	beq.n	8000de6 <send_message+0x42>
 8000df2:	2380      	movs	r3, #128	; 0x80
 8000df4:	005b      	lsls	r3, r3, #1
 8000df6:	4a05      	ldr	r2, [pc, #20]	; (8000e0c <send_message+0x68>)
 8000df8:	0019      	movs	r1, r3
 8000dfa:	0010      	movs	r0, r2
 8000dfc:	f7ff fc55 	bl	80006aa <LL_GPIO_SetOutputPin>
 8000e00:	46c0      	nop			; (mov r8, r8)
 8000e02:	46bd      	mov	sp, r7
 8000e04:	b004      	add	sp, #16
 8000e06:	bd80      	pop	{r7, pc}
 8000e08:	40013800 	.word	0x40013800
 8000e0c:	48000800 	.word	0x48000800

08000e10 <USART1_IRQHandler>:
 8000e10:	b5b0      	push	{r4, r5, r7, lr}
 8000e12:	af00      	add	r7, sp, #0
 8000e14:	4b11      	ldr	r3, [pc, #68]	; (8000e5c <USART1_IRQHandler+0x4c>)
 8000e16:	0018      	movs	r0, r3
 8000e18:	f7ff fd7e 	bl	8000918 <LL_USART_IsActiveFlag_RXNE>
 8000e1c:	1e03      	subs	r3, r0, #0
 8000e1e:	d00f      	beq.n	8000e40 <USART1_IRQHandler+0x30>
 8000e20:	4b0f      	ldr	r3, [pc, #60]	; (8000e60 <USART1_IRQHandler+0x50>)
 8000e22:	681c      	ldr	r4, [r3, #0]
 8000e24:	4b0d      	ldr	r3, [pc, #52]	; (8000e5c <USART1_IRQHandler+0x4c>)
 8000e26:	0018      	movs	r0, r3
 8000e28:	f7ff fdf9 	bl	8000a1e <LL_USART_ReceiveData8>
 8000e2c:	0003      	movs	r3, r0
 8000e2e:	001a      	movs	r2, r3
 8000e30:	4b0c      	ldr	r3, [pc, #48]	; (8000e64 <USART1_IRQHandler+0x54>)
 8000e32:	551a      	strb	r2, [r3, r4]
 8000e34:	4b0a      	ldr	r3, [pc, #40]	; (8000e60 <USART1_IRQHandler+0x50>)
 8000e36:	681b      	ldr	r3, [r3, #0]
 8000e38:	1c5a      	adds	r2, r3, #1
 8000e3a:	4b09      	ldr	r3, [pc, #36]	; (8000e60 <USART1_IRQHandler+0x50>)
 8000e3c:	601a      	str	r2, [r3, #0]
 8000e3e:	e009      	b.n	8000e54 <USART1_IRQHandler+0x44>
 8000e40:	4b07      	ldr	r3, [pc, #28]	; (8000e60 <USART1_IRQHandler+0x50>)
 8000e42:	2200      	movs	r2, #0
 8000e44:	601a      	str	r2, [r3, #0]
 8000e46:	4b05      	ldr	r3, [pc, #20]	; (8000e5c <USART1_IRQHandler+0x4c>)
 8000e48:	0018      	movs	r0, r3
 8000e4a:	f7ff fdc1 	bl	80009d0 <LL_USART_ClearFlag_IDLE>
 8000e4e:	4b06      	ldr	r3, [pc, #24]	; (8000e68 <USART1_IRQHandler+0x58>)
 8000e50:	2201      	movs	r2, #1
 8000e52:	601a      	str	r2, [r3, #0]
 8000e54:	46c0      	nop			; (mov r8, r8)
 8000e56:	46bd      	mov	sp, r7
 8000e58:	bdb0      	pop	{r4, r5, r7, pc}
 8000e5a:	46c0      	nop			; (mov r8, r8)
 8000e5c:	40013800 	.word	0x40013800
 8000e60:	200006b4 	.word	0x200006b4
 8000e64:	2000066c 	.word	0x2000066c
 8000e68:	200006ac 	.word	0x200006ac

08000e6c <push_ASCII>:
 8000e6c:	b580      	push	{r7, lr}
 8000e6e:	b082      	sub	sp, #8
 8000e70:	af00      	add	r7, sp, #0
 8000e72:	6078      	str	r0, [r7, #4]
 8000e74:	687b      	ldr	r3, [r7, #4]
 8000e76:	4ac7      	ldr	r2, [pc, #796]	; (8001194 <push_ASCII+0x328>)
 8000e78:	4293      	cmp	r3, r2
 8000e7a:	d100      	bne.n	8000e7e <push_ASCII+0x12>
 8000e7c:	e10c      	b.n	8001098 <push_ASCII+0x22c>
 8000e7e:	4ac5      	ldr	r2, [pc, #788]	; (8001194 <push_ASCII+0x328>)
 8000e80:	4293      	cmp	r3, r2
 8000e82:	dc45      	bgt.n	8000f10 <push_ASCII+0xa4>
 8000e84:	2b7a      	cmp	r3, #122	; 0x7a
 8000e86:	d100      	bne.n	8000e8a <push_ASCII+0x1e>
 8000e88:	e169      	b.n	800115e <push_ASCII+0x2f2>
 8000e8a:	dc1c      	bgt.n	8000ec6 <push_ASCII+0x5a>
 8000e8c:	2b0c      	cmp	r3, #12
 8000e8e:	d100      	bne.n	8000e92 <push_ASCII+0x26>
 8000e90:	e09f      	b.n	8000fd2 <push_ASCII+0x166>
 8000e92:	dc09      	bgt.n	8000ea8 <push_ASCII+0x3c>
 8000e94:	2b02      	cmp	r3, #2
 8000e96:	d100      	bne.n	8000e9a <push_ASCII+0x2e>
 8000e98:	e146      	b.n	8001128 <push_ASCII+0x2bc>
 8000e9a:	2b0b      	cmp	r3, #11
 8000e9c:	d100      	bne.n	8000ea0 <push_ASCII+0x34>
 8000e9e:	e0e0      	b.n	8001062 <push_ASCII+0x1f6>
 8000ea0:	2b01      	cmp	r3, #1
 8000ea2:	d100      	bne.n	8000ea6 <push_ASCII+0x3a>
 8000ea4:	e0b9      	b.n	800101a <push_ASCII+0x1ae>
 8000ea6:	e206      	b.n	80012b6 <push_ASCII+0x44a>
 8000ea8:	2b16      	cmp	r3, #22
 8000eaa:	d100      	bne.n	8000eae <push_ASCII+0x42>
 8000eac:	e0fd      	b.n	80010aa <push_ASCII+0x23e>
 8000eae:	dc03      	bgt.n	8000eb8 <push_ASCII+0x4c>
 8000eb0:	2b15      	cmp	r3, #21
 8000eb2:	d100      	bne.n	8000eb6 <push_ASCII+0x4a>
 8000eb4:	e102      	b.n	80010bc <push_ASCII+0x250>
 8000eb6:	e1fe      	b.n	80012b6 <push_ASCII+0x44a>
 8000eb8:	2b6f      	cmp	r3, #111	; 0x6f
 8000eba:	d100      	bne.n	8000ebe <push_ASCII+0x52>
 8000ebc:	e12b      	b.n	8001116 <push_ASCII+0x2aa>
 8000ebe:	2b79      	cmp	r3, #121	; 0x79
 8000ec0:	d100      	bne.n	8000ec4 <push_ASCII+0x58>
 8000ec2:	e11f      	b.n	8001104 <push_ASCII+0x298>
 8000ec4:	e1f7      	b.n	80012b6 <push_ASCII+0x44a>
 8000ec6:	2bde      	cmp	r3, #222	; 0xde
 8000ec8:	d100      	bne.n	8000ecc <push_ASCII+0x60>
 8000eca:	e100      	b.n	80010ce <push_ASCII+0x262>
 8000ecc:	dc09      	bgt.n	8000ee2 <push_ASCII+0x76>
 8000ece:	2bd4      	cmp	r3, #212	; 0xd4
 8000ed0:	d100      	bne.n	8000ed4 <push_ASCII+0x68>
 8000ed2:	e0d8      	b.n	8001086 <push_ASCII+0x21a>
 8000ed4:	2bdd      	cmp	r3, #221	; 0xdd
 8000ed6:	d100      	bne.n	8000eda <push_ASCII+0x6e>
 8000ed8:	e0b1      	b.n	800103e <push_ASCII+0x1d2>
 8000eda:	2bd3      	cmp	r3, #211	; 0xd3
 8000edc:	d100      	bne.n	8000ee0 <push_ASCII+0x74>
 8000ede:	e093      	b.n	8001008 <push_ASCII+0x19c>
 8000ee0:	e1e9      	b.n	80012b6 <push_ASCII+0x44a>
 8000ee2:	228b      	movs	r2, #139	; 0x8b
 8000ee4:	00d2      	lsls	r2, r2, #3
 8000ee6:	4293      	cmp	r3, r2
 8000ee8:	d100      	bne.n	8000eec <push_ASCII+0x80>
 8000eea:	e12f      	b.n	800114c <push_ASCII+0x2e0>
 8000eec:	228b      	movs	r2, #139	; 0x8b
 8000eee:	00d2      	lsls	r2, r2, #3
 8000ef0:	4293      	cmp	r3, r2
 8000ef2:	dc04      	bgt.n	8000efe <push_ASCII+0x92>
 8000ef4:	4aa8      	ldr	r2, [pc, #672]	; (8001198 <push_ASCII+0x32c>)
 8000ef6:	4293      	cmp	r3, r2
 8000ef8:	d100      	bne.n	8000efc <push_ASCII+0x90>
 8000efa:	e0a9      	b.n	8001050 <push_ASCII+0x1e4>
 8000efc:	e1db      	b.n	80012b6 <push_ASCII+0x44a>
 8000efe:	4aa7      	ldr	r2, [pc, #668]	; (800119c <push_ASCII+0x330>)
 8000f00:	4293      	cmp	r3, r2
 8000f02:	d100      	bne.n	8000f06 <push_ASCII+0x9a>
 8000f04:	e092      	b.n	800102c <push_ASCII+0x1c0>
 8000f06:	4aa6      	ldr	r2, [pc, #664]	; (80011a0 <push_ASCII+0x334>)
 8000f08:	4293      	cmp	r3, r2
 8000f0a:	d100      	bne.n	8000f0e <push_ASCII+0xa2>
 8000f0c:	e115      	b.n	800113a <push_ASCII+0x2ce>
 8000f0e:	e1d2      	b.n	80012b6 <push_ASCII+0x44a>
 8000f10:	4aa4      	ldr	r2, [pc, #656]	; (80011a4 <push_ASCII+0x338>)
 8000f12:	4293      	cmp	r3, r2
 8000f14:	d100      	bne.n	8000f18 <push_ASCII+0xac>
 8000f16:	e198      	b.n	800124a <push_ASCII+0x3de>
 8000f18:	4aa2      	ldr	r2, [pc, #648]	; (80011a4 <push_ASCII+0x338>)
 8000f1a:	4293      	cmp	r3, r2
 8000f1c:	dc28      	bgt.n	8000f70 <push_ASCII+0x104>
 8000f1e:	2284      	movs	r2, #132	; 0x84
 8000f20:	0112      	lsls	r2, r2, #4
 8000f22:	4293      	cmp	r3, r2
 8000f24:	d100      	bne.n	8000f28 <push_ASCII+0xbc>
 8000f26:	e123      	b.n	8001170 <push_ASCII+0x304>
 8000f28:	2284      	movs	r2, #132	; 0x84
 8000f2a:	0112      	lsls	r2, r2, #4
 8000f2c:	4293      	cmp	r3, r2
 8000f2e:	dc0b      	bgt.n	8000f48 <push_ASCII+0xdc>
 8000f30:	4a9d      	ldr	r2, [pc, #628]	; (80011a8 <push_ASCII+0x33c>)
 8000f32:	4293      	cmp	r3, r2
 8000f34:	d100      	bne.n	8000f38 <push_ASCII+0xcc>
 8000f36:	e09d      	b.n	8001074 <push_ASCII+0x208>
 8000f38:	4a9c      	ldr	r2, [pc, #624]	; (80011ac <push_ASCII+0x340>)
 8000f3a:	4293      	cmp	r3, r2
 8000f3c:	d052      	beq.n	8000fe4 <push_ASCII+0x178>
 8000f3e:	4a9c      	ldr	r2, [pc, #624]	; (80011b0 <push_ASCII+0x344>)
 8000f40:	4293      	cmp	r3, r2
 8000f42:	d100      	bne.n	8000f46 <push_ASCII+0xda>
 8000f44:	e0cc      	b.n	80010e0 <push_ASCII+0x274>
 8000f46:	e1b6      	b.n	80012b6 <push_ASCII+0x44a>
 8000f48:	4a9a      	ldr	r2, [pc, #616]	; (80011b4 <push_ASCII+0x348>)
 8000f4a:	4293      	cmp	r3, r2
 8000f4c:	d100      	bne.n	8000f50 <push_ASCII+0xe4>
 8000f4e:	e118      	b.n	8001182 <push_ASCII+0x316>
 8000f50:	4a98      	ldr	r2, [pc, #608]	; (80011b4 <push_ASCII+0x348>)
 8000f52:	4293      	cmp	r3, r2
 8000f54:	dc03      	bgt.n	8000f5e <push_ASCII+0xf2>
 8000f56:	4a98      	ldr	r2, [pc, #608]	; (80011b8 <push_ASCII+0x34c>)
 8000f58:	4293      	cmp	r3, r2
 8000f5a:	d04c      	beq.n	8000ff6 <push_ASCII+0x18a>
 8000f5c:	e1ab      	b.n	80012b6 <push_ASCII+0x44a>
 8000f5e:	4a97      	ldr	r2, [pc, #604]	; (80011bc <push_ASCII+0x350>)
 8000f60:	4293      	cmp	r3, r2
 8000f62:	d100      	bne.n	8000f66 <push_ASCII+0xfa>
 8000f64:	e144      	b.n	80011f0 <push_ASCII+0x384>
 8000f66:	4a96      	ldr	r2, [pc, #600]	; (80011c0 <push_ASCII+0x354>)
 8000f68:	4293      	cmp	r3, r2
 8000f6a:	d100      	bne.n	8000f6e <push_ASCII+0x102>
 8000f6c:	e0c1      	b.n	80010f2 <push_ASCII+0x286>
 8000f6e:	e1a2      	b.n	80012b6 <push_ASCII+0x44a>
 8000f70:	4a94      	ldr	r2, [pc, #592]	; (80011c4 <push_ASCII+0x358>)
 8000f72:	4293      	cmp	r3, r2
 8000f74:	d100      	bne.n	8000f78 <push_ASCII+0x10c>
 8000f76:	e171      	b.n	800125c <push_ASCII+0x3f0>
 8000f78:	4a92      	ldr	r2, [pc, #584]	; (80011c4 <push_ASCII+0x358>)
 8000f7a:	4293      	cmp	r3, r2
 8000f7c:	dc14      	bgt.n	8000fa8 <push_ASCII+0x13c>
 8000f7e:	4a92      	ldr	r2, [pc, #584]	; (80011c8 <push_ASCII+0x35c>)
 8000f80:	4293      	cmp	r3, r2
 8000f82:	d100      	bne.n	8000f86 <push_ASCII+0x11a>
 8000f84:	e14f      	b.n	8001226 <push_ASCII+0x3ba>
 8000f86:	4a90      	ldr	r2, [pc, #576]	; (80011c8 <push_ASCII+0x35c>)
 8000f88:	4293      	cmp	r3, r2
 8000f8a:	dc04      	bgt.n	8000f96 <push_ASCII+0x12a>
 8000f8c:	4a8f      	ldr	r2, [pc, #572]	; (80011cc <push_ASCII+0x360>)
 8000f8e:	4293      	cmp	r3, r2
 8000f90:	d100      	bne.n	8000f94 <push_ASCII+0x128>
 8000f92:	e151      	b.n	8001238 <push_ASCII+0x3cc>
 8000f94:	e18f      	b.n	80012b6 <push_ASCII+0x44a>
 8000f96:	4a8e      	ldr	r2, [pc, #568]	; (80011d0 <push_ASCII+0x364>)
 8000f98:	4293      	cmp	r3, r2
 8000f9a:	d100      	bne.n	8000f9e <push_ASCII+0x132>
 8000f9c:	e13a      	b.n	8001214 <push_ASCII+0x3a8>
 8000f9e:	4a8d      	ldr	r2, [pc, #564]	; (80011d4 <push_ASCII+0x368>)
 8000fa0:	4293      	cmp	r3, r2
 8000fa2:	d100      	bne.n	8000fa6 <push_ASCII+0x13a>
 8000fa4:	e12d      	b.n	8001202 <push_ASCII+0x396>
 8000fa6:	e186      	b.n	80012b6 <push_ASCII+0x44a>
 8000fa8:	4a8b      	ldr	r2, [pc, #556]	; (80011d8 <push_ASCII+0x36c>)
 8000faa:	4293      	cmp	r3, r2
 8000fac:	d100      	bne.n	8000fb0 <push_ASCII+0x144>
 8000fae:	e167      	b.n	8001280 <push_ASCII+0x414>
 8000fb0:	4a89      	ldr	r2, [pc, #548]	; (80011d8 <push_ASCII+0x36c>)
 8000fb2:	4293      	cmp	r3, r2
 8000fb4:	dc04      	bgt.n	8000fc0 <push_ASCII+0x154>
 8000fb6:	4a89      	ldr	r2, [pc, #548]	; (80011dc <push_ASCII+0x370>)
 8000fb8:	4293      	cmp	r3, r2
 8000fba:	d100      	bne.n	8000fbe <push_ASCII+0x152>
 8000fbc:	e157      	b.n	800126e <push_ASCII+0x402>
 8000fbe:	e17a      	b.n	80012b6 <push_ASCII+0x44a>
 8000fc0:	4a87      	ldr	r2, [pc, #540]	; (80011e0 <push_ASCII+0x374>)
 8000fc2:	4293      	cmp	r3, r2
 8000fc4:	d100      	bne.n	8000fc8 <push_ASCII+0x15c>
 8000fc6:	e164      	b.n	8001292 <push_ASCII+0x426>
 8000fc8:	4a86      	ldr	r2, [pc, #536]	; (80011e4 <push_ASCII+0x378>)
 8000fca:	4293      	cmp	r3, r2
 8000fcc:	d100      	bne.n	8000fd0 <push_ASCII+0x164>
 8000fce:	e169      	b.n	80012a4 <push_ASCII+0x438>
 8000fd0:	e171      	b.n	80012b6 <push_ASCII+0x44a>
 8000fd2:	4b85      	ldr	r3, [pc, #532]	; (80011e8 <push_ASCII+0x37c>)
 8000fd4:	681b      	ldr	r3, [r3, #0]
 8000fd6:	1c59      	adds	r1, r3, #1
 8000fd8:	4a83      	ldr	r2, [pc, #524]	; (80011e8 <push_ASCII+0x37c>)
 8000fda:	6011      	str	r1, [r2, #0]
 8000fdc:	4a83      	ldr	r2, [pc, #524]	; (80011ec <push_ASCII+0x380>)
 8000fde:	2148      	movs	r1, #72	; 0x48
 8000fe0:	54d1      	strb	r1, [r2, r3]
 8000fe2:	e168      	b.n	80012b6 <push_ASCII+0x44a>
 8000fe4:	4b80      	ldr	r3, [pc, #512]	; (80011e8 <push_ASCII+0x37c>)
 8000fe6:	681b      	ldr	r3, [r3, #0]
 8000fe8:	1c59      	adds	r1, r3, #1
 8000fea:	4a7f      	ldr	r2, [pc, #508]	; (80011e8 <push_ASCII+0x37c>)
 8000fec:	6011      	str	r1, [r2, #0]
 8000fee:	4a7f      	ldr	r2, [pc, #508]	; (80011ec <push_ASCII+0x380>)
 8000ff0:	2149      	movs	r1, #73	; 0x49
 8000ff2:	54d1      	strb	r1, [r2, r3]
 8000ff4:	e15f      	b.n	80012b6 <push_ASCII+0x44a>
 8000ff6:	4b7c      	ldr	r3, [pc, #496]	; (80011e8 <push_ASCII+0x37c>)
 8000ff8:	681b      	ldr	r3, [r3, #0]
 8000ffa:	1c59      	adds	r1, r3, #1
 8000ffc:	4a7a      	ldr	r2, [pc, #488]	; (80011e8 <push_ASCII+0x37c>)
 8000ffe:	6011      	str	r1, [r2, #0]
 8001000:	4a7a      	ldr	r2, [pc, #488]	; (80011ec <push_ASCII+0x380>)
 8001002:	214a      	movs	r1, #74	; 0x4a
 8001004:	54d1      	strb	r1, [r2, r3]
 8001006:	e156      	b.n	80012b6 <push_ASCII+0x44a>
 8001008:	4b77      	ldr	r3, [pc, #476]	; (80011e8 <push_ASCII+0x37c>)
 800100a:	681b      	ldr	r3, [r3, #0]
 800100c:	1c59      	adds	r1, r3, #1
 800100e:	4a76      	ldr	r2, [pc, #472]	; (80011e8 <push_ASCII+0x37c>)
 8001010:	6011      	str	r1, [r2, #0]
 8001012:	4a76      	ldr	r2, [pc, #472]	; (80011ec <push_ASCII+0x380>)
 8001014:	214b      	movs	r1, #75	; 0x4b
 8001016:	54d1      	strb	r1, [r2, r3]
 8001018:	e14d      	b.n	80012b6 <push_ASCII+0x44a>
 800101a:	4b73      	ldr	r3, [pc, #460]	; (80011e8 <push_ASCII+0x37c>)
 800101c:	681b      	ldr	r3, [r3, #0]
 800101e:	1c59      	adds	r1, r3, #1
 8001020:	4a71      	ldr	r2, [pc, #452]	; (80011e8 <push_ASCII+0x37c>)
 8001022:	6011      	str	r1, [r2, #0]
 8001024:	4a71      	ldr	r2, [pc, #452]	; (80011ec <push_ASCII+0x380>)
 8001026:	214c      	movs	r1, #76	; 0x4c
 8001028:	54d1      	strb	r1, [r2, r3]
 800102a:	e144      	b.n	80012b6 <push_ASCII+0x44a>
 800102c:	4b6e      	ldr	r3, [pc, #440]	; (80011e8 <push_ASCII+0x37c>)
 800102e:	681b      	ldr	r3, [r3, #0]
 8001030:	1c59      	adds	r1, r3, #1
 8001032:	4a6d      	ldr	r2, [pc, #436]	; (80011e8 <push_ASCII+0x37c>)
 8001034:	6011      	str	r1, [r2, #0]
 8001036:	4a6d      	ldr	r2, [pc, #436]	; (80011ec <push_ASCII+0x380>)
 8001038:	214d      	movs	r1, #77	; 0x4d
 800103a:	54d1      	strb	r1, [r2, r3]
 800103c:	e13b      	b.n	80012b6 <push_ASCII+0x44a>
 800103e:	4b6a      	ldr	r3, [pc, #424]	; (80011e8 <push_ASCII+0x37c>)
 8001040:	681b      	ldr	r3, [r3, #0]
 8001042:	1c59      	adds	r1, r3, #1
 8001044:	4a68      	ldr	r2, [pc, #416]	; (80011e8 <push_ASCII+0x37c>)
 8001046:	6011      	str	r1, [r2, #0]
 8001048:	4a68      	ldr	r2, [pc, #416]	; (80011ec <push_ASCII+0x380>)
 800104a:	214e      	movs	r1, #78	; 0x4e
 800104c:	54d1      	strb	r1, [r2, r3]
 800104e:	e132      	b.n	80012b6 <push_ASCII+0x44a>
 8001050:	4b65      	ldr	r3, [pc, #404]	; (80011e8 <push_ASCII+0x37c>)
 8001052:	681b      	ldr	r3, [r3, #0]
 8001054:	1c59      	adds	r1, r3, #1
 8001056:	4a64      	ldr	r2, [pc, #400]	; (80011e8 <push_ASCII+0x37c>)
 8001058:	6011      	str	r1, [r2, #0]
 800105a:	4a64      	ldr	r2, [pc, #400]	; (80011ec <push_ASCII+0x380>)
 800105c:	214f      	movs	r1, #79	; 0x4f
 800105e:	54d1      	strb	r1, [r2, r3]
 8001060:	e129      	b.n	80012b6 <push_ASCII+0x44a>
 8001062:	4b61      	ldr	r3, [pc, #388]	; (80011e8 <push_ASCII+0x37c>)
 8001064:	681b      	ldr	r3, [r3, #0]
 8001066:	1c59      	adds	r1, r3, #1
 8001068:	4a5f      	ldr	r2, [pc, #380]	; (80011e8 <push_ASCII+0x37c>)
 800106a:	6011      	str	r1, [r2, #0]
 800106c:	4a5f      	ldr	r2, [pc, #380]	; (80011ec <push_ASCII+0x380>)
 800106e:	2150      	movs	r1, #80	; 0x50
 8001070:	54d1      	strb	r1, [r2, r3]
 8001072:	e120      	b.n	80012b6 <push_ASCII+0x44a>
 8001074:	4b5c      	ldr	r3, [pc, #368]	; (80011e8 <push_ASCII+0x37c>)
 8001076:	681b      	ldr	r3, [r3, #0]
 8001078:	1c59      	adds	r1, r3, #1
 800107a:	4a5b      	ldr	r2, [pc, #364]	; (80011e8 <push_ASCII+0x37c>)
 800107c:	6011      	str	r1, [r2, #0]
 800107e:	4a5b      	ldr	r2, [pc, #364]	; (80011ec <push_ASCII+0x380>)
 8001080:	2151      	movs	r1, #81	; 0x51
 8001082:	54d1      	strb	r1, [r2, r3]
 8001084:	e117      	b.n	80012b6 <push_ASCII+0x44a>
 8001086:	4b58      	ldr	r3, [pc, #352]	; (80011e8 <push_ASCII+0x37c>)
 8001088:	681b      	ldr	r3, [r3, #0]
 800108a:	1c59      	adds	r1, r3, #1
 800108c:	4a56      	ldr	r2, [pc, #344]	; (80011e8 <push_ASCII+0x37c>)
 800108e:	6011      	str	r1, [r2, #0]
 8001090:	4a56      	ldr	r2, [pc, #344]	; (80011ec <push_ASCII+0x380>)
 8001092:	2152      	movs	r1, #82	; 0x52
 8001094:	54d1      	strb	r1, [r2, r3]
 8001096:	e10e      	b.n	80012b6 <push_ASCII+0x44a>
 8001098:	4b53      	ldr	r3, [pc, #332]	; (80011e8 <push_ASCII+0x37c>)
 800109a:	681b      	ldr	r3, [r3, #0]
 800109c:	1c59      	adds	r1, r3, #1
 800109e:	4a52      	ldr	r2, [pc, #328]	; (80011e8 <push_ASCII+0x37c>)
 80010a0:	6011      	str	r1, [r2, #0]
 80010a2:	4a52      	ldr	r2, [pc, #328]	; (80011ec <push_ASCII+0x380>)
 80010a4:	2153      	movs	r1, #83	; 0x53
 80010a6:	54d1      	strb	r1, [r2, r3]
 80010a8:	e105      	b.n	80012b6 <push_ASCII+0x44a>
 80010aa:	4b4f      	ldr	r3, [pc, #316]	; (80011e8 <push_ASCII+0x37c>)
 80010ac:	681b      	ldr	r3, [r3, #0]
 80010ae:	1c59      	adds	r1, r3, #1
 80010b0:	4a4d      	ldr	r2, [pc, #308]	; (80011e8 <push_ASCII+0x37c>)
 80010b2:	6011      	str	r1, [r2, #0]
 80010b4:	4a4d      	ldr	r2, [pc, #308]	; (80011ec <push_ASCII+0x380>)
 80010b6:	2154      	movs	r1, #84	; 0x54
 80010b8:	54d1      	strb	r1, [r2, r3]
 80010ba:	e0fc      	b.n	80012b6 <push_ASCII+0x44a>
 80010bc:	4b4a      	ldr	r3, [pc, #296]	; (80011e8 <push_ASCII+0x37c>)
 80010be:	681b      	ldr	r3, [r3, #0]
 80010c0:	1c59      	adds	r1, r3, #1
 80010c2:	4a49      	ldr	r2, [pc, #292]	; (80011e8 <push_ASCII+0x37c>)
 80010c4:	6011      	str	r1, [r2, #0]
 80010c6:	4a49      	ldr	r2, [pc, #292]	; (80011ec <push_ASCII+0x380>)
 80010c8:	2155      	movs	r1, #85	; 0x55
 80010ca:	54d1      	strb	r1, [r2, r3]
 80010cc:	e0f3      	b.n	80012b6 <push_ASCII+0x44a>
 80010ce:	4b46      	ldr	r3, [pc, #280]	; (80011e8 <push_ASCII+0x37c>)
 80010d0:	681b      	ldr	r3, [r3, #0]
 80010d2:	1c59      	adds	r1, r3, #1
 80010d4:	4a44      	ldr	r2, [pc, #272]	; (80011e8 <push_ASCII+0x37c>)
 80010d6:	6011      	str	r1, [r2, #0]
 80010d8:	4a44      	ldr	r2, [pc, #272]	; (80011ec <push_ASCII+0x380>)
 80010da:	2156      	movs	r1, #86	; 0x56
 80010dc:	54d1      	strb	r1, [r2, r3]
 80010de:	e0ea      	b.n	80012b6 <push_ASCII+0x44a>
 80010e0:	4b41      	ldr	r3, [pc, #260]	; (80011e8 <push_ASCII+0x37c>)
 80010e2:	681b      	ldr	r3, [r3, #0]
 80010e4:	1c59      	adds	r1, r3, #1
 80010e6:	4a40      	ldr	r2, [pc, #256]	; (80011e8 <push_ASCII+0x37c>)
 80010e8:	6011      	str	r1, [r2, #0]
 80010ea:	4a40      	ldr	r2, [pc, #256]	; (80011ec <push_ASCII+0x380>)
 80010ec:	2157      	movs	r1, #87	; 0x57
 80010ee:	54d1      	strb	r1, [r2, r3]
 80010f0:	e0e1      	b.n	80012b6 <push_ASCII+0x44a>
 80010f2:	4b3d      	ldr	r3, [pc, #244]	; (80011e8 <push_ASCII+0x37c>)
 80010f4:	681b      	ldr	r3, [r3, #0]
 80010f6:	1c59      	adds	r1, r3, #1
 80010f8:	4a3b      	ldr	r2, [pc, #236]	; (80011e8 <push_ASCII+0x37c>)
 80010fa:	6011      	str	r1, [r2, #0]
 80010fc:	4a3b      	ldr	r2, [pc, #236]	; (80011ec <push_ASCII+0x380>)
 80010fe:	2158      	movs	r1, #88	; 0x58
 8001100:	54d1      	strb	r1, [r2, r3]
 8001102:	e0d8      	b.n	80012b6 <push_ASCII+0x44a>
 8001104:	4b38      	ldr	r3, [pc, #224]	; (80011e8 <push_ASCII+0x37c>)
 8001106:	681b      	ldr	r3, [r3, #0]
 8001108:	1c59      	adds	r1, r3, #1
 800110a:	4a37      	ldr	r2, [pc, #220]	; (80011e8 <push_ASCII+0x37c>)
 800110c:	6011      	str	r1, [r2, #0]
 800110e:	4a37      	ldr	r2, [pc, #220]	; (80011ec <push_ASCII+0x380>)
 8001110:	2159      	movs	r1, #89	; 0x59
 8001112:	54d1      	strb	r1, [r2, r3]
 8001114:	e0cf      	b.n	80012b6 <push_ASCII+0x44a>
 8001116:	4b34      	ldr	r3, [pc, #208]	; (80011e8 <push_ASCII+0x37c>)
 8001118:	681b      	ldr	r3, [r3, #0]
 800111a:	1c59      	adds	r1, r3, #1
 800111c:	4a32      	ldr	r2, [pc, #200]	; (80011e8 <push_ASCII+0x37c>)
 800111e:	6011      	str	r1, [r2, #0]
 8001120:	4a32      	ldr	r2, [pc, #200]	; (80011ec <push_ASCII+0x380>)
 8001122:	215a      	movs	r1, #90	; 0x5a
 8001124:	54d1      	strb	r1, [r2, r3]
 8001126:	e0c6      	b.n	80012b6 <push_ASCII+0x44a>
 8001128:	4b2f      	ldr	r3, [pc, #188]	; (80011e8 <push_ASCII+0x37c>)
 800112a:	681b      	ldr	r3, [r3, #0]
 800112c:	1c59      	adds	r1, r3, #1
 800112e:	4a2e      	ldr	r2, [pc, #184]	; (80011e8 <push_ASCII+0x37c>)
 8001130:	6011      	str	r1, [r2, #0]
 8001132:	4a2e      	ldr	r2, [pc, #184]	; (80011ec <push_ASCII+0x380>)
 8001134:	2141      	movs	r1, #65	; 0x41
 8001136:	54d1      	strb	r1, [r2, r3]
 8001138:	e0bd      	b.n	80012b6 <push_ASCII+0x44a>
 800113a:	4b2b      	ldr	r3, [pc, #172]	; (80011e8 <push_ASCII+0x37c>)
 800113c:	681b      	ldr	r3, [r3, #0]
 800113e:	1c59      	adds	r1, r3, #1
 8001140:	4a29      	ldr	r2, [pc, #164]	; (80011e8 <push_ASCII+0x37c>)
 8001142:	6011      	str	r1, [r2, #0]
 8001144:	4a29      	ldr	r2, [pc, #164]	; (80011ec <push_ASCII+0x380>)
 8001146:	2142      	movs	r1, #66	; 0x42
 8001148:	54d1      	strb	r1, [r2, r3]
 800114a:	e0b4      	b.n	80012b6 <push_ASCII+0x44a>
 800114c:	4b26      	ldr	r3, [pc, #152]	; (80011e8 <push_ASCII+0x37c>)
 800114e:	681b      	ldr	r3, [r3, #0]
 8001150:	1c59      	adds	r1, r3, #1
 8001152:	4a25      	ldr	r2, [pc, #148]	; (80011e8 <push_ASCII+0x37c>)
 8001154:	6011      	str	r1, [r2, #0]
 8001156:	4a25      	ldr	r2, [pc, #148]	; (80011ec <push_ASCII+0x380>)
 8001158:	2143      	movs	r1, #67	; 0x43
 800115a:	54d1      	strb	r1, [r2, r3]
 800115c:	e0ab      	b.n	80012b6 <push_ASCII+0x44a>
 800115e:	4b22      	ldr	r3, [pc, #136]	; (80011e8 <push_ASCII+0x37c>)
 8001160:	681b      	ldr	r3, [r3, #0]
 8001162:	1c59      	adds	r1, r3, #1
 8001164:	4a20      	ldr	r2, [pc, #128]	; (80011e8 <push_ASCII+0x37c>)
 8001166:	6011      	str	r1, [r2, #0]
 8001168:	4a20      	ldr	r2, [pc, #128]	; (80011ec <push_ASCII+0x380>)
 800116a:	2144      	movs	r1, #68	; 0x44
 800116c:	54d1      	strb	r1, [r2, r3]
 800116e:	e0a2      	b.n	80012b6 <push_ASCII+0x44a>
 8001170:	4b1d      	ldr	r3, [pc, #116]	; (80011e8 <push_ASCII+0x37c>)
 8001172:	681b      	ldr	r3, [r3, #0]
 8001174:	1c59      	adds	r1, r3, #1
 8001176:	4a1c      	ldr	r2, [pc, #112]	; (80011e8 <push_ASCII+0x37c>)
 8001178:	6011      	str	r1, [r2, #0]
 800117a:	4a1c      	ldr	r2, [pc, #112]	; (80011ec <push_ASCII+0x380>)
 800117c:	2145      	movs	r1, #69	; 0x45
 800117e:	54d1      	strb	r1, [r2, r3]
 8001180:	e099      	b.n	80012b6 <push_ASCII+0x44a>
 8001182:	4b19      	ldr	r3, [pc, #100]	; (80011e8 <push_ASCII+0x37c>)
 8001184:	681b      	ldr	r3, [r3, #0]
 8001186:	1c59      	adds	r1, r3, #1
 8001188:	4a17      	ldr	r2, [pc, #92]	; (80011e8 <push_ASCII+0x37c>)
 800118a:	6011      	str	r1, [r2, #0]
 800118c:	4a17      	ldr	r2, [pc, #92]	; (80011ec <push_ASCII+0x380>)
 800118e:	2146      	movs	r1, #70	; 0x46
 8001190:	54d1      	strb	r1, [r2, r3]
 8001192:	e090      	b.n	80012b6 <push_ASCII+0x44a>
 8001194:	000004bb 	.word	0x000004bb
 8001198:	00000457 	.word	0x00000457
 800119c:	00000461 	.word	0x00000461
 80011a0:	00000462 	.word	0x00000462
 80011a4:	00002b67 	.word	0x00002b67
 80011a8:	000004c6 	.word	0x000004c6
 80011ac:	0000083f 	.word	0x0000083f
 80011b0:	000004c5 	.word	0x000004c5
 80011b4:	0000084a 	.word	0x0000084a
 80011b8:	00000849 	.word	0x00000849
 80011bc:	000008a3 	.word	0x000008a3
 80011c0:	000008a4 	.word	0x000008a4
 80011c4:	00005277 	.word	0x00005277
 80011c8:	00002b72 	.word	0x00002b72
 80011cc:	00002b68 	.word	0x00002b68
 80011d0:	00002bd6 	.word	0x00002bd6
 80011d4:	00002fbe 	.word	0x00002fbe
 80011d8:	000056c3 	.word	0x000056c3
 80011dc:	0000565f 	.word	0x0000565f
 80011e0:	000056cd 	.word	0x000056cd
 80011e4:	000056ce 	.word	0x000056ce
 80011e8:	20000668 	.word	0x20000668
 80011ec:	20000654 	.word	0x20000654
 80011f0:	4b33      	ldr	r3, [pc, #204]	; (80012c0 <push_ASCII+0x454>)
 80011f2:	681b      	ldr	r3, [r3, #0]
 80011f4:	1c59      	adds	r1, r3, #1
 80011f6:	4a32      	ldr	r2, [pc, #200]	; (80012c0 <push_ASCII+0x454>)
 80011f8:	6011      	str	r1, [r2, #0]
 80011fa:	4a32      	ldr	r2, [pc, #200]	; (80012c4 <push_ASCII+0x458>)
 80011fc:	2147      	movs	r1, #71	; 0x47
 80011fe:	54d1      	strb	r1, [r2, r3]
 8001200:	e059      	b.n	80012b6 <push_ASCII+0x44a>
 8001202:	4b2f      	ldr	r3, [pc, #188]	; (80012c0 <push_ASCII+0x454>)
 8001204:	681b      	ldr	r3, [r3, #0]
 8001206:	1c59      	adds	r1, r3, #1
 8001208:	4a2d      	ldr	r2, [pc, #180]	; (80012c0 <push_ASCII+0x454>)
 800120a:	6011      	str	r1, [r2, #0]
 800120c:	4a2d      	ldr	r2, [pc, #180]	; (80012c4 <push_ASCII+0x458>)
 800120e:	2138      	movs	r1, #56	; 0x38
 8001210:	54d1      	strb	r1, [r2, r3]
 8001212:	e050      	b.n	80012b6 <push_ASCII+0x44a>
 8001214:	4b2a      	ldr	r3, [pc, #168]	; (80012c0 <push_ASCII+0x454>)
 8001216:	681b      	ldr	r3, [r3, #0]
 8001218:	1c59      	adds	r1, r3, #1
 800121a:	4a29      	ldr	r2, [pc, #164]	; (80012c0 <push_ASCII+0x454>)
 800121c:	6011      	str	r1, [r2, #0]
 800121e:	4a29      	ldr	r2, [pc, #164]	; (80012c4 <push_ASCII+0x458>)
 8001220:	2139      	movs	r1, #57	; 0x39
 8001222:	54d1      	strb	r1, [r2, r3]
 8001224:	e047      	b.n	80012b6 <push_ASCII+0x44a>
 8001226:	4b26      	ldr	r3, [pc, #152]	; (80012c0 <push_ASCII+0x454>)
 8001228:	681b      	ldr	r3, [r3, #0]
 800122a:	1c59      	adds	r1, r3, #1
 800122c:	4a24      	ldr	r2, [pc, #144]	; (80012c0 <push_ASCII+0x454>)
 800122e:	6011      	str	r1, [r2, #0]
 8001230:	4a24      	ldr	r2, [pc, #144]	; (80012c4 <push_ASCII+0x458>)
 8001232:	2130      	movs	r1, #48	; 0x30
 8001234:	54d1      	strb	r1, [r2, r3]
 8001236:	e03e      	b.n	80012b6 <push_ASCII+0x44a>
 8001238:	4b21      	ldr	r3, [pc, #132]	; (80012c0 <push_ASCII+0x454>)
 800123a:	681b      	ldr	r3, [r3, #0]
 800123c:	1c59      	adds	r1, r3, #1
 800123e:	4a20      	ldr	r2, [pc, #128]	; (80012c0 <push_ASCII+0x454>)
 8001240:	6011      	str	r1, [r2, #0]
 8001242:	4a20      	ldr	r2, [pc, #128]	; (80012c4 <push_ASCII+0x458>)
 8001244:	2131      	movs	r1, #49	; 0x31
 8001246:	54d1      	strb	r1, [r2, r3]
 8001248:	e035      	b.n	80012b6 <push_ASCII+0x44a>
 800124a:	4b1d      	ldr	r3, [pc, #116]	; (80012c0 <push_ASCII+0x454>)
 800124c:	681b      	ldr	r3, [r3, #0]
 800124e:	1c59      	adds	r1, r3, #1
 8001250:	4a1b      	ldr	r2, [pc, #108]	; (80012c0 <push_ASCII+0x454>)
 8001252:	6011      	str	r1, [r2, #0]
 8001254:	4a1b      	ldr	r2, [pc, #108]	; (80012c4 <push_ASCII+0x458>)
 8001256:	2132      	movs	r1, #50	; 0x32
 8001258:	54d1      	strb	r1, [r2, r3]
 800125a:	e02c      	b.n	80012b6 <push_ASCII+0x44a>
 800125c:	4b18      	ldr	r3, [pc, #96]	; (80012c0 <push_ASCII+0x454>)
 800125e:	681b      	ldr	r3, [r3, #0]
 8001260:	1c59      	adds	r1, r3, #1
 8001262:	4a17      	ldr	r2, [pc, #92]	; (80012c0 <push_ASCII+0x454>)
 8001264:	6011      	str	r1, [r2, #0]
 8001266:	4a17      	ldr	r2, [pc, #92]	; (80012c4 <push_ASCII+0x458>)
 8001268:	2133      	movs	r1, #51	; 0x33
 800126a:	54d1      	strb	r1, [r2, r3]
 800126c:	e023      	b.n	80012b6 <push_ASCII+0x44a>
 800126e:	4b14      	ldr	r3, [pc, #80]	; (80012c0 <push_ASCII+0x454>)
 8001270:	681b      	ldr	r3, [r3, #0]
 8001272:	1c59      	adds	r1, r3, #1
 8001274:	4a12      	ldr	r2, [pc, #72]	; (80012c0 <push_ASCII+0x454>)
 8001276:	6011      	str	r1, [r2, #0]
 8001278:	4a12      	ldr	r2, [pc, #72]	; (80012c4 <push_ASCII+0x458>)
 800127a:	2134      	movs	r1, #52	; 0x34
 800127c:	54d1      	strb	r1, [r2, r3]
 800127e:	e01a      	b.n	80012b6 <push_ASCII+0x44a>
 8001280:	4b0f      	ldr	r3, [pc, #60]	; (80012c0 <push_ASCII+0x454>)
 8001282:	681b      	ldr	r3, [r3, #0]
 8001284:	1c59      	adds	r1, r3, #1
 8001286:	4a0e      	ldr	r2, [pc, #56]	; (80012c0 <push_ASCII+0x454>)
 8001288:	6011      	str	r1, [r2, #0]
 800128a:	4a0e      	ldr	r2, [pc, #56]	; (80012c4 <push_ASCII+0x458>)
 800128c:	2135      	movs	r1, #53	; 0x35
 800128e:	54d1      	strb	r1, [r2, r3]
 8001290:	e011      	b.n	80012b6 <push_ASCII+0x44a>
 8001292:	4b0b      	ldr	r3, [pc, #44]	; (80012c0 <push_ASCII+0x454>)
 8001294:	681b      	ldr	r3, [r3, #0]
 8001296:	1c59      	adds	r1, r3, #1
 8001298:	4a09      	ldr	r2, [pc, #36]	; (80012c0 <push_ASCII+0x454>)
 800129a:	6011      	str	r1, [r2, #0]
 800129c:	4a09      	ldr	r2, [pc, #36]	; (80012c4 <push_ASCII+0x458>)
 800129e:	2136      	movs	r1, #54	; 0x36
 80012a0:	54d1      	strb	r1, [r2, r3]
 80012a2:	e008      	b.n	80012b6 <push_ASCII+0x44a>
 80012a4:	4b06      	ldr	r3, [pc, #24]	; (80012c0 <push_ASCII+0x454>)
 80012a6:	681b      	ldr	r3, [r3, #0]
 80012a8:	1c59      	adds	r1, r3, #1
 80012aa:	4a05      	ldr	r2, [pc, #20]	; (80012c0 <push_ASCII+0x454>)
 80012ac:	6011      	str	r1, [r2, #0]
 80012ae:	4a05      	ldr	r2, [pc, #20]	; (80012c4 <push_ASCII+0x458>)
 80012b0:	2137      	movs	r1, #55	; 0x37
 80012b2:	54d1      	strb	r1, [r2, r3]
 80012b4:	46c0      	nop			; (mov r8, r8)
 80012b6:	46c0      	nop			; (mov r8, r8)
 80012b8:	46bd      	mov	sp, r7
 80012ba:	b002      	add	sp, #8
 80012bc:	bd80      	pop	{r7, pc}
 80012be:	46c0      	nop			; (mov r8, r8)
 80012c0:	20000668 	.word	0x20000668
 80012c4:	20000654 	.word	0x20000654

080012c8 <word_handler>:
 80012c8:	b580      	push	{r7, lr}
 80012ca:	b082      	sub	sp, #8
 80012cc:	af00      	add	r7, sp, #0
 80012ce:	4b39      	ldr	r3, [pc, #228]	; (80013b4 <word_handler+0xec>)
 80012d0:	2200      	movs	r2, #0
 80012d2:	601a      	str	r2, [r3, #0]
 80012d4:	2380      	movs	r3, #128	; 0x80
 80012d6:	005b      	lsls	r3, r3, #1
 80012d8:	4a37      	ldr	r2, [pc, #220]	; (80013b8 <word_handler+0xf0>)
 80012da:	0019      	movs	r1, r3
 80012dc:	0010      	movs	r0, r2
 80012de:	f7ff f9f0 	bl	80006c2 <LL_GPIO_ResetOutputPin>
 80012e2:	4b36      	ldr	r3, [pc, #216]	; (80013bc <word_handler+0xf4>)
 80012e4:	681b      	ldr	r3, [r3, #0]
 80012e6:	4a36      	ldr	r2, [pc, #216]	; (80013c0 <word_handler+0xf8>)
 80012e8:	2100      	movs	r1, #0
 80012ea:	54d1      	strb	r1, [r2, r3]
 80012ec:	2300      	movs	r3, #0
 80012ee:	607b      	str	r3, [r7, #4]
 80012f0:	2300      	movs	r3, #0
 80012f2:	603b      	str	r3, [r7, #0]
 80012f4:	e022      	b.n	800133c <word_handler+0x74>
 80012f6:	4a32      	ldr	r2, [pc, #200]	; (80013c0 <word_handler+0xf8>)
 80012f8:	683b      	ldr	r3, [r7, #0]
 80012fa:	18d3      	adds	r3, r2, r3
 80012fc:	781b      	ldrb	r3, [r3, #0]
 80012fe:	2b33      	cmp	r3, #51	; 0x33
 8001300:	d005      	beq.n	800130e <word_handler+0x46>
 8001302:	4a2f      	ldr	r2, [pc, #188]	; (80013c0 <word_handler+0xf8>)
 8001304:	683b      	ldr	r3, [r7, #0]
 8001306:	18d3      	adds	r3, r2, r3
 8001308:	781b      	ldrb	r3, [r3, #0]
 800130a:	2b00      	cmp	r3, #0
 800130c:	d106      	bne.n	800131c <word_handler+0x54>
 800130e:	687b      	ldr	r3, [r7, #4]
 8001310:	0018      	movs	r0, r3
 8001312:	f7ff fdab 	bl	8000e6c <push_ASCII>
 8001316:	2300      	movs	r3, #0
 8001318:	607b      	str	r3, [r7, #4]
 800131a:	e00c      	b.n	8001336 <word_handler+0x6e>
 800131c:	687a      	ldr	r2, [r7, #4]
 800131e:	0013      	movs	r3, r2
 8001320:	009b      	lsls	r3, r3, #2
 8001322:	189b      	adds	r3, r3, r2
 8001324:	005b      	lsls	r3, r3, #1
 8001326:	0019      	movs	r1, r3
 8001328:	4a25      	ldr	r2, [pc, #148]	; (80013c0 <word_handler+0xf8>)
 800132a:	683b      	ldr	r3, [r7, #0]
 800132c:	18d3      	adds	r3, r2, r3
 800132e:	781b      	ldrb	r3, [r3, #0]
 8001330:	3b30      	subs	r3, #48	; 0x30
 8001332:	18cb      	adds	r3, r1, r3
 8001334:	607b      	str	r3, [r7, #4]
 8001336:	683b      	ldr	r3, [r7, #0]
 8001338:	3301      	adds	r3, #1
 800133a:	603b      	str	r3, [r7, #0]
 800133c:	4b1f      	ldr	r3, [pc, #124]	; (80013bc <word_handler+0xf4>)
 800133e:	681b      	ldr	r3, [r3, #0]
 8001340:	683a      	ldr	r2, [r7, #0]
 8001342:	429a      	cmp	r2, r3
 8001344:	ddd7      	ble.n	80012f6 <word_handler+0x2e>
 8001346:	4b1f      	ldr	r3, [pc, #124]	; (80013c4 <word_handler+0xfc>)
 8001348:	681b      	ldr	r3, [r3, #0]
 800134a:	4a1f      	ldr	r2, [pc, #124]	; (80013c8 <word_handler+0x100>)
 800134c:	2100      	movs	r1, #0
 800134e:	54d1      	strb	r1, [r2, r3]
 8001350:	4b1d      	ldr	r3, [pc, #116]	; (80013c8 <word_handler+0x100>)
 8001352:	0018      	movs	r0, r3
 8001354:	f7ff fd26 	bl	8000da4 <send_message>
 8001358:	4b18      	ldr	r3, [pc, #96]	; (80013bc <word_handler+0xf4>)
 800135a:	2200      	movs	r2, #0
 800135c:	601a      	str	r2, [r3, #0]
 800135e:	4b1b      	ldr	r3, [pc, #108]	; (80013cc <word_handler+0x104>)
 8001360:	2200      	movs	r2, #0
 8001362:	601a      	str	r2, [r3, #0]
 8001364:	4b1a      	ldr	r3, [pc, #104]	; (80013d0 <word_handler+0x108>)
 8001366:	2200      	movs	r2, #0
 8001368:	601a      	str	r2, [r3, #0]
 800136a:	2380      	movs	r3, #128	; 0x80
 800136c:	009b      	lsls	r3, r3, #2
 800136e:	4a12      	ldr	r2, [pc, #72]	; (80013b8 <word_handler+0xf0>)
 8001370:	0019      	movs	r1, r3
 8001372:	0010      	movs	r0, r2
 8001374:	f7ff f9b1 	bl	80006da <LL_GPIO_TogglePin>
 8001378:	2380      	movs	r3, #128	; 0x80
 800137a:	005b      	lsls	r3, r3, #1
 800137c:	4a0e      	ldr	r2, [pc, #56]	; (80013b8 <word_handler+0xf0>)
 800137e:	0019      	movs	r1, r3
 8001380:	0010      	movs	r0, r2
 8001382:	f7ff f9aa 	bl	80006da <LL_GPIO_TogglePin>
 8001386:	f7ff fced 	bl	8000d64 <delay>
 800138a:	f7ff fceb 	bl	8000d64 <delay>
 800138e:	2380      	movs	r3, #128	; 0x80
 8001390:	009b      	lsls	r3, r3, #2
 8001392:	4a09      	ldr	r2, [pc, #36]	; (80013b8 <word_handler+0xf0>)
 8001394:	0019      	movs	r1, r3
 8001396:	0010      	movs	r0, r2
 8001398:	f7ff f99f 	bl	80006da <LL_GPIO_TogglePin>
 800139c:	2380      	movs	r3, #128	; 0x80
 800139e:	005b      	lsls	r3, r3, #1
 80013a0:	4a05      	ldr	r2, [pc, #20]	; (80013b8 <word_handler+0xf0>)
 80013a2:	0019      	movs	r1, r3
 80013a4:	0010      	movs	r0, r2
 80013a6:	f7ff f998 	bl	80006da <LL_GPIO_TogglePin>
 80013aa:	46c0      	nop			; (mov r8, r8)
 80013ac:	46bd      	mov	sp, r7
 80013ae:	b002      	add	sp, #8
 80013b0:	bd80      	pop	{r7, pc}
 80013b2:	46c0      	nop			; (mov r8, r8)
 80013b4:	20000650 	.word	0x20000650
 80013b8:	48000800 	.word	0x48000800
 80013bc:	20000648 	.word	0x20000648
 80013c0:	20000454 	.word	0x20000454
 80013c4:	20000668 	.word	0x20000668
 80013c8:	20000654 	.word	0x20000654
 80013cc:	20000450 	.word	0x20000450
 80013d0:	2000064c 	.word	0x2000064c

080013d4 <SysTick_Handler>:
 80013d4:	b580      	push	{r7, lr}
 80013d6:	af00      	add	r7, sp, #0
 80013d8:	4b0b      	ldr	r3, [pc, #44]	; (8001408 <SysTick_Handler+0x34>)
 80013da:	681b      	ldr	r3, [r3, #0]
 80013dc:	2b00      	cmp	r3, #0
 80013de:	d00b      	beq.n	80013f8 <SysTick_Handler+0x24>
 80013e0:	4b0a      	ldr	r3, [pc, #40]	; (800140c <SysTick_Handler+0x38>)
 80013e2:	681a      	ldr	r2, [r3, #0]
 80013e4:	4b0a      	ldr	r3, [pc, #40]	; (8001410 <SysTick_Handler+0x3c>)
 80013e6:	681b      	ldr	r3, [r3, #0]
 80013e8:	1ad2      	subs	r2, r2, r3
 80013ea:	23c8      	movs	r3, #200	; 0xc8
 80013ec:	005b      	lsls	r3, r3, #1
 80013ee:	009b      	lsls	r3, r3, #2
 80013f0:	429a      	cmp	r2, r3
 80013f2:	dd01      	ble.n	80013f8 <SysTick_Handler+0x24>
 80013f4:	f7ff ff68 	bl	80012c8 <word_handler>
 80013f8:	4b04      	ldr	r3, [pc, #16]	; (800140c <SysTick_Handler+0x38>)
 80013fa:	681b      	ldr	r3, [r3, #0]
 80013fc:	1c5a      	adds	r2, r3, #1
 80013fe:	4b03      	ldr	r3, [pc, #12]	; (800140c <SysTick_Handler+0x38>)
 8001400:	601a      	str	r2, [r3, #0]
 8001402:	46c0      	nop			; (mov r8, r8)
 8001404:	46bd      	mov	sp, r7
 8001406:	bd80      	pop	{r7, pc}
 8001408:	20000650 	.word	0x20000650
 800140c:	20000450 	.word	0x20000450
 8001410:	2000064c 	.word	0x2000064c

08001414 <main>:
 8001414:	b580      	push	{r7, lr}
 8001416:	af00      	add	r7, sp, #0
 8001418:	f7ff fb1e 	bl	8000a58 <rcc_config>
 800141c:	f7ff fb50 	bl	8000ac0 <gpio_config>
 8001420:	f7ff fb6e 	bl	8000b00 <exti_config>
 8001424:	f7ff fca8 	bl	8000d78 <systick_config>
 8001428:	f7ff fb86 	bl	8000b38 <usart_config>
 800142c:	2380      	movs	r3, #128	; 0x80
 800142e:	005b      	lsls	r3, r3, #1
 8001430:	4a08      	ldr	r2, [pc, #32]	; (8001454 <main+0x40>)
 8001432:	0019      	movs	r1, r3
 8001434:	0010      	movs	r0, r2
 8001436:	f7ff f938 	bl	80006aa <LL_GPIO_SetOutputPin>
 800143a:	f7ff fc93 	bl	8000d64 <delay>
 800143e:	f7ff fc91 	bl	8000d64 <delay>
 8001442:	2380      	movs	r3, #128	; 0x80
 8001444:	005b      	lsls	r3, r3, #1
 8001446:	4a03      	ldr	r2, [pc, #12]	; (8001454 <main+0x40>)
 8001448:	0019      	movs	r1, r3
 800144a:	0010      	movs	r0, r2
 800144c:	f7ff f939 	bl	80006c2 <LL_GPIO_ResetOutputPin>
 8001450:	e7fe      	b.n	8001450 <main+0x3c>
 8001452:	46c0      	nop			; (mov r8, r8)
 8001454:	48000800 	.word	0x48000800

08001458 <SystemInit>:
 8001458:	b580      	push	{r7, lr}
 800145a:	af00      	add	r7, sp, #0
 800145c:	4b1a      	ldr	r3, [pc, #104]	; (80014c8 <SystemInit+0x70>)
 800145e:	681a      	ldr	r2, [r3, #0]
 8001460:	4b19      	ldr	r3, [pc, #100]	; (80014c8 <SystemInit+0x70>)
 8001462:	2101      	movs	r1, #1
 8001464:	430a      	orrs	r2, r1
 8001466:	601a      	str	r2, [r3, #0]
 8001468:	4b17      	ldr	r3, [pc, #92]	; (80014c8 <SystemInit+0x70>)
 800146a:	685a      	ldr	r2, [r3, #4]
 800146c:	4b16      	ldr	r3, [pc, #88]	; (80014c8 <SystemInit+0x70>)
 800146e:	4917      	ldr	r1, [pc, #92]	; (80014cc <SystemInit+0x74>)
 8001470:	400a      	ands	r2, r1
 8001472:	605a      	str	r2, [r3, #4]
 8001474:	4b14      	ldr	r3, [pc, #80]	; (80014c8 <SystemInit+0x70>)
 8001476:	681a      	ldr	r2, [r3, #0]
 8001478:	4b13      	ldr	r3, [pc, #76]	; (80014c8 <SystemInit+0x70>)
 800147a:	4915      	ldr	r1, [pc, #84]	; (80014d0 <SystemInit+0x78>)
 800147c:	400a      	ands	r2, r1
 800147e:	601a      	str	r2, [r3, #0]
 8001480:	4b11      	ldr	r3, [pc, #68]	; (80014c8 <SystemInit+0x70>)
 8001482:	681a      	ldr	r2, [r3, #0]
 8001484:	4b10      	ldr	r3, [pc, #64]	; (80014c8 <SystemInit+0x70>)
 8001486:	4913      	ldr	r1, [pc, #76]	; (80014d4 <SystemInit+0x7c>)
 8001488:	400a      	ands	r2, r1
 800148a:	601a      	str	r2, [r3, #0]
 800148c:	4b0e      	ldr	r3, [pc, #56]	; (80014c8 <SystemInit+0x70>)
 800148e:	685a      	ldr	r2, [r3, #4]
 8001490:	4b0d      	ldr	r3, [pc, #52]	; (80014c8 <SystemInit+0x70>)
 8001492:	4911      	ldr	r1, [pc, #68]	; (80014d8 <SystemInit+0x80>)
 8001494:	400a      	ands	r2, r1
 8001496:	605a      	str	r2, [r3, #4]
 8001498:	4b0b      	ldr	r3, [pc, #44]	; (80014c8 <SystemInit+0x70>)
 800149a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800149c:	4b0a      	ldr	r3, [pc, #40]	; (80014c8 <SystemInit+0x70>)
 800149e:	210f      	movs	r1, #15
 80014a0:	438a      	bics	r2, r1
 80014a2:	62da      	str	r2, [r3, #44]	; 0x2c
 80014a4:	4b08      	ldr	r3, [pc, #32]	; (80014c8 <SystemInit+0x70>)
 80014a6:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80014a8:	4b07      	ldr	r3, [pc, #28]	; (80014c8 <SystemInit+0x70>)
 80014aa:	490c      	ldr	r1, [pc, #48]	; (80014dc <SystemInit+0x84>)
 80014ac:	400a      	ands	r2, r1
 80014ae:	631a      	str	r2, [r3, #48]	; 0x30
 80014b0:	4b05      	ldr	r3, [pc, #20]	; (80014c8 <SystemInit+0x70>)
 80014b2:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80014b4:	4b04      	ldr	r3, [pc, #16]	; (80014c8 <SystemInit+0x70>)
 80014b6:	2101      	movs	r1, #1
 80014b8:	438a      	bics	r2, r1
 80014ba:	635a      	str	r2, [r3, #52]	; 0x34
 80014bc:	4b02      	ldr	r3, [pc, #8]	; (80014c8 <SystemInit+0x70>)
 80014be:	2200      	movs	r2, #0
 80014c0:	609a      	str	r2, [r3, #8]
 80014c2:	46c0      	nop			; (mov r8, r8)
 80014c4:	46bd      	mov	sp, r7
 80014c6:	bd80      	pop	{r7, pc}
 80014c8:	40021000 	.word	0x40021000
 80014cc:	f8ffb80c 	.word	0xf8ffb80c
 80014d0:	fef6ffff 	.word	0xfef6ffff
 80014d4:	fffbffff 	.word	0xfffbffff
 80014d8:	ffc0ffff 	.word	0xffc0ffff
 80014dc:	fffffeac 	.word	0xfffffeac

080014e0 <NMI_Handler>:
 80014e0:	b580      	push	{r7, lr}
 80014e2:	af00      	add	r7, sp, #0
 80014e4:	46c0      	nop			; (mov r8, r8)
 80014e6:	46bd      	mov	sp, r7
 80014e8:	bd80      	pop	{r7, pc}

080014ea <HardFault_Handler>:
 80014ea:	b580      	push	{r7, lr}
 80014ec:	af00      	add	r7, sp, #0
 80014ee:	e7fe      	b.n	80014ee <HardFault_Handler+0x4>

080014f0 <SVC_Handler>:
 80014f0:	b580      	push	{r7, lr}
 80014f2:	af00      	add	r7, sp, #0
 80014f4:	46c0      	nop			; (mov r8, r8)
 80014f6:	46bd      	mov	sp, r7
 80014f8:	bd80      	pop	{r7, pc}

080014fa <PendSV_Handler>:
 80014fa:	b580      	push	{r7, lr}
 80014fc:	af00      	add	r7, sp, #0
 80014fe:	46c0      	nop			; (mov r8, r8)
 8001500:	46bd      	mov	sp, r7
 8001502:	bd80      	pop	{r7, pc}

08001504 <__libc_init_array>:
 8001504:	b570      	push	{r4, r5, r6, lr}
 8001506:	4e0d      	ldr	r6, [pc, #52]	; (800153c <__libc_init_array+0x38>)
 8001508:	4d0d      	ldr	r5, [pc, #52]	; (8001540 <__libc_init_array+0x3c>)
 800150a:	1bad      	subs	r5, r5, r6
 800150c:	10ad      	asrs	r5, r5, #2
 800150e:	d006      	beq.n	800151e <__libc_init_array+0x1a>
 8001510:	2400      	movs	r4, #0
 8001512:	00a3      	lsls	r3, r4, #2
 8001514:	58f3      	ldr	r3, [r6, r3]
 8001516:	3401      	adds	r4, #1
 8001518:	4798      	blx	r3
 800151a:	42a5      	cmp	r5, r4
 800151c:	d1f9      	bne.n	8001512 <__libc_init_array+0xe>
 800151e:	f000 f8c1 	bl	80016a4 <_init>
 8001522:	4e08      	ldr	r6, [pc, #32]	; (8001544 <__libc_init_array+0x40>)
 8001524:	4d08      	ldr	r5, [pc, #32]	; (8001548 <__libc_init_array+0x44>)
 8001526:	1bad      	subs	r5, r5, r6
 8001528:	10ad      	asrs	r5, r5, #2
 800152a:	d006      	beq.n	800153a <__libc_init_array+0x36>
 800152c:	2400      	movs	r4, #0
 800152e:	00a3      	lsls	r3, r4, #2
 8001530:	58f3      	ldr	r3, [r6, r3]
 8001532:	3401      	adds	r4, #1
 8001534:	4798      	blx	r3
 8001536:	42a5      	cmp	r5, r4
 8001538:	d1f9      	bne.n	800152e <__libc_init_array+0x2a>
 800153a:	bd70      	pop	{r4, r5, r6, pc}
 800153c:	080016c0 	.word	0x080016c0
 8001540:	080016c0 	.word	0x080016c0
 8001544:	080016c0 	.word	0x080016c0
 8001548:	080016c8 	.word	0x080016c8

0800154c <register_fini>:
 800154c:	4b03      	ldr	r3, [pc, #12]	; (800155c <register_fini+0x10>)
 800154e:	b510      	push	{r4, lr}
 8001550:	2b00      	cmp	r3, #0
 8001552:	d002      	beq.n	800155a <register_fini+0xe>
 8001554:	4802      	ldr	r0, [pc, #8]	; (8001560 <register_fini+0x14>)
 8001556:	f000 f805 	bl	8001564 <atexit>
 800155a:	bd10      	pop	{r4, pc}
 800155c:	00000000 	.word	0x00000000
 8001560:	08001575 	.word	0x08001575

08001564 <atexit>:
 8001564:	b510      	push	{r4, lr}
 8001566:	0001      	movs	r1, r0
 8001568:	2300      	movs	r3, #0
 800156a:	2200      	movs	r2, #0
 800156c:	2000      	movs	r0, #0
 800156e:	f000 f81f 	bl	80015b0 <__register_exitproc>
 8001572:	bd10      	pop	{r4, pc}

08001574 <__libc_fini_array>:
 8001574:	b570      	push	{r4, r5, r6, lr}
 8001576:	4b09      	ldr	r3, [pc, #36]	; (800159c <__libc_fini_array+0x28>)
 8001578:	4c09      	ldr	r4, [pc, #36]	; (80015a0 <__libc_fini_array+0x2c>)
 800157a:	1ae4      	subs	r4, r4, r3
 800157c:	10a4      	asrs	r4, r4, #2
 800157e:	d009      	beq.n	8001594 <__libc_fini_array+0x20>
 8001580:	4a08      	ldr	r2, [pc, #32]	; (80015a4 <__libc_fini_array+0x30>)
 8001582:	18a5      	adds	r5, r4, r2
 8001584:	00ad      	lsls	r5, r5, #2
 8001586:	18ed      	adds	r5, r5, r3
 8001588:	682b      	ldr	r3, [r5, #0]
 800158a:	3c01      	subs	r4, #1
 800158c:	4798      	blx	r3
 800158e:	3d04      	subs	r5, #4
 8001590:	2c00      	cmp	r4, #0
 8001592:	d1f9      	bne.n	8001588 <__libc_fini_array+0x14>
 8001594:	f000 f88c 	bl	80016b0 <_fini>
 8001598:	bd70      	pop	{r4, r5, r6, pc}
 800159a:	46c0      	nop			; (mov r8, r8)
 800159c:	080016c8 	.word	0x080016c8
 80015a0:	080016cc 	.word	0x080016cc
 80015a4:	3fffffff 	.word	0x3fffffff

080015a8 <__retarget_lock_acquire_recursive>:
 80015a8:	4770      	bx	lr
 80015aa:	46c0      	nop			; (mov r8, r8)

080015ac <__retarget_lock_release_recursive>:
 80015ac:	4770      	bx	lr
 80015ae:	46c0      	nop			; (mov r8, r8)

080015b0 <__register_exitproc>:
 80015b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80015b2:	464e      	mov	r6, r9
 80015b4:	4645      	mov	r5, r8
 80015b6:	46de      	mov	lr, fp
 80015b8:	4657      	mov	r7, sl
 80015ba:	b5e0      	push	{r5, r6, r7, lr}
 80015bc:	4d36      	ldr	r5, [pc, #216]	; (8001698 <__register_exitproc+0xe8>)
 80015be:	b083      	sub	sp, #12
 80015c0:	0006      	movs	r6, r0
 80015c2:	6828      	ldr	r0, [r5, #0]
 80015c4:	4698      	mov	r8, r3
 80015c6:	000f      	movs	r7, r1
 80015c8:	4691      	mov	r9, r2
 80015ca:	f7ff ffed 	bl	80015a8 <__retarget_lock_acquire_recursive>
 80015ce:	4b33      	ldr	r3, [pc, #204]	; (800169c <__register_exitproc+0xec>)
 80015d0:	681c      	ldr	r4, [r3, #0]
 80015d2:	23a4      	movs	r3, #164	; 0xa4
 80015d4:	005b      	lsls	r3, r3, #1
 80015d6:	58e0      	ldr	r0, [r4, r3]
 80015d8:	2800      	cmp	r0, #0
 80015da:	d052      	beq.n	8001682 <__register_exitproc+0xd2>
 80015dc:	6843      	ldr	r3, [r0, #4]
 80015de:	2b1f      	cmp	r3, #31
 80015e0:	dc13      	bgt.n	800160a <__register_exitproc+0x5a>
 80015e2:	1c5a      	adds	r2, r3, #1
 80015e4:	9201      	str	r2, [sp, #4]
 80015e6:	2e00      	cmp	r6, #0
 80015e8:	d128      	bne.n	800163c <__register_exitproc+0x8c>
 80015ea:	9a01      	ldr	r2, [sp, #4]
 80015ec:	3302      	adds	r3, #2
 80015ee:	009b      	lsls	r3, r3, #2
 80015f0:	6042      	str	r2, [r0, #4]
 80015f2:	501f      	str	r7, [r3, r0]
 80015f4:	6828      	ldr	r0, [r5, #0]
 80015f6:	f7ff ffd9 	bl	80015ac <__retarget_lock_release_recursive>
 80015fa:	2000      	movs	r0, #0
 80015fc:	b003      	add	sp, #12
 80015fe:	bc3c      	pop	{r2, r3, r4, r5}
 8001600:	4690      	mov	r8, r2
 8001602:	4699      	mov	r9, r3
 8001604:	46a2      	mov	sl, r4
 8001606:	46ab      	mov	fp, r5
 8001608:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800160a:	4b25      	ldr	r3, [pc, #148]	; (80016a0 <__register_exitproc+0xf0>)
 800160c:	2b00      	cmp	r3, #0
 800160e:	d03d      	beq.n	800168c <__register_exitproc+0xdc>
 8001610:	20c8      	movs	r0, #200	; 0xc8
 8001612:	0040      	lsls	r0, r0, #1
 8001614:	e000      	b.n	8001618 <__register_exitproc+0x68>
 8001616:	bf00      	nop
 8001618:	2800      	cmp	r0, #0
 800161a:	d037      	beq.n	800168c <__register_exitproc+0xdc>
 800161c:	22a4      	movs	r2, #164	; 0xa4
 800161e:	2300      	movs	r3, #0
 8001620:	0052      	lsls	r2, r2, #1
 8001622:	58a1      	ldr	r1, [r4, r2]
 8001624:	6043      	str	r3, [r0, #4]
 8001626:	6001      	str	r1, [r0, #0]
 8001628:	50a0      	str	r0, [r4, r2]
 800162a:	3240      	adds	r2, #64	; 0x40
 800162c:	5083      	str	r3, [r0, r2]
 800162e:	3204      	adds	r2, #4
 8001630:	5083      	str	r3, [r0, r2]
 8001632:	3301      	adds	r3, #1
 8001634:	9301      	str	r3, [sp, #4]
 8001636:	2300      	movs	r3, #0
 8001638:	2e00      	cmp	r6, #0
 800163a:	d0d6      	beq.n	80015ea <__register_exitproc+0x3a>
 800163c:	009a      	lsls	r2, r3, #2
 800163e:	4692      	mov	sl, r2
 8001640:	4482      	add	sl, r0
 8001642:	464a      	mov	r2, r9
 8001644:	2188      	movs	r1, #136	; 0x88
 8001646:	4654      	mov	r4, sl
 8001648:	5062      	str	r2, [r4, r1]
 800164a:	22c4      	movs	r2, #196	; 0xc4
 800164c:	0052      	lsls	r2, r2, #1
 800164e:	4691      	mov	r9, r2
 8001650:	4481      	add	r9, r0
 8001652:	464a      	mov	r2, r9
 8001654:	3987      	subs	r1, #135	; 0x87
 8001656:	4099      	lsls	r1, r3
 8001658:	6812      	ldr	r2, [r2, #0]
 800165a:	468b      	mov	fp, r1
 800165c:	430a      	orrs	r2, r1
 800165e:	4694      	mov	ip, r2
 8001660:	464a      	mov	r2, r9
 8001662:	4661      	mov	r1, ip
 8001664:	6011      	str	r1, [r2, #0]
 8001666:	2284      	movs	r2, #132	; 0x84
 8001668:	4641      	mov	r1, r8
 800166a:	0052      	lsls	r2, r2, #1
 800166c:	50a1      	str	r1, [r4, r2]
 800166e:	2e02      	cmp	r6, #2
 8001670:	d1bb      	bne.n	80015ea <__register_exitproc+0x3a>
 8001672:	0002      	movs	r2, r0
 8001674:	465c      	mov	r4, fp
 8001676:	328d      	adds	r2, #141	; 0x8d
 8001678:	32ff      	adds	r2, #255	; 0xff
 800167a:	6811      	ldr	r1, [r2, #0]
 800167c:	430c      	orrs	r4, r1
 800167e:	6014      	str	r4, [r2, #0]
 8001680:	e7b3      	b.n	80015ea <__register_exitproc+0x3a>
 8001682:	0020      	movs	r0, r4
 8001684:	304d      	adds	r0, #77	; 0x4d
 8001686:	30ff      	adds	r0, #255	; 0xff
 8001688:	50e0      	str	r0, [r4, r3]
 800168a:	e7a7      	b.n	80015dc <__register_exitproc+0x2c>
 800168c:	6828      	ldr	r0, [r5, #0]
 800168e:	f7ff ff8d 	bl	80015ac <__retarget_lock_release_recursive>
 8001692:	2001      	movs	r0, #1
 8001694:	4240      	negs	r0, r0
 8001696:	e7b1      	b.n	80015fc <__register_exitproc+0x4c>
 8001698:	20000430 	.word	0x20000430
 800169c:	080016bc 	.word	0x080016bc
 80016a0:	00000000 	.word	0x00000000

080016a4 <_init>:
 80016a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80016a6:	46c0      	nop			; (mov r8, r8)
 80016a8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80016aa:	bc08      	pop	{r3}
 80016ac:	469e      	mov	lr, r3
 80016ae:	4770      	bx	lr

080016b0 <_fini>:
 80016b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80016b2:	46c0      	nop			; (mov r8, r8)
 80016b4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80016b6:	bc08      	pop	{r3}
 80016b8:	469e      	mov	lr, r3
 80016ba:	4770      	bx	lr
