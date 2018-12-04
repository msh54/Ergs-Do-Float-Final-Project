module rusher(start_count1,start_count2,end_count,start_recovery, start_ref1, start_ref2, end_ref1,rush,end_recovery,clk);
input  clk,start_recovery, start_ref1, start_ref2, end_ref1, end_recovery;
output[31:0] start_count1,start_count2,end_count;
output[31:0] rush;

reg start_recovery_reg, start_ref1_reg, start_ref2_reg, end_ref1_reg, end_recovery_reg;
reg sc1_enable, sc2_enable, ec_enable;
integer average;

initial
begin
	sc1_enable = 1'b0;
	sc2_enable = 1'b0;
	ec_enable = 1'b0;
end

always @ (negedge clk)
begin
	if(start_recovery && start_recovery != start_recovery_reg)
	begin
		sc1_enable = 1'b1;
		sc2_enable = 1'b0;
		ec_enable = 1'b0;
	end
	else if(start_ref1 && start_ref1 != start_ref1_reg)
	begin
		sc1_enable = 1'b0;
		sc2_enable = 1'b1;
		ec_enable = 1'b0;
	end
	else if(start_ref2 && start_ref2 != start_ref2_reg)
	begin
		sc1_enable = 1'b0;
		sc2_enable = 1'b0;
		ec_enable = 1'b0;
	end
	else if(end_ref1 && end_ref1 != end_ref1_reg)
	begin
		sc1_enable = 1'b0;
		sc2_enable = 1'b0;
		ec_enable = 1'b1;
	end
	else if(end_recovery && end_recovery != end_recovery_reg)
	begin
		sc1_enable = 1'b0;
		sc2_enable = 1'b0;
		ec_enable = 1'b0;
		
		assign average = start_count1 + start_count2 / 2;
		assign rush = (end_count != 32'b0) ? average/end_count : 32'b0;
		
		assign start_count1 = 0;
		assign start_count2 = 0;
	end
	
	if(sc1_enable)
	begin
		assign start_count1 = start_count1 + 1;
	end
	
	if(sc2_enable)
	begin
		assign start_count2 = start_count2 + 1;
	end
	
	if(ec_enable)
	begin
		assign ec_enable = ec_enable + 1;
	end
	
	
	
	
	
end


endmodule
