module D_ff(input clk, input reset, input d, output reg q);
	always @ (negedge clk)
	begin
		if(reset==1)
			q=0;
		else
			q=d;
	end
endmodule