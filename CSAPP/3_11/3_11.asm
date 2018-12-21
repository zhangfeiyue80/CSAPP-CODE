
./3_11:     file format elf32-i386

Disassembly of section .init:

08048250 <_init>:
 8048250:	55                   	push   %ebp
 8048251:	89 e5                	mov    %esp,%ebp
 8048253:	83 ec 08             	sub    $0x8,%esp
 8048256:	e8 69 00 00 00       	call   80482c4 <call_gmon_start>
 804825b:	e8 f0 00 00 00       	call   8048350 <frame_dummy>
 8048260:	e8 bb 01 00 00       	call   8048420 <__do_global_ctors_aux>
 8048265:	c9                   	leave  
 8048266:	c3                   	ret    
Disassembly of section .plt:

08048268 <__gmon_start__@plt-0x10>:
 8048268:	ff 35 c8 95 04 08    	pushl  0x80495c8
 804826e:	ff 25 cc 95 04 08    	jmp    *0x80495cc
 8048274:	00 00                	add    %al,(%eax)
	...

08048278 <__gmon_start__@plt>:
 8048278:	ff 25 d0 95 04 08    	jmp    *0x80495d0
 804827e:	68 00 00 00 00       	push   $0x0
 8048283:	e9 e0 ff ff ff       	jmp    8048268 <_init+0x18>

08048288 <__libc_start_main@plt>:
 8048288:	ff 25 d4 95 04 08    	jmp    *0x80495d4
 804828e:	68 08 00 00 00       	push   $0x8
 8048293:	e9 d0 ff ff ff       	jmp    8048268 <_init+0x18>
Disassembly of section .text:

080482a0 <_start>:
 80482a0:	31 ed                	xor    %ebp,%ebp
 80482a2:	5e                   	pop    %esi
 80482a3:	89 e1                	mov    %esp,%ecx
 80482a5:	83 e4 f0             	and    $0xfffffff0,%esp
 80482a8:	50                   	push   %eax
 80482a9:	54                   	push   %esp
 80482aa:	52                   	push   %edx
 80482ab:	68 a0 83 04 08       	push   $0x80483a0
 80482b0:	68 b0 83 04 08       	push   $0x80483b0
 80482b5:	51                   	push   %ecx
 80482b6:	56                   	push   %esi
 80482b7:	68 7c 83 04 08       	push   $0x804837c
 80482bc:	e8 c7 ff ff ff       	call   8048288 <__libc_start_main@plt>
 80482c1:	f4                   	hlt    
 80482c2:	90                   	nop    
 80482c3:	90                   	nop    

080482c4 <call_gmon_start>:
 80482c4:	55                   	push   %ebp
 80482c5:	89 e5                	mov    %esp,%ebp
 80482c7:	53                   	push   %ebx
 80482c8:	83 ec 04             	sub    $0x4,%esp
 80482cb:	e8 00 00 00 00       	call   80482d0 <call_gmon_start+0xc>
 80482d0:	5b                   	pop    %ebx
 80482d1:	81 c3 f4 12 00 00    	add    $0x12f4,%ebx
 80482d7:	8b 93 fc ff ff ff    	mov    0xfffffffc(%ebx),%edx
 80482dd:	85 d2                	test   %edx,%edx
 80482df:	74 05                	je     80482e6 <call_gmon_start+0x22>
 80482e1:	e8 92 ff ff ff       	call   8048278 <__gmon_start__@plt>
 80482e6:	58                   	pop    %eax
 80482e7:	5b                   	pop    %ebx
 80482e8:	c9                   	leave  
 80482e9:	c3                   	ret    
 80482ea:	90                   	nop    
 80482eb:	90                   	nop    
 80482ec:	90                   	nop    
 80482ed:	90                   	nop    
 80482ee:	90                   	nop    
 80482ef:	90                   	nop    

