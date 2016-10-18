`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:15:08 10/18/2016 
// Design Name: 
// Module Name:    test_TOP 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test_TOP(
    );
	 /* TOP(
			input clk,
			input btnC,
			input btnU,
			output [6:0] seg,
			output [0:0] led,
			output [2:0] an
		);*/
reg rawC, rawU;
reg clk, btnC, btnU;
wire [6:0] seg;
wire led;
wire [2:0] an;
TOP topToTest(clk, btnC, btnU, seg, led, an);
initial begin
	clk <=0;
	btnU <= 0;
	btnC <= 0; #1; btnC <=1; #1; btnC <=0;
	#1000;
	
	rawU <=1; #2000000; rawU <=0;#10000000; //1
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //F
end
always @ (posedge rawU)
	begin
		btnU <=1; #1000; btnU <=0; #1000;
		btnU <=1; #2000; btnU <=0; #10000;
		btnU <=1; #4000; btnU <=0; #50000;
		btnU <=1;
	end
always @ (negedge rawU)
	begin
		btnU <=0; #1000; btnU <=1; #1000;
		btnU <=0; #2000; btnU <=1; #10000;
		btnU <=0; #4000; btnU <=1; #50000;
		btnU <=0;
	end

always 
begin
	#10;
	clk <= ~clk; //100 MHz
end
endmodule
