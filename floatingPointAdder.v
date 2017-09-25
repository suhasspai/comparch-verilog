module floatingPointAdder(input [31:0] in1, input [31:0] in2, input clk, input reset, output ResultSign1bit, output [7:0] ResultExponent8bits, output [24:0] ResultFraction25bits);
	wire [31:0] num1, num2;
	wire [24:0] tempOp, I1, I2;
	wire [25:0] ALUin1, ALUin2, ALUOut;
	wire [8:0] diffExpo;
	wire [7:0] absDiff;
	wire sign, signBit0, signBit1;

	register32bits R1(clk, reset, in1, num1);
	register32bits R2(clk, reset, in2, num2);

	signDiffExpo SDE(num1[30:23], num2[30:23], diffExpo);
	signToUnsign9 STU9(diffExpo, sign, absDiff);

	muxGreaterExpo MGE(num1[30:23], num2[30:23], sign, ResultExponent8bits);
	
	muxInputFrac MIF1({2'b01, num2[22:0]}, {2'b01, num1[22:0]}, sign, tempOp);
	shiftRightOp1 SRO(tempOp, absDiff, I1);
	muxInputFrac MIF2({2'b01, num1[22:0]}, {2'b01, num2[22:0]}, sign, I2);

	muxSign MS1(num2[31], num1[31], sign, signBit0);
	muxSign MS2(num1[31], num2[31], sign, signBit1);

	unsignToSign26b UTS1(I1, signBit0, ALUin1);
	unsignToSign26b UTS2(I2, signBit1, ALUin2);

	bigALU BA(ALUin1, ALUin2, ALUOut);

	signToUnsign26 STU26(ALUOut, ResultSign1bit, ResultFraction25bits);
endmodule