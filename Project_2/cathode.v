`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:23 02/26/2019 
// Design Name: 
// Module Name:    cathode
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
module cathode(clock, reset, Cathode);
	input clock, reset;
	output reg [2:0] Cathode;
	
	rotator RT(.clk(clock), .rst(reset), .rotate(rotate));
	
	always @ (posedge clock, posedge reset)
		if (reset) Cathode <= 3'b0; else
		if (rotate) Cathode <= Cathode + 3'b1;
		else Cathode <= Cathode;

endmodule
