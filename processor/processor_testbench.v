// ---------- SAMPLE TEST BENCH ----------
`timescale 1 ns / 100 ps
module processor_testbench();
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
		  
        @(negedge clock);    // wait until next negative edge of clock
		  
		  
		  // mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource_noBypass,imm_from_dx,dataB_from_dx);
		  $display(_sk.my_Processor.aluSourceB);
		  $display(_sk.my_Processor.aluDataBsource_noBypass);
		  $display(_sk.my_Processor.imm_from_dx);
		  $display(_sk.my_Processor.dataB_from_dx);
		  
		   @(negedge clock);    // wait until next negative edge of clock
		  
		  
		  // mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource_noBypass,imm_from_dx,dataB_from_dx);
		  $display(_sk.my_Processor.aluSourceB);
		  $display(_sk.my_Processor.aluDataBsource_noBypass);
		  $display(_sk.my_Processor.imm_from_dx);
		  $display(_sk.my_Processor.dataB_from_dx);
		  
		   @(negedge clock);    // wait until next negative edge of clock
		  
		  
		  // mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource_noBypass,imm_from_dx,dataB_from_dx);
		  $display(_sk.my_Processor.aluSourceB);
		  $display(_sk.my_Processor.aluDataBsource_noBypass);
		  $display(_sk.my_Processor.imm_from_dx);
		  $display(_sk.my_Processor.dataB_from_dx);
		  
		   @(negedge clock);    // wait until next negative edge of clock
		  
		  
		  // mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource_noBypass,imm_from_dx,dataB_from_dx);
		  $display(_sk.my_Processor.aluSourceB);
		  $display(_sk.my_Processor.aluDataBsource_noBypass);
		  $display(_sk.my_Processor.imm_from_dx);
		  $display(_sk.my_Processor.dataB_from_dx);


  
    end



    // Clock generator
    always
         #10     clock = ~clock;    // toggle

    
endmodule
