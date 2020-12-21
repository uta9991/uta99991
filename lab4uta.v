`timescale 1ns / 1ps

module lab4uta(
input [31:0] instruction,
output reg[1:0] ins_type,
output reg [2:0] data_ins_type
    );
	  
	 always @(instruction) 
begin

	 case(instruction[27:26])
	 0: begin ins_type=1; //Data Processing instruction
				if(instruction[25]==1)
				data_ins_type=1; //"Immediate" type
				else if(instruction[4]==0&&instruction[25]==0)
				data_ins_type=2; //"Register shifted by value" type
				else if(instruction[7]==0&&instruction[4]==1&&instruction[25]==0)
				data_ins_type=3;//"Register shifted by register" type
				else if(instruction[24]==0&&instruction[6]==0&&instruction[5]==0&&instruction[7]==1&&instruction[4]==1&&instruction[25]==0)
				data_ins_type=4; //Multiplication" type
				else
				data_ins_type=0; //not identifiable
				
		end	
					
	 1: ins_type=2; // memory type instruction
	 2: ins_type=3; //branch instruction
	 3: ins_type=0; //not identifiable
	 endcase
	 end
	 endmodule