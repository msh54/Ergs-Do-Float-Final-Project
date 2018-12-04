module sll2(out,in);
	input[31:0] in;
	output[31:0] out;
	
	genvar c;
	
	generate
		for (c = 2; c <= 31; c = c + 1) begin: loop1
			assign out[c] = in[c-2];
		end
	endgenerate
	
	genvar d;
	
	generate
		for (d = 0; d < 2; d = d + 1) begin: loop2
			assign out[d] = 1'b0;
		end
	endgenerate
	

endmodule