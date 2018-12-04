module sll1(out,in);
	input[31:0] in;
	output[31:0] out;
	
	genvar c;
	
	generate
		for (c = 1; c <= 31; c = c + 1) begin: loop1
			assign out[c] = in[c-1];
		end
	endgenerate
	
	assign out[0] = 1'b0;
	

endmodule
