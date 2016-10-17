`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:09 10/17/2016 
// Design Name: 
// Module Name:    BTN_FILTER 
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
module BTN_FILTER(
    input rawButton,
	 input clockSource,
    output reg currentState
    );
reg resetCounter;
counter10k filterDelay(clockSource, resetCounter, sigChanged);

initial begin
	currentState <= 0;
	resetCounter <= 0;
end

always @ (rawButton)
	resetCounter = ~(rawButton ^ currentState);

always @ (posedge sigChanged)
	currentState = ~currentState;

endmodule
