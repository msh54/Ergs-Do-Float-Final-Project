// ---------- SAMPLE TEST BENCH ----------
`timescale 1 ns / 100 ps
module processor_tb();
    // inputs to the DUT are reg type
    reg            clock,ctrl_reset;

    // outputs from the DUT are wire type
    wire [31:0] data_readRegA, data_readRegB;

    // Tracking the number of errors
    integer errors;
    integer index;    // for testing...

    // instantiate the skeleton
    skeleton _sk(clock,ctrl_reset);

    // setting the initial values of all the reg
    initial
    begin
        $display($time, " << Starting the Simulation >>");
        clock = 1'b0;    // at time 0
        
		  

        ctrl_reset = 1'b1;    // assert reset
        @(negedge clock);    // wait until next negative edge of clock
        @(negedge clock);    // wait until next negative edge of clock
        ctrl_reset = 1'b0;    // de-assert reset
		  
		  repeat(25)
		  begin
				// mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource_noBypass,imm_from_dx,dataB_from_dx);
		  $display("-----------------------------");
		  $display("Current Address: ",_sk.my_processor.address_imem);
		  
		  $display("pc_output_fd: ",_sk.my_processor.pc_output_fd);
		  
		  $display("pc_output_dx: ",_sk.my_processor.pc_output_dx);
		  
		  $display("takeBranch: ",_sk.my_processor.takeBranch);
		  $display("isNotEqual: ",_sk.my_processor.isNotEqual);
		  $display("isLessThan: ",_sk.my_processor.isLessThan);

		  
		  $display("takeJump: ",_sk.my_processor.takeJump);
		  $display("jalOrj: ",_sk.my_processor.jalOrj);
		  $display("jr: ",_sk.my_processor.jr);
		  $display("loadRd: ",_sk.my_processor.loadRd);
		  $display("pc_jump: ",_sk.my_processor.pc_jump);
		  
		  
		  $display("register31 value: ",_sk.my_regfile.rout31);
		  
		  
		  $display("branch_bne: ",_sk.my_processor.branch_bne);
		  $display("branch_blt: ",_sk.my_processor.branch_blt);
		  $display("bne_from_dx: ",_sk.my_processor.bne_from_dx);
		  $display("blt_from_dx: ",_sk.my_processor.blt_from_dx);
		  $display("clr_ctrl: ",_sk.my_processor._dx_reg.clr_ctrl);
		  $display("clear: ",_sk.my_processor._fd_reg.clear);
		  $display("branch_pc: ",_sk.my_processor.branch_pc);
		  
		  $display("Current Value: %b ",_sk.my_processor.q_imem);
		  $display("fd_out: %b ",_sk.my_processor.fd_out);
		  
		  
		  $display("ctrl_writeEnable: ",_sk.my_processor.ctrl_writeEnable);
		  $display("ctrl_writeReg: ",_sk.my_processor.ctrl_writeReg);
		  $display("ctrl_readRegA: ",_sk.my_processor.ctrl_readRegA);
		  $display("ctrl_readRegB: ",_sk.my_processor.ctrl_readRegB);
		  $display("data_readRegA: ",_sk.my_processor.data_readRegA);
		  $display("data_readRegB: ",_sk.my_processor.data_readRegB);
		  $display("dataA_from_dx: ",_sk.my_processor.dataA_from_dx);
		  $display("dataB_from_dx: ",_sk.my_processor.dataB_from_dx);
		  
		  
		  $display("subWire: ",_sk.my_processor._mainAlu.subWire);
		  
		  
		  $display("bypass_A: ",_sk.my_processor.bypass_A);
		  $display("bypass_B: ",_sk.my_processor.bypass_B);
		  $display("register1 value: ",_sk.my_regfile.rout1);
		  $display("register2 value: ",_sk.my_regfile.rout2);
		  $display("register3 value: ",_sk.my_regfile.rout3);
		  $display("register4 value: ",_sk.my_regfile.rout4);
		  $display("register5 value: ",_sk.my_regfile.rout5);
		  $display("register6 value: ",_sk.my_regfile.rout6);
		  
		  $display("aluOutput: ",_sk.my_processor.aluOutput," = (A)", _sk.my_processor.aluDataAsource," + (B)",_sk.my_processor.aluDataBsource);
		  $display("aluSrc: ",_sk.my_processor.ALUSrc);
		  $display("aluSrc_from_dx: ",_sk.my_processor.ALUSrc_from_dx);
		  $display("alu B inverted: ",_sk.my_processor._mainAlu.notB);
		  $display("aluOut_from_xm: ",_sk.my_processor.aluOut_from_xm);
		  
		  $display("aluOut_from_mw: ",_sk.my_processor.aluOut_from_mw);
		  $display("writeback_data: ",_sk.my_processor.writeback_data);
		  $display("ctrl_dataIn: ",_sk.my_processor.ctrl_dataIn);
		  
		  $display("data_writeReg: ",_sk.my_processor.data_writeReg);
		  
		  $display("Imm: ",_sk.my_processor.imm_from_dx);
		  $display("takeBranch: ",_sk.my_processor.takeBranch);
		  $display("stall_dx: ",_sk.my_processor.stall_dx);
		  
		  $display("regDst_from_xm: ",_sk.my_processor.regDst_from_xm);
		  $display("regDst_from_mw: ",_sk.my_processor.regDst_from_mw);
		  
		  
		  $display("MemWrite: ",_sk.my_processor.MemWrite);
		  $display("MemWrite_from_dx: ",_sk.my_processor.MemWrite_from_dx);
		  $display("MemWrite_from_xm: ",_sk.my_processor.MemWrite_from_xm);
		  $display("MemToReg_from_mw: ",_sk.my_processor.MemToReg_from_mw);
		  $display("data: ",_sk.my_processor.data);
		  $display("q_dmem: ",_sk.my_processor.q_dmem);
		  
		  
		  
		  $display("ctrl_readRegA_from_dx: ",_sk.my_processor.ctrl_readRegA_from_dx);  
		  $display("ctrl_readRegB_from_dx: ",_sk.my_processor.ctrl_readRegB_from_dx);
		  
		  @(negedge clock); 
			
		  end// wait until next negative edge of clock(
		     // wait until next negative edge of clock(
//		  $display("ALUSrc: ",_sk.my_processor.ALUSrc);
//		  $display("aluDataBSource: ",_sk.my_processor.aluDataBsource);
//		  $display("ALUSrc_from_dx: ",_sk.my_processor.ALUSrc_from_dx);
//		  $display("ALUOp_In: %b",_sk.my_processor.ctrl.opCode);
//		  $display("fd_out: %b",_sk.my_processor.fd_out);
//		  $display("addi.high: ",_sk.my_processor.ctrl.addi);
//		  $display("Imm: ",_sk.my_processor.imm_from_dx);
//		  $display("bypass_B: ",_sk.my_processor.bypass_B);
//		  $display("aluDataBsource_noBypass: ",_sk.my_processor.aluDataBsource_noBypass);
//		  $display("aluOut_from_xm: ",_sk.my_processor.aluOut_from_xm);
//		  $display("data_writeReg: ",_sk.my_processor.data_writeReg);
//		  $display("dataB_from_dx: ",_sk.my_processor.dataB_from_dx);
//		  
//		  $display("ctrl_readRegA_from_dx: ",_sk.my_processor.ctrl_readRegA_from_dx);
//		  
//		  $display("regDst_from_mw: ",_sk.my_processor.regDst_from_mw);
//		  
//		  $display("regDst_from_xm: ",_sk.my_processor.regDst_from_xm);
//		  $display("MemToReg_from_mw: ",_sk.my_processor.MemToReg_from_mw);
//		  $display("data_from_mw: %b",_sk.my_processor.data_from_mw);
//		  $display("aluOut_from_mw: %b",_sk.my_processor.aluOut_from_mw);
//		  $display("RegWrite_from_mw: ",_sk.my_processor.RegWrite_from_mw);
//		  $display("regDst_from_mw: %b",_sk.my_processor.regDst_from_mw);
//		  $display("q_dmem: ",_sk.my_processor.q_dmem);
//		  $display("aluOut_from_xm: ",_sk.my_processor.aluOut_from_xm);
//		  $display("regDst_from_xm: ",_sk.my_processor.regDst_from_xm);
//		  $display("regDst_from_dx: ",_sk.my_processor.regDst_from_dx);
//		  $display("regDst_from_mw: ",_sk.my_processor.regDst_from_mw);
//		  $display("MemToReg_from_xm: ",_sk.my_processor.MemToReg_from_xm);
//		  $display("RegWrite_from_xm: ",_sk.my_processor.RegWrite_from_xm);
		  
		  
	
		  
    end



    // Clock generator
    always
         #10     clock = ~clock;    // toggle

    
endmodule
