/**
 * READ THIS DESCRIPTION!
 *
 * The processor takes in several inputs from a skeleton file.
 *
 * Inputs
 * clock: this is the clock for your processor at 50 MHz
 * reset: we should be able to assert a reset to start your pc from 0 (sync or
 * async is fine)
 *
 * Imem: input data from imem
 * Dmem: input data from dmem
 * Regfile: input data from regfile
 *
 * Outputs
 * Imem: output control signals to interface with imem
 * Dmem: output control signals and data to interface with dmem
 * Regfile: output control signals and data to interface with regfile
 *
 * Notes
 *
 * Ultimately, your processor will be tested by subsituting a master skeleton, imem, dmem, so the
 * testbench can see which controls signal you active when. Therefore, there needs to be a way to
 * "inject" imem, dmem, and regfile interfaces from some external controller module. The skeleton
 * file acts as a small wrapper around your processor for this purpose.
 *
 * You will need to figure out how to instantiate two memory elements, called
 * "syncram," in Quartus: one for imem and one for dmem. Each should take in a
 * 12-bit address and allow for storing a 32-bit value at each address. Each
 * should have a single clock.
 *
 * Each memory element should have a corresponding .mif file that initializes
 * the memory element to certain value on start up. These should be named
 * imem.mif and dmem.mif respectively.
 *
 * Importantly, these .mif files should be placed at the top level, i.e. there
 * should be an imem.mif and a dmem.mif at the same level as process.v. You
 * should figure out how to point your generated imem.v and dmem.v files at
 * these MIF files.
 *
 * imem
 * Inputs:  12-bit address, 1-bit clock enable, and a clock
 * Outputs: 32-bit instruction
 *
 * dmem
 * Inputs:  12-bit address, 1-bit clock, 32-bit data, 1-bit write enable
 * Outputs: 32-bit data at the given address
 *
 */
