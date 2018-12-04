module mux_2to1_5(sel,out,data1,data2);
	// 1 = data1, 0 = data2
	input[4:0] data1, data2;
	input sel;
	output[4:0] out;
	
	genvar c;
	generate
		for (c = 0; c <= 4; c = c + 1) begin: loop1
			wire t0,t1,t2;
			nand _notA(t0,sel,sel);
			nand _nand1(t1,t0,data2[c]);
			nand _nand2(t2,sel,data1[c]);
			nand _nand3(out[c],t1,t2);
		end
	endgenerate

endmodule
