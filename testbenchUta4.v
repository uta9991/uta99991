`timescale 1ns / 1ps


module testbenchUta4;

	// Inputs
	reg [31:0] instruction;

	// Outputs
	wire [1:0] ins_type;      
	wire [2:0] data_ins_type; 

	// Instantiate the Unit Under Test (UUT)
	lab4uta uut (
		.instruction(instruction), 
		.ins_type(ins_type), 
		.data_ins_type(data_ins_type)
	);
	
	initial begin
		// Initialize Inputs
		instruction = 0;
		#10;
		instruction=36445;
		#10;
		instruction=42544048;
		#10; 
		instruction=54511849;
		
	end
      
endmodule