module processor(
    // Control signals
    clock,                          // I: The master clock
    reset,                          // I: A reset signal

    // Imem
    address_imem,                   // O: The address of the data to get from imem
    q_imem,                         // I: The data from imem

    // Dmem
    address_dmem,                   // O: The address of the data to get or put from/to dmem
    data,                           // O: The data to write to dmem
    wren,                           // O: Write enable for dmem
    q_dmem,                         // I: The data from dmem

    // Regfile
    ctrl_writeEnable,               // O: Write enable for regfile
    ctrl_writeReg,                  // O: Register to write to in regfile
    ctrl_readRegA,                  // O: Register to read from port A of regfile
    ctrl_readRegB,                  // O: Register to read from port B of regfile
    data_writeReg,                  // O: Data to write to for regfile
    data_readRegA,                  // I: Data from port A of regfile
    data_readRegB,                   // I: Data from port B of regfile
);
    // Control signals
    input clock, reset;

    // Imem
    output [11:0] address_imem;
    input [31:0] q_imem;

    // Dmem
    output [11:0] address_dmem;
    output [31:0] data;
    output wren;
    input [31:0] q_dmem;

    // Regfile
    output ctrl_writeEnable;
    output [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
    output [31:0] data_writeReg;
    input [31:0] data_readRegA, data_readRegB;
	 
	 // IMEM AND DMEM Test
	 

    /* YOUR CODE STARTS HERE */
	 
	 
	 //control(regDst,Branch,MemRead,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,inst);
	 
	 //---------------------------------PC---------------------------------
		wire[11:0] pc_postAdd;
		wire[11:0] pc_output_fd;
		wire[11:0] branch_pc; // branch_pc is given its value by the add1 in the Execute stage
		wire[31:0] fd_out;
		
		wire takeBranch,takeJump,jr,jal,takeBex; // Take Branch is given its value in the Execute stage
		
		wire[11:0] pc_input,pc_jump,pc_jr,pc_norm; // Jump defined later on
		
		// /--------------PUT THIS IN CONTROL:-------------\ This is all technically happening in Decode
			wire outside0;
			nor _12_45_zero(outside0,fd_out[31],fd_out[30],fd_out[28],fd_out[27]);
			and _jr(jr,outside0,fd_out[29]);
			
			wire outside,last;
			not _lb(last,fd_out[27]);
			wire jalOrj;
			nor _123_zero(jalOrj,fd_out[31],fd_out[30],fd_out[29],last);
			or _pc_equals_T(takeJump,jalOrj,takeBex,jr);
			
			and _jal(jal,takeJump,fd_out[28]);
		// \--------------PUT THIS IN CONTROL:-------------/
		
		mux_2to1_12 _pcSrc(takeBranch,pc_norm,branch_pc,pc_postAdd);
		// Mux Between jumping to an immediate (j and jal) or jumping to $rd (jr)
			// pc_jr we just get the last 12 bits of the rd output
		mux_2to1_12 _jumpSrc(jr,pc_jump,data_readRegB[11:0],fd_out[11:0]);
		
		mux_2to1_12 _takeJump(takeJump,pc_input,pc_jump,pc_norm);
		
		
		wire stall_dx; // referenced in Decode control
		
		pc_register _pc(address_imem, pc_input,stall_dx,clock,reset);
		//GOES INTO IMEM
		// Imem: output [11:0] address_imem; input [31:0] q_imem;
		add1 _increment(pc_postAdd,address_imem);
		
		wire flush_fd_reg;
		or _flush_fd_reg(flush_fd_reg,takeBranch,takeJump);
		//fd_reg _fd_reg(out: fd_out, pc_output_fd, input: q_imem,pc_postAdd,.flush(takeBranch),control: .disable(stall)
		fd_reg _fd_reg(fd_out,pc_output_fd,q_imem,address_imem,flush_fd_reg,stall_dx,clock,reset);
		
	 //---------------------------------Decode Stage---------------------------------
		wire[31:0] dataA_from_dx,dataB_from_dx;
		wire[31:0] imm_from_dx;
		wire[11:0] pc_output_dx;
		wire[4:0] regDst_from_dx;
		
		//module control(branch_bne,branch_blt,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,stall_dx,opCode,dxRt,fdRt,fdRs); // fd means q_imem, dx means fd_out
		
		//module control(branch_bne,branch_blt,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,stall_dx,opCode,dxRt,fdRt,fdRs);
		wire branch_bne,MemRead,branch_blt,MemtoReg,MemWrite,ALUSrc,RegWrite;
		wire loadRd,loadStatus,writeReg_in_decode,branch_bex;
		wire MemRead_from_dx;
		wire [1:0] ctrl_dataIn; // 00 = Normal Writeback, 01 = PC + 1, 10 = Full Immediate
		wire [4:0] ALUOp;
		
		wire notNop;
		isNotZero _nN(notNop,fd_out);
		
		//module control(loadStatus,MemRead,writeReg_in_decode,ctrl_dataIn,branch_bne,branch_blt,branch_bex,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,stall_dx,opCode,dxRd,fdRt,fdRs,ALUOp_In,loadRd,dxMemRead);
		//module control(notNop,loadStatus,MemRead,writeReg_in_decode,ctrl_dataIn,branch_bne,branch_blt,branch_bex,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,stall_dx,opCode,dxRd,fdRt,fdRs,ALUOp_In,loadRd,dxMemRead);
		    control ctrl(notNop,loadStatus,MemRead,writeReg_in_decode,ctrl_dataIn,branch_bne,branch_blt,branch_bex,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,stall_dx,fd_out[31:27], regDst_from_dx, fd_out[16:12],fd_out[21:17],fd_out[6:2],loadRd,MemRead_from_dx);
		
		mux_2to1_5 _checkStatus(loadStatus,ctrl_readRegA,5'd30,fd_out[21:17]);
		//assign ctrl_readRegA = fd_out[21:17];
		
		// enter Option to loadRd
		
		//module mux_2to1_5(sel,out,data1,data2);
		//assign ctrl_readRegB = fd_out[16:12];
		mux_2to1_5 _loadRd(loadRd,ctrl_readRegB,fd_out[26:22],fd_out[16:12]);
		// // NOT USING: wire [4:0] ALUCtrlOut; // This is always going to be fd_out[26:22] because of the ISA
		// // NOT USING: mux_2to1 _ALUCtrl(regDst,ALUCtrlOut,fd_out[15:11],fd_out[20:16])
		wire [31:0] xtendOut;
		sx _signXtend(xtendOut,fd_out[16:0]);
		
		wire [31:0] xtendOut27; // This extends fd_out[26:0] to 32 bits for jump operations
		sx_27 _signXtend27(xtendOut27,fd_out[26:0]);
		
		
		// wire[11:0] pc_jump; pc_jump was defined earlier ACTUALLY DON'T NEED A MUX, just tie fd_out[11:0] straight there
		// mux_2to1_12 _j_jal(jump,pc_jump,fd_out[11:0],pc_output_fd);
		
		wire RegWrite_from_mw; // moved to Decode
		wire [4:0] regDst_from_mw;// moved to Decode 
		wire[31:0] writeback_data; // Moved to decode
		
		// pc_output_fd plus 1
		wire[11:0] pc_plus_1_12;
		wire [31:0] pc_plus_1_32;
		
		add1 _pcP1(pc_plus_1_12,pc_output_fd);
		sx_12 _xtend1(pc_plus_1_32,pc_plus_1_12);
		
		// wire [1:0] ctrl_dataIn; // 00 = Normal Writeback, 01 = PC + 1, 10 = Full Immediate [27, this mux is used for jumping JI uses fd_out[26:0]]
		mux_3to1 _dataIn(ctrl_dataIn,data_writeReg,writeback_data,pc_plus_1_32,xtendOut27);
		//assign ctrl_writeEnable = RegWrite_from_mw; // moved to Decode
		or _en(ctrl_writeEnable,RegWrite_from_mw,writeReg_in_decode);
		//ctrl_dataIn works as a ctrl here because there are many diff instructions
		mux_3to1_5 _regDest(ctrl_dataIn,ctrl_writeReg,regDst_from_mw,5'd31,5'd30);
		
		//assign ctrl_writeReg = 5'd5;//fd_out[21:17]; // moved to Decode
		
		// Ex: ALUSrc, ALUOp, (regDst taken care of in previous)
		// M: Branch, MemWrite, MemRead
		// WB: MemToReg,RegWrite
		wire[4:0] ctrl_readRegA_from_dx,ctrl_readRegB_from_dx, ALUOp_from_dx;
		wire ALUSrc_from_dx, MemWrite_from_dx, bne_from_dx,blt_from_dx,bex_from_dx,MemToReg_from_dx, RegWrite_from_dx;
		//module dx_reg(pc_output_dx, dataA_from_dx, dataB_from_dx, imm_from_dx, regDst_from_dx, ALUSrc_from_dx, ALUOp_from_dx, MemWrite_from_dx,bne_from_dx,blt_from_dx, MemToReg_from_dx, RegWrite_from_dx, jr_dx, xtendOut, regDst, data_readRegA,data_readRegB,pc_output_fd,ALUSrc, ALUOp, MemWrite, branch_bne, branch_blt,MemToReg,RegWrite,flush,stall_dx,jr,clock,reset);
		dx_reg _dx_reg(pc_output_dx, dataA_from_dx, dataB_from_dx, 
				imm_from_dx, regDst_from_dx, ALUSrc_from_dx, 
				ALUOp_from_dx, MemWrite_from_dx,bne_from_dx,
				blt_from_dx,bex_from_dx, MemToReg_from_dx, RegWrite_from_dx,MemRead_from_dx,
				xtendOut, fd_out[26:22],ctrl_readRegA_from_dx,ctrl_readRegB_from_dx,
				data_readRegA,data_readRegB,pc_output_fd,
				ALUSrc, ALUOp, MemWrite, branch_bne, 
				branch_blt,branch_bex, MemtoReg, RegWrite,takeBranch,stall_dx,ctrl_readRegA,ctrl_readRegB,MemRead,clock,reset);
	
	 //---------------------------------Execute Stage---------------------------------
	   //control(regDst,Branch,MemRead,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite,inst);
		// Ex: ALUSrc, ALUOp, (regDst taken care of in previous)
		// M: Branch, MemWrite, MemRead
		// WB: MemToReg,RegWrite
		
		// out: pc_output_dx, dataA_from_dx, dataB_from_dx, imm_from_dx, regDst_from_dx,
		
		
		// BYPASSING: MX (send aluOut_from_xm back to Execute)
		// BYPASSING: WX (send data_writeReg back to Execute)
		
		// dataB_from_dx -> dataB_from_xm
		wire[31:0] aluDataBsource;
		wire[31:0] aluDataBsource_noBypasss;
		
		// ***** ADD bypass_A, bypass_B, bypass_dmem TO CONTROL
		// Temp solution 
		// MX: aluOP ((dx.rs1 == xm.dest) || (dx.rs2 == xm.dest))
		// WX: aluOP ((dx.rs1 == mw.dest) || (dx.rs2 == mw.dest))
		// WM: (xm.dest == wm.dest)
		wire[1:0] bypass_A, bypass_B;
		wire[4:0] regDst_from_xm;
		wire bypass_dmem;
		//assign bypass_A = 2'b0; // 00 = Nothing, 01 = MX = (ctrl_readRegA_from_dx == regDst_from_xm), 10 = WX = (ctrl_readRegA_from_dx == regDst_from_mw)
		and _andIt(bypass_A[1],(ctrl_readRegA_from_dx == regDst_from_mw),(ctrl_readRegA_from_dx != regDst_from_xm),(regDst_from_xm != 5'd0));
		and(bypass_A[0],(ctrl_readRegA_from_dx == regDst_from_xm),(regDst_from_xm != 5'd0));
		// assign bypass_B = 2'b0; // 00 = Nothing, 01 = MX = (ctrl_readRegB_from_dx == regDst_from_xm), 10 = WX = (ctrl_readRegB_from_dx == regDst_from_mw)
		//wire testOne;
		//assign testOne = 1'b1;
		
		and(bypass_B[1],(ctrl_readRegB_from_dx == regDst_from_mw),(ctrl_readRegB_from_dx != regDst_from_xm),(regDst_from_mw != 5'd0));
		//and _and1(bypass_B[1],testOne,regDst_from_mw);
		and(bypass_B[0],(ctrl_readRegB_from_dx == regDst_from_xm),(regDst_from_xm != 5'd0));
		//and _and2(bypass_B[0],testOne,regDst_from_xm);
		
		and _byDmem(bypass_dmem,(regDst_from_xm == regDst_from_mw),(regDst_from_mw != 5'd0));
		
		wire[31:0] aluOut_from_xm,aluDataAsource;
		
		// BYPASS_A
		mux_3to1 _bxA(bypass_A,aluDataAsource,dataA_from_dx,aluOut_from_xm, data_writeReg); // aluOut_from_xm = from M, data_writeReg = from W
		
		// BYPASS_B
		wire[31:0] aluDataBsource_bypass;
		//wire[31:0] aluDataBsource_noBypass;
		// Could condense this into one 4:1 mux but decided to keep separate at the moment for the sake of simplicity
		//mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource_noBypass,imm_from_dx,dataB_from_dx);
		//mux_3to1 _bxBSRC(bypass_B, aluDataBsource, aluDataBsource_noBypass, aluOut_from_xm, data_writeReg); // aluOut_from_xm = from M, data_writeReg = from W
		
		// Switched the ordering of the Bypassing and Immediate muxing to account for sw (that may invoke both)
		mux_3to1 _bxBSRC(bypass_B, aluDataBsource_bypass, dataB_from_dx, aluOut_from_xm, data_writeReg); // aluOut_from_xm = from M, data_writeReg = from W
		mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource,imm_from_dx,aluDataBsource_bypass);
		
		//module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);
		// No need for the ALU Control so That I'll just jimmie-rig the ALU
		wire[31:0] aluOutput;
		wire isNotEqual, isLessThan, overflow;
		
		alu _mainAlu(aluDataAsource, aluDataBsource,ALUOp_from_dx,imm_from_dx[11:7],aluOutput,isNotEqual,isLessThan,overflow);
		
		// Don't need this shifter because memory is byte addressed and not word addressed
		// // module sll2(out,in);
		// // wire[31:0] shifted_imm;
		// // sll2 _branchShift(shifted_imm,imm_from_dx); 
		
	   // branch_pc is declared earlier on, no longer need pc_output_xm because we're looping branch_pc back in Decode
		// ASSUMING: Since the pc_register is 12 bits, and immediate is 32, assume were only adding the last 12 bits to the pc_register
		wire jumpOvf;
//		wire pc_plus_1_plus_N;
//		CLAadder_12 _branchAdd(imm_from_dx[11:0],pc_output_dx,pc_plus_1_plus_N,jumpOvf);
//		mux_2to1_12 _pc_v_T(bex_from_dx,branch_pc,imm_from_dx[11:0],pc_plus_1_plus_N);

		add _branchAdd(branch_pc,imm_from_dx[11:0],pc_output_dx); // PC = PC + N + 1


		// // wire[11:0] pc_input; // This loops back to before the PC Reg
		
		// NOT USING HERE: mux_2tot1 _pcSrc(pc_input,takeBranch,branch_pc,pc_postAdd); // THIS IS THE CODE PRESENT IN FETCH
		
		wire takeBne, takeBlt; // Defined takeBex in fetch
		// // and _branch(takeBne,bne_from_dx,isNotEqual);
		// // and _branch(takeBlt,blt_from_dx,isLessThan);
		// // or _or(PCSrc,takeBne,takeBlt);
		and _bne(takeBne,bne_from_dx,isNotEqual);
		and _blt(takeBlt,blt_from_dx,isLessThan);
		
		wire isNotZero;
		isNotZero _checkBex(isNotZero,dataA_from_dx);
		and _bex(takeBex,bex_from_dx,isNotZero);
		or _or(takeBranch,takeBne,takeBlt);
		// If takeBranch is high, flush out fd, dx registers (set all the controls to 0), freeze the PC
		
		
		
		wire[4:0] regDst_from_mx;
		// Ex: ALUSrc, ALUOp, (regDst taken care of in previous)
		// M: Branch, MemWrite, MemRead
		// WB: MemToReg,RegWrite
		
		// xm_reg _xm_reg(out: pc_output_xm, aluOut_from_xm,dataB_from_xm,wasZero,regDst_from_mx,MemWrite_from_xm, MemRead_from_xm, MemToReg_from_xm, RegWrite_from_xm,in: branch_pc, aluOutput, dataB_from_dx, regDst_from_dx, MemWrite, MemRead, MemToReg, RegWrite);
	   wire[31:0] dataB_from_xm;
		wire MemWrite_from_xm, MemToReg_from_xm, RegWrite_from_xm;
		// wire[4:0] regDst_from_xm;
		wire stall_xm;
		or _stall_xm(stall_xm,ctrl_dataIn[0],ctrl_dataIn[1]);
		xm_reg _xm_reg(aluOut_from_xm,dataB_from_xm,regDst_from_xm,MemWrite_from_xm, MemToReg_from_xm, RegWrite_from_xm, aluOutput, dataB_from_dx, regDst_from_dx,MemWrite_from_dx,MemToReg_from_dx,RegWrite_from_dx,clock,reset,stall_xm);
	
	 //---------------------------------Memory Stage---------------------------------
		// out: pc_output_xm, aluOut_from_xm,dataB_from_xm,wasZero,regDst_from_mx,MemWrite_from_xm, MemRead_from_xm, bne_from_xm, MemToReg_from_xm, RegWrite_from_xm
		// output [11:0] address_dmem; output [31:0] data; output wren; input [31:0] q_dmem;
		assign address_dmem = aluOut_from_xm[11:0];
		
		// BYPASSING: WM (send data_writeReg back to Memory)
		
		mux_2to1 _wm(bypass_dmem,data,data_writeReg,dataB_from_xm); // assign data = dataB_from_xm;
		
		assign wren = MemWrite_from_xm;
		
		wire MemToReg_from_mw;
		// wirer RegWrite_from_mw; // moved to Decode
		// wire [4:0] regDst_from_mw;// moved to Decode 
		wire [31:0] data_from_mw, aluOut_from_mw;
		
		// BYPASSING: MX (send aluOut_from_xm back to Execute)
		 
		wire stall_mw;
		or _stall_mw(stall_mw,ctrl_dataIn[0],ctrl_dataIn[1]);
		
		// mw_reg(MemToReg_from_mw, data_from_mw, aluOut_from_mw,RegWrite_from_mw,regDst_from_mw,q_dmem, aluOut_from_xm, regDst_from_xm, MemToReg_from_xm, RegWrite_from_xm, clock, reset);
		mw_reg _mw_reg(MemToReg_from_mw, data_from_mw, aluOut_from_mw,RegWrite_from_mw,regDst_from_mw,q_dmem, aluOut_from_xm, regDst_from_xm, MemToReg_from_xm, RegWrite_from_xm,clock,reset,stall_mw);
	
	 //---------------------------------Writeback Stage---------------------------------
		// out: MemToReg_from_mw, data_from_mw, aluOut_from_mw,RegWrite_from_mw,regDist_from_mw,
		// wire[31:0] writeback_data; // Moved to decode
		mux_2to1 _writeMux(MemToReg_from_mw,writeback_data,data_from_mw,aluOut_from_mw); // Connects back to the decode phase
		//assign writeback_data = 32'd7;
		// output ctrl_writeEnable;
		
		// BYPASSING: WX (send data_writeReg back to Execute)
		// BYPASSING: WM (send data_writeReg back to Memory)
		
		
		// wire RegWrite_from_mw; // moved to Decode
		// wire [4:0] regDst_from_mw;// moved to Decode 
		// assign ctrl_writeEnable = RegWrite_from_mw; // moved to Decode
		// assign ctrl_writeReg = regDst_from_mw; // moved to Decode
	 
endmodule
