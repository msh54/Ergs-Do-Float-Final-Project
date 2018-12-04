module sll(shamt,out,in);
	input[4:0] shamt;
	input[31:0] in;
	output[31:0] out;
	
	
	wire[31:0] mw_16,mw_8,mw_4,mw_2,w_16,w_8,w_4,w_2,w_1;
	
	sll16 _s16(w_16,in);
	sll8 _s8(w_8,mw_16);
	sll4 _s4(w_4,mw_8);
	sll2 _s2(w_2,mw_4);
	sll1 _s1(w_1,mw_2);
	
	
	mux_2to1 _m16(shamt[4],mw_16,w_16,in);
	mux_2to1 _m8(shamt[3],mw_8,w_8,mw_16);
	mux_2to1 _m4(shamt[2],mw_4,w_4,mw_8);
	mux_2to1 _m2(shamt[1],mw_2,w_2,mw_4);
	mux_2to1 _m1(shamt[0],out,w_1,mw_2);
	
	
	
endmodule
