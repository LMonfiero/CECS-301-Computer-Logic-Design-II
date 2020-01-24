`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:48:06 03/04/2019
// Design Name:   cathode
// Module Name:   C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Project_2/cathode_tf.v
// Project Name:  Project_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cathode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cathode_tf;

	// Inputs
	reg [3:0] in;
	reg clk;
	reg rst;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	cathode uut (
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.in(in), 
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

