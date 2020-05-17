
module Unidad_Control(
	input [5:0]in,
	output reg RegDst,
	output reg Branch,
	output reg MemRead,
	output reg MemtoReg,
	output reg [2:0]ALUOP,
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
			ALUOP = 3'b 010;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 0;
			RegWrite = 1'b 1;
		end
		
	//LW
	6'b 100011:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 1;
			MemtoReg = 1'b 1;
			ALUOP = 3'b 000;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 1;
		end
		
	//LWC1
	6'b 110001:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 1;
			MemtoReg = 1'b 1;
			ALUOP = 3'b 000;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 1;
		end
		
	//SW
	6'b 101011:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 0;
			MemtoReg = 1'b 0;
			ALUOP = 3'b 000;
			MemWrite = 1'b 1;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 0;
		end
		
	//BEQ
	6'b 000100:
		begin
			//RegDst = 1'b 1;
			Branch = 1'b 1;
			MemRead = 1'b 0;
			//MemtoReg = 1'b 0;
			ALUOP = 3'b 001;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 0;
			RegWrite = 1'b 0;
		end
		
	//ADDI
	6'b 001000:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 0;
			MemtoReg = 1'b 0;
			ALUOP = 3'b 000;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 1;
		end
		
	//STLI
	6'b 001010:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 0;
			MemtoReg = 1'b 0;
			ALUOP = 3'b 100;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 1;
		end
		
	//ANDI
	6'b 001100:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 0;
			MemtoReg = 1'b 0;
			ALUOP = 3'b 011;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 1;
		end
		
	//ORI
	6'b 001101:
		begin
			RegDst = 1'b 0;
			Branch = 1'b 0;
			MemRead = 1'b 0;
			MemtoReg = 1'b 0;
			ALUOP = 3'b 101;
			MemWrite = 1'b 0;
			ALUSrc = 1'b 1;
			RegWrite = 1'b 1;
		end
		
	endcase

endmodule 