module mux2to1(input [2:0] rd1, input [2:0] rd2, input Sel, output reg [2:0] desReg);
	always @ (rd1 or rd2 or Sel)
	begin
		case (Sel)
			0:
			begin
				desReg=rd2;
			end
			1:
			begin
				desReg=rd1;
			end
		endcase
	end
endmodule