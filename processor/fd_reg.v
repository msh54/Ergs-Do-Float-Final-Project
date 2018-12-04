//fd_reg _fd_reg(out: fd_out, pc_output_fd, input: q_imem,pc_postAdd,.flush(takeBranch),control: .dsble(stall))
module fd_reg(fd_out,pc_output_fd,q_imem,pc_postAdd,flush,dsble,clock,reset);
	output[31:0] fd_out;
	output[11:0] pc_output_fd;
	input[31:0] q_imem;
	input[11:0] pc_postAdd;
	
	input flush, dsble;
	input clock, reset;
	
	wire enable;
	not _not(enable,dsble);
	
	wire clear;
	or _or(clear,flush,reset);
	
	genvar c;
	generate
		for (c = 0; c <= 11; c = c + 1) begin: loop1
			dffe_ref dffe_c1(.q(pc_output_fd[c]), .d(pc_postAdd[c]), .clk(clock), .en(enable), .clr(clear));
		end
	endgenerate
	
	generate
		for (c = 0; c <= 31; c = c + 1) begin: loop2
			dffe_ref dffe_c2(.q(fd_out[c]), .d(q_imem[c]), .clk(clock), .en(enable), .clr(clear));
		end
	endgenerate

	
endmodule
