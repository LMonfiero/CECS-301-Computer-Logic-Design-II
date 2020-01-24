`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:35 03/05/2019 
// Design Name: 
// Module Name:    Hex7Seg 
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
module Hex7Seg(clock, reset, Cathode);
	input clock, reset;
	output reg [7:0] Cathode;
	wire [3:0] HexVal;
	
	mux8to1 M81 (.clock(clock), .reset(reset), .out(HexVal));

	always @ (*)
		case(HexVal)
			4'h0: Cathode = 8'hC0;
			4'h1: Cathode = 8'hF9;
			4'h2: Cathode = 8'hA4;
			4'h3: Cathode = 8'hB0;
			4'h4: Cathode = 8'h99;
			4'h5: Cathode = 8'h92;
			4'h6: Cathode = 8'h82;
			4'h7: Cathode = 8'hF8;
			4'h8: Cathode = 8'h80;
			4'h9: Cathode = 8'h98;
			4'hA: Cathode = 8'h88;
			4'hB: Cathode = 8'h83;
			4'hC: Cathode = 8'hC6;
			4'hD: Cathode = 8'hA1;
			4'hE: Cathode = 8'h86;
			4'hF: Cathode = 8'h8E;
		default: Cathode = 8'hFF;
		endcase
endmodule
