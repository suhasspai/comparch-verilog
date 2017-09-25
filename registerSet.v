module registerSet(input clk, input reset, input regWrite, input [7:0] decOut, input [15:0] writeData, output [15:0] outR0, output [15:0] outR1, output [15:0] outR2, output [15:0] outR3, output [15:0] outR4, output [15:0] outR5, output [15:0] outR6, output [15:0] outR7);
	register16bit register0(clk, reset, regWrite, decOut[0], writeData, outR0);
	register16bit register1(clk, reset, regWrite, decOut[1], writeData, outR1);
	register16bit register2(clk, reset, regWrite, decOut[2], writeData, outR2);
	register16bit register3(clk, reset, regWrite, decOut[3], writeData, outR3);
	register16bit register4(clk, reset, regWrite, decOut[4], writeData, outR4);
	register16bit register5(clk, reset, regWrite, decOut[5], writeData, outR5);
	register16bit register6(clk, reset, regWrite, decOut[6], writeData, outR6);
	register16bit register7(clk, reset, regWrite, decOut[7], writeData, outR7);
endmodule