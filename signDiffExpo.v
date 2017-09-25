module signDiffExpo(input [7:0] number1OutExpo, input [7:0] number2OutExpo, output reg [8:0] diffExpo);
	always @ (number1OutExpo or number2OutExpo)
	begin
		diffExpo=number1OutExpo-number2OutExpo;
	end
endmodule