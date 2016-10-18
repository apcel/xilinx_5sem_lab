`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:44 10/06/2016 
// Design Name: 
// Module Name:    LR1_TOP 
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
// ^[^/].*?(\w+)\s*:\s*(\w+).*?(\d)+.*?(\d)+.*  => \2put [\3:\4] \1,    -- vhd to v [bus]
// ^[^/].*?(\w+)\s*:\s*(\w+).*?                 => \2put \1,            -- vhd to v [bus]
module TOP(
			input clk,
			input btnC,
			input btnU,
			output [6:0] seg,
			output [0:0] led,
			output [2:0] an
		);
BTN_FILTER RSTfilter(btnC, clk, sigRST);
BTN_FILTER CLICKfilter(btnU, clk, sigCLICK);
core core(sigCLICK, sigRST, seg[7:4], seg[3:2], {seg[1:0], an}, led);


endmodule