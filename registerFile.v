module registerFile(input clk, input reset, input regWrite, input [2:0] rs, input [2:0] rt, input [2:0] rd1,input [2:0] rd2, input [15:0] writeData, input select, output [15:0] outR0, output [15:0] outR1);
	wire [2:0] desReg;
	wire [7:0] decOut;
	wire [15:0] outR00, outR10, outR2, outR3, outR4, outR5, outR6, outR7;

	registerSet rSet(clk, reset, regWrite, decOut, writeData, outR00, outR10, outR2, outR3, outR4, outR5, outR6, outR7);
	mux2to1 mux1(rd1, rd2, select, desReg);
	decoder dec(desReg, decOut);
	mux8to1 muxRs(outR00, outR10, outR2, outR3, outR4, outR5, outR6, outR7, rs, outR0);
	mux8to1 muxRt(outR00, outR10, outR2, outR3, outR4, outR5, outR6, outR7, rt, outR1);
endmodule