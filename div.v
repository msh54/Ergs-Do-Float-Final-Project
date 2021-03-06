module div(dataA,dataB,out);
input [31:0] dataA, dataB;
output [31:0] out;

wire [31:0] numerator;

assign numerator = dataA * 32'd100;

assign out = (dataB != 32'b0) ? numerator/dataB : 32'b0;

endmodule
