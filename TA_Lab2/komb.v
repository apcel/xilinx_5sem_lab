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
assign r_o = (x & d & ~b & ~i1 & ~i0) | (x & d & b & i1 & ~i0) | (x & d & b & ~i1 & i0) | (x & ~d & b & ~i1 & ~i0) | (r & x & ~d & b & ~i1 & i0) | (r & x & d & b & ~i1 & ~i0) | (r & d & ~b & i1 & ~i0);
assign x_o = (~i1 & ~i0) | (x & ~i1 & i0) | (~x & d & ~i1 & i0) | (x & i1 & ~i0) | (~x & b & i1 & ~i0);
assign d_o = (x & d & ~i1) | (r & ~d & ~i1 & i0) | (i1 & ~i0);
assign b_o = (x & b & ~i1 & ~i0) | (~i1 & i0) | (x & b & i1 & ~i0) | (r & d & ~b & i1 & ~i0);
/*wire [3:0] state;
wire [1:0] i;
reg [3:0] nextState;

assign r_o = nextState[3];
assign x_o = nextState[2];
assign d_o = nextState[1];
assign b_o = nextState[0];
assign state = {r,x,d,b};
assign i = {i1,i0};

always @ (r, x, d, b, i1, i0)
begin
	case(state)
	4'b0000: //lambda
		case(i)
		2'b00: nextState <= 4'b0100;
		2'b01: nextState <= 4'b0001;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b0010;
		endcase
	4'b0001: //_b
		case(i)
		2'b00: nextState <= 4'b0100;
		2'b01: nextState <= 4'b0001;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b0110;
		endcase
	4'b0010: //_d
		case(i)
		2'b00: nextState <= 4'b0100;
		2'b01: nextState <= 4'b0101;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b0010;
		endcase
	4'b0110: //d
		case(i)
		2'b00: nextState <= 4'b1110;
		2'b01: nextState <= 4'b0111;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b0110;
		endcase
	4'b0111: //bd
		case(i)
		2'b00: nextState <= 4'b0111;
		2'b01: nextState <= 4'b1111;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b1111;
		endcase
	4'b0101: //b
		case(i)
		2'b00: nextState <= 4'b1101;
		2'b01: nextState <= 4'b0101;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b0111;
		endcase
	4'b0100: //a
		case(i)
		2'b00: nextState <= 4'b0100;
		2'b01: nextState <= 4'b0101;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b0110;
		endcase
	4'b1101: //ba
		case(i)
		2'b00: nextState <= 4'b1101;
		2'b01: nextState <= 4'b1111;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b0111;
		endcase
	4'b1111: //x
		case(i)
		2'b00: nextState <= 4'b1111;
		2'b01: nextState <= 4'b1111;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b1111;
		endcase
	4'b1110: //da
		case(i)
		2'b00: nextState <= 4'b1110;
		2'b01: nextState <= 4'b0111;
		2'b11: nextState <= 4'b0000;
		2'b10: nextState <= 4'b1111;
		endcase
	endcase;
end*/
endmodule
