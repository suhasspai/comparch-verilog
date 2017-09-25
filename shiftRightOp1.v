module shiftRightOp1(input [24:0] tempOp, input [7:0] absDiff, output reg [24:0] shiftOp);
	always @ (tempOp or absDiff)
	begin
		shiftOp=tempOp>>absDiff;
	end
endmodule