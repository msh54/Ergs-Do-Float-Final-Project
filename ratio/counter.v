module counter(drive_count,recovery_count,start_drive,start_recovery,clk,reset);
input  clk,start_drive,start_recovery,reset;
output[31:0] drive_count;
output[31:0] recovery_count;
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


endmodule