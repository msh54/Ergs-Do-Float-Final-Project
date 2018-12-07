module CLAadder(dataA,dataB,out,ovf);
	input[31:0] dataA, dataB;
	output[31:0] out;
	output ovf;
	
	// Eclipse Output Code
	
	
wire g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,g16,g17,g18,g19,g20,g21,g22,g23,g24,g25,g26,g27,g28,g29,g30,g31;
wire p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;

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
and _and12(g12,dataA[12],dataB[12]);
exor _xor12(p12,dataA[12],dataB[12]);
and _and13(g13,dataA[13],dataB[13]);
exor _xor13(p13,dataA[13],dataB[13]);
and _and14(g14,dataA[14],dataB[14]);
exor _xor14(p14,dataA[14],dataB[14]);
and _and15(g15,dataA[15],dataB[15]);
exor _xor15(p15,dataA[15],dataB[15]);
and _and16(g16,dataA[16],dataB[16]);
exor _xor16(p16,dataA[16],dataB[16]);
and _and17(g17,dataA[17],dataB[17]);
exor _xor17(p17,dataA[17],dataB[17]);
and _and18(g18,dataA[18],dataB[18]);
exor _xor18(p18,dataA[18],dataB[18]);
and _and19(g19,dataA[19],dataB[19]);
exor _xor19(p19,dataA[19],dataB[19]);
and _and20(g20,dataA[20],dataB[20]);
exor _xor20(p20,dataA[20],dataB[20]);
and _and21(g21,dataA[21],dataB[21]);
exor _xor21(p21,dataA[21],dataB[21]);
and _and22(g22,dataA[22],dataB[22]);
exor _xor22(p22,dataA[22],dataB[22]);
and _and23(g23,dataA[23],dataB[23]);
exor _xor23(p23,dataA[23],dataB[23]);
and _and24(g24,dataA[24],dataB[24]);
exor _xor24(p24,dataA[24],dataB[24]);
and _and25(g25,dataA[25],dataB[25]);
exor _xor25(p25,dataA[25],dataB[25]);
and _and26(g26,dataA[26],dataB[26]);
exor _xor26(p26,dataA[26],dataB[26]);
and _and27(g27,dataA[27],dataB[27]);
exor _xor27(p27,dataA[27],dataB[27]);
and _and28(g28,dataA[28],dataB[28]);
exor _xor28(p28,dataA[28],dataB[28]);
and _and29(g29,dataA[29],dataB[29]);
exor _xor29(p29,dataA[29],dataB[29]);
and _and30(g30,dataA[30],dataB[30]);
exor _xor30(p30,dataA[30],dataB[30]);
and _and31(g31,dataA[31],dataB[31]);
exor _xor31(p31,dataA[31],dataB[31]);



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
or _c11(c11,g11,s12_a11,s12_a10,s12_a9,s12_a8,s12_a7,s12_a6,s12_a5,s12_a4,s12_a3,s12_a2,s12_a1);
exor _sx12(out[12],c11,p12);

