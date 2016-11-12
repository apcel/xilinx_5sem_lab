`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:28 11/12/2016 
// Design Name: 
// Module Name:    test_komb 
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
module test_komb(
    );
wire [3:0] nextState;
//reg [5:0] ctr;
reg [3:0] state;
reg [1:0] inp;
//assign state = ctr[5:2];
//assign inp = ctr[1:0];
//always
	//ctr <= #10 ctr + 1'b1;
initial 
begin
	inp <= 0'b00; //a
	state <= 0; #10;				//initial
	state <= 4'b0001; #10;		//_b
	state <= 4'b0010; #10;		//_d
	state <= 4'b0110; #10;		//d
	state <= 4'b0111; #10;		//bd
	state <= 4'b0101; #10;		//b
	state <= 4'b0100; #10;		//a
	state <= 4'b1101; #10;		//ba
	state <= 4'b1111; #10;		//x
	state <= 4'b1110; #10;		//da
		state <= 0; inp <= 0;
	#100;
		inp <= 0'b01;//b
	state <= 0; #10;				//initial
	state <= 4'b0001; #10;		//_b
	state <= 4'b0010; #10;		//_d
	state <= 4'b0110; #10;		//d
	state <= 4'b0111; #10;		//bd
	state <= 4'b0101; #10;		//b
	state <= 4'b0100; #10;		//a
	state <= 4'b1101; #10;		//ba
	state <= 4'b1111; #10;		//x
	state <= 4'b1110; #10;		//da
		state <= 0; inp <= 0;
	#100;
		inp <= 0'b11;//c
	state <= 0; #10;				//initial
	state <= 4'b0001; #10;		//_b
	state <= 4'b0010; #10;		//_d
	state <= 4'b0110; #10;		//d
	state <= 4'b0111; #10;		//bd
	state <= 4'b0101; #10;		//b
	state <= 4'b0100; #10;		//a
	state <= 4'b1101; #10;		//ba
	state <= 4'b1111; #10;		//x
	state <= 4'b1110; #10;		//da
		state <= 0; inp <= 0;
	#100;
		inp <= 0'b10;//d
	state <= 0; #10;				//initial
	state <= 4'b0001; #10;		//_b
	state <= 4'b0010; #10;		//_d
	state <= 4'b0110; #10;		//d
	state <= 4'b0111; #10;		//bd
	state <= 4'b0101; #10;		//b
	state <= 4'b0100; #10;		//a
	state <= 4'b1101; #10;		//ba
	state <= 4'b1111; #10;		//x
	state <= 4'b1110; #10;		//da
	#100;
	
end	
komb testig(
    .r(state[3]),
    .x(state[2]),
    .d(state[1]),
    .b(state[0]),
    .i1(inp[1]),
    .i0(inp[0]),
    .r_o(nextState[3]),
    .x_o(nextState[2]),
    .d_o(nextState[1]),
    .b_o(nextState[0])
    );

endmodule
