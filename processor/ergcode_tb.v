// ---------- SAMPLE TEST BENCH ----------
`timescale 1 ns / 100 ps
module ergcode_tb();
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
		  
		  repeat(9000)
		  begin
				// mux_2to1 _aluSRC(ALUSrc_from_dx,aluDataBsource_noBypass,imm_from_dx,dataB_from_dx);
		  $display("-----------------------------");
		  $display("Current Address: ",_sk.my_processor.address_imem);
		  $display("register1 value: ",_sk.my_regfile.rout1);
		  $display("register2 value: ",_sk.my_regfile.rout2);
		  $display("register3 value: ",_sk.my_regfile.rout3);
		  $display("register4 value: ",_sk.my_regfile.rout4);
		  $display("register5 value: ",_sk.my_regfile.rout5);
		  $display("register6 value: ",_sk.my_regfile.rout6);
		  $display("register7 value: ",_sk.my_regfile.rout7);
		  $display("register8 value: ",_sk.my_regfile.rout8);
		  $display("register9 value: ",_sk.my_regfile.rout9);
		  $display("register10 value: ",_sk.my_regfile.rout10);
		  $display("register11 value: ",_sk.my_regfile.rout11);
		  $display("register12 value: ",_sk.my_regfile.rout12);
		  $display("register13 value: ",_sk.my_regfile.rout13);
		  $display("register14 value: ",_sk.my_regfile.rout14);
		  $display("register15 value: ",_sk.my_regfile.rout15);
		  $display("register16 value: ",_sk.my_regfile.rout16);
		  $display("register17 value: ",_sk.my_regfile.rout17);
		  $display("register18 value: ",_sk.my_regfile.rout18);
		  $display("register19 value: ",_sk.my_regfile.rout19);
		  $display("register20 value: ",_sk.my_regfile.rout20);
		  $display("register21 value: ",_sk.my_regfile.rout21);
		  $display("register22 value: ",_sk.my_regfile.rout22);
		  $display("register23 value: ",_sk.my_regfile.rout23);
		  $display("register24 value: ",_sk.my_regfile.rout24);
		  $display("register25 value: ",_sk.my_regfile.rout25);
		  $display("register26 value: ",_sk.my_regfile.rout26);
		  $display("register27 value: ",_sk.my_regfile.rout27);
		  $display("register28 value: ",_sk.my_regfile.rout28);
		  $display("register29 value: ",_sk.my_regfile.rout29);
		  
		  
		  
		  @(negedge clock); 
			
		  end
		  
    end



    // Clock generator
    always
         #10     clock = ~clock;    // toggle

    
endmodule
