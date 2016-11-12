`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:06:15 11/12/2016 
// Design Name: 
// Module Name:    komb 
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
module komb(
    input r,
    input x,
    input d,
    input b,
    input i1,
    input i0,
    output r_o,
    output x_o,
    output d_o,
    output b_o
    );
assign r_o = x&d&~b&~i1&~i0|x&d&b&i1&~i0|x&d&b&~i1&i0|x&~d&b&~i1&~i0|r&x&~d&b&~i1&i0|r&x&d&b&~i1&~i0|r&d&~b&i1&~i0;
assign x_o = ~i1&~i0|x&~i1&i0|~x&d&~i1&i0|x&i1&~i0|~x&b&i1&~i0;
assign d_o = x&d&~i1|r&~d&~i1&i0|i1&~i0;
assign b_o = x&b&~i1&~i0|~i1&i0|x&b&i1&~i0|r&d&~b&i1&~i0;
endmodule
