
module Unidad_Control(
	input [5:0]in,
	output reg RegDst,
	output reg Branch,
	output reg MemRead,
	output reg MemtoReg,
	output reg [1:0]ALUOP,
	output reg MemWrite,
	output reg ALUSrc,
	output reg RegWrite
);

always @*
	case(in)
	
	//Formato R
	6'b 000000:
		begin
			RegDst = 1'b 1;
			Branch = 1'b 0;
			MemRead = 1'b 0;
			MemtoReg = 1'b 0;
			ALUOP = 2'b 10;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 0;
			RegWrite = 1'b 1;
		end
		
	//lw
	6'b 100011:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 1;
			MemtoReg = 1'b 1;
			ALUOP = 2'b 00;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 1;
		end
		
	//sw
	6'b 101011:
		begin
			//RegDst = 1'b 1;
			Branch = 1'b 0;
			MemRead = 1'b 0;
			//MemtoReg = 1'b 0;
			ALUOP = 2'b 00;
			MemWrite = 1'b 1;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 0;
		end
		
	//beq
	6'b 000100:
		begin
			//RegDst = 1'b 1;
			Branch = 1'b 1;
			MemRead = 1'b 0;
			//MemtoReg = 1'b 0;
			ALUOP = 2'b 01;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 0;
			RegWrite = 1'b 0;
		end
		
	endcase

endmodule 