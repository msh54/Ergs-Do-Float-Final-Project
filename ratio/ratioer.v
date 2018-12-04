
module ratioer(ratio,start_drive,start_recovery,count_clock,recovery_count,drive_count);
	input start_drive, start_recovery,count_clock;
	output[31:0] ratio;
	output[31:0] recovery_count,drive_count;


	
	counter _counter(drive_count,recovery_count,start_drive,start_recovery,count_clock,reset);
	// counter(drive_count,recovery_count,start_drive,start_recovery,clk);
	
	wire reset;
	
	divider _div(ratio,recovery_count,drive_count);
	

endmodule

/*
Have a counter adding at a certain rate, either incrementing drive or recovery

every time start_drive is high, on the positive edge, calculate the ratio


*/ 