`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:37 04/23/2019 
// Design Name: 
// Module Name:    ALU 
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
//Arithmetic Logic Unit
module ALU(A, B, op, result, Z, C);
	input 	[15:0]	A, B;
	input 	[2:0] 	op;
	output	[15:0]	result;
	output 				Z, C;
	reg 		[15:0]	result;
	reg 					C;
	assign Z = ~|result;
	
	always @(*)
		case (op)
			3'b000:	{C, result}	=	A + B;
			3'b001: 	{C, result} = 	A - B;
			3'b010:	result 		= 	A << 1;
			3'b011:	result		=	{A[0], A[15:1]};
			3'b100:	result 		=	A & B;
			3'b101:	result		= 	A | B;
			3'b110:	result		= 	A ^ B;
			3'b111:	result		=	~A;
			default:	result		=	3'b000;
		endcase




endmodule
