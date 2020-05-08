
module Buffer4(
	input [31:0]Read_Data,ResALU,
	input[4:0]Write_Reg,
	input MemtoReg,RegWrite,
	input clk,
	output reg[31:0]Sal_RD, SResALU,
	output reg[4:0]Sal_WR,
	output reg SMemtoReg,SRegWrite
);

always @(posedge clk)
	begin
		Sal_RD = Read_Data;
	   SResALU = ResALU;
		Sal_WR = Write_Reg;
		
		SMemtoReg = MemtoReg;
		SRegWrite = RegWrite;
	end

endmodule 