// xm_reg _xm_reg(out: pc_output_xm, aluOut_from_xm,dataB_from_xm,wasZero,regDist_from_mx,MemWrite_from_xm, MemRead_from_xm, MemToReg_from_xm, RegWrite_from_xm,in: branch_pc, aluOutput, dataB_from_dx, regDst_from_dx, MemWrite, MemRead, MemToReg, RegWrite);
module xm_reg(aluOut_from_xm,dataB_from_xm,regDst_from_xm,MemWrite_from_xm, MemToReg_from_xm, RegWrite_from_xm, aluOutput, dataB_from_dx, regDst_from_dx,MemWrite_from_dx,MemToReg_from_dx,RegWrite_from_dx,clock,reset,stall);
	// NOT USING: output[11:0] pc_output_xm; No pc_output_xm, (or input[11:0] branch_pc) is needed because we moved branching before xm_reg
	
	output[31:0] aluOut_from_xm,dataB_from_xm;
	output[4:0] regDst_from_xm;
	output MemWrite_from_xm, MemToReg_from_xm, RegWrite_from_xm;
	
	input[31:0] aluOutput,dataB_from_dx;
	input[4:0] regDst_from_dx;
	input MemWrite_from_dx,MemToReg_from_dx,RegWrite_from_dx,stall;
	input clock, reset;
	
	wire enable;
	not _go(enable,stall);
	
	genvar c;
	generate
		for (c = 0; c <= 31; c = c + 1) begin: loop1
			dffe_ref dffe_c1(.q(aluOut_from_xm[c]), .d(aluOutput[c]), .clk(clock), .en(enable), .clr(reset));
			dffe_ref dffe_c2(.q(dataB_from_xm[c]), .d(dataB_from_dx[c]), .clk(clock), .en(enable), .clr(reset));
		end
	endgenerate
	
	generate
		for (c = 0; c <= 4; c = c + 1) begin: loop2
			dffe_ref dffe_c(.q(regDst_from_xm[c]), .d(regDst_from_dx[c]), .clk(clock), .en(enable), .clr(reset));
		end
	endgenerate
	
	
	dffe_ref dffe_c3(.q(MemWrite_from_xm), .d(MemWrite_from_dx), .clk(clock), .en(enable), .clr(reset));
	dffe_ref dffe_c4(.q(MemToReg_from_xm), .d(MemToReg_from_dx), .clk(clock), .en(enable), .clr(reset));
	dffe_ref dffe_c5(.q(RegWrite_from_xm), .d(RegWrite_from_dx), .clk(clock), .en(enable), .clr(reset));
	
	
endmodule
