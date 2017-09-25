module muxInputFrac(input [24:0] in1, input [24:0] in2, input selOp, output reg [24:0] Op);
	always @ (in1 or in2 or selOp)
	begin
		case (selOp)
			0:
			begin
				Op=in1;
			end
			1:
			begin
				Op=in2;
			end
		endcase
	end
endmodule