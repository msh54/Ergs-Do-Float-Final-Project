//dx_reg _dx_reg(out: pc_output_dx, dataA_from_dx, dataB_from_dx, imm_from_dx, ALUSrc_from_dx, ALUOp_from_dx, MemWrite_from_dx, MemRead_from_dx, bne_from_dx,blt_from_dx, MemToReg_from_dx, RegWrite_from_dx, input: xtendOut, fd_out[26:22],data_readRegA,data_readRegB,pc_output_fd,ALUSrc, ALUOp, MemWrite, MemRead, branch_bne, branch_blt, MemToReg, RegWrite, control: .flush(takeBranch),stall_dx)
module dx_reg(pc_output_dx, dataA_from_dx, dataB_from_dx, imm_from_dx, regDst_from_dx, ALUSrc_from_dx, ALUOp_from_dx, MemWrite_from_dx,bne_from_dx,blt_from_dx,bex_from_dx,MemToReg_from_dx, RegWrite_from_dx,MemRead_from_dx,xtendOut, regDst,ctrl_readRegA_from_dx,ctrl_readRegB_from_dx,data_readRegA,data_readRegB,pc_output_fd,ALUSrc, ALUOp, MemWrite, branch_bne, branch_blt, branch_bex,MemToReg,RegWrite,flush,stall_dx,ctrl_readRegA,ctrl_readRegB,MemRead,clock,reset);
	output[11:0] pc_output_dx;
	output[31:0] dataA_from_dx, dataB_from_dx, imm_from_dx;
	output ALUSrc_from_dx,MemWrite_from_dx,bne_from_dx,blt_from_dx,bex_from_dx,MemToReg_from_dx,RegWrite_from_dx,MemRead_from_dx;
	output[4:0] ALUOp_from_dx, regDst_from_dx,ctrl_readRegA_from_dx,ctrl_readRegB_from_dx;
	
	input[11:0] pc_output_fd;
	input[31:0] data_readRegA, data_readRegB, xtendOut;
	input ALUSrc, MemWrite,branch_bne, branch_blt, branch_bex,MemToReg, RegWrite,MemRead;
	input[4:0] ALUOp,regDst,ctrl_readRegA,ctrl_readRegB;
	input stall_dx;
	input clock, reset, flush;
	
	wire enable;
	not _go(enable,stall_dx);
	
	wire clear;
	or _or1(clear,flush,reset);
	
	genvar c;
	generate
		for (c = 0; c <= 11; c = c + 1) begin: loop1
			dffe_ref dffe_ct(.q(pc_output_dx[c]), .d(pc_output_fd[c]), .clk(clock), .en(enable), .clr(clear));
		end
	endgenerate
	
	
	generate
		for (c = 0; c <= 31; c = c + 1) begin: loop2
			dffe_ref dffe_csa(.q(dataA_from_dx[c]), .d(data_readRegA[c]), .clk(clock), .en(enable), .clr(clear));
			dffe_ref dffe_csb(.q(dataB_from_dx[c]), .d(data_readRegB[c]), .clk(clock), .en(enable), .clr(clear));
			dffe_ref dffe_csc(.q(imm_from_dx[c]), .d(xtendOut[c]), .clk(clock), .en(enable), .clr(clear));
		end
	endgenerate
	
	generate
		for (c = 0; c <= 4; c = c + 1) begin: loop3
			dffe_ref dffe_ca(.q(ALUOp_from_dx[c]), .d(ALUOp[c]), .clk(clock), .en(enable), .clr(clear));
			dffe_ref dffe_cb(.q(regDst_from_dx[c]), .d(regDst[c]), .clk(clock), .en(enable), .clr(clear));
			dffe_ref dffe_cc(.q(ctrl_readRegA_from_dx[c]), .d(ctrl_readRegA[c]), .clk(clock), .en(enable), .clr(clear));
			dffe_ref dffe_cd(.q(ctrl_readRegB_from_dx[c]), .d(ctrl_readRegB[c]), .clk(clock), .en(enable), .clr(clear));
		end
	endgenerate
	
	wire clr_ctrl;
	assign clr_ctrl = clear;
	//or _or(clr_ctrl,clear,stall_dx);
	
	
	dffe_ref dffe_c98(.q(MemRead_from_dx), .d(MemRead), .clk(clock), .en(enable), .clr(clr_ctrl));		
	dffe_ref dffe_c9(.q(bex_from_dx), .d(branch_bex), .clk(clock), .en(enable), .clr(clr_ctrl));		
	dffe_ref dffe_c1(.q(ALUSrc_from_dx), .d(ALUSrc), .clk(clock), .en(enable), .clr(clr_ctrl));
	dffe_ref dffe_c3(.q(MemWrite_from_dx), .d(MemWrite), .clk(clock), .en(enable), .clr(clr_ctrl));
	dffe_ref dffe_c4(.q(bne_from_dx), .d(branch_bne), .clk(clock), .en(enable), .clr(clr_ctrl));
	dffe_ref dffe_c5(.q(blt_from_dx), .d(branch_blt), .clk(clock), .en(enable), .clr(clr_ctrl));
	dffe_ref dffe_c6(.q(MemToReg_from_dx), .d(MemToReg), .clk(clock), .en(enable), .clr(clr_ctrl));
	dffe_ref dffe_c7(.q(RegWrite_from_dx), .d(RegWrite), .clk(clock), .en(enable), .clr(clr_ctrl));
	
endmodule
