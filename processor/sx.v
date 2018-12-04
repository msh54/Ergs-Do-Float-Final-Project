module sx(out,in);
	output[31:0] out;
	input[16:0] in;
	
	genvar c;
	generate
		for (c = 31; c >= 17; c = c - 1) begin: loop1
			 assign out[c] = in[16];
		end
	endgenerate
	
	generate
		for (c = 16; c >= 0; c = c - 1) begin: loop2
			 assign out[c] = in[c];
		end
	endgenerate
	
endmodule
	