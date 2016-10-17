`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:30 10/17/2016 
// Design Name: 
// Module Name:    multiplexer4 
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
module multiplexer4(
    input [4:0] X,
    input [2:0] Address,
    output reg Y
    );
// <\w+?(\d)> => X[\1]  -- template to input
// <output>   => Y      -- template to output
   always @(Address, X[1], X[2], X[3], X[4])
      case (Address)
         2'b00: Y = X[1];
         2'b01: Y = X[2];
         2'b10: Y = X[3];
         2'b11: Y = X[4];
      endcase

endmodule
