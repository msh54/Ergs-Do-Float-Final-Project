module add1(out,in);
	input[11:0] in;
	output[11:0] out;
	
	wire ovf;
	CLAadder_12 _add(in,12'b1,out,ovf);

endmodule
// add1 _increment(pc_postAdd,address_imem);