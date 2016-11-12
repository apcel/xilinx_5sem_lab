`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:30 11/12/2016 
// Design Name: 
// Module Name:    test 
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
module test(
    );
reg x1, x0, clk;
wire y;
wire [3:0] state;
//TOP testing(.X1(x1), .X0(x0), .FD_CLK(clk), .Y(y));
   TOP UUT (
		.X1(  x1  ), 
		.X0(  x0  ), 
		.FD_CLK(  clk  ), 
		.Y(  y  ),
		.xo_(  state[0]  ), 
		.do_(  state[1]  ), 
		.bo_(  state[2]  ), 
		.ro_(  state[3]  )
   );


//always
	//clk <= #205 ~clk;
	
initial
begin
	clk <=0; 
	x1 = 0;
	x0 = 0; #205;
	clk <=1; #205; clk <=0; #205;
	clk <=1; #205; clk <=0; #205;
	clk <=1; #205; clk <=0; #205;
	clk <=1; #205; clk <=0; #205;
	clk <=1; #205; clk <=0; #205;
	
	x0 = 1; #201; clk <=1; #205; clk <=0; #205;
	x0 = 0; #201; clk <=1; #205; clk <=0; #205;
	x0 = 1; #201; clk <=1; #205; clk <=0; #205;
	x0 = 0; #201; clk <=1; #205; clk <=0; #205;
	x0 = 1; #201; clk <=1; #205; clk <=0; #205;
	x0 = 0; #201; clk <=1; #205; clk <=0; #205;
	x1 = 1; #201; clk <=1; #205; clk <=0; #205;
	x1 = 0; #201; clk <=1; #205; clk <=0; #205;
	x1 = 1; #201; clk <=1; #205; clk <=0; #205;
	
	x0 = 1; #201; clk <=1; #205; clk <=0; #205;
	x0 = 0; #201; clk <=1; #205; clk <=0; #205;
	x1 = 0; #201; clk <=1; #205; clk <=0; #205;
	x0 = 1; #201; clk <=1; #205; clk <=0; #205;
	x0 = 0; #201; clk <=1; #205; clk <=0; #205;
	x0 = 1; #201; clk <=1; #205; clk <=0; #205;
	x0 = 0; #201; clk <=1; #205; clk <=0; #205;
	
end	
	
endmodule
