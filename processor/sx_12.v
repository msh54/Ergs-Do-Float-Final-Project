module sx_12(out,in);
	output[31:0] out;
	input[11:0] in;
	
	genvar c;
	generate
		for (c = 31; c >= 12; c = c - 1) begin: loop1
			 assign out[c] = in[11];
		end
	endgenerate
	
	generate
		for (c = 11; c >= 0; c = c - 1) begin: loop2
			 assign out[c] = in[c];
		end
	endgenerate
	
endmodule
