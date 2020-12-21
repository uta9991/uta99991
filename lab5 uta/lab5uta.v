`timescale 1ns / 1ps

module lab5uta(
input [31:0] instruction,
output reg[1:0] ins_type,
output reg [2:0] data_ins_type,
output reg [1:0] mem_ins_type,
output reg [1:0] branch_ins_type
 
    );
	
	 always @(instruction) 
begin

	 case(instruction[27:26])
	 0: begin ins_type=1;
				if(instruction[25]==1)
				data_ins_type=1;
				else if(instruction[4]==0&&instruction[25]==0)
				data_ins_type=2;
				else if(instruction[7]==0&&instruction[4]==1&&instruction[25]==0)
				data_ins_type=3;
				else if(instruction[24]==0&&instruction[6]==0&&instruction[5]==0&&instruction[7]==1&&instruction[4]==1&&instruction[25]==0)
				data_ins_type=4;
				else
				data_ins_type=0;
				
		end	
					
	 1: begin ins_type=2;
				if(instruction[25]==1)
				mem_ins_type=1; //instruction type is of Immediate
				else if(instruction[4]==1&&instruction[25]==1)
				mem_ins_type=2; //instruction is Register shifted by value" type
				else
				mem_ins_type=0; //not identifiable
			
		end
			
	 2: begin ins_type=3; 
				if(instruction[25]==1&&instruction[24]==0)
				branch_ins_type=1;  //type is of Branch only
				else if(instruction[25]==1&&instruction[24]==1)
				branch_ins_type=2;  //it's Branch and Link
				else
				branch_ins_type=0;//not identifiable
				
		end
	 3: ins_type=0;
	 endcase
	 end
	 

endmodule 