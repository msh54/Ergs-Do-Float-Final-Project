// control _ctrl(branch_bne,branch_blt,MemRead,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,stall_dx,fd_out[31:27])
module control(notNop,loadStatus,MemRead,writeReg_in_decode,ctrl_dataIn,branch_bne,branch_blt,branch_bex,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,stall_dx,opCode,dxRd,fdRt,fdRs,ALUOp_In,loadRd,dxMemRead);
	output loadStatus,MemRead,branch_bex,writeReg_in_decode,branch_bne,branch_blt,MemtoReg,MemWrite,ALUSrc,RegWrite,stall_dx,loadRd;
	input[4:0] ALUOp_In;
	output[4:0] ALUOp;
	output[1:0] ctrl_dataIn;// 00 = Normal Writeback, 01 = PC + 1, 10 = Full Immediate
	input [4:0] opCode,dxRd,fdRt,fdRs;
	input dxMemRead,notNop;
	
//
//	assign branch_bne = 1'b0;
//	assign branch_blt = 1'b0;
//	assign branch_bex = 1'b0;
//	
//	assign MemtoReg = 1'b0;
//	assign MemWrite = 1'b0;
//	
//	assign ALUSrc = 1'b0;
//	assign RegWrite = 1'b1;
//	assign ALUOp = 5'b0;
	

	wire x4,x3,x2,x1,x0,n4,n3,n2,n1,n0;
	assign x4 = opCode[4];
	assign x3 = opCode[3];
	assign x2 = opCode[2];
	assign x1 = opCode[1];
	assign x0 = opCode[0];
	
	not _n0(n0,x0);
	not _n1(n1,x1);
	not _n2(n2,x2);
	not _n3(n3,x3);
	not _n4(n4,x4);
	
	wire alu,addi,sw,lw,blt,bne,jal,j,jr,bex,setx;
	and _add(alu,n4,n3,n2,n1,n0,notNop);
	and _addi(addi,n4,n3,x2,n1,x0);
	//assign addi = 1'b1;
	and _sw(sw,n4,n3,x2,x1,x0);
	and _lw(lw,n4,x3,n2,n1,n0);
	and _blt(blt,n4,n3,x2,x1,n0);
	and _bne(bne,n4,n3,n2,x1,n0);
	and _j(j,n4,n3,n2,n1,x0);
	and _jal(jal,n4,n3,n2,x1,x0);
	and _jr(jr,n4,n3,x2,n1,n0);
	and _bex(bex,x4,n3,x2,x1,n0);
	and _setx(setx,x4,n3,x2,n1,x0);
	
	
	// if opCode = dxMemRead && ((dxRd == fdRs) || fdALUOp && (dxRd == fdRt))
	wire sharedReg,dxRd_fdRt;
	and _isAlu(dxRd_fdRt,alu,(dxRd == fdRt));
	or _sharedReg(sharedReg,(dxRd == fdRs),dxRd_fdRt);
	wire stall_dx_for_mem;
	and _dxMemRead(stall_dx_for_mem,dxMemRead,sharedReg);
	or _stall_dx(stall_dx,stall_dx_for_mem,ctrl_dataIn[0],ctrl_dataIn[1]); // ctrl_dataIn means the input to the reg is modified
	
	or _branch_bne(branch_bne,bne);
	or _branch_blt(branch_blt,blt);
	or _MemtoReg(MemtoReg,lw);
	or _MemWrite(MemWrite,sw);
	or _ALUSrc(ALUSrc,addi,sw,lw);
	or _RegWrite(RegWrite,alu,addi,lw,setx,jal);
	//assign RegWrite = 1'b1;
	or _loadRd(loadRd,blt,bne,sw,jr);
	or _writeReg_in_decode(writeReg_in_decode,setx,jal);
	or _loadStatus(loadStatus,bex);
	assign branch_bex = bex;
	assign MemRead = lw;
	
	mux_2to1_5 _aluOp(alu,ALUOp,ALUOp_In,5'd0);
	
	assign ctrl_dataIn[1] = setx;//setx;
	assign ctrl_dataIn[0] = jal;//jal;
	
endmodule
	
// add: 00000  
	// ALUOp = AluOpIn
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 0
	// RegWrite = 1
	// loadRd = 0
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 0;
	
// addi: 00101 
	// ALUOp = 00000
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 1
	// RegWrite = 1
	// loadRd = 0
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 0;
	
// sw: 00111
	// ALUOp = 00000
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 1
	// MemWrite = 0
	// ALUSrc = 1
	// RegWrite = 0
	// loadRd = 1
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 0;
	
// lw: 01000
	// ALUOp = 00000
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 1
	// ALUSrc = 1
	// RegWrite = 1
	// loadRd = 0
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 0;
	
// blt: 00110
	// ALUOp = d
	// branch_bne = 0
	// branch_blt = 1
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 0
	// RegWrite = 0
	// loadRd = 1
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 0;
	
// bne: 00010
	// ALUOp = d
	// branch_bne = 1
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 0
	// RegWrite = 0
	// loadRd = 1
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 0;
	
// jr: 00100
	// ALUOp = d
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 0
	// RegWrite = 0
	// takeJump and jr taken care of in the processor
	// loadRd = 1
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 0;
	
// jal: 00011
	// ALUOp = d
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 0
	// RegWrite = 0
	// takeJump and jr taken care of in the processor
	// loadRd = 1
	// ctrl_dataIn = 01
	// writeReg_in_decode = 1
	// loadStatus = 0;

// bex: 10110
	// ALUOp = d
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 0
	// RegWrite = 0
	// takeJump and jr taken care of in the processor
	// loadRd = 0
	// ctrl_dataIn = 00
	// writeReg_in_decode = 0
	// loadStatus = 1;
	
// setx: 10101
	// ALUOp = d
	// branch_bne = 0
	// branch_blt = 0
	// MemtoReg = 0
	// MemWrite = 0
	// ALUSrc = 0
	// RegWrite = 0
	// takeJump and jr taken care of in the processor
	// loadRd = 0
	// ctrl_dataIn = 10
	// writeReg_in_decode = 1
	// loadStatus = 0
	
