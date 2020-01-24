`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:49 03/05/2019 
// Design Name: 
// Module Name:    TopLvlDiag 
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
module TopLvlDiag(
clock,
reset,
InVal,
Anode,
Cathode);

	input clock, reset;
	input [31:0] InVal;
	output [7:0] Anode, Cathode;
	wire [3:0] HexVal;
	wire [3:0] mod8Count;
	
	rotator rotation0 (clock, reset, rotate);
	bit3counter bc3 (clock, reset, rotate, mod8Count);
	mux8to1 m81	(.sel(mod8Count),
	.d0(InVal[3:0]),
	.d1(InVal[7:4]),
	.d2(InVal[11:8]),
	.d3(InVal[15:12]),
	.d4(InVal[19:16]),
	.d5(InVal[23:20]),
	.d6(InVal[27:24]),
	.d7(InVal[31:28]),
	.Y(HexVal));
	seven_seg_disp hto7s();



endmodule
