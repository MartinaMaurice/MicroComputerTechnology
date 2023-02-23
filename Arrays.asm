.data
	A:  .word a11 , a12 , a21 , a22
	b:  .word b1 , b2
	x:  .word x1 , x2
	

.text

    main:
	lw $t0 , A($zero)
	lw $t1 , b($zero)
	lw $t2 , x($zero)
	lw $t3 , 0($s0)
	//how to load z , result registers
	// base address a7ot value gwa eh?
	/* loading register z in add_vec
	
    lin_alg:
    
     j add_vec:
     
     
    
    add_vec:
    
       addi $sp , $sp , -8
       sw $t1 , 4($sp)
       sw $t2 , 8($sp)
       
       add $t3 , $t1 , $t2
       
    
    
    mul_matrix:
    
    addi $sp , $sp , -8 
    
    sw $t0 , 0($sp)
    sw $t3 , 16($sp)
    
    mul $t4 , $t0 , $t3
    
	
	
	
	
	
	