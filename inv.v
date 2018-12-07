module inv(out,in);
	output[31:0] out;
	input[31:0] in;
	
	genvar c;
	generate
		for (c = 1; c <= 31; c = c + 1) begin: loop1	
			assign out[c] = 1'b0;
		end
	endgenerate
	
	assign out[0] = 1'b1;
	
	
endmodule
