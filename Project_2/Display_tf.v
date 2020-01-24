`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:24:59 03/05/2019
// Design Name:   Display
// Module Name:   C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Project_2/Display_tf.v
// Project Name:  Project_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Display_tf;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire [7:0] Anode;
	wire [7:0] Cathode;

	// Instantiate the Unit Under Test (UUT)
	Display uut (
		.clock(clock), 
		.reset(reset), 
		.Anode(Anode), 
		.Cathode(Cathode)
	);


	integer i;
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		i = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = 0; i < 256; i = i + 1)
			begin
				clock = $random;
				reset = $random;
				$write(".");
			end
				

		
	end
      
endmodule

