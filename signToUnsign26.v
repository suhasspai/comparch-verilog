module signToUnsign26(input [25:0] ALUout, output reg sign, output reg [24:0] frac);
	always @ (ALUout)
	begin
		sign=ALUout[25];
		frac=ALUout[24:0];
		if (sign==1)
		begin
			frac=~frac+1;
		end
	end
endmodule