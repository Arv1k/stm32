
build/exti_systick.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000c64  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  08000d24  08000d24  00010d24  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000d28  08000d28  00010d28  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000d30  08000d30  00010d30  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000d34  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000043c  20000434  08001168  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000870  08001168  00020870  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       0000102b  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     000003ac  00000000  00000000  00021487  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        000007c8  00000000  00000000  00021833  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000188  00000000  00000000  00021ffb  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000158  00000000  00000000  00022183  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00000618  00000000  00000000  000222db  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00000898  00000000  00000000  000228f3  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  0002318b  2**0  CONTENTS, READONLY
 17 .debug_frame      000006c0  00000000  00000000  0002320c  2**2  CONTENTS, READONLY, DEBUGGING

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
 80000e4:	08000d0c 	.word	0x08000d0c

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
 8000104:	08000d0c 	.word	0x08000d0c

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
 800024a:	f000 fc39 	bl	8000ac0 <SystemInit>
 800024e:	f000 fc8d 	bl	8000b6c <__libc_init_array>
 8000252:	f000 fc17 	bl	8000a84 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08000d34 	.word	0x08000d34
 8000268:	20000434 	.word	0x20000434
 800026c:	20000870 	.word	0x20000870

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

0800044c <LL_RCC_PLL_Enable>:
 800044c:	b580      	push	{r7, lr}
 800044e:	af00      	add	r7, sp, #0
 8000450:	4b04      	ldr	r3, [pc, #16]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000452:	681a      	ldr	r2, [r3, #0]
 8000454:	4b03      	ldr	r3, [pc, #12]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000456:	2180      	movs	r1, #128	; 0x80
 8000458:	0449      	lsls	r1, r1, #17
 800045a:	430a      	orrs	r2, r1
 800045c:	601a      	str	r2, [r3, #0]
 800045e:	46c0      	nop			; (mov r8, r8)
 8000460:	46bd      	mov	sp, r7
 8000462:	bd80      	pop	{r7, pc}
 8000464:	40021000 	.word	0x40021000

08000468 <LL_RCC_PLL_IsReady>:
 8000468:	b580      	push	{r7, lr}
 800046a:	af00      	add	r7, sp, #0
 800046c:	4b07      	ldr	r3, [pc, #28]	; (800048c <LL_RCC_PLL_IsReady+0x24>)
 800046e:	681a      	ldr	r2, [r3, #0]
 8000470:	2380      	movs	r3, #128	; 0x80
 8000472:	049b      	lsls	r3, r3, #18
 8000474:	4013      	ands	r3, r2
 8000476:	22fe      	movs	r2, #254	; 0xfe
 8000478:	0612      	lsls	r2, r2, #24
 800047a:	4694      	mov	ip, r2
 800047c:	4463      	add	r3, ip
 800047e:	425a      	negs	r2, r3
 8000480:	4153      	adcs	r3, r2
 8000482:	b2db      	uxtb	r3, r3
 8000484:	0018      	movs	r0, r3
 8000486:	46bd      	mov	sp, r7
 8000488:	bd80      	pop	{r7, pc}
 800048a:	46c0      	nop			; (mov r8, r8)
 800048c:	40021000 	.word	0x40021000

08000490 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000490:	b580      	push	{r7, lr}
 8000492:	b082      	sub	sp, #8
 8000494:	af00      	add	r7, sp, #0
 8000496:	6078      	str	r0, [r7, #4]
 8000498:	6039      	str	r1, [r7, #0]
 800049a:	4b0e      	ldr	r3, [pc, #56]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800049c:	685b      	ldr	r3, [r3, #4]
 800049e:	4a0e      	ldr	r2, [pc, #56]	; (80004d8 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004a0:	4013      	ands	r3, r2
 80004a2:	0019      	movs	r1, r3
 80004a4:	687a      	ldr	r2, [r7, #4]
 80004a6:	2380      	movs	r3, #128	; 0x80
 80004a8:	025b      	lsls	r3, r3, #9
 80004aa:	401a      	ands	r2, r3
 80004ac:	683b      	ldr	r3, [r7, #0]
 80004ae:	431a      	orrs	r2, r3
 80004b0:	4b08      	ldr	r3, [pc, #32]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b2:	430a      	orrs	r2, r1
 80004b4:	605a      	str	r2, [r3, #4]
 80004b6:	4b07      	ldr	r3, [pc, #28]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004ba:	220f      	movs	r2, #15
 80004bc:	4393      	bics	r3, r2
 80004be:	0019      	movs	r1, r3
 80004c0:	687b      	ldr	r3, [r7, #4]
 80004c2:	220f      	movs	r2, #15
 80004c4:	401a      	ands	r2, r3
 80004c6:	4b03      	ldr	r3, [pc, #12]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004c8:	430a      	orrs	r2, r1
 80004ca:	62da      	str	r2, [r3, #44]	; 0x2c
 80004cc:	46c0      	nop			; (mov r8, r8)
 80004ce:	46bd      	mov	sp, r7
 80004d0:	b002      	add	sp, #8
 80004d2:	bd80      	pop	{r7, pc}
 80004d4:	40021000 	.word	0x40021000
 80004d8:	ffc2ffff 	.word	0xffc2ffff

080004dc <LL_SYSCFG_SetEXTISource>:
 80004dc:	b590      	push	{r4, r7, lr}
 80004de:	b083      	sub	sp, #12
 80004e0:	af00      	add	r7, sp, #0
 80004e2:	6078      	str	r0, [r7, #4]
 80004e4:	6039      	str	r1, [r7, #0]
 80004e6:	4a0f      	ldr	r2, [pc, #60]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 80004e8:	683b      	ldr	r3, [r7, #0]
 80004ea:	21ff      	movs	r1, #255	; 0xff
 80004ec:	400b      	ands	r3, r1
 80004ee:	3302      	adds	r3, #2
 80004f0:	009b      	lsls	r3, r3, #2
 80004f2:	589b      	ldr	r3, [r3, r2]
 80004f4:	683a      	ldr	r2, [r7, #0]
 80004f6:	0c12      	lsrs	r2, r2, #16
 80004f8:	210f      	movs	r1, #15
 80004fa:	4091      	lsls	r1, r2
 80004fc:	000a      	movs	r2, r1
 80004fe:	43d2      	mvns	r2, r2
 8000500:	401a      	ands	r2, r3
 8000502:	0011      	movs	r1, r2
 8000504:	683b      	ldr	r3, [r7, #0]
 8000506:	0c1b      	lsrs	r3, r3, #16
 8000508:	687a      	ldr	r2, [r7, #4]
 800050a:	409a      	lsls	r2, r3
 800050c:	4805      	ldr	r0, [pc, #20]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 800050e:	683b      	ldr	r3, [r7, #0]
 8000510:	24ff      	movs	r4, #255	; 0xff
 8000512:	4023      	ands	r3, r4
 8000514:	430a      	orrs	r2, r1
 8000516:	3302      	adds	r3, #2
 8000518:	009b      	lsls	r3, r3, #2
 800051a:	501a      	str	r2, [r3, r0]
 800051c:	46c0      	nop			; (mov r8, r8)
 800051e:	46bd      	mov	sp, r7
 8000520:	b003      	add	sp, #12
 8000522:	bd90      	pop	{r4, r7, pc}
 8000524:	40010000 	.word	0x40010000

08000528 <LL_FLASH_SetLatency>:
 8000528:	b580      	push	{r7, lr}
 800052a:	b082      	sub	sp, #8
 800052c:	af00      	add	r7, sp, #0
 800052e:	6078      	str	r0, [r7, #4]
 8000530:	4b06      	ldr	r3, [pc, #24]	; (800054c <LL_FLASH_SetLatency+0x24>)
 8000532:	681b      	ldr	r3, [r3, #0]
 8000534:	2201      	movs	r2, #1
 8000536:	4393      	bics	r3, r2
 8000538:	0019      	movs	r1, r3
 800053a:	4b04      	ldr	r3, [pc, #16]	; (800054c <LL_FLASH_SetLatency+0x24>)
 800053c:	687a      	ldr	r2, [r7, #4]
 800053e:	430a      	orrs	r2, r1
 8000540:	601a      	str	r2, [r3, #0]
 8000542:	46c0      	nop			; (mov r8, r8)
 8000544:	46bd      	mov	sp, r7
 8000546:	b002      	add	sp, #8
 8000548:	bd80      	pop	{r7, pc}
 800054a:	46c0      	nop			; (mov r8, r8)
 800054c:	40022000 	.word	0x40022000

08000550 <LL_AHB1_GRP1_EnableClock>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b084      	sub	sp, #16
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	4b07      	ldr	r3, [pc, #28]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055a:	6959      	ldr	r1, [r3, #20]
 800055c:	4b06      	ldr	r3, [pc, #24]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055e:	687a      	ldr	r2, [r7, #4]
 8000560:	430a      	orrs	r2, r1
 8000562:	615a      	str	r2, [r3, #20]
 8000564:	4b04      	ldr	r3, [pc, #16]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000566:	695b      	ldr	r3, [r3, #20]
 8000568:	687a      	ldr	r2, [r7, #4]
 800056a:	4013      	ands	r3, r2
 800056c:	60fb      	str	r3, [r7, #12]
 800056e:	68fb      	ldr	r3, [r7, #12]
 8000570:	46c0      	nop			; (mov r8, r8)
 8000572:	46bd      	mov	sp, r7
 8000574:	b004      	add	sp, #16
 8000576:	bd80      	pop	{r7, pc}
 8000578:	40021000 	.word	0x40021000

0800057c <LL_APB1_GRP2_EnableClock>:
 800057c:	b580      	push	{r7, lr}
 800057e:	b084      	sub	sp, #16
 8000580:	af00      	add	r7, sp, #0
 8000582:	6078      	str	r0, [r7, #4]
 8000584:	4b07      	ldr	r3, [pc, #28]	; (80005a4 <LL_APB1_GRP2_EnableClock+0x28>)
 8000586:	6999      	ldr	r1, [r3, #24]
 8000588:	4b06      	ldr	r3, [pc, #24]	; (80005a4 <LL_APB1_GRP2_EnableClock+0x28>)
 800058a:	687a      	ldr	r2, [r7, #4]
 800058c:	430a      	orrs	r2, r1
 800058e:	619a      	str	r2, [r3, #24]
 8000590:	4b04      	ldr	r3, [pc, #16]	; (80005a4 <LL_APB1_GRP2_EnableClock+0x28>)
 8000592:	699b      	ldr	r3, [r3, #24]
 8000594:	687a      	ldr	r2, [r7, #4]
 8000596:	4013      	ands	r3, r2
 8000598:	60fb      	str	r3, [r7, #12]
 800059a:	68fb      	ldr	r3, [r7, #12]
 800059c:	46c0      	nop			; (mov r8, r8)
 800059e:	46bd      	mov	sp, r7
 80005a0:	b004      	add	sp, #16
 80005a2:	bd80      	pop	{r7, pc}
 80005a4:	40021000 	.word	0x40021000

080005a8 <LL_GPIO_SetPinMode>:
 80005a8:	b580      	push	{r7, lr}
 80005aa:	b084      	sub	sp, #16
 80005ac:	af00      	add	r7, sp, #0
 80005ae:	60f8      	str	r0, [r7, #12]
 80005b0:	60b9      	str	r1, [r7, #8]
 80005b2:	607a      	str	r2, [r7, #4]
 80005b4:	68fb      	ldr	r3, [r7, #12]
 80005b6:	6819      	ldr	r1, [r3, #0]
 80005b8:	68bb      	ldr	r3, [r7, #8]
 80005ba:	68ba      	ldr	r2, [r7, #8]
 80005bc:	435a      	muls	r2, r3
 80005be:	0013      	movs	r3, r2
 80005c0:	005b      	lsls	r3, r3, #1
 80005c2:	189b      	adds	r3, r3, r2
 80005c4:	43db      	mvns	r3, r3
 80005c6:	400b      	ands	r3, r1
 80005c8:	001a      	movs	r2, r3
 80005ca:	68bb      	ldr	r3, [r7, #8]
 80005cc:	68b9      	ldr	r1, [r7, #8]
 80005ce:	434b      	muls	r3, r1
 80005d0:	6879      	ldr	r1, [r7, #4]
 80005d2:	434b      	muls	r3, r1
 80005d4:	431a      	orrs	r2, r3
 80005d6:	68fb      	ldr	r3, [r7, #12]
 80005d8:	601a      	str	r2, [r3, #0]
 80005da:	46c0      	nop			; (mov r8, r8)
 80005dc:	46bd      	mov	sp, r7
 80005de:	b004      	add	sp, #16
 80005e0:	bd80      	pop	{r7, pc}

080005e2 <LL_GPIO_SetPinPull>:
 80005e2:	b580      	push	{r7, lr}
 80005e4:	b084      	sub	sp, #16
 80005e6:	af00      	add	r7, sp, #0
 80005e8:	60f8      	str	r0, [r7, #12]
 80005ea:	60b9      	str	r1, [r7, #8]
 80005ec:	607a      	str	r2, [r7, #4]
 80005ee:	68fb      	ldr	r3, [r7, #12]
 80005f0:	68d9      	ldr	r1, [r3, #12]
 80005f2:	68bb      	ldr	r3, [r7, #8]
 80005f4:	68ba      	ldr	r2, [r7, #8]
 80005f6:	435a      	muls	r2, r3
 80005f8:	0013      	movs	r3, r2
 80005fa:	005b      	lsls	r3, r3, #1
 80005fc:	189b      	adds	r3, r3, r2
 80005fe:	43db      	mvns	r3, r3
 8000600:	400b      	ands	r3, r1
 8000602:	001a      	movs	r2, r3
 8000604:	68bb      	ldr	r3, [r7, #8]
 8000606:	68b9      	ldr	r1, [r7, #8]
 8000608:	434b      	muls	r3, r1
 800060a:	6879      	ldr	r1, [r7, #4]
 800060c:	434b      	muls	r3, r1
 800060e:	431a      	orrs	r2, r3
 8000610:	68fb      	ldr	r3, [r7, #12]
 8000612:	60da      	str	r2, [r3, #12]
 8000614:	46c0      	nop			; (mov r8, r8)
 8000616:	46bd      	mov	sp, r7
 8000618:	b004      	add	sp, #16
 800061a:	bd80      	pop	{r7, pc}

0800061c <LL_GPIO_SetOutputPin>:
 800061c:	b580      	push	{r7, lr}
 800061e:	b082      	sub	sp, #8
 8000620:	af00      	add	r7, sp, #0
 8000622:	6078      	str	r0, [r7, #4]
 8000624:	6039      	str	r1, [r7, #0]
 8000626:	687b      	ldr	r3, [r7, #4]
 8000628:	683a      	ldr	r2, [r7, #0]
 800062a:	619a      	str	r2, [r3, #24]
 800062c:	46c0      	nop			; (mov r8, r8)
 800062e:	46bd      	mov	sp, r7
 8000630:	b002      	add	sp, #8
 8000632:	bd80      	pop	{r7, pc}

08000634 <LL_GPIO_ResetOutputPin>:
 8000634:	b580      	push	{r7, lr}
 8000636:	b082      	sub	sp, #8
 8000638:	af00      	add	r7, sp, #0
 800063a:	6078      	str	r0, [r7, #4]
 800063c:	6039      	str	r1, [r7, #0]
 800063e:	687b      	ldr	r3, [r7, #4]
 8000640:	683a      	ldr	r2, [r7, #0]
 8000642:	629a      	str	r2, [r3, #40]	; 0x28
 8000644:	46c0      	nop			; (mov r8, r8)
 8000646:	46bd      	mov	sp, r7
 8000648:	b002      	add	sp, #8
 800064a:	bd80      	pop	{r7, pc}

0800064c <LL_GPIO_TogglePin>:
 800064c:	b580      	push	{r7, lr}
 800064e:	b082      	sub	sp, #8
 8000650:	af00      	add	r7, sp, #0
 8000652:	6078      	str	r0, [r7, #4]
 8000654:	6039      	str	r1, [r7, #0]
 8000656:	687b      	ldr	r3, [r7, #4]
 8000658:	695a      	ldr	r2, [r3, #20]
 800065a:	683b      	ldr	r3, [r7, #0]
 800065c:	405a      	eors	r2, r3
 800065e:	687b      	ldr	r3, [r7, #4]
 8000660:	615a      	str	r2, [r3, #20]
 8000662:	46c0      	nop			; (mov r8, r8)
 8000664:	46bd      	mov	sp, r7
 8000666:	b002      	add	sp, #8
 8000668:	bd80      	pop	{r7, pc}
	...

0800066c <LL_EXTI_EnableIT_0_31>:
 800066c:	b580      	push	{r7, lr}
 800066e:	b082      	sub	sp, #8
 8000670:	af00      	add	r7, sp, #0
 8000672:	6078      	str	r0, [r7, #4]
 8000674:	4b04      	ldr	r3, [pc, #16]	; (8000688 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000676:	6819      	ldr	r1, [r3, #0]
 8000678:	4b03      	ldr	r3, [pc, #12]	; (8000688 <LL_EXTI_EnableIT_0_31+0x1c>)
 800067a:	687a      	ldr	r2, [r7, #4]
 800067c:	430a      	orrs	r2, r1
 800067e:	601a      	str	r2, [r3, #0]
 8000680:	46c0      	nop			; (mov r8, r8)
 8000682:	46bd      	mov	sp, r7
 8000684:	b002      	add	sp, #8
 8000686:	bd80      	pop	{r7, pc}
 8000688:	40010400 	.word	0x40010400

0800068c <LL_EXTI_EnableRisingTrig_0_31>:
 800068c:	b580      	push	{r7, lr}
 800068e:	b082      	sub	sp, #8
 8000690:	af00      	add	r7, sp, #0
 8000692:	6078      	str	r0, [r7, #4]
 8000694:	4b04      	ldr	r3, [pc, #16]	; (80006a8 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000696:	6899      	ldr	r1, [r3, #8]
 8000698:	4b03      	ldr	r3, [pc, #12]	; (80006a8 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 800069a:	687a      	ldr	r2, [r7, #4]
 800069c:	430a      	orrs	r2, r1
 800069e:	609a      	str	r2, [r3, #8]
 80006a0:	46c0      	nop			; (mov r8, r8)
 80006a2:	46bd      	mov	sp, r7
 80006a4:	b002      	add	sp, #8
 80006a6:	bd80      	pop	{r7, pc}
 80006a8:	40010400 	.word	0x40010400

080006ac <LL_EXTI_EnableFallingTrig_0_31>:
 80006ac:	b580      	push	{r7, lr}
 80006ae:	b082      	sub	sp, #8
 80006b0:	af00      	add	r7, sp, #0
 80006b2:	6078      	str	r0, [r7, #4]
 80006b4:	4b04      	ldr	r3, [pc, #16]	; (80006c8 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80006b6:	68d9      	ldr	r1, [r3, #12]
 80006b8:	4b03      	ldr	r3, [pc, #12]	; (80006c8 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80006ba:	687a      	ldr	r2, [r7, #4]
 80006bc:	430a      	orrs	r2, r1
 80006be:	60da      	str	r2, [r3, #12]
 80006c0:	46c0      	nop			; (mov r8, r8)
 80006c2:	46bd      	mov	sp, r7
 80006c4:	b002      	add	sp, #8
 80006c6:	bd80      	pop	{r7, pc}
 80006c8:	40010400 	.word	0x40010400

080006cc <LL_EXTI_ClearFlag_0_31>:
 80006cc:	b580      	push	{r7, lr}
 80006ce:	b082      	sub	sp, #8
 80006d0:	af00      	add	r7, sp, #0
 80006d2:	6078      	str	r0, [r7, #4]
 80006d4:	4b03      	ldr	r3, [pc, #12]	; (80006e4 <LL_EXTI_ClearFlag_0_31+0x18>)
 80006d6:	687a      	ldr	r2, [r7, #4]
 80006d8:	615a      	str	r2, [r3, #20]
 80006da:	46c0      	nop			; (mov r8, r8)
 80006dc:	46bd      	mov	sp, r7
 80006de:	b002      	add	sp, #8
 80006e0:	bd80      	pop	{r7, pc}
 80006e2:	46c0      	nop			; (mov r8, r8)
 80006e4:	40010400 	.word	0x40010400

080006e8 <LL_InitTick>:
 80006e8:	b580      	push	{r7, lr}
 80006ea:	b082      	sub	sp, #8
 80006ec:	af00      	add	r7, sp, #0
 80006ee:	6078      	str	r0, [r7, #4]
 80006f0:	6039      	str	r1, [r7, #0]
 80006f2:	6839      	ldr	r1, [r7, #0]
 80006f4:	6878      	ldr	r0, [r7, #4]
 80006f6:	f7ff fd07 	bl	8000108 <__udivsi3>
 80006fa:	0003      	movs	r3, r0
 80006fc:	001a      	movs	r2, r3
 80006fe:	4b06      	ldr	r3, [pc, #24]	; (8000718 <LL_InitTick+0x30>)
 8000700:	3a01      	subs	r2, #1
 8000702:	605a      	str	r2, [r3, #4]
 8000704:	4b04      	ldr	r3, [pc, #16]	; (8000718 <LL_InitTick+0x30>)
 8000706:	2200      	movs	r2, #0
 8000708:	609a      	str	r2, [r3, #8]
 800070a:	4b03      	ldr	r3, [pc, #12]	; (8000718 <LL_InitTick+0x30>)
 800070c:	2205      	movs	r2, #5
 800070e:	601a      	str	r2, [r3, #0]
 8000710:	46c0      	nop			; (mov r8, r8)
 8000712:	46bd      	mov	sp, r7
 8000714:	b002      	add	sp, #8
 8000716:	bd80      	pop	{r7, pc}
 8000718:	e000e010 	.word	0xe000e010

0800071c <LL_SYSTICK_EnableIT>:
 800071c:	b580      	push	{r7, lr}
 800071e:	af00      	add	r7, sp, #0
 8000720:	4b04      	ldr	r3, [pc, #16]	; (8000734 <LL_SYSTICK_EnableIT+0x18>)
 8000722:	681a      	ldr	r2, [r3, #0]
 8000724:	4b03      	ldr	r3, [pc, #12]	; (8000734 <LL_SYSTICK_EnableIT+0x18>)
 8000726:	2102      	movs	r1, #2
 8000728:	430a      	orrs	r2, r1
 800072a:	601a      	str	r2, [r3, #0]
 800072c:	46c0      	nop			; (mov r8, r8)
 800072e:	46bd      	mov	sp, r7
 8000730:	bd80      	pop	{r7, pc}
 8000732:	46c0      	nop			; (mov r8, r8)
 8000734:	e000e010 	.word	0xe000e010

08000738 <rcc_config>:
 8000738:	b580      	push	{r7, lr}
 800073a:	af00      	add	r7, sp, #0
 800073c:	2001      	movs	r0, #1
 800073e:	f7ff fef3 	bl	8000528 <LL_FLASH_SetLatency>
 8000742:	f7ff fe1b 	bl	800037c <LL_RCC_HSI_Enable>
 8000746:	46c0      	nop			; (mov r8, r8)
 8000748:	f7ff fe26 	bl	8000398 <LL_RCC_HSI_IsReady>
 800074c:	0003      	movs	r3, r0
 800074e:	2b01      	cmp	r3, #1
 8000750:	d1fa      	bne.n	8000748 <rcc_config+0x10>
 8000752:	23a0      	movs	r3, #160	; 0xa0
 8000754:	039b      	lsls	r3, r3, #14
 8000756:	0019      	movs	r1, r3
 8000758:	2000      	movs	r0, #0
 800075a:	f7ff fe99 	bl	8000490 <LL_RCC_PLL_ConfigDomain_SYS>
 800075e:	f7ff fe75 	bl	800044c <LL_RCC_PLL_Enable>
 8000762:	46c0      	nop			; (mov r8, r8)
 8000764:	f7ff fe80 	bl	8000468 <LL_RCC_PLL_IsReady>
 8000768:	0003      	movs	r3, r0
 800076a:	2b01      	cmp	r3, #1
 800076c:	d1fa      	bne.n	8000764 <rcc_config+0x2c>
 800076e:	2000      	movs	r0, #0
 8000770:	f7ff fe42 	bl	80003f8 <LL_RCC_SetAHBPrescaler>
 8000774:	2002      	movs	r0, #2
 8000776:	f7ff fe1f 	bl	80003b8 <LL_RCC_SetSysClkSource>
 800077a:	46c0      	nop			; (mov r8, r8)
 800077c:	f7ff fe30 	bl	80003e0 <LL_RCC_GetSysClkSource>
 8000780:	0003      	movs	r3, r0
 8000782:	2b08      	cmp	r3, #8
 8000784:	d1fa      	bne.n	800077c <rcc_config+0x44>
 8000786:	2000      	movs	r0, #0
 8000788:	f7ff fe4a 	bl	8000420 <LL_RCC_SetAPB1Prescaler>
 800078c:	4b02      	ldr	r3, [pc, #8]	; (8000798 <rcc_config+0x60>)
 800078e:	4a03      	ldr	r2, [pc, #12]	; (800079c <rcc_config+0x64>)
 8000790:	601a      	str	r2, [r3, #0]
 8000792:	46c0      	nop			; (mov r8, r8)
 8000794:	46bd      	mov	sp, r7
 8000796:	bd80      	pop	{r7, pc}
 8000798:	20000000 	.word	0x20000000
 800079c:	02dc6c00 	.word	0x02dc6c00

080007a0 <gpio_config>:
 80007a0:	b580      	push	{r7, lr}
 80007a2:	af00      	add	r7, sp, #0
 80007a4:	2380      	movs	r3, #128	; 0x80
 80007a6:	031b      	lsls	r3, r3, #12
 80007a8:	0018      	movs	r0, r3
 80007aa:	f7ff fed1 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 80007ae:	2380      	movs	r3, #128	; 0x80
 80007b0:	005b      	lsls	r3, r3, #1
 80007b2:	4811      	ldr	r0, [pc, #68]	; (80007f8 <gpio_config+0x58>)
 80007b4:	2201      	movs	r2, #1
 80007b6:	0019      	movs	r1, r3
 80007b8:	f7ff fef6 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007bc:	2380      	movs	r3, #128	; 0x80
 80007be:	009b      	lsls	r3, r3, #2
 80007c0:	480d      	ldr	r0, [pc, #52]	; (80007f8 <gpio_config+0x58>)
 80007c2:	2201      	movs	r2, #1
 80007c4:	0019      	movs	r1, r3
 80007c6:	f7ff feef 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007ca:	2380      	movs	r3, #128	; 0x80
 80007cc:	029b      	lsls	r3, r3, #10
 80007ce:	0018      	movs	r0, r3
 80007d0:	f7ff febe 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 80007d4:	2390      	movs	r3, #144	; 0x90
 80007d6:	05db      	lsls	r3, r3, #23
 80007d8:	2202      	movs	r2, #2
 80007da:	2102      	movs	r1, #2
 80007dc:	0018      	movs	r0, r3
 80007de:	f7ff ff00 	bl	80005e2 <LL_GPIO_SetPinPull>
 80007e2:	2390      	movs	r3, #144	; 0x90
 80007e4:	05db      	lsls	r3, r3, #23
 80007e6:	2202      	movs	r2, #2
 80007e8:	2101      	movs	r1, #1
 80007ea:	0018      	movs	r0, r3
 80007ec:	f7ff fef9 	bl	80005e2 <LL_GPIO_SetPinPull>
 80007f0:	46c0      	nop			; (mov r8, r8)
 80007f2:	46bd      	mov	sp, r7
 80007f4:	bd80      	pop	{r7, pc}
 80007f6:	46c0      	nop			; (mov r8, r8)
 80007f8:	48000800 	.word	0x48000800

080007fc <exti_config>:
 80007fc:	b580      	push	{r7, lr}
 80007fe:	af00      	add	r7, sp, #0
 8000800:	2001      	movs	r0, #1
 8000802:	f7ff febb 	bl	800057c <LL_APB1_GRP2_EnableClock>
 8000806:	2100      	movs	r1, #0
 8000808:	2000      	movs	r0, #0
 800080a:	f7ff fe67 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 800080e:	2001      	movs	r0, #1
 8000810:	f7ff ff2c 	bl	800066c <LL_EXTI_EnableIT_0_31>
 8000814:	2001      	movs	r0, #1
 8000816:	f7ff ff49 	bl	80006ac <LL_EXTI_EnableFallingTrig_0_31>
 800081a:	2001      	movs	r0, #1
 800081c:	f7ff ff36 	bl	800068c <LL_EXTI_EnableRisingTrig_0_31>
 8000820:	2005      	movs	r0, #5
 8000822:	f7ff fd27 	bl	8000274 <NVIC_EnableIRQ>
 8000826:	2100      	movs	r1, #0
 8000828:	2005      	movs	r0, #5
 800082a:	f7ff fd39 	bl	80002a0 <NVIC_SetPriority>
 800082e:	46c0      	nop			; (mov r8, r8)
 8000830:	46bd      	mov	sp, r7
 8000832:	bd80      	pop	{r7, pc}

08000834 <EXTI0_1_IRQHandler>:
 8000834:	b580      	push	{r7, lr}
 8000836:	b082      	sub	sp, #8
 8000838:	af00      	add	r7, sp, #0
 800083a:	4b35      	ldr	r3, [pc, #212]	; (8000910 <EXTI0_1_IRQHandler+0xdc>)
 800083c:	681b      	ldr	r3, [r3, #0]
 800083e:	607b      	str	r3, [r7, #4]
 8000840:	4b34      	ldr	r3, [pc, #208]	; (8000914 <EXTI0_1_IRQHandler+0xe0>)
 8000842:	681b      	ldr	r3, [r3, #0]
 8000844:	687a      	ldr	r2, [r7, #4]
 8000846:	1ad3      	subs	r3, r2, r3
 8000848:	603b      	str	r3, [r7, #0]
 800084a:	2246      	movs	r2, #70	; 0x46
 800084c:	683b      	ldr	r3, [r7, #0]
 800084e:	4293      	cmp	r3, r2
 8000850:	da03      	bge.n	800085a <EXTI0_1_IRQHandler+0x26>
 8000852:	2001      	movs	r0, #1
 8000854:	f7ff ff3a 	bl	80006cc <LL_EXTI_ClearFlag_0_31>
 8000858:	e057      	b.n	800090a <EXTI0_1_IRQHandler+0xd6>
 800085a:	4b2f      	ldr	r3, [pc, #188]	; (8000918 <EXTI0_1_IRQHandler+0xe4>)
 800085c:	2201      	movs	r2, #1
 800085e:	601a      	str	r2, [r3, #0]
 8000860:	4b2e      	ldr	r3, [pc, #184]	; (800091c <EXTI0_1_IRQHandler+0xe8>)
 8000862:	681b      	ldr	r3, [r3, #0]
 8000864:	2b00      	cmp	r3, #0
 8000866:	d110      	bne.n	800088a <EXTI0_1_IRQHandler+0x56>
 8000868:	4b2c      	ldr	r3, [pc, #176]	; (800091c <EXTI0_1_IRQHandler+0xe8>)
 800086a:	2201      	movs	r2, #1
 800086c:	601a      	str	r2, [r3, #0]
 800086e:	4b29      	ldr	r3, [pc, #164]	; (8000914 <EXTI0_1_IRQHandler+0xe0>)
 8000870:	687a      	ldr	r2, [r7, #4]
 8000872:	601a      	str	r2, [r3, #0]
 8000874:	2380      	movs	r3, #128	; 0x80
 8000876:	009b      	lsls	r3, r3, #2
 8000878:	4a29      	ldr	r2, [pc, #164]	; (8000920 <EXTI0_1_IRQHandler+0xec>)
 800087a:	0019      	movs	r1, r3
 800087c:	0010      	movs	r0, r2
 800087e:	f7ff fee5 	bl	800064c <LL_GPIO_TogglePin>
 8000882:	2001      	movs	r0, #1
 8000884:	f7ff ff22 	bl	80006cc <LL_EXTI_ClearFlag_0_31>
 8000888:	e03f      	b.n	800090a <EXTI0_1_IRQHandler+0xd6>
 800088a:	4b24      	ldr	r3, [pc, #144]	; (800091c <EXTI0_1_IRQHandler+0xe8>)
 800088c:	2200      	movs	r2, #0
 800088e:	601a      	str	r2, [r3, #0]
 8000890:	2364      	movs	r3, #100	; 0x64
 8000892:	009b      	lsls	r3, r3, #2
 8000894:	683a      	ldr	r2, [r7, #0]
 8000896:	429a      	cmp	r2, r3
 8000898:	da16      	bge.n	80008c8 <EXTI0_1_IRQHandler+0x94>
 800089a:	4b22      	ldr	r3, [pc, #136]	; (8000924 <EXTI0_1_IRQHandler+0xf0>)
 800089c:	681b      	ldr	r3, [r3, #0]
 800089e:	1c59      	adds	r1, r3, #1
 80008a0:	4a20      	ldr	r2, [pc, #128]	; (8000924 <EXTI0_1_IRQHandler+0xf0>)
 80008a2:	6011      	str	r1, [r2, #0]
 80008a4:	4a20      	ldr	r2, [pc, #128]	; (8000928 <EXTI0_1_IRQHandler+0xf4>)
 80008a6:	2101      	movs	r1, #1
 80008a8:	54d1      	strb	r1, [r2, r3]
 80008aa:	2380      	movs	r3, #128	; 0x80
 80008ac:	009b      	lsls	r3, r3, #2
 80008ae:	4a1c      	ldr	r2, [pc, #112]	; (8000920 <EXTI0_1_IRQHandler+0xec>)
 80008b0:	0019      	movs	r1, r3
 80008b2:	0010      	movs	r0, r2
 80008b4:	f7ff feca 	bl	800064c <LL_GPIO_TogglePin>
 80008b8:	2380      	movs	r3, #128	; 0x80
 80008ba:	005b      	lsls	r3, r3, #1
 80008bc:	4a18      	ldr	r2, [pc, #96]	; (8000920 <EXTI0_1_IRQHandler+0xec>)
 80008be:	0019      	movs	r1, r3
 80008c0:	0010      	movs	r0, r2
 80008c2:	f7ff feb7 	bl	8000634 <LL_GPIO_ResetOutputPin>
 80008c6:	e01a      	b.n	80008fe <EXTI0_1_IRQHandler+0xca>
 80008c8:	2364      	movs	r3, #100	; 0x64
 80008ca:	009b      	lsls	r3, r3, #2
 80008cc:	683a      	ldr	r2, [r7, #0]
 80008ce:	429a      	cmp	r2, r3
 80008d0:	dd15      	ble.n	80008fe <EXTI0_1_IRQHandler+0xca>
 80008d2:	4b14      	ldr	r3, [pc, #80]	; (8000924 <EXTI0_1_IRQHandler+0xf0>)
 80008d4:	681b      	ldr	r3, [r3, #0]
 80008d6:	1c59      	adds	r1, r3, #1
 80008d8:	4a12      	ldr	r2, [pc, #72]	; (8000924 <EXTI0_1_IRQHandler+0xf0>)
 80008da:	6011      	str	r1, [r2, #0]
 80008dc:	4a12      	ldr	r2, [pc, #72]	; (8000928 <EXTI0_1_IRQHandler+0xf4>)
 80008de:	2102      	movs	r1, #2
 80008e0:	54d1      	strb	r1, [r2, r3]
 80008e2:	2380      	movs	r3, #128	; 0x80
 80008e4:	009b      	lsls	r3, r3, #2
 80008e6:	4a0e      	ldr	r2, [pc, #56]	; (8000920 <EXTI0_1_IRQHandler+0xec>)
 80008e8:	0019      	movs	r1, r3
 80008ea:	0010      	movs	r0, r2
 80008ec:	f7ff feae 	bl	800064c <LL_GPIO_TogglePin>
 80008f0:	2380      	movs	r3, #128	; 0x80
 80008f2:	005b      	lsls	r3, r3, #1
 80008f4:	4a0a      	ldr	r2, [pc, #40]	; (8000920 <EXTI0_1_IRQHandler+0xec>)
 80008f6:	0019      	movs	r1, r3
 80008f8:	0010      	movs	r0, r2
 80008fa:	f7ff fe8f 	bl	800061c <LL_GPIO_SetOutputPin>
 80008fe:	4b05      	ldr	r3, [pc, #20]	; (8000914 <EXTI0_1_IRQHandler+0xe0>)
 8000900:	687a      	ldr	r2, [r7, #4]
 8000902:	601a      	str	r2, [r3, #0]
 8000904:	2001      	movs	r0, #1
 8000906:	f7ff fee1 	bl	80006cc <LL_EXTI_ClearFlag_0_31>
 800090a:	46bd      	mov	sp, r7
 800090c:	b002      	add	sp, #8
 800090e:	bd80      	pop	{r7, pc}
 8000910:	20000450 	.word	0x20000450
 8000914:	20000840 	.word	0x20000840
 8000918:	20000844 	.word	0x20000844
 800091c:	20000848 	.word	0x20000848
 8000920:	48000800 	.word	0x48000800
 8000924:	2000083c 	.word	0x2000083c
 8000928:	20000454 	.word	0x20000454

0800092c <delay>:
 800092c:	b580      	push	{r7, lr}
 800092e:	4e02      	ldr	r6, [pc, #8]	; (8000938 <delay+0xc>)
 8000930:	3e01      	subs	r6, #1
 8000932:	2e00      	cmp	r6, #0
 8000934:	d1fc      	bne.n	8000930 <delay+0x4>
 8000936:	bd80      	pop	{r7, pc}
 8000938:	000fffff 	.word	0x000fffff
 800093c:	46c0      	nop			; (mov r8, r8)
	...

08000940 <systick_config>:
 8000940:	b580      	push	{r7, lr}
 8000942:	af00      	add	r7, sp, #0
 8000944:	23fa      	movs	r3, #250	; 0xfa
 8000946:	009b      	lsls	r3, r3, #2
 8000948:	4a07      	ldr	r2, [pc, #28]	; (8000968 <systick_config+0x28>)
 800094a:	0019      	movs	r1, r3
 800094c:	0010      	movs	r0, r2
 800094e:	f7ff fecb 	bl	80006e8 <LL_InitTick>
 8000952:	f7ff fee3 	bl	800071c <LL_SYSTICK_EnableIT>
 8000956:	2301      	movs	r3, #1
 8000958:	425b      	negs	r3, r3
 800095a:	2100      	movs	r1, #0
 800095c:	0018      	movs	r0, r3
 800095e:	f7ff fc9f 	bl	80002a0 <NVIC_SetPriority>
 8000962:	46c0      	nop			; (mov r8, r8)
 8000964:	46bd      	mov	sp, r7
 8000966:	bd80      	pop	{r7, pc}
 8000968:	02dc6c00 	.word	0x02dc6c00

0800096c <SysTick_Handler>:
 800096c:	b580      	push	{r7, lr}
 800096e:	b084      	sub	sp, #16
 8000970:	af00      	add	r7, sp, #0
 8000972:	4b3e      	ldr	r3, [pc, #248]	; (8000a6c <SysTick_Handler+0x100>)
 8000974:	681b      	ldr	r3, [r3, #0]
 8000976:	60bb      	str	r3, [r7, #8]
 8000978:	4b3d      	ldr	r3, [pc, #244]	; (8000a70 <SysTick_Handler+0x104>)
 800097a:	681b      	ldr	r3, [r3, #0]
 800097c:	68ba      	ldr	r2, [r7, #8]
 800097e:	1ad3      	subs	r3, r2, r3
 8000980:	607b      	str	r3, [r7, #4]
 8000982:	4b3c      	ldr	r3, [pc, #240]	; (8000a74 <SysTick_Handler+0x108>)
 8000984:	681b      	ldr	r3, [r3, #0]
 8000986:	2b00      	cmp	r3, #0
 8000988:	d066      	beq.n	8000a58 <SysTick_Handler+0xec>
 800098a:	2364      	movs	r3, #100	; 0x64
 800098c:	011b      	lsls	r3, r3, #4
 800098e:	687a      	ldr	r2, [r7, #4]
 8000990:	429a      	cmp	r2, r3
 8000992:	dd61      	ble.n	8000a58 <SysTick_Handler+0xec>
 8000994:	4b37      	ldr	r3, [pc, #220]	; (8000a74 <SysTick_Handler+0x108>)
 8000996:	2200      	movs	r2, #0
 8000998:	601a      	str	r2, [r3, #0]
 800099a:	2380      	movs	r3, #128	; 0x80
 800099c:	005b      	lsls	r3, r3, #1
 800099e:	4a36      	ldr	r2, [pc, #216]	; (8000a78 <SysTick_Handler+0x10c>)
 80009a0:	0019      	movs	r1, r3
 80009a2:	0010      	movs	r0, r2
 80009a4:	f7ff fe46 	bl	8000634 <LL_GPIO_ResetOutputPin>
 80009a8:	2300      	movs	r3, #0
 80009aa:	60fb      	str	r3, [r7, #12]
 80009ac:	e049      	b.n	8000a42 <SysTick_Handler+0xd6>
 80009ae:	4a33      	ldr	r2, [pc, #204]	; (8000a7c <SysTick_Handler+0x110>)
 80009b0:	68fb      	ldr	r3, [r7, #12]
 80009b2:	18d3      	adds	r3, r2, r3
 80009b4:	781b      	ldrb	r3, [r3, #0]
 80009b6:	2b01      	cmp	r3, #1
 80009b8:	d110      	bne.n	80009dc <SysTick_Handler+0x70>
 80009ba:	2380      	movs	r3, #128	; 0x80
 80009bc:	005b      	lsls	r3, r3, #1
 80009be:	4a2e      	ldr	r2, [pc, #184]	; (8000a78 <SysTick_Handler+0x10c>)
 80009c0:	0019      	movs	r1, r3
 80009c2:	0010      	movs	r0, r2
 80009c4:	f7ff fe42 	bl	800064c <LL_GPIO_TogglePin>
 80009c8:	f7ff ffb0 	bl	800092c <delay>
 80009cc:	2380      	movs	r3, #128	; 0x80
 80009ce:	005b      	lsls	r3, r3, #1
 80009d0:	4a29      	ldr	r2, [pc, #164]	; (8000a78 <SysTick_Handler+0x10c>)
 80009d2:	0019      	movs	r1, r3
 80009d4:	0010      	movs	r0, r2
 80009d6:	f7ff fe39 	bl	800064c <LL_GPIO_TogglePin>
 80009da:	e02a      	b.n	8000a32 <SysTick_Handler+0xc6>
 80009dc:	4a27      	ldr	r2, [pc, #156]	; (8000a7c <SysTick_Handler+0x110>)
 80009de:	68fb      	ldr	r3, [r7, #12]
 80009e0:	18d3      	adds	r3, r2, r3
 80009e2:	781b      	ldrb	r3, [r3, #0]
 80009e4:	2b02      	cmp	r3, #2
 80009e6:	d114      	bne.n	8000a12 <SysTick_Handler+0xa6>
 80009e8:	2380      	movs	r3, #128	; 0x80
 80009ea:	005b      	lsls	r3, r3, #1
 80009ec:	4a22      	ldr	r2, [pc, #136]	; (8000a78 <SysTick_Handler+0x10c>)
 80009ee:	0019      	movs	r1, r3
 80009f0:	0010      	movs	r0, r2
 80009f2:	f7ff fe2b 	bl	800064c <LL_GPIO_TogglePin>
 80009f6:	f7ff ff99 	bl	800092c <delay>
 80009fa:	f7ff ff97 	bl	800092c <delay>
 80009fe:	f7ff ff95 	bl	800092c <delay>
 8000a02:	2380      	movs	r3, #128	; 0x80
 8000a04:	005b      	lsls	r3, r3, #1
 8000a06:	4a1c      	ldr	r2, [pc, #112]	; (8000a78 <SysTick_Handler+0x10c>)
 8000a08:	0019      	movs	r1, r3
 8000a0a:	0010      	movs	r0, r2
 8000a0c:	f7ff fe1e 	bl	800064c <LL_GPIO_TogglePin>
 8000a10:	e00f      	b.n	8000a32 <SysTick_Handler+0xc6>
 8000a12:	2380      	movs	r3, #128	; 0x80
 8000a14:	005b      	lsls	r3, r3, #1
 8000a16:	4a18      	ldr	r2, [pc, #96]	; (8000a78 <SysTick_Handler+0x10c>)
 8000a18:	0019      	movs	r1, r3
 8000a1a:	0010      	movs	r0, r2
 8000a1c:	f7ff fe16 	bl	800064c <LL_GPIO_TogglePin>
 8000a20:	f7ff ff84 	bl	800092c <delay>
 8000a24:	2380      	movs	r3, #128	; 0x80
 8000a26:	005b      	lsls	r3, r3, #1
 8000a28:	4a13      	ldr	r2, [pc, #76]	; (8000a78 <SysTick_Handler+0x10c>)
 8000a2a:	0019      	movs	r1, r3
 8000a2c:	0010      	movs	r0, r2
 8000a2e:	f7ff fe0d 	bl	800064c <LL_GPIO_TogglePin>
 8000a32:	4a12      	ldr	r2, [pc, #72]	; (8000a7c <SysTick_Handler+0x110>)
 8000a34:	68fb      	ldr	r3, [r7, #12]
 8000a36:	18d3      	adds	r3, r2, r3
 8000a38:	2200      	movs	r2, #0
 8000a3a:	701a      	strb	r2, [r3, #0]
 8000a3c:	68fb      	ldr	r3, [r7, #12]
 8000a3e:	3301      	adds	r3, #1
 8000a40:	60fb      	str	r3, [r7, #12]
 8000a42:	4b0f      	ldr	r3, [pc, #60]	; (8000a80 <SysTick_Handler+0x114>)
 8000a44:	681b      	ldr	r3, [r3, #0]
 8000a46:	68fa      	ldr	r2, [r7, #12]
 8000a48:	429a      	cmp	r2, r3
 8000a4a:	dbb0      	blt.n	80009ae <SysTick_Handler+0x42>
 8000a4c:	4b0c      	ldr	r3, [pc, #48]	; (8000a80 <SysTick_Handler+0x114>)
 8000a4e:	2200      	movs	r2, #0
 8000a50:	601a      	str	r2, [r3, #0]
 8000a52:	4b06      	ldr	r3, [pc, #24]	; (8000a6c <SysTick_Handler+0x100>)
 8000a54:	2200      	movs	r2, #0
 8000a56:	601a      	str	r2, [r3, #0]
 8000a58:	4b04      	ldr	r3, [pc, #16]	; (8000a6c <SysTick_Handler+0x100>)
 8000a5a:	681b      	ldr	r3, [r3, #0]
 8000a5c:	1c5a      	adds	r2, r3, #1
 8000a5e:	4b03      	ldr	r3, [pc, #12]	; (8000a6c <SysTick_Handler+0x100>)
 8000a60:	601a      	str	r2, [r3, #0]
 8000a62:	46c0      	nop			; (mov r8, r8)
 8000a64:	46bd      	mov	sp, r7
 8000a66:	b004      	add	sp, #16
 8000a68:	bd80      	pop	{r7, pc}
 8000a6a:	46c0      	nop			; (mov r8, r8)
 8000a6c:	20000450 	.word	0x20000450
 8000a70:	20000840 	.word	0x20000840
 8000a74:	20000844 	.word	0x20000844
 8000a78:	48000800 	.word	0x48000800
 8000a7c:	20000454 	.word	0x20000454
 8000a80:	2000083c 	.word	0x2000083c

08000a84 <main>:
 8000a84:	b580      	push	{r7, lr}
 8000a86:	af00      	add	r7, sp, #0
 8000a88:	f7ff fe56 	bl	8000738 <rcc_config>
 8000a8c:	f7ff fe88 	bl	80007a0 <gpio_config>
 8000a90:	f7ff feb4 	bl	80007fc <exti_config>
 8000a94:	f7ff ff54 	bl	8000940 <systick_config>
 8000a98:	2380      	movs	r3, #128	; 0x80
 8000a9a:	005b      	lsls	r3, r3, #1
 8000a9c:	4a07      	ldr	r2, [pc, #28]	; (8000abc <main+0x38>)
 8000a9e:	0019      	movs	r1, r3
 8000aa0:	0010      	movs	r0, r2
 8000aa2:	f7ff fdbb 	bl	800061c <LL_GPIO_SetOutputPin>
 8000aa6:	f7ff ff41 	bl	800092c <delay>
 8000aaa:	2380      	movs	r3, #128	; 0x80
 8000aac:	005b      	lsls	r3, r3, #1
 8000aae:	4a03      	ldr	r2, [pc, #12]	; (8000abc <main+0x38>)
 8000ab0:	0019      	movs	r1, r3
 8000ab2:	0010      	movs	r0, r2
 8000ab4:	f7ff fdbe 	bl	8000634 <LL_GPIO_ResetOutputPin>
 8000ab8:	e7fe      	b.n	8000ab8 <main+0x34>
 8000aba:	46c0      	nop			; (mov r8, r8)
 8000abc:	48000800 	.word	0x48000800

08000ac0 <SystemInit>:
 8000ac0:	b580      	push	{r7, lr}
 8000ac2:	af00      	add	r7, sp, #0
 8000ac4:	4b1a      	ldr	r3, [pc, #104]	; (8000b30 <SystemInit+0x70>)
 8000ac6:	681a      	ldr	r2, [r3, #0]
 8000ac8:	4b19      	ldr	r3, [pc, #100]	; (8000b30 <SystemInit+0x70>)
 8000aca:	2101      	movs	r1, #1
 8000acc:	430a      	orrs	r2, r1
 8000ace:	601a      	str	r2, [r3, #0]
 8000ad0:	4b17      	ldr	r3, [pc, #92]	; (8000b30 <SystemInit+0x70>)
 8000ad2:	685a      	ldr	r2, [r3, #4]
 8000ad4:	4b16      	ldr	r3, [pc, #88]	; (8000b30 <SystemInit+0x70>)
 8000ad6:	4917      	ldr	r1, [pc, #92]	; (8000b34 <SystemInit+0x74>)
 8000ad8:	400a      	ands	r2, r1
 8000ada:	605a      	str	r2, [r3, #4]
 8000adc:	4b14      	ldr	r3, [pc, #80]	; (8000b30 <SystemInit+0x70>)
 8000ade:	681a      	ldr	r2, [r3, #0]
 8000ae0:	4b13      	ldr	r3, [pc, #76]	; (8000b30 <SystemInit+0x70>)
 8000ae2:	4915      	ldr	r1, [pc, #84]	; (8000b38 <SystemInit+0x78>)
 8000ae4:	400a      	ands	r2, r1
 8000ae6:	601a      	str	r2, [r3, #0]
 8000ae8:	4b11      	ldr	r3, [pc, #68]	; (8000b30 <SystemInit+0x70>)
 8000aea:	681a      	ldr	r2, [r3, #0]
 8000aec:	4b10      	ldr	r3, [pc, #64]	; (8000b30 <SystemInit+0x70>)
 8000aee:	4913      	ldr	r1, [pc, #76]	; (8000b3c <SystemInit+0x7c>)
 8000af0:	400a      	ands	r2, r1
 8000af2:	601a      	str	r2, [r3, #0]
 8000af4:	4b0e      	ldr	r3, [pc, #56]	; (8000b30 <SystemInit+0x70>)
 8000af6:	685a      	ldr	r2, [r3, #4]
 8000af8:	4b0d      	ldr	r3, [pc, #52]	; (8000b30 <SystemInit+0x70>)
 8000afa:	4911      	ldr	r1, [pc, #68]	; (8000b40 <SystemInit+0x80>)
 8000afc:	400a      	ands	r2, r1
 8000afe:	605a      	str	r2, [r3, #4]
 8000b00:	4b0b      	ldr	r3, [pc, #44]	; (8000b30 <SystemInit+0x70>)
 8000b02:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000b04:	4b0a      	ldr	r3, [pc, #40]	; (8000b30 <SystemInit+0x70>)
 8000b06:	210f      	movs	r1, #15
 8000b08:	438a      	bics	r2, r1
 8000b0a:	62da      	str	r2, [r3, #44]	; 0x2c
 8000b0c:	4b08      	ldr	r3, [pc, #32]	; (8000b30 <SystemInit+0x70>)
 8000b0e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000b10:	4b07      	ldr	r3, [pc, #28]	; (8000b30 <SystemInit+0x70>)
 8000b12:	490c      	ldr	r1, [pc, #48]	; (8000b44 <SystemInit+0x84>)
 8000b14:	400a      	ands	r2, r1
 8000b16:	631a      	str	r2, [r3, #48]	; 0x30
 8000b18:	4b05      	ldr	r3, [pc, #20]	; (8000b30 <SystemInit+0x70>)
 8000b1a:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000b1c:	4b04      	ldr	r3, [pc, #16]	; (8000b30 <SystemInit+0x70>)
 8000b1e:	2101      	movs	r1, #1
 8000b20:	438a      	bics	r2, r1
 8000b22:	635a      	str	r2, [r3, #52]	; 0x34
 8000b24:	4b02      	ldr	r3, [pc, #8]	; (8000b30 <SystemInit+0x70>)
 8000b26:	2200      	movs	r2, #0
 8000b28:	609a      	str	r2, [r3, #8]
 8000b2a:	46c0      	nop			; (mov r8, r8)
 8000b2c:	46bd      	mov	sp, r7
 8000b2e:	bd80      	pop	{r7, pc}
 8000b30:	40021000 	.word	0x40021000
 8000b34:	f8ffb80c 	.word	0xf8ffb80c
 8000b38:	fef6ffff 	.word	0xfef6ffff
 8000b3c:	fffbffff 	.word	0xfffbffff
 8000b40:	ffc0ffff 	.word	0xffc0ffff
 8000b44:	fffffeac 	.word	0xfffffeac

08000b48 <NMI_Handler>:
 8000b48:	b580      	push	{r7, lr}
 8000b4a:	af00      	add	r7, sp, #0
 8000b4c:	46c0      	nop			; (mov r8, r8)
 8000b4e:	46bd      	mov	sp, r7
 8000b50:	bd80      	pop	{r7, pc}

08000b52 <HardFault_Handler>:
 8000b52:	b580      	push	{r7, lr}
 8000b54:	af00      	add	r7, sp, #0
 8000b56:	e7fe      	b.n	8000b56 <HardFault_Handler+0x4>

08000b58 <SVC_Handler>:
 8000b58:	b580      	push	{r7, lr}
 8000b5a:	af00      	add	r7, sp, #0
 8000b5c:	46c0      	nop			; (mov r8, r8)
 8000b5e:	46bd      	mov	sp, r7
 8000b60:	bd80      	pop	{r7, pc}

08000b62 <PendSV_Handler>:
 8000b62:	b580      	push	{r7, lr}
 8000b64:	af00      	add	r7, sp, #0
 8000b66:	46c0      	nop			; (mov r8, r8)
 8000b68:	46bd      	mov	sp, r7
 8000b6a:	bd80      	pop	{r7, pc}

08000b6c <__libc_init_array>:
 8000b6c:	b570      	push	{r4, r5, r6, lr}
 8000b6e:	4e0d      	ldr	r6, [pc, #52]	; (8000ba4 <__libc_init_array+0x38>)
 8000b70:	4d0d      	ldr	r5, [pc, #52]	; (8000ba8 <__libc_init_array+0x3c>)
 8000b72:	1bad      	subs	r5, r5, r6
 8000b74:	10ad      	asrs	r5, r5, #2
 8000b76:	d006      	beq.n	8000b86 <__libc_init_array+0x1a>
 8000b78:	2400      	movs	r4, #0
 8000b7a:	00a3      	lsls	r3, r4, #2
 8000b7c:	58f3      	ldr	r3, [r6, r3]
 8000b7e:	3401      	adds	r4, #1
 8000b80:	4798      	blx	r3
 8000b82:	42a5      	cmp	r5, r4
 8000b84:	d1f9      	bne.n	8000b7a <__libc_init_array+0xe>
 8000b86:	f000 f8c1 	bl	8000d0c <_init>
 8000b8a:	4e08      	ldr	r6, [pc, #32]	; (8000bac <__libc_init_array+0x40>)
 8000b8c:	4d08      	ldr	r5, [pc, #32]	; (8000bb0 <__libc_init_array+0x44>)
 8000b8e:	1bad      	subs	r5, r5, r6
 8000b90:	10ad      	asrs	r5, r5, #2
 8000b92:	d006      	beq.n	8000ba2 <__libc_init_array+0x36>
 8000b94:	2400      	movs	r4, #0
 8000b96:	00a3      	lsls	r3, r4, #2
 8000b98:	58f3      	ldr	r3, [r6, r3]
 8000b9a:	3401      	adds	r4, #1
 8000b9c:	4798      	blx	r3
 8000b9e:	42a5      	cmp	r5, r4
 8000ba0:	d1f9      	bne.n	8000b96 <__libc_init_array+0x2a>
 8000ba2:	bd70      	pop	{r4, r5, r6, pc}
 8000ba4:	08000d28 	.word	0x08000d28
 8000ba8:	08000d28 	.word	0x08000d28
 8000bac:	08000d28 	.word	0x08000d28
 8000bb0:	08000d30 	.word	0x08000d30

08000bb4 <register_fini>:
 8000bb4:	4b03      	ldr	r3, [pc, #12]	; (8000bc4 <register_fini+0x10>)
 8000bb6:	b510      	push	{r4, lr}
 8000bb8:	2b00      	cmp	r3, #0
 8000bba:	d002      	beq.n	8000bc2 <register_fini+0xe>
 8000bbc:	4802      	ldr	r0, [pc, #8]	; (8000bc8 <register_fini+0x14>)
 8000bbe:	f000 f805 	bl	8000bcc <atexit>
 8000bc2:	bd10      	pop	{r4, pc}
 8000bc4:	00000000 	.word	0x00000000
 8000bc8:	08000bdd 	.word	0x08000bdd

08000bcc <atexit>:
 8000bcc:	b510      	push	{r4, lr}
 8000bce:	0001      	movs	r1, r0
 8000bd0:	2300      	movs	r3, #0
 8000bd2:	2200      	movs	r2, #0
 8000bd4:	2000      	movs	r0, #0
 8000bd6:	f000 f81f 	bl	8000c18 <__register_exitproc>
 8000bda:	bd10      	pop	{r4, pc}

08000bdc <__libc_fini_array>:
 8000bdc:	b570      	push	{r4, r5, r6, lr}
 8000bde:	4b09      	ldr	r3, [pc, #36]	; (8000c04 <__libc_fini_array+0x28>)
 8000be0:	4c09      	ldr	r4, [pc, #36]	; (8000c08 <__libc_fini_array+0x2c>)
 8000be2:	1ae4      	subs	r4, r4, r3
 8000be4:	10a4      	asrs	r4, r4, #2
 8000be6:	d009      	beq.n	8000bfc <__libc_fini_array+0x20>
 8000be8:	4a08      	ldr	r2, [pc, #32]	; (8000c0c <__libc_fini_array+0x30>)
 8000bea:	18a5      	adds	r5, r4, r2
 8000bec:	00ad      	lsls	r5, r5, #2
 8000bee:	18ed      	adds	r5, r5, r3
 8000bf0:	682b      	ldr	r3, [r5, #0]
 8000bf2:	3c01      	subs	r4, #1
 8000bf4:	4798      	blx	r3
 8000bf6:	3d04      	subs	r5, #4
 8000bf8:	2c00      	cmp	r4, #0
 8000bfa:	d1f9      	bne.n	8000bf0 <__libc_fini_array+0x14>
 8000bfc:	f000 f88c 	bl	8000d18 <_fini>
 8000c00:	bd70      	pop	{r4, r5, r6, pc}
 8000c02:	46c0      	nop			; (mov r8, r8)
 8000c04:	08000d30 	.word	0x08000d30
 8000c08:	08000d34 	.word	0x08000d34
 8000c0c:	3fffffff 	.word	0x3fffffff

08000c10 <__retarget_lock_acquire_recursive>:
 8000c10:	4770      	bx	lr
 8000c12:	46c0      	nop			; (mov r8, r8)

08000c14 <__retarget_lock_release_recursive>:
 8000c14:	4770      	bx	lr
 8000c16:	46c0      	nop			; (mov r8, r8)

08000c18 <__register_exitproc>:
 8000c18:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c1a:	464e      	mov	r6, r9
 8000c1c:	4645      	mov	r5, r8
 8000c1e:	46de      	mov	lr, fp
 8000c20:	4657      	mov	r7, sl
 8000c22:	b5e0      	push	{r5, r6, r7, lr}
 8000c24:	4d36      	ldr	r5, [pc, #216]	; (8000d00 <__register_exitproc+0xe8>)
 8000c26:	b083      	sub	sp, #12
 8000c28:	0006      	movs	r6, r0
 8000c2a:	6828      	ldr	r0, [r5, #0]
 8000c2c:	4698      	mov	r8, r3
 8000c2e:	000f      	movs	r7, r1
 8000c30:	4691      	mov	r9, r2
 8000c32:	f7ff ffed 	bl	8000c10 <__retarget_lock_acquire_recursive>
 8000c36:	4b33      	ldr	r3, [pc, #204]	; (8000d04 <__register_exitproc+0xec>)
 8000c38:	681c      	ldr	r4, [r3, #0]
 8000c3a:	23a4      	movs	r3, #164	; 0xa4
 8000c3c:	005b      	lsls	r3, r3, #1
 8000c3e:	58e0      	ldr	r0, [r4, r3]
 8000c40:	2800      	cmp	r0, #0
 8000c42:	d052      	beq.n	8000cea <__register_exitproc+0xd2>
 8000c44:	6843      	ldr	r3, [r0, #4]
 8000c46:	2b1f      	cmp	r3, #31
 8000c48:	dc13      	bgt.n	8000c72 <__register_exitproc+0x5a>
 8000c4a:	1c5a      	adds	r2, r3, #1
 8000c4c:	9201      	str	r2, [sp, #4]
 8000c4e:	2e00      	cmp	r6, #0
 8000c50:	d128      	bne.n	8000ca4 <__register_exitproc+0x8c>
 8000c52:	9a01      	ldr	r2, [sp, #4]
 8000c54:	3302      	adds	r3, #2
 8000c56:	009b      	lsls	r3, r3, #2
 8000c58:	6042      	str	r2, [r0, #4]
 8000c5a:	501f      	str	r7, [r3, r0]
 8000c5c:	6828      	ldr	r0, [r5, #0]
 8000c5e:	f7ff ffd9 	bl	8000c14 <__retarget_lock_release_recursive>
 8000c62:	2000      	movs	r0, #0
 8000c64:	b003      	add	sp, #12
 8000c66:	bc3c      	pop	{r2, r3, r4, r5}
 8000c68:	4690      	mov	r8, r2
 8000c6a:	4699      	mov	r9, r3
 8000c6c:	46a2      	mov	sl, r4
 8000c6e:	46ab      	mov	fp, r5
 8000c70:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c72:	4b25      	ldr	r3, [pc, #148]	; (8000d08 <__register_exitproc+0xf0>)
 8000c74:	2b00      	cmp	r3, #0
 8000c76:	d03d      	beq.n	8000cf4 <__register_exitproc+0xdc>
 8000c78:	20c8      	movs	r0, #200	; 0xc8
 8000c7a:	0040      	lsls	r0, r0, #1
 8000c7c:	e000      	b.n	8000c80 <__register_exitproc+0x68>
 8000c7e:	bf00      	nop
 8000c80:	2800      	cmp	r0, #0
 8000c82:	d037      	beq.n	8000cf4 <__register_exitproc+0xdc>
 8000c84:	22a4      	movs	r2, #164	; 0xa4
 8000c86:	2300      	movs	r3, #0
 8000c88:	0052      	lsls	r2, r2, #1
 8000c8a:	58a1      	ldr	r1, [r4, r2]
 8000c8c:	6043      	str	r3, [r0, #4]
 8000c8e:	6001      	str	r1, [r0, #0]
 8000c90:	50a0      	str	r0, [r4, r2]
 8000c92:	3240      	adds	r2, #64	; 0x40
 8000c94:	5083      	str	r3, [r0, r2]
 8000c96:	3204      	adds	r2, #4
 8000c98:	5083      	str	r3, [r0, r2]
 8000c9a:	3301      	adds	r3, #1
 8000c9c:	9301      	str	r3, [sp, #4]
 8000c9e:	2300      	movs	r3, #0
 8000ca0:	2e00      	cmp	r6, #0
 8000ca2:	d0d6      	beq.n	8000c52 <__register_exitproc+0x3a>
 8000ca4:	009a      	lsls	r2, r3, #2
 8000ca6:	4692      	mov	sl, r2
 8000ca8:	4482      	add	sl, r0
 8000caa:	464a      	mov	r2, r9
 8000cac:	2188      	movs	r1, #136	; 0x88
 8000cae:	4654      	mov	r4, sl
 8000cb0:	5062      	str	r2, [r4, r1]
 8000cb2:	22c4      	movs	r2, #196	; 0xc4
 8000cb4:	0052      	lsls	r2, r2, #1
 8000cb6:	4691      	mov	r9, r2
 8000cb8:	4481      	add	r9, r0
 8000cba:	464a      	mov	r2, r9
 8000cbc:	3987      	subs	r1, #135	; 0x87
 8000cbe:	4099      	lsls	r1, r3
 8000cc0:	6812      	ldr	r2, [r2, #0]
 8000cc2:	468b      	mov	fp, r1
 8000cc4:	430a      	orrs	r2, r1
 8000cc6:	4694      	mov	ip, r2
 8000cc8:	464a      	mov	r2, r9
 8000cca:	4661      	mov	r1, ip
 8000ccc:	6011      	str	r1, [r2, #0]
 8000cce:	2284      	movs	r2, #132	; 0x84
 8000cd0:	4641      	mov	r1, r8
 8000cd2:	0052      	lsls	r2, r2, #1
 8000cd4:	50a1      	str	r1, [r4, r2]
 8000cd6:	2e02      	cmp	r6, #2
 8000cd8:	d1bb      	bne.n	8000c52 <__register_exitproc+0x3a>
 8000cda:	0002      	movs	r2, r0
 8000cdc:	465c      	mov	r4, fp
 8000cde:	328d      	adds	r2, #141	; 0x8d
 8000ce0:	32ff      	adds	r2, #255	; 0xff
 8000ce2:	6811      	ldr	r1, [r2, #0]
 8000ce4:	430c      	orrs	r4, r1
 8000ce6:	6014      	str	r4, [r2, #0]
 8000ce8:	e7b3      	b.n	8000c52 <__register_exitproc+0x3a>
 8000cea:	0020      	movs	r0, r4
 8000cec:	304d      	adds	r0, #77	; 0x4d
 8000cee:	30ff      	adds	r0, #255	; 0xff
 8000cf0:	50e0      	str	r0, [r4, r3]
 8000cf2:	e7a7      	b.n	8000c44 <__register_exitproc+0x2c>
 8000cf4:	6828      	ldr	r0, [r5, #0]
 8000cf6:	f7ff ff8d 	bl	8000c14 <__retarget_lock_release_recursive>
 8000cfa:	2001      	movs	r0, #1
 8000cfc:	4240      	negs	r0, r0
 8000cfe:	e7b1      	b.n	8000c64 <__register_exitproc+0x4c>
 8000d00:	20000430 	.word	0x20000430
 8000d04:	08000d24 	.word	0x08000d24
 8000d08:	00000000 	.word	0x00000000

08000d0c <_init>:
 8000d0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d0e:	46c0      	nop			; (mov r8, r8)
 8000d10:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d12:	bc08      	pop	{r3}
 8000d14:	469e      	mov	lr, r3
 8000d16:	4770      	bx	lr

08000d18 <_fini>:
 8000d18:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d1a:	46c0      	nop			; (mov r8, r8)
 8000d1c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d1e:	bc08      	pop	{r3}
 8000d20:	469e      	mov	lr, r3
 8000d22:	4770      	bx	lr
