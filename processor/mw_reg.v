// mw_reg _mw_reg(out: MemToReg_from_mw, data_from_mw, aluOut_from_mw,RegWrite_from_mw,regDst_from_mw,in: q_dmem, aluOut_from_xm, regDst_from_mx, MemToReg_from_xm, RegWrite_from_xm);
module mw_reg(MemToReg_from_mw, data_from_mw, aluOut_from_mw,RegWrite_from_mw,regDst_from_mw,q_dmem, aluOut_from_xm, regDst_from_xm, MemToReg_from_xm, RegWrite_from_xm, clock, reset, stall);
	input MemToReg_from_xm,RegWrite_from_xm;
	input[31:0] q_dmem,aluOut_from_xm;
	input[4:0] regDst_from_xm;
	input clock, reset, stall;
	
	output MemToReg_from_mw,RegWrite_from_mw;
	output[31:0] data_from_mw,aluOut_from_mw;
	output[4:0] regDst_from_mw;

	wire enable;
	not _go(enable,stall);
	
	genvar c;
	generate
		for (c = 0; c <= 31; c = c + 1) begin: loop1
			dffe_ref dffe_c1(.q(data_from_mw[c]), .d(q_dmem[c]), .clk(clock), .en(enable), .clr(reset));
			dffe_ref dffe_c2(.q(aluOut_from_mw[c]), .d(aluOut_from_xm[c]), .clk(clock), .en(enable), .clr(reset));
		end
	endgenerate
	
	generate
		for (c = 0; c <= 4; c = c + 1) begin: loop2
			dffe_ref dffe_c3(.q(regDst_from_mw[c]), .d(regDst_from_xm[c]), .clk(clock), .en(enable), .clr(reset));
		end
	endgenerate
	
	
	dffe_ref dffe_c4(.q(RegWrite_from_mw), .d(RegWrite_from_xm), .clk(clock), .en(enable), .clr(reset));
	dffe_ref dffe_c5(.q(MemToReg_from_mw), .d(MemToReg_from_xm), .clk(clock), .en(enable), .clr(reset));
	
endmodule
