`include "clock_divider.sv"
`timescale 1ns/1ps;
module clockdivider_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire divideby2;
	wire divideby4;
	wire divideby8;
	wire divideby16;

	// Instantiate the Unit Under Test (UUT)
	clockdivider uut (
		.clk(clk), 
		.divideby2(divideby2), 
		.divideby4(divideby4), 
		.divideby8(divideby8), 
		.divideby16(divideby16),
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		//clk = 0;
		rst = 0;
		#20 rst=1;
        
		// Add stimulus here

	end

	 initial clk = 0; 
	 always #20 clk = ~clk;

	
	initial 
	#200 $finish;
      
endmodule
