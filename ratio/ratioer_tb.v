`timescale 1 ns / 100 ps
module ratioer_tb();

	reg count_clock, start_recovery, start_drive;
	wire [31:0] ratio;
	
	ratioer rt(ratio,start_drive,start_recovery,count_clock);
	
	initial
	begin
		$display(" << Starting Testing >> ");
		start_recovery <= 0;
		start_drive <= 0;
		count_clock <= 0;
		
		
		$display("######## STARTING DRIVE #########");
		@(negedge count_clock);
		start_drive <= 1;
		@(negedge count_clock);
		start_drive <= 0;
		
		repeat(25)
		begin
			@(negedge count_clock);
			$display("---------------------");
			$display("ratio: ", ratio);
			$display("onDrive: ", rt._counter.onDrive);
			$display("recovery_count: ", rt._counter.recovery_count);
			$display("drive_count: ", rt._counter.drive_count);
		end
		
		
		$display("######## STARTING RECOVERY #########");
		@(negedge count_clock);
		start_recovery <= 1;
		@(negedge count_clock);
		start_recovery <= 0;
		
		repeat(25)
		begin
			@(negedge count_clock);
			$display("---------------------");
			$display("ratio: ", ratio);
			$display("onDrive: ", rt._counter.onDrive);
			$display("recovery_count: ", rt._counter.recovery_count);
			$display("drive_count: ", rt._counter.drive_count);
		end
		
		$display("FINISHED");
	end
	
	always
		#10 count_clock = ~count_clock;
	
	
	

endmodule

