module counter(drive_count,recovery_count,start_drive,start_recovery,clk,reset);
input  clk,start_drive,start_recovery;
output[31:0] drive_count;
output[31:0] recovery_count;
output reset;
wire onDrive;

wire driveOvf, recoveryOvf, onRecovery;
wire[31:0] drive_plus_1, recovery_plus_1;

// Assumes that Start Drive and Start Recovery will never be high at the same time
wire enable;
or _enableOn(enable,start_drive,start_recovery);
//assign enable = 1'b1;

dffe_ref _onDrive(onDrive, start_drive, clk, enable, 1'b0);

not _onRecov(onRecovery,onDrive);


register _drivereg(clk,onDrive,drive_plus_1,drive_count,reset);
CLAadder _driveIncr(32'b1,drive_count,drive_plus_1,driveOvf);


register _recovreg(clk,onRecovery,recovery_plus_1,recovery_count,reset);
CLAadder _recovIncr(32'b1,recovery_count,recovery_plus_1,recoveryOvf);

// Delay the reset a few cycles

wire d1,d2,d3,d4,d5;

dffe_ref _d1(d1, start_drive, clk, 1'b1, 1'b0);
dffe_ref _d2(d2, d1, clk, 1'b1, 1'b0);
dffe_ref _d3(d3, d2, clk, 1'b1, 1'b0);
dffe_ref _d4(d4, d3, clk, 1'b1, 1'b0);
dffe_ref _d5(d5, d4, clk, 1'b1, 1'b0);

dffe_ref _reset(reset, d5, clk, 1'b1, 1'b0);


endmodule