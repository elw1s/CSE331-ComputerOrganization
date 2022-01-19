.data
	openBracket: .asciiz "["
	closeBracket: .asciiz "]"
	comma: .asciiz ","
	sizeText: .asciiz "\tSize = "
	temp: 	.align 2
			.space 100
	list: .space 100
	longest: .asciiz "Longest increasing subsequence is = "
	
	input_name: .asciiz "input.txt"
	output_name: .asciiz "output.txt"
	buffer: .space 1024
	newLine: .asciiz "\n"
	arr: 	.align 2 
			.space 1024
	space: .asciiz " "
	null: .asciiz "\0"
	line: .space 1024
	output: .space 2048


.text

main:
li   $v0, 13       # system call for open file
la   $a0, input_name      # input file name
li   $a1, 0        # flag for reading
li   $a2, 0        # mode is ignored
syscall            # open a file 
move $s0, $v0      # save the file descriptor 

li   $v0, 14       # system call for reading from file
move $a0, $s0      # file descriptor 
la   $a1, buffer   # address of buffer from which to read
li   $a2,  1024  # hardcoded buffer length
syscall            # read from file

addi $sp , $sp , -4 
sw $s0 , ($sp)	

li $s5 , 0 #i for loop
li $s6 , 6 #loop times
li $s7 , 0 #index for buffer
loop_6_times:
		li $t0 , 0 #k for loop
		li $t1 , 10 # \n
		read_line_by_line: #Gets each line in buffer separately
			lb $t2 , buffer($s7)
			addi $s7 , $s7 , 1
			sb $t2 , line($t0)
			addi $t0 , $t0 , 1
			beq $t0 , 100000 , Terminate
			bne $t1 , $t2 , read_line_by_line
		sb $zero , line($t0) 
		addi $sp , $sp , -12
		sw $ra , ($sp)
		sw $s5 , 4($sp)
		sw $s6 , 8($sp)
		jal parse_line #Parse the line
		lw $ra , ($sp)
		jal algorithm #Apply the algorithm with the array
		li $v0 , 4
		la $a0 , newLine
		syscall
		lw $ra , ($sp)
		lw $s5 , 4($sp)
		lw $s6 , 8($sp)
		la $zero , arr($zero)
		la $zero , temp($zero)
		addi $sp , $sp , 12
		bne $s5 , $s6 , loop_6_times #continue 6 times

Terminate: #Terminate the program

lw $s0 , ($sp)	
addi $sp , $sp , 4

li $v0 , 16	#close the file
move $a0 , $s0
syscall


li $v0 , 10 #terminate the program
syscall

parse_line:

li $t3 , 0 #index for temp
li $t4 , 0 #index for arr (size = index / 4)
lb $s2 , space
la $s3 , line
lb $s4 , null
sb $s4 , temp($zero)

li $s5 , 0 #i value for loop
outer_loop:
	lb $t0 , line($s5)
	addi $s5 , $s5 , 1
	beq $t0 , 0x0000000d , skip_second_IF
	beq $t0 , $s2 , skip_first_IF
	beq $t0 , $s4, skip_first_IF
	beq $t0 , 0x0000000a, skip_first_IF
	first_IF:
		move $t1 , $t0
		sb $t1 , temp($t3)
		addi $t3, $t3 , 1
		sb $s4 , temp($t3)
	skip_first_IF:
		beq $t0 , $s2 , second_IF
		lb $t2 , line($s5) 
		beq $t2 , 0x0000000a , second_IF
		bne $s4 , $t2 , skip_second_IF
	second_IF:
		addi $sp , $sp , -4
		sw $ra , 0($sp)
		jal atoi
		lw $ra , 0($sp)
		addi $sp , $sp , 4
		sw $v1 , arr($t4)
		sub $t3 , $t3 , $t3
		sb $s4 , temp($zero)
		addi $t4 , $t4 , 4
	skip_second_IF:
	bne $t0 , $zero , outer_loop
	

addi $t4 , $t4 , -4
move $s0 , $t4

jr $ra
	
atoi:
	li $t7 , 0 #holds the integer value
	li $t8 , 0 #i for loop
	loop:
		lb $t9 , temp($t8)
		beq $t9 , $zero, exit
		mul $t7 , $t7 , 10
		sub $t6 , $t9 , 48
		add $t7 , $t7 , $t6
		addi $t8 , $t8 , 1
		j loop
	
	 exit:
	 move $v1 , $t7 
	 jr $ra

