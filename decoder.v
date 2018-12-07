module decoder(select, chosen);
	input [4:0] select;
	output [31:0] chosen;
	
wire nw0,nw1,nw2,nw3,nw4;
	
not _not0(nw0,select[0]);
not _not1(nw1,select[1]);
not _not2(nw2,select[2]);
not _not3(nw3,select[3]);
not _not4(nw4,select[4]);

and _and0(chosen[0],nw4,nw3,nw2,nw1,nw0);
and _and1(chosen[1],nw4,nw3,nw2,nw1,select[0]);
and _and2(chosen[2],nw4,nw3,nw2,select[1],nw0);
and _and3(chosen[3],nw4,nw3,nw2,select[1],select[0]);
and _and4(chosen[4],nw4,nw3,select[2],nw1,nw0);
and _and5(chosen[5],nw4,nw3,select[2],nw1,select[0]);
and _and6(chosen[6],nw4,nw3,select[2],select[1],nw0);
and _and7(chosen[7],nw4,nw3,select[2],select[1],select[0]);
and _and8(chosen[8],nw4,select[3],nw2,nw1,nw0);
and _and9(chosen[9],nw4,select[3],nw2,nw1,select[0]);
and _and10(chosen[10],nw4,select[3],nw2,select[1],nw0);
and _and11(chosen[11],nw4,select[3],nw2,select[1],select[0]);
and _and12(chosen[12],nw4,select[3],select[2],nw1,nw0);
and _and13(chosen[13],nw4,select[3],select[2],nw1,select[0]);
and _and14(chosen[14],nw4,select[3],select[2],select[1],nw0);
and _and15(chosen[15],nw4,select[3],select[2],select[1],select[0]);
and _and16(chosen[16],select[4],nw3,nw2,nw1,nw0);
and _and17(chosen[17],select[4],nw3,nw2,nw1,select[0]);
and _and18(chosen[18],select[4],nw3,nw2,select[1],nw0);
and _and19(chosen[19],select[4],nw3,nw2,select[1],select[0]);
and _and20(chosen[20],select[4],nw3,select[2],nw1,nw0);
and _and21(chosen[21],select[4],nw3,select[2],nw1,select[0]);
and _and22(chosen[22],select[4],nw3,select[2],select[1],nw0);
and _and23(chosen[23],select[4],nw3,select[2],select[1],select[0]);
and _and24(chosen[24],select[4],select[3],nw2,nw1,nw0);
and _and25(chosen[25],select[4],select[3],nw2,nw1,select[0]);
and _and26(chosen[26],select[4],select[3],nw2,select[1],nw0);
and _and27(chosen[27],select[4],select[3],nw2,select[1],select[0]);
and _and28(chosen[28],select[4],select[3],select[2],nw1,nw0);
and _and29(chosen[29],select[4],select[3],select[2],nw1,select[0]);
and _and30(chosen[30],select[4],select[3],select[2],select[1],nw0);
and _and31(chosen[31],select[4],select[3],select[2],select[1],select[0]);
	

endmodule
