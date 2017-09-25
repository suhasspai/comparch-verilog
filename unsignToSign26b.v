module unsignToSign26b(input [24:0] in25bUnsigned, input sign, output reg [25:0] out26bSigned);
	always @ (in25bUnsigned or sign)
	begin
		out26bSigned[25]=sign;
		out26bSigned[24:0]=in25bUnsigned;
		if (sign==1)
		begin
			out26bSigned[24:0]=~out26bSigned[24:0]+1;
		end
	end
endmodule