`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:57:30 02/18/2019
// Design Name:   quiz2
// Module Name:   C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Testing/quiz2_tf.v
// Project Name:  Testing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: quiz2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module quiz2_tf;

	// Inputs
	reg clk;
	reg rst;
	reg din;

	// Outputs
	wire out;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	quiz2 uut (
		.clk(clk), 
		.rst(rst), 
		.din(din), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		din = 0;

		for (i=0; i < 8; i = i + 1)
			#20 din = i[2:0];
			#20 $finish;
		
        
		// Add stimulus here

	end
      
endmodule

