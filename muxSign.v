module muxSign(input s1, input s2, input selSign, output reg ResultSign);
	always @ (s1 or s2 or selSign)
	begin
		case (selSign)
			0:
			begin
				ResultSign=s1;
			end
			1:
			begin
				ResultSign=s2;
			end
		endcase
	end
endmodule