.data
	A:  .word 1 , 2 , 3 , 4
	b:  .word 5 , 6
	x:  .word 7 , 8
	
	z: .word
# the final result will be stored in array "result:" 	
	result: .word
.text

    main:
#   //Array A :
	lw $t0, A($zero)
	sll $t1, $t0, 2 
	sll $t2, $t0, 3
	sll $t3, $t0, 4
 
#    // Array b:
    	lw $t4, b($zero)
    	sll $t5, $t4, 2
    	
#   // Array x: 
   	lw $t6, x($zero)
   	sll $t7, $t6, 2 
   
#   // bn call el lin alg:
   	
  	jal lin_alg
#//METHOD
     lin_alg:	
    	jal add_vec 
    	jal mul_matrix
    
#//METHOD    
    add_vec:
    	add $t4, $t4, $t6
    	add $t5, $t5, $t7
   
 #   	// bytl3 el added w ystore in array z  	
    	addi $t9, $zero, 4
    	sw $t4, z($zero)
    	sw $t5, z($t9)
    	
# //METHOD  	
    mul_matrix:
    	mul $t0, $t4, $t0
    	mul $t1, $t5, $t1
    	add $v0, $t0 , $t1
    
    	mul $t2, $t4, $t2
    	mul $t3, $t5, $t3
    	add $v1, $t2, $t3
    	
    	sw $v0, result($zero)
    	sw $v1, result($t9)
    	
    	
    
	
	
	
	
	
	
