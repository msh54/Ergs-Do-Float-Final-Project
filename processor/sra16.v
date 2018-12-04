module sra16(out,in);
	input[31:0] in;
	output[31:0] out;
	
	genvar c;
	
	generate
		for (c = 16; c <= 31; c = c + 1) begin: loop1
			assign out[c-16] = in[c];
		end
	endgenerate
	
	genvar d;
	
	generate
		for (d = 16; d < 32; d = d + 1) begin: loop2
			assign out[d] = in[31];
		end
	endgenerate
	

endmodule
