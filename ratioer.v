
module ratioer(ratio,start_drive,start_recovery,count_clock);
	input start_drive, start_recovery,count_clock;
	output[31:0] ratio;
	
	reg start_drive_reg, start_recovery_reg,onDrive, onRecovery;
	
	initial
	begin
		start_drive_reg <= 1'b0;
		start_recovery_reg <= 1'b0;
		onDrive <= 1'b0;
		onRecovery <= 1'b0;
	end
	
	reg[31:0] recovery_count,drive_count,ratio,numerator;
	
	always @(negedge count_clock)
	begin
		if(start_drive == 1'b0 && start_drive_reg == 1'b1) // We want the negative edge of start_drive
		begin
			if(onRecovery)
			begin
				numerator = recovery_count * 32'd10;
				ratio = (drive_count != 32'b0) ? numerator/drive_count : 32'b0;
				
				if(ratio > 32'd99)
				begin
					ratio = 32'd99;
				end
				
				drive_count = 32'b0;
				recovery_count = 32'b0;
				
				onRecovery = 1'b0;
			end
			onDrive = 1'b1;
		end
		else if(start_recovery && start_recovery_reg == 1'b0) // We want the positive edge of start_recovery
		begin
			onDrive = 1'b0;
			onRecovery = 1'b1;
		end
		
		start_recovery_reg = start_recovery;
		start_drive_reg = start_drive;
		
		if(onDrive == 1'b1)
		begin
			drive_count = drive_count + 1;
		end
		
		if(onRecovery == 1'b1)
		begin
			recovery_count = recovery_count + 1;
		end
		
	end

endmodule

/*
Have a counter adding at a certain rate, either incrementing drive or recovery

every time start_drive is high, on the positive edge, calculate the ratio


*/ 