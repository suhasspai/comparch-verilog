module signToUnsign9(input [8:0] diffExpo, output reg sign, output reg [7:0] absDiff);
	always @ (diffExpo)
	begin
		sign=diffExpo[8];
		absDiff=diffExpo[7:0];
		if (sign==1)
		begin
			absDiff=~absDiff+1;
		end
	end
endmodule