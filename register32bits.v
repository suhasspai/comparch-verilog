module register32bits(input clk, input reset, input [31:0] numberIn, output [31:0] numberOut);
	D_ff d0(clk, reset, numberIn[0], numberOut[0]);
	D_ff d1(clk, reset, numberIn[1], numberOut[1]);
	D_ff d2(clk, reset, numberIn[2], numberOut[2]);
	D_ff d3(clk, reset, numberIn[3], numberOut[3]);
	D_ff d4(clk, reset, numberIn[4], numberOut[4]);
	D_ff d5(clk, reset, numberIn[5], numberOut[5]);
	D_ff d6(clk, reset, numberIn[6], numberOut[6]);
	D_ff d7(clk, reset, numberIn[7], numberOut[7]);
	D_ff d8(clk, reset, numberIn[8], numberOut[8]);
	D_ff d9(clk, reset, numberIn[9], numberOut[9]);
	D_ff d10(clk, reset, numberIn[10], numberOut[10]);
	D_ff d11(clk, reset, numberIn[11], numberOut[11]);
	D_ff d12(clk, reset, numberIn[12], numberOut[12]);
	D_ff d13(clk, reset, numberIn[13], numberOut[13]);
	D_ff d14(clk, reset, numberIn[14], numberOut[14]);
	D_ff d15(clk, reset, numberIn[15], numberOut[15]);
	D_ff d16(clk, reset, numberIn[16], numberOut[16]);
	D_ff d17(clk, reset, numberIn[17], numberOut[17]);
	D_ff d18(clk, reset, numberIn[18], numberOut[18]);
	D_ff d19(clk, reset, numberIn[19], numberOut[19]);
	D_ff d20(clk, reset, numberIn[20], numberOut[20]);
	D_ff d21(clk, reset, numberIn[21], numberOut[21]);
	D_ff d22(clk, reset, numberIn[22], numberOut[22]);
	D_ff d23(clk, reset, numberIn[23], numberOut[23]);
	D_ff d24(clk, reset, numberIn[24], numberOut[24]);
	D_ff d25(clk, reset, numberIn[25], numberOut[25]);
	D_ff d26(clk, reset, numberIn[26], numberOut[26]);
	D_ff d27(clk, reset, numberIn[27], numberOut[27]);
	D_ff d28(clk, reset, numberIn[28], numberOut[28]);
	D_ff d29(clk, reset, numberIn[29], numberOut[29]);
	D_ff d30(clk, reset, numberIn[30], numberOut[30]);
	D_ff d31(clk, reset, numberIn[31], numberOut[31]);
endmodule