// s13
wire s13_a12, s13_a11, s13_a10, s13_a9, s13_a8, s13_a7, s13_a6, s13_a5, s13_a4, s13_a3, s13_a2, s13_a1;
and _s13_a12(s13_a12,p12,g11);
and _s13_a11(s13_a11,p12,p11,g10);
and _s13_a10(s13_a10,p12,p11,p10,g9);
and _s13_a9(s13_a9,p12,p11,p10,p9,g8);
and _s13_a8(s13_a8,p12,p11,p10,p9,p8,g7);
and _s13_a7(s13_a7,p12,p11,p10,p9,p8,p7,g6);
and _s13_a6(s13_a6,p12,p11,p10,p9,p8,p7,p6,g5);
and _s13_a5(s13_a5,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s13_a4(s13_a4,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s13_a3(s13_a3,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s13_a2(s13_a2,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s13_a1(s13_a1,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c12(c12,g12,s13_a12,s13_a11,s13_a10,s13_a9,s13_a8,s13_a7,s13_a6,s13_a5,s13_a4,s13_a3,s13_a2,s13_a1);
exor _sx13(out[13],c12,p13);

// s14
wire s14_a13, s14_a12, s14_a11, s14_a10, s14_a9, s14_a8, s14_a7, s14_a6, s14_a5, s14_a4, s14_a3, s14_a2, s14_a1;
and _s14_a13(s14_a13,p13,g12);
and _s14_a12(s14_a12,p13,p12,g11);
and _s14_a11(s14_a11,p13,p12,p11,g10);
and _s14_a10(s14_a10,p13,p12,p11,p10,g9);
and _s14_a9(s14_a9,p13,p12,p11,p10,p9,g8);
and _s14_a8(s14_a8,p13,p12,p11,p10,p9,p8,g7);
and _s14_a7(s14_a7,p13,p12,p11,p10,p9,p8,p7,g6);
and _s14_a6(s14_a6,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s14_a5(s14_a5,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s14_a4(s14_a4,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s14_a3(s14_a3,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s14_a2(s14_a2,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s14_a1(s14_a1,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c13(c13,g13,s14_a13,s14_a12,s14_a11,s14_a10,s14_a9,s14_a8,s14_a7,s14_a6,s14_a5,s14_a4,s14_a3,s14_a2,s14_a1);
exor _sx14(out[14],c13,p14);

// s15
wire s15_a14, s15_a13, s15_a12, s15_a11, s15_a10, s15_a9, s15_a8, s15_a7, s15_a6, s15_a5, s15_a4, s15_a3, s15_a2, s15_a1;
and _s15_a14(s15_a14,p14,g13);
and _s15_a13(s15_a13,p14,p13,g12);
and _s15_a12(s15_a12,p14,p13,p12,g11);
and _s15_a11(s15_a11,p14,p13,p12,p11,g10);
and _s15_a10(s15_a10,p14,p13,p12,p11,p10,g9);
and _s15_a9(s15_a9,p14,p13,p12,p11,p10,p9,g8);
and _s15_a8(s15_a8,p14,p13,p12,p11,p10,p9,p8,g7);
and _s15_a7(s15_a7,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s15_a6(s15_a6,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s15_a5(s15_a5,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s15_a4(s15_a4,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s15_a3(s15_a3,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s15_a2(s15_a2,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s15_a1(s15_a1,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c14(c14,g14,s15_a14,s15_a13,s15_a12,s15_a11,s15_a10,s15_a9,s15_a8,s15_a7,s15_a6,s15_a5,s15_a4,s15_a3,s15_a2,s15_a1);
exor _sx15(out[15],c14,p15);

// s16
wire s16_a15, s16_a14, s16_a13, s16_a12, s16_a11, s16_a10, s16_a9, s16_a8, s16_a7, s16_a6, s16_a5, s16_a4, s16_a3, s16_a2, s16_a1;
and _s16_a15(s16_a15,p15,g14);
and _s16_a14(s16_a14,p15,p14,g13);
and _s16_a13(s16_a13,p15,p14,p13,g12);
and _s16_a12(s16_a12,p15,p14,p13,p12,g11);
and _s16_a11(s16_a11,p15,p14,p13,p12,p11,g10);
and _s16_a10(s16_a10,p15,p14,p13,p12,p11,p10,g9);
and _s16_a9(s16_a9,p15,p14,p13,p12,p11,p10,p9,g8);
and _s16_a8(s16_a8,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s16_a7(s16_a7,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s16_a6(s16_a6,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s16_a5(s16_a5,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s16_a4(s16_a4,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s16_a3(s16_a3,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s16_a2(s16_a2,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s16_a1(s16_a1,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c15(c15,g15,s16_a15,s16_a14,s16_a13,s16_a12,s16_a11,s16_a10,s16_a9,s16_a8,s16_a7,s16_a6,s16_a5,s16_a4,s16_a3,s16_a2,s16_a1);
exor _sx16(out[16],c15,p16);

// s17
wire s17_a16, s17_a15, s17_a14, s17_a13, s17_a12, s17_a11, s17_a10, s17_a9, s17_a8, s17_a7, s17_a6, s17_a5, s17_a4, s17_a3, s17_a2, s17_a1;
and _s17_a16(s17_a16,p16,g15);
and _s17_a15(s17_a15,p16,p15,g14);
and _s17_a14(s17_a14,p16,p15,p14,g13);
and _s17_a13(s17_a13,p16,p15,p14,p13,g12);
and _s17_a12(s17_a12,p16,p15,p14,p13,p12,g11);
and _s17_a11(s17_a11,p16,p15,p14,p13,p12,p11,g10);
and _s17_a10(s17_a10,p16,p15,p14,p13,p12,p11,p10,g9);
and _s17_a9(s17_a9,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s17_a8(s17_a8,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s17_a7(s17_a7,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s17_a6(s17_a6,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s17_a5(s17_a5,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s17_a4(s17_a4,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s17_a3(s17_a3,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s17_a2(s17_a2,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s17_a1(s17_a1,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c16(c16,g16,s17_a16,s17_a15,s17_a14,s17_a13,s17_a12,s17_a11,s17_a10,s17_a9,s17_a8,s17_a7,s17_a6,s17_a5,s17_a4,s17_a3,s17_a2,s17_a1);
exor _sx17(out[17],c16,p17);

// s18
wire s18_a17, s18_a16, s18_a15, s18_a14, s18_a13, s18_a12, s18_a11, s18_a10, s18_a9, s18_a8, s18_a7, s18_a6, s18_a5, s18_a4, s18_a3, s18_a2, s18_a1;
and _s18_a17(s18_a17,p17,g16);
and _s18_a16(s18_a16,p17,p16,g15);
and _s18_a15(s18_a15,p17,p16,p15,g14);
and _s18_a14(s18_a14,p17,p16,p15,p14,g13);
and _s18_a13(s18_a13,p17,p16,p15,p14,p13,g12);
and _s18_a12(s18_a12,p17,p16,p15,p14,p13,p12,g11);
and _s18_a11(s18_a11,p17,p16,p15,p14,p13,p12,p11,g10);
and _s18_a10(s18_a10,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s18_a9(s18_a9,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s18_a8(s18_a8,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s18_a7(s18_a7,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s18_a6(s18_a6,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s18_a5(s18_a5,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s18_a4(s18_a4,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s18_a3(s18_a3,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s18_a2(s18_a2,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s18_a1(s18_a1,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c17(c17,g17,s18_a17,s18_a16,s18_a15,s18_a14,s18_a13,s18_a12,s18_a11,s18_a10,s18_a9,s18_a8,s18_a7,s18_a6,s18_a5,s18_a4,s18_a3,s18_a2,s18_a1);
exor _sx18(out[18],c17,p18);

// s19
wire s19_a18, s19_a17, s19_a16, s19_a15, s19_a14, s19_a13, s19_a12, s19_a11, s19_a10, s19_a9, s19_a8, s19_a7, s19_a6, s19_a5, s19_a4, s19_a3, s19_a2, s19_a1;
and _s19_a18(s19_a18,p18,g17);
and _s19_a17(s19_a17,p18,p17,g16);
and _s19_a16(s19_a16,p18,p17,p16,g15);
and _s19_a15(s19_a15,p18,p17,p16,p15,g14);
and _s19_a14(s19_a14,p18,p17,p16,p15,p14,g13);
and _s19_a13(s19_a13,p18,p17,p16,p15,p14,p13,g12);
and _s19_a12(s19_a12,p18,p17,p16,p15,p14,p13,p12,g11);
and _s19_a11(s19_a11,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s19_a10(s19_a10,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s19_a9(s19_a9,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s19_a8(s19_a8,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s19_a7(s19_a7,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s19_a6(s19_a6,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s19_a5(s19_a5,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s19_a4(s19_a4,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s19_a3(s19_a3,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s19_a2(s19_a2,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s19_a1(s19_a1,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c18(c18,g18,s19_a18,s19_a17,s19_a16,s19_a15,s19_a14,s19_a13,s19_a12,s19_a11,s19_a10,s19_a9,s19_a8,s19_a7,s19_a6,s19_a5,s19_a4,s19_a3,s19_a2,s19_a1);
exor _sx19(out[19],c18,p19);

// s20
wire s20_a19, s20_a18, s20_a17, s20_a16, s20_a15, s20_a14, s20_a13, s20_a12, s20_a11, s20_a10, s20_a9, s20_a8, s20_a7, s20_a6, s20_a5, s20_a4, s20_a3, s20_a2, s20_a1;
and _s20_a19(s20_a19,p19,g18);
and _s20_a18(s20_a18,p19,p18,g17);
and _s20_a17(s20_a17,p19,p18,p17,g16);
and _s20_a16(s20_a16,p19,p18,p17,p16,g15);
and _s20_a15(s20_a15,p19,p18,p17,p16,p15,g14);
and _s20_a14(s20_a14,p19,p18,p17,p16,p15,p14,g13);
and _s20_a13(s20_a13,p19,p18,p17,p16,p15,p14,p13,g12);
and _s20_a12(s20_a12,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s20_a11(s20_a11,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s20_a10(s20_a10,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s20_a9(s20_a9,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s20_a8(s20_a8,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s20_a7(s20_a7,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s20_a6(s20_a6,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s20_a5(s20_a5,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s20_a4(s20_a4,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s20_a3(s20_a3,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s20_a2(s20_a2,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s20_a1(s20_a1,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c19(c19,g19,s20_a19,s20_a18,s20_a17,s20_a16,s20_a15,s20_a14,s20_a13,s20_a12,s20_a11,s20_a10,s20_a9,s20_a8,s20_a7,s20_a6,s20_a5,s20_a4,s20_a3,s20_a2,s20_a1);
exor _sx20(out[20],c19,p20);

// s21
wire s21_a20, s21_a19, s21_a18, s21_a17, s21_a16, s21_a15, s21_a14, s21_a13, s21_a12, s21_a11, s21_a10, s21_a9, s21_a8, s21_a7, s21_a6, s21_a5, s21_a4, s21_a3, s21_a2, s21_a1;
and _s21_a20(s21_a20,p20,g19);
and _s21_a19(s21_a19,p20,p19,g18);
and _s21_a18(s21_a18,p20,p19,p18,g17);
and _s21_a17(s21_a17,p20,p19,p18,p17,g16);
and _s21_a16(s21_a16,p20,p19,p18,p17,p16,g15);
and _s21_a15(s21_a15,p20,p19,p18,p17,p16,p15,g14);
and _s21_a14(s21_a14,p20,p19,p18,p17,p16,p15,p14,g13);
and _s21_a13(s21_a13,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s21_a12(s21_a12,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s21_a11(s21_a11,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s21_a10(s21_a10,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s21_a9(s21_a9,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s21_a8(s21_a8,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s21_a7(s21_a7,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s21_a6(s21_a6,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s21_a5(s21_a5,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s21_a4(s21_a4,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s21_a3(s21_a3,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s21_a2(s21_a2,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s21_a1(s21_a1,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c20(c20,g20,s21_a20,s21_a19,s21_a18,s21_a17,s21_a16,s21_a15,s21_a14,s21_a13,s21_a12,s21_a11,s21_a10,s21_a9,s21_a8,s21_a7,s21_a6,s21_a5,s21_a4,s21_a3,s21_a2,s21_a1);
exor _sx21(out[21],c20,p21);

// s22
wire s22_a21, s22_a20, s22_a19, s22_a18, s22_a17, s22_a16, s22_a15, s22_a14, s22_a13, s22_a12, s22_a11, s22_a10, s22_a9, s22_a8, s22_a7, s22_a6, s22_a5, s22_a4, s22_a3, s22_a2, s22_a1;
and _s22_a21(s22_a21,p21,g20);
and _s22_a20(s22_a20,p21,p20,g19);
and _s22_a19(s22_a19,p21,p20,p19,g18);
and _s22_a18(s22_a18,p21,p20,p19,p18,g17);
and _s22_a17(s22_a17,p21,p20,p19,p18,p17,g16);
and _s22_a16(s22_a16,p21,p20,p19,p18,p17,p16,g15);
and _s22_a15(s22_a15,p21,p20,p19,p18,p17,p16,p15,g14);
and _s22_a14(s22_a14,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s22_a13(s22_a13,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s22_a12(s22_a12,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s22_a11(s22_a11,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s22_a10(s22_a10,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s22_a9(s22_a9,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s22_a8(s22_a8,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s22_a7(s22_a7,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s22_a6(s22_a6,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s22_a5(s22_a5,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s22_a4(s22_a4,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s22_a3(s22_a3,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s22_a2(s22_a2,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s22_a1(s22_a1,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c21(c21,g21,s22_a21,s22_a20,s22_a19,s22_a18,s22_a17,s22_a16,s22_a15,s22_a14,s22_a13,s22_a12,s22_a11,s22_a10,s22_a9,s22_a8,s22_a7,s22_a6,s22_a5,s22_a4,s22_a3,s22_a2,s22_a1);
exor _sx22(out[22],c21,p22);

// s23
wire s23_a22, s23_a21, s23_a20, s23_a19, s23_a18, s23_a17, s23_a16, s23_a15, s23_a14, s23_a13, s23_a12, s23_a11, s23_a10, s23_a9, s23_a8, s23_a7, s23_a6, s23_a5, s23_a4, s23_a3, s23_a2, s23_a1;
and _s23_a22(s23_a22,p22,g21);
and _s23_a21(s23_a21,p22,p21,g20);
and _s23_a20(s23_a20,p22,p21,p20,g19);
and _s23_a19(s23_a19,p22,p21,p20,p19,g18);
and _s23_a18(s23_a18,p22,p21,p20,p19,p18,g17);
and _s23_a17(s23_a17,p22,p21,p20,p19,p18,p17,g16);
and _s23_a16(s23_a16,p22,p21,p20,p19,p18,p17,p16,g15);
and _s23_a15(s23_a15,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s23_a14(s23_a14,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s23_a13(s23_a13,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s23_a12(s23_a12,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s23_a11(s23_a11,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s23_a10(s23_a10,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s23_a9(s23_a9,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s23_a8(s23_a8,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s23_a7(s23_a7,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s23_a6(s23_a6,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s23_a5(s23_a5,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s23_a4(s23_a4,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s23_a3(s23_a3,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s23_a2(s23_a2,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s23_a1(s23_a1,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c22(c22,g22,s23_a22,s23_a21,s23_a20,s23_a19,s23_a18,s23_a17,s23_a16,s23_a15,s23_a14,s23_a13,s23_a12,s23_a11,s23_a10,s23_a9,s23_a8,s23_a7,s23_a6,s23_a5,s23_a4,s23_a3,s23_a2,s23_a1);
exor _sx23(out[23],c22,p23);

// s24
wire s24_a23, s24_a22, s24_a21, s24_a20, s24_a19, s24_a18, s24_a17, s24_a16, s24_a15, s24_a14, s24_a13, s24_a12, s24_a11, s24_a10, s24_a9, s24_a8, s24_a7, s24_a6, s24_a5, s24_a4, s24_a3, s24_a2, s24_a1;
and _s24_a23(s24_a23,p23,g22);
and _s24_a22(s24_a22,p23,p22,g21);
and _s24_a21(s24_a21,p23,p22,p21,g20);
and _s24_a20(s24_a20,p23,p22,p21,p20,g19);
and _s24_a19(s24_a19,p23,p22,p21,p20,p19,g18);
and _s24_a18(s24_a18,p23,p22,p21,p20,p19,p18,g17);
and _s24_a17(s24_a17,p23,p22,p21,p20,p19,p18,p17,g16);
and _s24_a16(s24_a16,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s24_a15(s24_a15,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s24_a14(s24_a14,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s24_a13(s24_a13,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s24_a12(s24_a12,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s24_a11(s24_a11,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s24_a10(s24_a10,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s24_a9(s24_a9,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s24_a8(s24_a8,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s24_a7(s24_a7,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s24_a6(s24_a6,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s24_a5(s24_a5,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s24_a4(s24_a4,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s24_a3(s24_a3,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s24_a2(s24_a2,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s24_a1(s24_a1,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c23(c23,g23,s24_a23,s24_a22,s24_a21,s24_a20,s24_a19,s24_a18,s24_a17,s24_a16,s24_a15,s24_a14,s24_a13,s24_a12,s24_a11,s24_a10,s24_a9,s24_a8,s24_a7,s24_a6,s24_a5,s24_a4,s24_a3,s24_a2,s24_a1);
exor _sx24(out[24],c23,p24);

// s25
wire s25_a24, s25_a23, s25_a22, s25_a21, s25_a20, s25_a19, s25_a18, s25_a17, s25_a16, s25_a15, s25_a14, s25_a13, s25_a12, s25_a11, s25_a10, s25_a9, s25_a8, s25_a7, s25_a6, s25_a5, s25_a4, s25_a3, s25_a2, s25_a1;
and _s25_a24(s25_a24,p24,g23);
and _s25_a23(s25_a23,p24,p23,g22);
and _s25_a22(s25_a22,p24,p23,p22,g21);
and _s25_a21(s25_a21,p24,p23,p22,p21,g20);
and _s25_a20(s25_a20,p24,p23,p22,p21,p20,g19);
and _s25_a19(s25_a19,p24,p23,p22,p21,p20,p19,g18);
and _s25_a18(s25_a18,p24,p23,p22,p21,p20,p19,p18,g17);
and _s25_a17(s25_a17,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s25_a16(s25_a16,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s25_a15(s25_a15,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s25_a14(s25_a14,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s25_a13(s25_a13,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s25_a12(s25_a12,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s25_a11(s25_a11,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s25_a10(s25_a10,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s25_a9(s25_a9,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s25_a8(s25_a8,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s25_a7(s25_a7,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s25_a6(s25_a6,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s25_a5(s25_a5,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s25_a4(s25_a4,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s25_a3(s25_a3,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s25_a2(s25_a2,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s25_a1(s25_a1,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c24(c24,g24,s25_a24,s25_a23,s25_a22,s25_a21,s25_a20,s25_a19,s25_a18,s25_a17,s25_a16,s25_a15,s25_a14,s25_a13,s25_a12,s25_a11,s25_a10,s25_a9,s25_a8,s25_a7,s25_a6,s25_a5,s25_a4,s25_a3,s25_a2,s25_a1);
exor _sx25(out[25],c24,p25);

// s26
wire s26_a25, s26_a24, s26_a23, s26_a22, s26_a21, s26_a20, s26_a19, s26_a18, s26_a17, s26_a16, s26_a15, s26_a14, s26_a13, s26_a12, s26_a11, s26_a10, s26_a9, s26_a8, s26_a7, s26_a6, s26_a5, s26_a4, s26_a3, s26_a2, s26_a1;
and _s26_a25(s26_a25,p25,g24);
and _s26_a24(s26_a24,p25,p24,g23);
and _s26_a23(s26_a23,p25,p24,p23,g22);
and _s26_a22(s26_a22,p25,p24,p23,p22,g21);
and _s26_a21(s26_a21,p25,p24,p23,p22,p21,g20);
and _s26_a20(s26_a20,p25,p24,p23,p22,p21,p20,g19);
and _s26_a19(s26_a19,p25,p24,p23,p22,p21,p20,p19,g18);
and _s26_a18(s26_a18,p25,p24,p23,p22,p21,p20,p19,p18,g17);
and _s26_a17(s26_a17,p25,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s26_a16(s26_a16,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s26_a15(s26_a15,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s26_a14(s26_a14,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s26_a13(s26_a13,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s26_a12(s26_a12,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s26_a11(s26_a11,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s26_a10(s26_a10,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s26_a9(s26_a9,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s26_a8(s26_a8,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s26_a7(s26_a7,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s26_a6(s26_a6,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s26_a5(s26_a5,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s26_a4(s26_a4,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s26_a3(s26_a3,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s26_a2(s26_a2,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s26_a1(s26_a1,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c25(c25,g25,s26_a25,s26_a24,s26_a23,s26_a22,s26_a21,s26_a20,s26_a19,s26_a18,s26_a17,s26_a16,s26_a15,s26_a14,s26_a13,s26_a12,s26_a11,s26_a10,s26_a9,s26_a8,s26_a7,s26_a6,s26_a5,s26_a4,s26_a3,s26_a2,s26_a1);
exor _sx26(out[26],c25,p26);

// s27
wire s27_a26, s27_a25, s27_a24, s27_a23, s27_a22, s27_a21, s27_a20, s27_a19, s27_a18, s27_a17, s27_a16, s27_a15, s27_a14, s27_a13, s27_a12, s27_a11, s27_a10, s27_a9, s27_a8, s27_a7, s27_a6, s27_a5, s27_a4, s27_a3, s27_a2, s27_a1;
and _s27_a26(s27_a26,p26,g25);
and _s27_a25(s27_a25,p26,p25,g24);
and _s27_a24(s27_a24,p26,p25,p24,g23);
and _s27_a23(s27_a23,p26,p25,p24,p23,g22);
and _s27_a22(s27_a22,p26,p25,p24,p23,p22,g21);
and _s27_a21(s27_a21,p26,p25,p24,p23,p22,p21,g20);
and _s27_a20(s27_a20,p26,p25,p24,p23,p22,p21,p20,g19);
and _s27_a19(s27_a19,p26,p25,p24,p23,p22,p21,p20,p19,g18);
and _s27_a18(s27_a18,p26,p25,p24,p23,p22,p21,p20,p19,p18,g17);
and _s27_a17(s27_a17,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s27_a16(s27_a16,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s27_a15(s27_a15,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s27_a14(s27_a14,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s27_a13(s27_a13,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s27_a12(s27_a12,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s27_a11(s27_a11,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s27_a10(s27_a10,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s27_a9(s27_a9,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s27_a8(s27_a8,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s27_a7(s27_a7,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s27_a6(s27_a6,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s27_a5(s27_a5,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s27_a4(s27_a4,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s27_a3(s27_a3,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s27_a2(s27_a2,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s27_a1(s27_a1,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c26(c26,g26,s27_a26,s27_a25,s27_a24,s27_a23,s27_a22,s27_a21,s27_a20,s27_a19,s27_a18,s27_a17,s27_a16,s27_a15,s27_a14,s27_a13,s27_a12,s27_a11,s27_a10,s27_a9,s27_a8,s27_a7,s27_a6,s27_a5,s27_a4,s27_a3,s27_a2,s27_a1);
exor _sx27(out[27],c26,p27);

// s28
wire s28_a27, s28_a26, s28_a25, s28_a24, s28_a23, s28_a22, s28_a21, s28_a20, s28_a19, s28_a18, s28_a17, s28_a16, s28_a15, s28_a14, s28_a13, s28_a12, s28_a11, s28_a10, s28_a9, s28_a8, s28_a7, s28_a6, s28_a5, s28_a4, s28_a3, s28_a2, s28_a1;
and _s28_a27(s28_a27,p27,g26);
and _s28_a26(s28_a26,p27,p26,g25);
and _s28_a25(s28_a25,p27,p26,p25,g24);
and _s28_a24(s28_a24,p27,p26,p25,p24,g23);
and _s28_a23(s28_a23,p27,p26,p25,p24,p23,g22);
and _s28_a22(s28_a22,p27,p26,p25,p24,p23,p22,g21);
and _s28_a21(s28_a21,p27,p26,p25,p24,p23,p22,p21,g20);
and _s28_a20(s28_a20,p27,p26,p25,p24,p23,p22,p21,p20,g19);
and _s28_a19(s28_a19,p27,p26,p25,p24,p23,p22,p21,p20,p19,g18);
and _s28_a18(s28_a18,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,g17);
and _s28_a17(s28_a17,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s28_a16(s28_a16,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s28_a15(s28_a15,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s28_a14(s28_a14,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s28_a13(s28_a13,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s28_a12(s28_a12,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s28_a11(s28_a11,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s28_a10(s28_a10,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s28_a9(s28_a9,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s28_a8(s28_a8,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s28_a7(s28_a7,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s28_a6(s28_a6,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s28_a5(s28_a5,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s28_a4(s28_a4,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s28_a3(s28_a3,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s28_a2(s28_a2,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s28_a1(s28_a1,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c27(c27,g27,s28_a27,s28_a26,s28_a25,s28_a24,s28_a23,s28_a22,s28_a21,s28_a20,s28_a19,s28_a18,s28_a17,s28_a16,s28_a15,s28_a14,s28_a13,s28_a12,s28_a11,s28_a10,s28_a9,s28_a8,s28_a7,s28_a6,s28_a5,s28_a4,s28_a3,s28_a2,s28_a1);
exor _sx28(out[28],c27,p28);

// s29
wire s29_a28, s29_a27, s29_a26, s29_a25, s29_a24, s29_a23, s29_a22, s29_a21, s29_a20, s29_a19, s29_a18, s29_a17, s29_a16, s29_a15, s29_a14, s29_a13, s29_a12, s29_a11, s29_a10, s29_a9, s29_a8, s29_a7, s29_a6, s29_a5, s29_a4, s29_a3, s29_a2, s29_a1;
and _s29_a28(s29_a28,p28,g27);
and _s29_a27(s29_a27,p28,p27,g26);
and _s29_a26(s29_a26,p28,p27,p26,g25);
and _s29_a25(s29_a25,p28,p27,p26,p25,g24);
and _s29_a24(s29_a24,p28,p27,p26,p25,p24,g23);
and _s29_a23(s29_a23,p28,p27,p26,p25,p24,p23,g22);
and _s29_a22(s29_a22,p28,p27,p26,p25,p24,p23,p22,g21);
and _s29_a21(s29_a21,p28,p27,p26,p25,p24,p23,p22,p21,g20);
and _s29_a20(s29_a20,p28,p27,p26,p25,p24,p23,p22,p21,p20,g19);
and _s29_a19(s29_a19,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,g18);
and _s29_a18(s29_a18,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,g17);
and _s29_a17(s29_a17,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s29_a16(s29_a16,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s29_a15(s29_a15,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s29_a14(s29_a14,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s29_a13(s29_a13,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s29_a12(s29_a12,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s29_a11(s29_a11,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s29_a10(s29_a10,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s29_a9(s29_a9,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s29_a8(s29_a8,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s29_a7(s29_a7,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s29_a6(s29_a6,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s29_a5(s29_a5,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s29_a4(s29_a4,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s29_a3(s29_a3,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s29_a2(s29_a2,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s29_a1(s29_a1,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c28(c28,g28,s29_a28,s29_a27,s29_a26,s29_a25,s29_a24,s29_a23,s29_a22,s29_a21,s29_a20,s29_a19,s29_a18,s29_a17,s29_a16,s29_a15,s29_a14,s29_a13,s29_a12,s29_a11,s29_a10,s29_a9,s29_a8,s29_a7,s29_a6,s29_a5,s29_a4,s29_a3,s29_a2,s29_a1);
exor _sx29(out[29],c28,p29);

// s30
wire s30_a29, s30_a28, s30_a27, s30_a26, s30_a25, s30_a24, s30_a23, s30_a22, s30_a21, s30_a20, s30_a19, s30_a18, s30_a17, s30_a16, s30_a15, s30_a14, s30_a13, s30_a12, s30_a11, s30_a10, s30_a9, s30_a8, s30_a7, s30_a6, s30_a5, s30_a4, s30_a3, s30_a2, s30_a1;
and _s30_a29(s30_a29,p29,g28);
and _s30_a28(s30_a28,p29,p28,g27);
and _s30_a27(s30_a27,p29,p28,p27,g26);
and _s30_a26(s30_a26,p29,p28,p27,p26,g25);
and _s30_a25(s30_a25,p29,p28,p27,p26,p25,g24);
and _s30_a24(s30_a24,p29,p28,p27,p26,p25,p24,g23);
and _s30_a23(s30_a23,p29,p28,p27,p26,p25,p24,p23,g22);
and _s30_a22(s30_a22,p29,p28,p27,p26,p25,p24,p23,p22,g21);
and _s30_a21(s30_a21,p29,p28,p27,p26,p25,p24,p23,p22,p21,g20);
and _s30_a20(s30_a20,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,g19);
and _s30_a19(s30_a19,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,g18);
and _s30_a18(s30_a18,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,g17);
and _s30_a17(s30_a17,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s30_a16(s30_a16,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s30_a15(s30_a15,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s30_a14(s30_a14,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s30_a13(s30_a13,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s30_a12(s30_a12,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s30_a11(s30_a11,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s30_a10(s30_a10,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s30_a9(s30_a9,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s30_a8(s30_a8,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s30_a7(s30_a7,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s30_a6(s30_a6,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s30_a5(s30_a5,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s30_a4(s30_a4,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s30_a3(s30_a3,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s30_a2(s30_a2,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s30_a1(s30_a1,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c29(c29,g29,s30_a29,s30_a28,s30_a27,s30_a26,s30_a25,s30_a24,s30_a23,s30_a22,s30_a21,s30_a20,s30_a19,s30_a18,s30_a17,s30_a16,s30_a15,s30_a14,s30_a13,s30_a12,s30_a11,s30_a10,s30_a9,s30_a8,s30_a7,s30_a6,s30_a5,s30_a4,s30_a3,s30_a2,s30_a1);
exor _sx30(out[30],c29,p30);

// s31
wire s31_a30, s31_a29, s31_a28, s31_a27, s31_a26, s31_a25, s31_a24, s31_a23, s31_a22, s31_a21, s31_a20, s31_a19, s31_a18, s31_a17, s31_a16, s31_a15, s31_a14, s31_a13, s31_a12, s31_a11, s31_a10, s31_a9, s31_a8, s31_a7, s31_a6, s31_a5, s31_a4, s31_a3, s31_a2, s31_a1;
and _s31_a30(s31_a30,p30,g29);
and _s31_a29(s31_a29,p30,p29,g28);
and _s31_a28(s31_a28,p30,p29,p28,g27);
and _s31_a27(s31_a27,p30,p29,p28,p27,g26);
and _s31_a26(s31_a26,p30,p29,p28,p27,p26,g25);
and _s31_a25(s31_a25,p30,p29,p28,p27,p26,p25,g24);
and _s31_a24(s31_a24,p30,p29,p28,p27,p26,p25,p24,g23);
and _s31_a23(s31_a23,p30,p29,p28,p27,p26,p25,p24,p23,g22);
and _s31_a22(s31_a22,p30,p29,p28,p27,p26,p25,p24,p23,p22,g21);
and _s31_a21(s31_a21,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,g20);
and _s31_a20(s31_a20,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,g19);
and _s31_a19(s31_a19,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,g18);
and _s31_a18(s31_a18,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,g17);
and _s31_a17(s31_a17,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s31_a16(s31_a16,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s31_a15(s31_a15,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s31_a14(s31_a14,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s31_a13(s31_a13,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s31_a12(s31_a12,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s31_a11(s31_a11,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s31_a10(s31_a10,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s31_a9(s31_a9,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s31_a8(s31_a8,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s31_a7(s31_a7,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s31_a6(s31_a6,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s31_a5(s31_a5,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s31_a4(s31_a4,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s31_a3(s31_a3,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s31_a2(s31_a2,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s31_a1(s31_a1,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c30(c30,g30,s31_a30,s31_a29,s31_a28,s31_a27,s31_a26,s31_a25,s31_a24,s31_a23,s31_a22,s31_a21,s31_a20,s31_a19,s31_a18,s31_a17,s31_a16,s31_a15,s31_a14,s31_a13,s31_a12,s31_a11,s31_a10,s31_a9,s31_a8,s31_a7,s31_a6,s31_a5,s31_a4,s31_a3,s31_a2,s31_a1);
exor _sx31(out[31],c30,p31);

// OVERFLOW
wire s32_a31, s32_a30, s32_a29, s32_a28, s32_a27, s32_a26, s32_a25, s32_a24, s32_a23, s32_a22, s32_a21, s32_a20, s32_a19, s32_a18, s32_a17, s32_a16, s32_a15, s32_a14, s32_a13, s32_a12, s32_a11, s32_a10, s32_a9, s32_a8, s32_a7, s32_a6, s32_a5, s32_a4, s32_a3, s32_a2, s32_a1;
and _s32_a31(s32_a31,p31,g30);
and _s32_a30(s32_a30,p31,p30,g29);
and _s32_a29(s32_a29,p31,p30,p29,g28);
and _s32_a28(s32_a28,p31,p30,p29,p28,g27);
and _s32_a27(s32_a27,p31,p30,p29,p28,p27,g26);
and _s32_a26(s32_a26,p31,p30,p29,p28,p27,p26,g25);
and _s32_a25(s32_a25,p31,p30,p29,p28,p27,p26,p25,g24);
and _s32_a24(s32_a24,p31,p30,p29,p28,p27,p26,p25,p24,g23);
and _s32_a23(s32_a23,p31,p30,p29,p28,p27,p26,p25,p24,p23,g22);
and _s32_a22(s32_a22,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,g21);
and _s32_a21(s32_a21,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,g20);
and _s32_a20(s32_a20,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,g19);
and _s32_a19(s32_a19,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,g18);
and _s32_a18(s32_a18,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,g17);
and _s32_a17(s32_a17,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,g16);
and _s32_a16(s32_a16,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,g15);
and _s32_a15(s32_a15,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,g14);
and _s32_a14(s32_a14,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,g13);
and _s32_a13(s32_a13,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,g12);
and _s32_a12(s32_a12,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,g11);
and _s32_a11(s32_a11,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,g10);
and _s32_a10(s32_a10,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,g9);
and _s32_a9(s32_a9,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,g8);
and _s32_a8(s32_a8,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,g7);
and _s32_a7(s32_a7,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,g6);
and _s32_a6(s32_a6,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,g5);
and _s32_a5(s32_a5,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,g4);
and _s32_a4(s32_a4,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,g3);
and _s32_a3(s32_a3,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,g2);
and _s32_a2(s32_a2,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,g1);
and _s32_a1(s32_a1,p31,p30,p29,p28,p27,p26,p25,p24,p23,p22,p21,p20,p19,p18,p17,p16,p15,p14,p13,p12,p11,p10,p9,p8,p7,p6,p5,p4,p3,p2,p1,g0);
or _c31(ovf,g31,s32_a31,s32_a30,s32_a29,s32_a28,s32_a27,s32_a26,s32_a25,s32_a24,s32_a23,s32_a22,s32_a21,s32_a20,s32_a19,s32_a18,s32_a17,s32_a16,s32_a15,s32_a14,s32_a13,s32_a12,s32_a11,s32_a10,s32_a9,s32_a8,s32_a7,s32_a6,s32_a5,s32_a4,s32_a3,s32_a2,s32_a1);


	
endmodule
