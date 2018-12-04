module CLAadder_12(dataA,dataB,out,ovf);
	
	input[11:0] dataA, dataB;
	output[11:0] out;
	output ovf;
	
	// Eclipse Output Code
	
	
wire g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11;
wire p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;

and _and1(g1,dataA[1],dataB[1]);
exor _xor1(p1,dataA[1],dataB[1]);
and _and2(g2,dataA[2],dataB[2]);
exor _xor2(p2,dataA[2],dataB[2]);
and _and3(g3,dataA[3],dataB[3]);
exor _xor3(p3,dataA[3],dataB[3]);
and _and4(g4,dataA[4],dataB[4]);
exor _xor4(p4,dataA[4],dataB[4]);
and _and5(g5,dataA[5],dataB[5]);
exor _xor5(p5,dataA[5],dataB[5]);
and _and6(g6,dataA[6],dataB[6]);
exor _xor6(p6,dataA[6],dataB[6]);
and _and7(g7,dataA[7],dataB[7]);
exor _xor7(p7,dataA[7],dataB[7]);
and _and8(g8,dataA[8],dataB[8]);
exor _xor8(p8,dataA[8],dataB[8]);
and _and9(g9,dataA[9],dataB[9]);
exor _xor9(p9,dataA[9],dataB[9]);
and _and10(g10,dataA[10],dataB[10]);
exor _xor10(p10,dataA[10],dataB[10]);
and _and11(g11,dataA[11],dataB[11]);
exor _xor11(p11,dataA[11],dataB[11]);



// s0
// since cm1 = 0, p0 = s0
exor _xor0(out[0],dataA[0],dataB[0]);
	
// s1
// c0 = g0 + p0cm1 => c0 = g0
and _and0(g0,dataA[0],dataB[0]);
exor _sx1(out[1],g0,p1); //s1 = p1 xor c0
	
// s2
wire s2_a1;
and _s2_a1(s2_a1,p1,g0);
or _c1(c1,g1,s2_a1);
exor _sx2(out[2],c1,p2);

// s3
wire s3_a2, s3_a1;
and _s3_a2(s3_a2,p2,g1);
and _s3_a1(s3_a1,p2,p1,g0);
or _c2(c2,g2,s3_a2,s3_a1);
exor _sx3(out[3],c2,p3);

// s4
wire s4_a3, s4_a2, s4_a1;
and _s4_a3(s4_a3,p3,g2);
and _s4_a2(s4_a2,p3,p2,g1);
and _s4_a1(s4_a1,p3,p2,p1,g0);
or _c3(c3,g3,s4_a3,s4_a2,s4_a1);
exor _sx4(out[4],c3,p4);

// s5
wire s5_a4, s5_a3, s5_a2, s5_a1;
and _s5_a4(s5_a4,p4,g3);
and _s5_a3(s5_a3,p4,p3,g2);
and _s5_a2(s5_a2,p4,p3,p2,g1);
and _s5_a1(s5_a1,p4,p3,p2,p1,g0);
or _c4(c4,g4,s5_a4,s5_a3,s5_a2,s5_a1);
exor _sx5(out[5],c4,p5);

// s6
wire s6_a5, s6_a4, s6_a3, s6_a2, s6_a1;
and _s6_a5(s6_a5,p5,g4);
and _s6_a4(s6_a4,p5,p4,g3);
and _s6_a3(s6_a3,p5,p4,p3,g2);
and _s6_a2(s6_a2,p5,p4,p3,p2,g1);
and _s6_a1(s6_a1,p5,p4,p3,p2,p1,g0);
or _c5(c5,g5,s6_a5,s6_a4,s6_a3,s6_a2,s6_a1);
exor _sx6(out[6],c5,p6);

// s7
wire s7_a6, s7_a5, s7_a4, s7_a3, s7_a2, s7_a1;
and _s7_a6(s7_a6,p6,g5);
and _s7_a5(s7_a5,p6,p5,g4);
and _s7_a4(s7_a4,p6,p5,p4,g3);
and _s7_a3(s7_a3,p6,p5,p4,p3,g2);
and _s7_a2(s7_a2,p6,p5,p4,p3,p2,g1);
and _s7_a1(s7_a1,p6,p5,p4,p3,p2,p1,g0);
or _c6(c6,g6,s7_a6,s7_a5,s7_a4,s7_a3,s7_a2,s7_a1);
exor _sx7(out[7],c6,p7);

