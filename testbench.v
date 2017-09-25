module testbench;
	//inputs
	reg clk,reset,regWrite,select;
	reg [2:0] rs,rt,rd1,rd2;
	reg [15:0] writeData;
	//outputs
	wire [15:0] outR0;
	wire [15:0] outR1;
	registerFile uut(clk,reset,regWrite,rs,rt,rd1,rd2,writeData,select,outR0,outR1);
	always begin #5 clk=~clk; end
	initial
	begin clk=0; reset=1; rs=3'd0; rt=3'd1; rd1=3'd0; rd2=3'd2;
	#5 reset=0; select=1; regWrite=1; rd1=3'd1; writeData=16'd1;
	#10 rd1=3'd3; writeData=16'd3;
	#10 rd1=3'd5; writeData=16'd5;
	#10 rd1=3'd7; writeData=16'd7;
	#10 select=0; writeData=16'd2;
	#10 rd2=3'd4; writeData=16'd4;
	#10 rd2=3'd6; writeData=16'd6;
	#10 regWrite=0; rs=3'd0; rt=3'd1;
	#10 rs=3'd2;rt=3'd3;
	#10 rs=3'd4;rt=3'd5;
	#10 rs=3'd6;rt=3'd7;
	#10 $finish;
	end
endmodule
