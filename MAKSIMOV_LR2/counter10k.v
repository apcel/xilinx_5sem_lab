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
reg outputted;
initial 
	begin
		valueToCompareWith <= 16'h000a;
		reached <= 0;
		internalCounter <= 16'h0000;
		outputted <= 0;
		//internal = internalCounter;
	end

always @ (posedge reset)
	begin
		internalCounter <= 16'h0000;
		reached <= 0;
		outputted <= 0;
	end

always @ (posedge tick)
begin
	if(~reset)
		if(internalCounter < valueToCompareWith)//timeout was not reached
			internalCounter = internalCounter + 1;
		else//timeout was reached
			if(outputted)
				reached <= 1;
			else
			begin
				reached <= 1;
				outputted <= 1;
			end
end


endmodule