// s8
wire s8_a7, s8_a6, s8_a5, s8_a4, s8_a3, s8_a2, s8_a1;
and _s8_a7(s8_a7,p7,g6);
and _s8_a6(s8_a6,p7,p6,g5);
and _s8_a5(s8_a5,p7,p6,p5,g4);
and _s8_a4(s8_a4,p7,p6,p5,p4,g3);
and _s8_a3(s8_a3,p7,p6,p5,p4,p3,g2);
and _s8_a2(s8_a2,p7,p6,p5,p4,p3,p2,g1);
and _s8_a1(s8_a1,p7,p6,p5,p4,p3,p2,p1,g0);
or _c7(c7,g7,s8_a7,s8_a6,s8_a5,s8_a4,s8_a3,s8_a2,s8_a1);
exor _sx8(out[8],c7,p8);

// s9
wire s9_a8, s9_a7, s9_a6, s9_a5, s9_a4, s9_a3, s9_a2, s9_a1;
and _s9_a8(s9_a8,p8,g7);
and _s9_a7(s9_a7,p8,p7,g6);
and _s9_a6(s9_a6,p8,p7,p6,g5);
and _s9_a5(s9_a5,p8,p7,p6,p5,g4);
and _s9_a4(s9_a4,p8,p7,p6,p5,p4,g3);
and _s9_a3(s9_a3,p8,p7,p6,p5,p4,p3,g2);
and _s9_a2(s9_a2,p8,p7,p6,p5,p4,p3,p2,g1);
and _s9_a1(s9_a1,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c8(c8,g8,s9_a8,s9_a7,s9_a6,s9_a5,s9_a4,s9_a3,s9_a2,s9_a1);
exor _sx9(out[9],c8,p9);

// s10
wire s10_a9, s10_a8, s10_a7, s10_a6, s10_a5, s10_a4, s10_a3, s10_a2, s10_a1;
and _s10_a9(s10_a9,p9,g8);
and _s10_a8(s10_a8,p9,p8,g7);
and _s10_a7(s10_a7,p9,p8,p7,g6);
and _s10_a6(s10_a6,p9,p8,p7,p6,g5);
and _s10_a5(s10_a5,p9,p8,p7,p6,p5,g4);
and _s10_a4(s10_a4,p9,p8,p7,p6,p5,p4,g3);
and _s10_a3(s10_a3,p9,p8,p7,p6,p5,p4,p3,g2);
and _s10_a2(s10_a2,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s10_a1(s10_a1,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c9(c9,g9,s10_a9,s10_a8,s10_a7,s10_a6,s10_a5,s10_a4,s10_a3,s10_a2,s10_a1);
exor _sx10(out[10],c9,p10);

// s11
wire s11_a10, s11_a9, s11_a8, s11_a7, s11_a6, s11_a5, s11_a4, s11_a3, s11_a2, s11_a1;
and _s11_a10(s11_a10,p10,g9);
and _s11_a9(s11_a9,p10,p9,g8);
and _s11_a8(s11_a8,p10,p9,p8,g7);
and _s11_a7(s11_a7,p10,p9,p8,p7,g6);
and _s11_a6(s11_a6,p10,p9,p8,p7,p6,g5);
and _s11_a5(s11_a5,p10,p9,p8,p7,p6,p5,g4);
and _s11_a4(s11_a4,p10,p9,p8,p7,p6,p5,p4,g3);
and _s11_a3(s11_a3,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s11_a2(s11_a2,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s11_a1(s11_a1,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c10(c10,g10,s11_a10,s11_a9,s11_a8,s11_a7,s11_a6,s11_a5,s11_a4,s11_a3,s11_a2,s11_a1);
exor _sx11(out[11],c10,p11);

// s12
wire s12_a11, s12_a10, s12_a9, s12_a8, s12_a7, s12_a6, s12_a5, s12_a4, s12_a3, s12_a2, s12_a1;
and _s12_a11(s12_a11,p11,g10);
and _s12_a10(s12_a10,p11,p10,g9);
and _s12_a9(s12_a9,p11,p10,p9,g8);
and _s12_a8(s12_a8,p11,p10,p9,p8,g7);
and _s12_a7(s12_a7,p11,p10,p9,p8,p7,g6);
and _s12_a6(s12_a6,p11,p10,p9,p8,p7,p6,g5);
and _s12_a5(s12_a5,p11,p10,p9,p8,p7,p6,p5,g4);
and _s12_a4(s12_a4,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s12_a3(s12_a3,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s12_a2(s12_a2,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s12_a1(s12_a1,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c11(ovf,g11,s12_a11,s12_a10,s12_a9,s12_a8,s12_a7,s12_a6,s12_a5,s12_a4,s12_a3,s12_a2,s12_a1);

endmodule
