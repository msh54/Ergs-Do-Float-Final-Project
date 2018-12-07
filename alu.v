module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;
	
	wire ovf;
	
	wire [31:0] addWire,subWire,andWire,orWire,sllWire,sraWire,multWire,divWire;

	// SUBTRACT (should probably change how I am controlling sub)
	wire[31:0] notB;
	
	inverter _inv(notB,data_operandB);
	
	// Sub 
	CLAadder _sub(data_operandA,notB,subWire,subOvf);
	
	// ADD
	CLAadder _add(data_operandA,data_operandB,addWire,ovf);
	
	// AND
	bitwiseAnd _and(andWire,data_operandA,data_operandB);
	
	// OR
	bitwiseOr _or(orWire,data_operandA,data_operandB);
	
	// SLL
	sll _sll(ctrl_shiftamt,sllWire,data_operandA);
	
	// SRA
	sra _sra(ctrl_shiftamt,sraWire,data_operandA);
	
	//isNotEqual
	isNotZero _isNotEqual(isNotEqual,subWire);
	
	//is(B)LessThan(A) A > B (FLIPPING THIS FOR THE PROCESSOR)
		wire negResult,negA,negB,posB;
		not _1(posResult,subWire[31]);
		not _2(posA,data_operandA[31]);
		not _3(posB,data_operandB[31]);
	
		// case 1: a negative, b negative, result positive
		wire case1;
		and _bothNeg(case1,data_operandA[31],data_operandB[31],posResult);
		
		// case 2: a positive, b negative
		wire case2;
		and _aNeg_bPos(case2,posA,data_operandB[31]);
	
		// case 3: a positive, b positive, result positive
		wire case3;
		and _bothPos(case3,posA,posB,posResult);
		
		wire isLessThan_solo;
	or _isLessThan(isLessThan_solo,case1,case2,case3); // Checks for B > A
		and _checkcheck(isLessThan,isLessThan_solo,isNotEqual);
	
	//overflow
	
		// case 1: a positive, b positive, result Negative
		wire ovf_case1;
		nand _ovfPos(ovf_case1,posA,notB[31],addWire[31]);
		
		wire posAdd;
		not _flip(posAdd,addWire[31]);
		// case 1: a neg, b neg, result pos
		wire ovf_case2;
		nand _ovfAdd(ovf_case2,data_operandA[31],data_operandB[31],posAdd);
		// case 2: a pos, b pos, result neg
		
		//nand _n2(c2,posA,notBovf,data_result[31]);
	
	wire ovfCases;
	nand _ovf(ovfCases,ovf_case1,ovf_case2);
	
	or _overflow(overflow,ovfCases,ovf);
	
	//assign multWire = data_operandA * data_operandB;
	//assign divWire = (data_operandB != 32'b0) ? data_operandA / data_operandB : 32'b0;
	
	mux_6to1 bigMux(ctrl_ALUopcode[2:0],data_result,addWire,subWire,andWire,orWire,sllWire,sraWire);//,multWire,divWire);
	

endmodule
