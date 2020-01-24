`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:20 03/05/2019 
// Design Name: 
// Module Name:    Display 
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
module Display(clock, reset, Anode, Cathode);
	input clock, reset;
	output wire [7:0] Anode, Cathode;

	anodes AN (.clock(clock), .reset(reset), .Anode(Anode));
	Hex7Seg	HS (.clock(clock), .reset(reset), .Cathode(Cathode));

endmodule
