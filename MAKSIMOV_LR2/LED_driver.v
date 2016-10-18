`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:04 10/18/2016 
// Design Name: 
// Module Name:    LED_driver 
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
module LED_driver(
    input clocksource,
    input [3:0] x0,
    input [3:0] x1,
    input [3:0] x2,
    output [6:0] seg,
    output [2:0] an
    );
wire [1:0] digitNumber;
wire [3:0] selectedDigit;
MS3 selectInput(x0, x1, x2, digitNumber, selectedDigit);
ctr4 currentNumber(clocksource, digitNumber);
HexToSeg DC7 (selectedDigit, seg);
DC3 selectOutput(digitNumber, an);
endmodule
