	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/950704-1.c"
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i64, i64
	.result 	i64
	.local  	i32, i64, i64
# BB#0:                                 # %entry
	i32.const	$2=, 0
	i32.store	$discard=, errflag($2), $2
	i64.add 	$4=, $1, $0
	i64.const	$3=, 0
	block   	BB0_6
	block   	BB0_5
	block   	BB0_3
	i64.lt_s	$push0=, $0, $3
	br_if   	$pop0, BB0_3
# BB#1:                                 # %if.then
	i64.const	$push3=, 0
	i64.lt_s	$push4=, $1, $pop3
	br_if   	$pop4, BB0_6
# BB#2:                                 # %if.then
	i64.const	$push5=, -1
	i64.le_s	$push6=, $4, $pop5
	br_if   	$pop6, BB0_5
	br      	BB0_6
BB0_3:                                  # %if.else
	i64.gt_s	$push1=, $1, $3
	br_if   	$pop1, BB0_6
# BB#4:                                 # %if.else
	i64.lt_s	$push2=, $4, $3
	br_if   	$pop2, BB0_6
BB0_5:                                  # %if.end9
	i32.const	$push7=, 1
	i32.store	$discard=, errflag($2), $pop7
	copy_local	$4=, $3
BB0_6:                                  # %cleanup
	return  	$4
func_end0:
	.size	f, func_end0-f

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %if.end28
	i32.const	$0=, 0
	i32.store	$push0=, errflag($0), $0
	call    	exit, $pop0
	unreachable
func_end1:
	.size	main, func_end1-main

	.type	errflag,@object         # @errflag
	.bss
	.globl	errflag
	.align	2
errflag:
	.int32	0                       # 0x0
	.size	errflag, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits