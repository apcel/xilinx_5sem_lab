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
	//ctr <= #20 ctr + 1'b1;
initial 
begin
	inp <= 2'b00; //a
	state <= 0; #20;				//initial
	state <= 4'b0001; #20;		//_b
	state <= 4'b0010; #20;		//_d
	state <= 4'b0110; #20;		//d
	state <= 4'b0111; #20;		//bd
	state <= 4'b0101; #20;		//b
	state <= 4'b0100; #20;		//a
	state <= 4'b1101; #20;		//ba
	state <= 4'b1111; #20;		//x
	state <= 4'b1110; #20;		//da
		state <= 0; inp <= 0;
	#200;
		inp <= 2'b01;//b
	state <= 0; #20;				//initial
	state <= 4'b0001; #20;		//_b
	state <= 4'b0010; #20;		//_d
	state <= 4'b0110; #20;		//d
	state <= 4'b0111; #20;		//bd
	state <= 4'b0101; #20;		//b
	state <= 4'b0100; #20;		//a
	state <= 4'b1101; #20;		//ba
	state <= 4'b1111; #20;		//x
	state <= 4'b1110; #20;		//da
		state <= 0; inp <= 0;
	#200;
		inp <= 2'b11;//c
	state <= 0; #20;				//initial
	state <= 4'b0001; #20;		//_b
	state <= 4'b0010; #20;		//_d
	state <= 4'b0110; #20;		//d
	state <= 4'b0111; #20;		//bd
	state <= 4'b0101; #20;		//b
	state <= 4'b0100; #20;		//a
	state <= 4'b1101; #20;		//ba
	state <= 4'b1111; #20;		//x
	state <= 4'b1110; #20;		//da
		state <= 0; inp <= 0;
	#200;
		inp <= 2'b10;//d
	state <= 0; #20;				//initial
	state <= 4'b0001; #20;		//_b
	state <= 4'b0010; #20;		//_d
	state <= 4'b0110; #20;		//d
	state <= 4'b0111; #20;		//bd
	state <= 4'b0101; #20;		//b
	state <= 4'b0100; #20;		//a
	state <= 4'b1101; #20;		//ba
	state <= 4'b1111; #20;		//x
	state <= 4'b1110; #20;		//da
	#200;
	
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
