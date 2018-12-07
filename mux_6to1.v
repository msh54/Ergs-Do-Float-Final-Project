module mux_6to1(sel,out,data0,data1,data2,data3,data4,data5);
	input[31:0] data0,data1,data2,data3,data4,data5;
	output[31:0] out;
	input[2:0] sel;
	
	wire n2,n1,n0;
	nand _n0(n0,sel[0],sel[0]);
	nand _n1(n1,sel[1],sel[1]);
	nand _n2(n2,sel[2],sel[2]);
	
	genvar c;
	generate
		for(c = 0; c <= 31; c = c + 1) begin: loop1
			wire w0,w1,w2,w3,w4,w5;
			nand _w0(w0,data0[c],n2,n1,n0);
			nand _w1(w1,data1[c],n2,n1,sel[0]);
			nand _w2(w2,data2[c],n2,sel[1],n0);
			nand _w3(w3,data3[c],n2,sel[1],sel[0]);
			nand _w4(w4,data4[c],sel[2],n1,n0);
			nand _w5(w5,data5[c],sel[2],n1,sel[0]);
			
			nand _final(out[c],w0,w1,w2,w3,w4,w5);
			
		end
	endgenerate
	
endmodule
