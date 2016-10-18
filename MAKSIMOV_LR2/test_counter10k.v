`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:40 10/17/2016 
// Design Name: 
// Module Name:    test 
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
module test_counter10k(
    );
reg good;
reg tick;
wire reached;
wire [15:0] internal;
counter10k counter(tick, runCounter, reached, internal);
reg [16:0] i;
reg runCounter;
initial begin
	good = 1'h0;
	runCounter=0;
	runCounter=1;
	tick=1'b0;
	for(i = 17'h00001; i < 17'h0001f; i = i + 1)
		begin
			if(reached)
				good <= 1'h1;	
			tick=1'b1;
			#1;
			tick=1'b0;
			#1;
			if(i % 10000 == 0)
			begin
					runCounter=0;
					#1;
					runCounter=1;
			end

		end
end


  // reg [7:0] simpleClock;
  // reg runCounter;
  // always @(posedge tick)
   //   if (runCounter)
    //     simpleClock <= 0;
     // else
      //   simpleClock <= simpleClock + 1;
						
endmodule
