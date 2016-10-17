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
module test(
    );
reg good;
reg tick;
wire reached;
wire [15:0] internal;
counter10k counter(tick, clear, reached, internal);
reg [16:0] i;
reg clear;
initial begin
	good = 1'h0;
	clear=1'b1;
	clear=1'b0;
	tick=1'b0;
	for(i = 17'h00001; i < 17'h1ffff; i = i + 1)
		begin
			tick=1'b1;
			#1;
			tick=1'b0;
			#1;
			if(i % 10000 == 0)
			begin
					clear=1'b1;
					#1;
					clear=1'b0;
			end
			if(reached)
				good <= 1'h1;	
		end
end


  // reg [7:0] simpleClock;
  // reg clear;
  // always @(posedge tick)
   //   if (clear)
    //     simpleClock <= 0;
     // else
      //   simpleClock <= simpleClock + 1;
						
endmodule
