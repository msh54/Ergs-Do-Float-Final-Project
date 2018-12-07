module clock_divider(clock,clk);
	input clk;
	output clock;
	
	reg clock;
	reg[31:0] count;
	
	initial
	begin
		count <= 32'b0;
	end
	
	always @(posedge clk)
	begin
		count <= count + 1;
		if (count >= 32'b100000000000) begin
			count <= 0;
			clock <= ~clock;
		end
	end
endmodule
