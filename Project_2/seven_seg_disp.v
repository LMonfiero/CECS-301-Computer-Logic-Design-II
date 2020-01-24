`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:12:39 03/04/2019 
// Design Name: 
// Module Name:    seven_seg_disp 
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
module seven_seg_disp(d0, d1, d2, d3, d4, d5, d6, dp, anode, clk, rst, sel);
	input clk, rst;
	input [2:0] sel;
	wire [3:0] hexnum;
	output reg d0, d1, d2, d3, d4, d5, d6;
	output wire dp;
	output reg [7:0] anode;
	reg [7:0] nAnode;
	
	bit3counter counter (rst, clk, countVal);
	mux8to1 mux (.sel(sel),
	7'hFE,
	7'hFD,
	7'hFB,
	7'hF7,
	7'hEF,
	7'hDF,
	7'hBF,
	7'h7F,
	.Y(anode));
	
	rotator rotation(.clk(clk), .rst(rst), .rotate(rotate));
	assign dp = 1'b1;
	
	//7 segment display decoder
	 always @(*)
		begin
			case(hexnum)
				4'h0: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h01; //0
				4'h1: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h4F; //1
				4'h2: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h12; //2
				4'h3: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h06; //3
				4'h4: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h4C; //4
				4'h5: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h24; //5
				4'h6: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h20; //6
				4'h7: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h0F; //7
				4'h8: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h00; //8
				4'h9: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h04; //9
				4'hA: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h08; //10
				4'hB: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h60; //11
				4'hC: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h31; //12
				4'hD: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h42; //13
 				4'hE: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h30; //14
				4'hF: 		{d0, d1, d2, d3, d4, d5, d6} = 7'h38; //15
				default: 	{d0, d1, d2, d3, d4, d5, d6} = 7'h7E; 
			endcase
		end
	
	always @(posedge clk, posedge rst)
		if(rst) anode <= 8'hFE;  else
		if(rotate) anode <= nAnode; 
	
	always @ (*)
		begin
		case(anode)
			8'hFE: 		nAnode = 8'hFD;
			8'hFD: 		nAnode = 8'hFB;
			8'hFB: 		nAnode = 8'hF7;
			8'hF7: 		nAnode = 8'hEF;
			8'hEF: 		nAnode = 8'hDF;
			8'hDF: 		nAnode = 8'hBF;
			8'hBF: 		nAnode = 8'h7F;
			8'h7F: 		nAnode = 8'hFE;
			default: 	nAnode = 8'hFF;
		endcase
	end
endmodule 