algorithm:
	la $a1 , list #list to hold the items of the longest increasing subsequence
	li $a2 , 0 #arr index
	li $a3 , 0 #temp index
	#li $s0 , 24 #array size - dynamic olacak
	li $s1 , 0 #max size
	addi $sp , $sp , -4
	sw $ra , ($sp)
	jal LongestIncSubsequence
	lw $ra , ($sp)
	addi $sp , $sp , 4
	
	li   $v0, 13       # system call for open file
	la   $a0, output_name      # input file name
	li   $a1, 9        # flag for reading
	li   $a2, 0        # mode is ignored
	syscall            # open a file 
	move $s0, $v0      # save the file descriptor
	 
  	li   $v0, 15       # system call for write to file
  	move $a0, $s0      # file descriptor 
  	la   $a1, buffer   # address of buffer from which to write
  	li   $a2, 44       # hardcoded buffer length
  	syscall            # write to file
	
	li $t0, 0 #holds the index for list (second for)
	li $v0 , 4
	la $a0 , longest
	syscall
	
	
	PRINT_LONGEST_LIST:
		
		lw $t1 , list($t0)
		addi $t0 , $t0 , 4
		
		li $v0 , 1
		move $a0 , $t1
		syscall
		
		li $v0 , 4
		la $a0 , comma
		syscall
		
		bne $s1 , $t0 , PRINT_LONGEST_LIST
		
	jr $ra
	
LongestIncSubsequence: #Procedure 

	slt $t0, $a2, $s0 #If arr_index < arr_size is false then (arr_index >= arr_size)
	beq $t0 , $zero , BASE_CASE  #go to the BASE_CASE
	bne $t0 , $zero , END_OF_BASE_CASE
	BASE_CASE:
		slt $t0 , $s1 , $a3 #If max_size < temp_size then
		bne $t0 , $zero , tmpS_ht_maxS #go to the tmpS_ht_maxS branch
		beq $t0 , $zero , skip_tmpS_ht_maxS
			tmpS_ht_maxS:
				add $s1 , $zero , $a3 #max_size = temp_size
				li $t4 , 0 #i value for loop
				Copy_Array: #list = temp 
				lw $t5	, temp($t4)
				sw $t5 , list($t4)		
				addi $t4, $t4 , 4
				bne $t4 , $a3 , Copy_Array
		skip_tmpS_ht_maxS:
		li $t4 , 0 #i value for loop
		li $v0 , 4 
		la $a0 , openBracket
		syscall
		addi $sp , $sp , -16 #Allocate space for stack pointer
		sw $a1 , 0($sp) #Save the required arguments and ra into the stack
		sw $a2 , 4($sp)
		sw $a3 , 8($sp)
		sw $ra , 12($sp)
		jal printSubsequence
		lw $a1 , 0($sp) #Load the saved values into the arguments
		lw $a2 , 4($sp)
		lw $a3 , 8($sp)
		lw $ra , 12($sp)
		addi $sp , $sp , 16 
		li $v0 , 4
		la $a0 , closeBracket
		syscall
		li $v0 , 4
		la $a0 , sizeText
		syscall
		div $t9 , $a3 , 4
		li $v0 , 1
		move $a0 , $t9
		syscall
		li $v0 , 4
		la $a0 , newLine
		syscall
		jr $ra #return
	
	END_OF_BASE_CASE:
	
	addi $sp , $sp , -16 #Allocate space for stack pointer
	sw $a1 , 0($sp) #Save the required arguments and ra into the stack
	sw $a2 , 4($sp)
	sw $a3 , 8($sp)
	sw $ra , 12($sp)
	
	beq $a3 , $zero , RECURSIVE_CASE #temp_size == 0
	sub $t1 , $a3 , 4 # t1 = temp_size - 1
	lw $t8 , temp($t1)
	lw $t7 , arr($a2)
	#blt $t8 , $t7, RECURSIVE_CASE
	slt $t2 , $t8 , $t7 # If temp[$t1] < arr[$a2] then
	bne $t2 , $zero , RECURSIVE_CASE # TRUE
	beq $t2 , $zero , SKIP_RECURSIVE_CASE #FALSE
	
	RECURSIVE_CASE:
		lw $t3 , arr($a2)  # t3 = arr[$a2]
		sw $t3 , temp($a3) # temp[$a3] = t3
		addi $a3 , $a3 , 4 # Increase temp index
		addi $a2 , $a2 , 4 # Increase 
		jal LongestIncSubsequence #Call the procedure recursively
		
		lw $a1 , 0($sp) #Load the saved values into the arguments
		lw $a2 , 4($sp)
		lw $a3 , 8($sp)
		lw $ra , 12($sp) 
	
	SKIP_RECURSIVE_CASE:
	
		addi $a2 , $a2 , 4 #Increase the index of arr
		jal LongestIncSubsequence #Call the procedure recursively (Without adding an element into the temp)
		
		lw $a1 , 0($sp) #Load the saved values into the arguments
		lw $a2 , 4($sp)
		lw $a3 , 8($sp)
		lw $ra , 12($sp)
		
		addi $sp , $sp , 16 #Deallocate stack pointer
		
		jr $ra #return		
		 
printSubsequence:
	beq $t4 , $a3 , EXIT_LOOP
	
	lw $t5 , temp($t4)
	addi $t4 , $t4 , 4
	
	li $v0 , 1
	move $a0 , $t5
	syscall
	
	li $v0, 4
	la $a0 , comma
	syscall
	
	bne $t4 , $a3 , printSubsequence
	
	EXIT_LOOP:
	jr $ra
	
	
	
	





