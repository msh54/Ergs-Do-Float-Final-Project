module mux_8to1(sel,out,data0,data1,data2,data3,data4,data5,data6,data7);
	input[31:0] data0,data1,data2,data3,data4,data5,data6,data7;
	input[2:0] sel;
	output[31:0] out;
	
	wire[31:0] mux1_result,mux2_result;
	
	mux_4to1 mux1(sel[1:0],mux1_result,data0,data1,data2,data3);
	mux_4to1 mux2(sel[1:0],mux2_result,data4,data5,data6,data7);
	
	mux_2to1 muxFinal(sel[2],out,mux1_result,mux2_result);
	
endmodule
