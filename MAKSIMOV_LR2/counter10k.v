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
	 input reset,
    output reg reached);
reg [15:0] internalCounter;
reg [15:0] valueToCompareWith;
initial 
	begin
		valueToCompareWith <= 16'h000a; //44ns is 16'd10
		//valueToCompareWith <= 16'h58C7; //44ns is 16'd10, so 1000000 / 44 is this
		reached <= 0;
		internalCounter <= 16'h0000;
	end

always @ (reset)
	begin
		internalCounter <= 16'h0000;
		reached <= 0;
	end

always @ (posedge tick)
begin
	if(~reset)
		if(internalCounter < valueToCompareWith)//timeout was not reached
			internalCounter = internalCounter + 1;
		else//timeout was reached
			reached <= 1;
			
end


endmodule
