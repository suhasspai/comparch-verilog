module testfloatingPointAdder;
//inputs
reg [31:0] in1,in2;
reg clk;
reg reset;
//outputs
wire ResultSign1bit;
wire [7:0]ResultExponet8bits;
wire [24:0]ResultFraction25bits;
floatingPointAdder FPA( in1,in2,clk,reset, ResultSign1bit,ResultExponet8bits,ResultFraction25bits);
always
#10 clk=~clk;
initial begin
//Initialize Inputs
in1 = 0;
in2 = 0;
clk = 0;
reset = 0;
$monitor($time," %b %b %b ",ResultSign1bit,ResultExponet8bits,ResultFraction25bits);
#20 in1=32'b0_1000_0001_0010_0000_0000_0000_0000_000;in2=32'b0_1000_0000_0010_0000_0000_0000_0000_000;
//4.5+2.25 ResultSign1bit =0, ResultExponent8bits =1000_0001, ResultFraction25bits =01_1011_0000_0000_0000_000
#20 in1=32'b0_1000_0001_0010_0000_0000_0000_0000_000; in2=32'b1_1000_0000_0010_0000_0000_0000_0000_000;
//4.5-2.25 ResultSign1bit =0, ResultExponent8bits =1000_0001, ResultFraction25bits =00_1001_0000_0000_0000_000
#20 in1=32'b1_1000_0001_0010_0000_0000_0000_0000_000; in2=32'b0_1000_0000_0010_0000_0000_0000_0000_000;
//-4.5+2.25 ResultSign1bit =1, ResultExponent8bits =1000_0001, ResultFraction25bits =00_1001_0000_0000_0000_000
#20 in1=32'b1_1000_0001_0010_0000_0000_0000_0000_000; in2=32'b1_1000_0000_0010_0000_0000_0000_0000_000;
//-4.5-2.25 ResultSign1bit =1, ResultExponent8bits =1000_0001, ResultFraction25bits =01_1011_0000_0000_0000_000
#20 $finish;
end
endmodule