080482f0 <__do_global_dtors_aux>:
 80482f0:	55                   	push   %ebp
 80482f1:	89 e5                	mov    %esp,%ebp
 80482f3:	53                   	push   %ebx
 80482f4:	83 ec 04             	sub    $0x4,%esp
 80482f7:	80 3d e0 95 04 08 00 	cmpb   $0x0,0x80495e0
 80482fe:	75 3f                	jne    804833f <__do_global_dtors_aux+0x4f>
 8048300:	b8 f0 94 04 08       	mov    $0x80494f0,%eax
 8048305:	2d ec 94 04 08       	sub    $0x80494ec,%eax
 804830a:	c1 f8 02             	sar    $0x2,%eax
 804830d:	8d 58 ff             	lea    0xffffffff(%eax),%ebx
 8048310:	a1 dc 95 04 08       	mov    0x80495dc,%eax
 8048315:	39 c3                	cmp    %eax,%ebx
 8048317:	76 1f                	jbe    8048338 <__do_global_dtors_aux+0x48>
 8048319:	8d b4 26 00 00 00 00 	lea    0x0(%esi),%esi
 8048320:	83 c0 01             	add    $0x1,%eax
 8048323:	a3 dc 95 04 08       	mov    %eax,0x80495dc
 8048328:	ff 14 85 ec 94 04 08 	call   *0x80494ec(,%eax,4)
 804832f:	a1 dc 95 04 08       	mov    0x80495dc,%eax
 8048334:	39 c3                	cmp    %eax,%ebx
 8048336:	77 e8                	ja     8048320 <__do_global_dtors_aux+0x30>
 8048338:	c6 05 e0 95 04 08 01 	movb   $0x1,0x80495e0
 804833f:	83 c4 04             	add    $0x4,%esp
 8048342:	5b                   	pop    %ebx
 8048343:	5d                   	pop    %ebp
 8048344:	c3                   	ret    
 8048345:	8d 74 26 00          	lea    0x0(%esi),%esi
 8048349:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

08048350 <frame_dummy>:
 8048350:	55                   	push   %ebp
 8048351:	89 e5                	mov    %esp,%ebp
 8048353:	83 ec 08             	sub    $0x8,%esp
 8048356:	a1 f4 94 04 08       	mov    0x80494f4,%eax
 804835b:	85 c0                	test   %eax,%eax
 804835d:	74 12                	je     8048371 <frame_dummy+0x21>
 804835f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048364:	85 c0                	test   %eax,%eax
 8048366:	74 09                	je     8048371 <frame_dummy+0x21>
 8048368:	c7 04 24 f4 94 04 08 	movl   $0x80494f4,(%esp)
 804836f:	ff d0                	call   *%eax
 8048371:	c9                   	leave  
 8048372:	c3                   	ret    
 8048373:	90                   	nop    

08048374 <test>:
 8048374:	55                   	push   %ebp
 8048375:	89 e5                	mov    %esp,%ebp
 8048377:	8b 45 08             	mov    0x8(%ebp),%eax
 804837a:	5d                   	pop    %ebp
 804837b:	c3                   	ret    

0804837c <main>:
 804837c:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048380:	83 e4 f0             	and    $0xfffffff0,%esp
 8048383:	ff 71 fc             	pushl  0xfffffffc(%ecx)
 8048386:	55                   	push   %ebp
 8048387:	89 e5                	mov    %esp,%ebp
 8048389:	51                   	push   %ecx
 804838a:	b8 00 00 00 00       	mov    $0x0,%eax
 804838f:	59                   	pop    %ecx
 8048390:	5d                   	pop    %ebp
 8048391:	8d 61 fc             	lea    0xfffffffc(%ecx),%esp
 8048394:	c3                   	ret    
 8048395:	90                   	nop    
 8048396:	90                   	nop    
 8048397:	90                   	nop    
 8048398:	90                   	nop    
 8048399:	90                   	nop    
 804839a:	90                   	nop    
 804839b:	90                   	nop    
 804839c:	90                   	nop    
 804839d:	90                   	nop    
 804839e:	90                   	nop    
 804839f:	90                   	nop    

080483a0 <__libc_csu_fini>:
 80483a0:	55                   	push   %ebp
 80483a1:	89 e5                	mov    %esp,%ebp
 80483a3:	5d                   	pop    %ebp
 80483a4:	c3                   	ret    
 80483a5:	8d 74 26 00          	lea    0x0(%esi),%esi
 80483a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi),%edi

