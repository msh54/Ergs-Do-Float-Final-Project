// add _branchAdd(branch_pc,imm_from_dx[11:0],pc_output_dx); //Only adds 12 bits
module add(branch_pc,dataA,dataB);
	input[11:0] dataA, dataB;
	output[11:0] branch_pc;
	
	wire[11:0] out;
	wire ovf,ovf2;
	
	CLAadder_12 _add(dataA,dataB,out,ovf);
	add1 _inc(branch_pc,out);
	
	
endmodule
