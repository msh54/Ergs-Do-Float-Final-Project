
module register(clk, in_en, data_in, data_out, clr);
	input clk, in_en, clr;
	input [31:0] data_in;
	output [31:0] data_out;
	
	genvar c;
	generate
		for (c = 0; c <= 31; c = c + 1) begin: loop1
			dffe_ref dffe_c(.q(data_out[c]), .d(data_in[c]), .clk(clk), .en(in_en), .clr(clr));
		end
	endgenerate
	
endmodule