080483b0 <__libc_csu_init>:
 80483b0:	55                   	push   %ebp
 80483b1:	89 e5                	mov    %esp,%ebp
 80483b3:	57                   	push   %edi
 80483b4:	56                   	push   %esi
 80483b5:	53                   	push   %ebx
 80483b6:	e8 5e 00 00 00       	call   8048419 <__i686.get_pc_thunk.bx>
 80483bb:	81 c3 09 12 00 00    	add    $0x1209,%ebx
 80483c1:	83 ec 1c             	sub    $0x1c,%esp
 80483c4:	e8 87 fe ff ff       	call   8048250 <_init>
 80483c9:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 80483cf:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 80483d2:	8d 83 20 ff ff ff    	lea    0xffffff20(%ebx),%eax
 80483d8:	29 45 f0             	sub    %eax,0xfffffff0(%ebp)
 80483db:	c1 7d f0 02          	sarl   $0x2,0xfffffff0(%ebp)
 80483df:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 80483e2:	85 d2                	test   %edx,%edx
 80483e4:	74 2b                	je     8048411 <__libc_csu_init+0x61>
 80483e6:	31 ff                	xor    %edi,%edi
 80483e8:	89 c6                	mov    %eax,%esi
 80483ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80483f0:	8b 45 10             	mov    0x10(%ebp),%eax
 80483f3:	83 c7 01             	add    $0x1,%edi
 80483f6:	89 44 24 08          	mov    %eax,0x8(%esp)
 80483fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 80483fd:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048401:	8b 45 08             	mov    0x8(%ebp),%eax
 8048404:	89 04 24             	mov    %eax,(%esp)
 8048407:	ff 16                	call   *(%esi)
 8048409:	83 c6 04             	add    $0x4,%esi
 804840c:	39 7d f0             	cmp    %edi,0xfffffff0(%ebp)
 804840f:	75 df                	jne    80483f0 <__libc_csu_init+0x40>
 8048411:	83 c4 1c             	add    $0x1c,%esp
 8048414:	5b                   	pop    %ebx
 8048415:	5e                   	pop    %esi
 8048416:	5f                   	pop    %edi
 8048417:	5d                   	pop    %ebp
 8048418:	c3                   	ret    

08048419 <__i686.get_pc_thunk.bx>:
 8048419:	8b 1c 24             	mov    (%esp),%ebx
 804841c:	c3                   	ret    
 804841d:	90                   	nop    
 804841e:	90                   	nop    
 804841f:	90                   	nop    

08048420 <__do_global_ctors_aux>:
 8048420:	55                   	push   %ebp
 8048421:	89 e5                	mov    %esp,%ebp
 8048423:	53                   	push   %ebx
 8048424:	bb e4 94 04 08       	mov    $0x80494e4,%ebx
 8048429:	83 ec 04             	sub    $0x4,%esp
 804842c:	a1 e4 94 04 08       	mov    0x80494e4,%eax
 8048431:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048434:	74 0c                	je     8048442 <__do_global_ctors_aux+0x22>
 8048436:	83 eb 04             	sub    $0x4,%ebx
 8048439:	ff d0                	call   *%eax
 804843b:	8b 03                	mov    (%ebx),%eax
 804843d:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048440:	75 f4                	jne    8048436 <__do_global_ctors_aux+0x16>
 8048442:	83 c4 04             	add    $0x4,%esp
 8048445:	5b                   	pop    %ebx
 8048446:	5d                   	pop    %ebp
 8048447:	c3                   	ret    
Disassembly of section .fini:

08048448 <_fini>:
 8048448:	55                   	push   %ebp
 8048449:	89 e5                	mov    %esp,%ebp
 804844b:	53                   	push   %ebx
 804844c:	83 ec 04             	sub    $0x4,%esp
 804844f:	e8 00 00 00 00       	call   8048454 <_fini+0xc>
 8048454:	5b                   	pop    %ebx
 8048455:	81 c3 70 11 00 00    	add    $0x1170,%ebx
 804845b:	e8 90 fe ff ff       	call   80482f0 <__do_global_dtors_aux>
 8048460:	59                   	pop    %ecx
 8048461:	5b                   	pop    %ebx
 8048462:	c9                   	leave  
 8048463:	c3                   	ret    
