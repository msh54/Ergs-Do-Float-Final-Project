module divider(valueA,valueB,out);
	input[31:0] valueA,valueB;
	output [31:0] out;
	
	wire [31:0] numerator;
	
	assign numerator = valueA * 32'd10;
	
	assign out = (valueB != 32'b0) ? numerator/valueB : 32'b0;
	
endmodule
