module inverter(out,in);
	input [31:0] in;
	output [31:0] out;
	
	wire[31:0] flipped;
	genvar c;
	generate
		for (c = 0; c <= 31; c = c + 1) begin: loop1	
			not _not(flipped[c],in[c]);
		end
	endgenerate
	
	
	wire ovf;
	CLAadder _add(flipped,32'd1,out,ovf);
	
	
endmodule
