module output_ratio(ratio,tens_hex,ones_hex,clock);
	input clock;
	input [31:0] ratio;
	output [6:0] tens_hex,ones_hex;
	
	wire[3:0] tens;
	wire[3:0] ones;
	
	reg[6:0] ones_out,tens_out;
	
	wire[31:0] test_tens;
	assign tens = ratio/32'd10;
	assign ones = ratio%32'd10;
	
	always @ (posedge clock)
	begin
		case(tens)
			4'd0 : tens_out <= 7'b1000000;
			4'd1 : tens_out <= 7'b1111001;
			4'd2 : tens_out <= 7'b0100100;
			4'd3 : tens_out <= 7'b0110000;
			4'd4 : tens_out <= 7'b0011001;
			4'd5 : tens_out <= 7'b0010010;
			4'd6 : tens_out <= 7'b0000010;
			4'd7 : tens_out <= 7'b1111000;
			4'd8 : tens_out <= 7'b0000000;
			4'd9 : tens_out <= 7'b0010000;
		endcase
		
		case(ones)
			4'd0 : ones_out <= 7'b1000000;
			4'd1 : ones_out <= 7'b1111001;
			4'd2 : ones_out <= 7'b0100100;
			4'd3 : ones_out <= 7'b0110000;
			4'd4 : ones_out <= 7'b0011001;
			4'd5 : ones_out <= 7'b0010010;
			4'd6 : ones_out <= 7'b0000010;
			4'd7 : ones_out <= 7'b1111000;
			4'd8 : ones_out <= 7'b0000000;
			4'd9 : ones_out <= 7'b0010000;
		endcase
		
	end
	
	assign tens_hex = tens_out;
	assign ones_hex = ones_out;
	
endmodule