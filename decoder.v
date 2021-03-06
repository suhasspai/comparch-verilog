module decoder(input [2:0] destReg, output reg [7:0] decOut);
	always @ (destReg)
	begin
		case (destReg)
			3'b000:
			begin
				decOut=8'b00000001;
			end
			3'b001:
			begin
				decOut=8'b00000010;
			end
			3'b010:
			begin
				decOut=8'b00000100;
			end
			3'b011:
			begin
				decOut=8'b00001000;
			end
			3'b100:
			begin
				decOut=8'b00010000;
			end
			3'b101:
			begin
				decOut=8'b00100000;
			end
			3'b110:
			begin
				decOut=8'b01000000;
			end
			3'b111:
			begin
				decOut=8'b10000000;
			end
		endcase
	end
endmodule