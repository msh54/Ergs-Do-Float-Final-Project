module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;
	
	wire [31:0] en;
	
	decoder _selectReg(.select(ctrl_writeReg),.chosen(en));

wire write1;
wire [31:0]rout1;
and _a1(write1,en[1],ctrl_writeEnable);
register _reg1(.clk(clock), .in_en(write1),.data_in(data_writeReg),.data_out(rout1), .clr(ctrl_reset));
wire write2;
wire [31:0]rout2;
and _a2(write2,en[2],ctrl_writeEnable);
register _reg2(.clk(clock), .in_en(write2),.data_in(data_writeReg),.data_out(rout2), .clr(ctrl_reset));
wire write3;
wire [31:0]rout3;
and _a3(write3,en[3],ctrl_writeEnable);
register _reg3(.clk(clock), .in_en(write3),.data_in(data_writeReg),.data_out(rout3), .clr(ctrl_reset));
wire write4;
wire [31:0]rout4;
and _a4(write4,en[4],ctrl_writeEnable);
register _reg4(.clk(clock), .in_en(write4),.data_in(data_writeReg),.data_out(rout4), .clr(ctrl_reset));
wire write5;
wire [31:0]rout5;
and _a5(write5,en[5],ctrl_writeEnable);
register _reg5(.clk(clock), .in_en(write5),.data_in(data_writeReg),.data_out(rout5), .clr(ctrl_reset));
wire write6;
wire [31:0]rout6;
and _a6(write6,en[6],ctrl_writeEnable);
register _reg6(.clk(clock), .in_en(write6),.data_in(data_writeReg),.data_out(rout6), .clr(ctrl_reset));
wire write7;
wire [31:0]rout7;
and _a7(write7,en[7],ctrl_writeEnable);
register _reg7(.clk(clock), .in_en(write7),.data_in(data_writeReg),.data_out(rout7), .clr(ctrl_reset));
wire write8;
wire [31:0]rout8;
and _a8(write8,en[8],ctrl_writeEnable);
register _reg8(.clk(clock), .in_en(write8),.data_in(data_writeReg),.data_out(rout8), .clr(ctrl_reset));
wire write9;
wire [31:0]rout9;
and _a9(write9,en[9],ctrl_writeEnable);
register _reg9(.clk(clock), .in_en(write9),.data_in(data_writeReg),.data_out(rout9), .clr(ctrl_reset));
wire write10;
wire [31:0]rout10;
and _a10(write10,en[10],ctrl_writeEnable);
register _reg10(.clk(clock), .in_en(write10),.data_in(data_writeReg),.data_out(rout10), .clr(ctrl_reset));
wire write11;
wire [31:0]rout11;
and _a11(write11,en[11],ctrl_writeEnable);
register _reg11(.clk(clock), .in_en(write11),.data_in(data_writeReg),.data_out(rout11), .clr(ctrl_reset));
wire write12;
wire [31:0]rout12;
and _a12(write12,en[12],ctrl_writeEnable);
register _reg12(.clk(clock), .in_en(write12),.data_in(data_writeReg),.data_out(rout12), .clr(ctrl_reset));
wire write13;
wire [31:0]rout13;
and _a13(write13,en[13],ctrl_writeEnable);
register _reg13(.clk(clock), .in_en(write13),.data_in(data_writeReg),.data_out(rout13), .clr(ctrl_reset));
wire write14;
wire [31:0]rout14;
and _a14(write14,en[14],ctrl_writeEnable);
register _reg14(.clk(clock), .in_en(write14),.data_in(data_writeReg),.data_out(rout14), .clr(ctrl_reset));
wire write15;
wire [31:0]rout15;
and _a15(write15,en[15],ctrl_writeEnable);
register _reg15(.clk(clock), .in_en(write15),.data_in(data_writeReg),.data_out(rout15), .clr(ctrl_reset));
wire write16;
wire [31:0]rout16;
and _a16(write16,en[16],ctrl_writeEnable);
register _reg16(.clk(clock), .in_en(write16),.data_in(data_writeReg),.data_out(rout16), .clr(ctrl_reset));
wire write17;
wire [31:0]rout17;
and _a17(write17,en[17],ctrl_writeEnable);
register _reg17(.clk(clock), .in_en(write17),.data_in(data_writeReg),.data_out(rout17), .clr(ctrl_reset));
wire write18;
wire [31:0]rout18;
and _a18(write18,en[18],ctrl_writeEnable);
register _reg18(.clk(clock), .in_en(write18),.data_in(data_writeReg),.data_out(rout18), .clr(ctrl_reset));
wire write19;
wire [31:0]rout19;
and _a19(write19,en[19],ctrl_writeEnable);
register _reg19(.clk(clock), .in_en(write19),.data_in(data_writeReg),.data_out(rout19), .clr(ctrl_reset));
wire write20;
wire [31:0]rout20;
and _a20(write20,en[20],ctrl_writeEnable);
register _reg20(.clk(clock), .in_en(write20),.data_in(data_writeReg),.data_out(rout20), .clr(ctrl_reset));
wire write21;
wire [31:0]rout21;
and _a21(write21,en[21],ctrl_writeEnable);
register _reg21(.clk(clock), .in_en(write21),.data_in(data_writeReg),.data_out(rout21), .clr(ctrl_reset));
wire write22;
wire [31:0]rout22;
and _a22(write22,en[22],ctrl_writeEnable);
register _reg22(.clk(clock), .in_en(write22),.data_in(data_writeReg),.data_out(rout22), .clr(ctrl_reset));
wire write23;
wire [31:0]rout23;
and _a23(write23,en[23],ctrl_writeEnable);
register _reg23(.clk(clock), .in_en(write23),.data_in(data_writeReg),.data_out(rout23), .clr(ctrl_reset));
wire write24;
wire [31:0]rout24;
and _a24(write24,en[24],ctrl_writeEnable);
register _reg24(.clk(clock), .in_en(write24),.data_in(data_writeReg),.data_out(rout24), .clr(ctrl_reset));
wire write25;
wire [31:0]rout25;
and _a25(write25,en[25],ctrl_writeEnable);
register _reg25(.clk(clock), .in_en(write25),.data_in(data_writeReg),.data_out(rout25), .clr(ctrl_reset));
wire write26;
wire [31:0]rout26;
and _a26(write26,en[26],ctrl_writeEnable);
register _reg26(.clk(clock), .in_en(write26),.data_in(data_writeReg),.data_out(rout26), .clr(ctrl_reset));
wire write27;
wire [31:0]rout27;
and _a27(write27,en[27],ctrl_writeEnable);
register _reg27(.clk(clock), .in_en(write27),.data_in(data_writeReg),.data_out(rout27), .clr(ctrl_reset));
wire write28;
wire [31:0]rout28;
and _a28(write28,en[28],ctrl_writeEnable);
register _reg28(.clk(clock), .in_en(write28),.data_in(data_writeReg),.data_out(rout28), .clr(ctrl_reset));
wire write29;
wire [31:0]rout29;
and _a29(write29,en[29],ctrl_writeEnable);
register _reg29(.clk(clock), .in_en(write29),.data_in(data_writeReg),.data_out(rout29), .clr(ctrl_reset));
wire write30;
wire [31:0]rout30;
and _a30(write30,en[30],ctrl_writeEnable);
register _reg30(.clk(clock), .in_en(write30),.data_in(data_writeReg),.data_out(rout30), .clr(ctrl_reset));
wire write31;
wire [31:0]rout31;
and _a31(write31,en[31],ctrl_writeEnable);
register _reg31(.clk(clock), .in_en(write31),.data_in(data_writeReg),.data_out(rout31), .clr(ctrl_reset));


	mux_32to1 regAmux(ctrl_readRegA,data_readRegA,32'b0,rout1,rout2,rout3,rout4,rout5,rout6,rout7,rout8,rout9,rout10,rout11,rout12,rout13,rout14,rout15,rout16,rout17,rout18,rout19,rout20,rout21,rout22,rout23,rout24,rout25,rout26,rout27,rout28,rout29,rout30,rout31);
	//continue to 32
	mux_32to1 regBmux(ctrl_readRegB,data_readRegB,32'b0,rout1,rout2,rout3,rout4,rout5,rout6,rout7,rout8,rout9,rout10,rout11,rout12,rout13,rout14,rout15,rout16,rout17,rout18,rout19,rout20,rout21,rout22,rout23,rout24,rout25,rout26,rout27,rout28,rout29,rout30,rout31);
	//continue to 32
	
endmodule
