`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:16 10/17/2016 
// Design Name: 
// Module Name:    HexToLed 
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
module HexToLed(
    input [3:0] x,
    output reg [7:0] y
    );
//y[7] is dot
initial y <= 0;

always @ (x)
begin
   case (Address)
      4'b0000: y <= 7'b0001000;
      4'b0001: y <= 7'b1101101;
      4'b0010: y <= 7'b0100010;
      4'b0011: y <= 7'b0100100;

      4'b0100: y <= 7'b1000101;
      4'b0101: y <= 7'b0010100;
      4'b0110: y <= 7'b0010000;
      4'b0111: y <= 7'b0101101;

      4'b1000: y <= 7'b0000000;
      4'b1001: y <= 7'b0000100;
      4'b1010: y <= 7'b0000001;
      4'b1011: y <= 7'b1010000;

      4'b1100: y <= 7'b0011010;
      4'b1101: y <= 7'b1100000;
      4'b1110: y <= 7'b0010010;
      4'b1111: y <= 7'b0010011;

      default: y <= 7'b1111111;
   endcase
end

endmodule
