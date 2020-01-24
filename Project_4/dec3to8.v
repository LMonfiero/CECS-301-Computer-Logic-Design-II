`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:10:51 04/23/2019 
// Design Name: 
// Module Name:    dec3to8 
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
//Decoder 3 to 8 bit
module dec3to8(step, write, out, y);
	input 				step, write;
	input 		[2:0]	y;
	output reg	[7:0]	out;
	
	always @ (*) 
		if (step & write)
			case (y)
				3'h0: out = 8'h01;
				3'h1: out = 8'h02;
				3'h2: out = 8'h04;
				3'h3: out = 8'h08;
				3'h4: out = 8'h10;
				3'h5: out = 8'h20;
				3'h6: out = 8'h40;
				3'h7: out = 8'h80;
				default: out = 8'h00;
			endcase






endmodule
