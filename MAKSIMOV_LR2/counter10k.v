`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:43 10/17/2016 
// Design Name: 
// Module Name:    counter10k 
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
module counter10k(
    input tick,
	 input run,
    output reached);
reg [15:0] internalCounter;
reg [15:0] valueToCompareWith;
reg clearInternal;

wire filteredTick;
wire clear;

initial 
	begin
		//valueToCompareWith <= 16'h000a; //44ns is 16'd10
		valueToCompareWith <= 16'h66C7; //44ns is 16'd10, so 1000000 / 44 is this
		clearInternal <=0; 	#1;
		clearInternal <=1;	#1;
		clearInternal <=0;	#1;
	end
	

assign countedNeededValue = internalCounter > valueToCompareWith;
assign reached = countedNeededValue & run;
assign filteredTick = tick & (~countedNeededValue) & run;
assign clear = ~run | clearInternal;

always @ (posedge filteredTick or posedge clear)
	if(clear)
		internalCounter = 16'h0000;
	else
		internalCounter = internalCounter + 1;	
endmodule
