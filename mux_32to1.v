module mux_32to1(sel,out,data0,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,data24,data25,data26,data27,data28,data29,data30,data31);

input [4:0]sel;
input [31:0]data0,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,data24,data25,data26,data27,data28,data29,data30,data31;
output [31:0] out;

wire [31:0] mw0;
mux_4to1 mux0(.sel(sel[1:0]),.out(mw0),.mdata0(data0),.mdata1(data1),.mdata2(data2),.mdata3(data3));
wire [31:0] mw1;
mux_4to1 mux1(.sel(sel[1:0]),.out(mw1),.mdata0(data4),.mdata1(data5),.mdata2(data6),.mdata3(data7));
wire [31:0] mw2;
mux_4to1 mux2(.sel(sel[1:0]),.out(mw2),.mdata0(data8),.mdata1(data9),.mdata2(data10),.mdata3(data11));
wire [31:0] mw3;
mux_4to1 mux3(.sel(sel[1:0]),.out(mw3),.mdata0(data12),.mdata1(data13),.mdata2(data14),.mdata3(data15));
wire [31:0] mw4;
mux_4to1 mux4(.sel(sel[1:0]),.out(mw4),.mdata0(data16),.mdata1(data17),.mdata2(data18),.mdata3(data19));
wire [31:0] mw5;
mux_4to1 mux5(.sel(sel[1:0]),.out(mw5),.mdata0(data20),.mdata1(data21),.mdata2(data22),.mdata3(data23));
wire [31:0] mw6;
mux_4to1 mux6(.sel(sel[1:0]),.out(mw6),.mdata0(data24),.mdata1(data25),.mdata2(data26),.mdata3(data27));
wire [31:0] mw7;
mux_4to1 mux7(.sel(sel[1:0]),.out(mw7),.mdata0(data28),.mdata1(data29),.mdata2(data30),.mdata3(data31));

	wire [31:0] bigw0;
	mux_4to1 _bmux0(sel[3:2],bigw0,mw0,mw1,mw2,mw3);
	
	wire [31:0] bigw1;
	mux_4to1 _bmux1(sel[3:2],bigw1,mw4,mw5,mw6,mw7);
	
	
	assign out = sel[4] ? bigw1 : bigw0;

endmodule
