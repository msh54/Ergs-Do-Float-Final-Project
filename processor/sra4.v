module sra4(out,in);
	input[31:0] in;
	output[31:0] out;
	
	genvar c;
	
	generate
		for (c = 4; c <= 31; c = c + 1) begin: loop1
			assign out[c-4] = in[c];
		end
	endgenerate
	
	genvar d;
	
	generate
		for (d = 28; d < 32; d = d + 1) begin: loop2
			assign out[d] = in[31];
		end
	endgenerate
	

endmodule
