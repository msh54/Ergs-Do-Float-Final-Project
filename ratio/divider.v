module divider(valueA,valueB,out);
	input[31:0] valueA,valueB;
	output [31:0] out;
	
	
	real [31:0] floatA,floatB;
	
	floatA = $itor(valueA);
	floatB = $itor(valueB);
	
	assign out = (valueB != 32'b0) ? floatA/floatB : 32'b0;
	
endmodule
