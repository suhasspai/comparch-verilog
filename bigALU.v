module bigALU(input [25:0] ALUin1, input [25:0] ALUin2, output reg [25:0] ALUout);
	always @ (ALUin1 or ALUin2)
	begin
		ALUout=ALUin1+ALUin2;
	end
endmodule