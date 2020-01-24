`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:22 03/05/2019 
// Design Name: 
// Module Name:    count8bit 
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
module count8bit(clock, reset, Anode);
	input clock, reset;
	output reg [7:0] Anode;
	
	rotator RT(.clock(clock), .reset(reset), .rotate(ro));
	
	always @ (posedge clock, posedge reset)
		if (reset) Anode <= 8'hFE;
		else if (ro) Anode <= nAnode;
		
	always @ (*)
		case (Anode)
			8'h7F: 	nAnode = 8'hFE;
			8'hBF: 	nAnode = 8'h7F;
			8'hDF:	nAnode = 8'hBF;
			8'hEF: 	nAnode = 8'hDF;
			8'hF7: 	nAnode = 8'hEF;
			8'hFB: 	nAnode = 8'hF7;
			8'hFD: 	nAnode = 8'hFB;
			8'hFE: 	nAnode = 8'hFD;
		default: 	nAnode = 8'hFF;
		endcase
endmodule
