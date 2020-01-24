`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:13:42 05/05/2019
// Design Name:   dflop
// Module Name:   C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/TestingStuff/d_flop_tf.v
// Project Name:  TestingStuff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module d_flop_tf;

	// Inputs
	reg clk;
	reg rst;
	reg din;

	// Outputs
	wire q2;

	// Instantiate the Unit Under Test (UUT)
	dflop uut (
		.clk(clk), 
		.rst(rst), 
		.din(din), 
		.q2(q2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		din = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

