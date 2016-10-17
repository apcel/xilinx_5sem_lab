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
        input btnC,
        input btnU,
        output [7:0] seg,
        output [7:0] led,
        output [7:0] an,
        output [1:0] sw
			  );
BTN_FILTER filter(btnC, sigRST);
BTN_FILTER filter(btnU, sigCLK);

endmodule