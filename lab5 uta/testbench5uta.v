`timescale 1ns / 1ps


module testbench5uta;

	// Inputs
	reg [31:0] instruction;

	// Outputs
	wire [1:0] ins_type;
	wire [2:0] data_ins_type;
	wire [1:0] mem_ins_type;
	wire [1:0] branch_ins_type;

	// Instantiate the Unit Under Test (UUT)
	lab5uta uut (
		.instruction(instruction), 
		.ins_type(ins_type), 
		.data_ins_type(data_ins_type), 
		.mem_ins_type(mem_ins_type), 
		.branch_ins_type(branch_ins_type)
	);
  
	initial begin
		// Initialize Inputs
		instruction = 66769812;
		#10;    
		instruction=667788776;
		#10;
		instruction=457545621;
		#10;  
		instruction=54596330;
        
		// Add stimulus here

	end
      
endmodule

