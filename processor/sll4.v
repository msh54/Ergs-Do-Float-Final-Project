module sll4(out,in);
	input[31:0] in;
	output[31:0] out;
	
	genvar c;
	
	generate
		for (c = 4; c <= 31; c = c + 1) begin: loop1
			assign out[c] = in[c-4];
		end
	endgenerate
	
	genvar d;
	
	generate
		for (d = 0; d < 4; d = d + 1) begin: loop2
			assign out[d] = 1'b0;
		end
	endgenerate
	

endmodule
