!============================================================
! CS-2200 Homework 1
!
! Please do not change main's functionality, 
! except to change the argument for factorial or to meet your 
! calling convention
!============================================================

main:       la $sp, stack		! load address of stack label into $sp
            noop                        ! FIXME: load desired value of the stack 
                                        ! (defined at the label below) into $sp
            la $at, factorial	        ! load address of factorial label into $at
            addi $a0, $zero, 5 	        ! $a0 = 5, the number to factorialize
            jalr $at, $ra		! jump to factorial, set $ra to return addr
            halt			! when we return, just halt

factorial:  noop                        ! change me to your factorial implementation

stack:	    .word 0x4000		! the stack begins here (for example, that is)

