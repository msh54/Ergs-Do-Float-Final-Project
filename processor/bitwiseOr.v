module bitwiseOr(out,dataA,dataB);
	input [31:0] dataA,dataB;
	output [31:0] out;
	
	genvar c;
	
	generate
		for (c = 0; c <= 31; c = c+1) begin: loop1
			or _or(out[c],dataA[c],dataB[c]);
		end
	endgenerate
	
endmodule
