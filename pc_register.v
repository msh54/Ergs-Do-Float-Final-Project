module pc_register(address_imem, pc_input,dsble,clock,reset);
	output[11:0] address_imem;
	input [11:0] pc_input;
	input dsble;
	input clock, reset;
	
	wire enable;
	not _not(enable,dsble);
	
	genvar c;
	generate
		for (c = 0; c <= 11; c = c + 1) begin: loop1
			dffe_ref dffe_c(.q(address_imem[c]), .d(pc_input[c]), .clk(clock), .en(enable), .clr(reset));
		end
	endgenerate

	
endmodule
//pc_register _pc(out: address_imem, input: pc_input,control: .disable(stall)) // pc_input referenced in Mem stage
		
