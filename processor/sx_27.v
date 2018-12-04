module sx_27(out,in);
	output[31:0] out;
	input[26:0] in;
	
	genvar c;
	generate
		for (c = 31; c >= 27; c = c - 1) begin: loop1
			 assign out[c] = in[26];
		end
	endgenerate
	
	generate
		for (c = 26; c >= 0; c = c - 1) begin: loop2
			 assign out[c] = in[c];
		end
	endgenerate
	
endmodule
