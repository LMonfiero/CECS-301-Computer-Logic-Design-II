`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:48 03/05/2019 
// Design Name: 
// Module Name:    anodes 
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
module anodes(clock, reset, Anode);
	input clock, reset;
	output [7:0] Anode;
	reg [7:0] Anode,nAnode;
	
	rotator RT1 (.clk(clock), .rst(reset), .rotate(rotate));
	
	always @(posedge clock, posedge reset)
		if (reset) Anode <= 8'hfe;	else 
		if (rotate) Anode <= nAnode;
		
	always @(*)
		case (Anode)
			8'hFE: 	nAnode = 8'hFD;
			8'hFD: 	nAnode = 8'hFB;
			8'hFB: 	nAnode = 8'hF7;
			8'hF7: 	nAnode = 8'hEF;
			8'hEF: 	nAnode = 8'hDF;
			8'hDF: 	nAnode = 8'hBF;
			8'hBF: 	nAnode = 8'h7F;
			8'h7F: 	nAnode = 8'hFE;
		default: 	nAnode = 8'hFF;
		endcase
endmodule 