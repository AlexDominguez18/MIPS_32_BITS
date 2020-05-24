
module Buffer3(
	input [31:0]Res_ALU,Fetch,
	input [31:0]Write_Data,
	input zero_flag,
	input[4:0]Write_Reg,
	input Branch,MemRead,MemtoReg,MemWrite,RegWrite,
	input clk,
	output reg Sal_zf,
	output reg[31:0]SRes_ALU, SFetch,
	output reg[31:0]SalWD, 
	output reg[4:0]Sal_WR,
	output reg SBranch,SMemRead,SMemtoReg,SMemWrite,SRegWrite
);

always @(posedge clk)
	begin
		SFetch = Fetch;
	   SRes_ALU = Res_ALU;
		Sal_zf = zero_flag;
		SalWD = Write_Data;
		Sal_WR = Write_Reg;
		
		SBranch = Branch;
		SMemRead = MemRead;
		SMemtoReg = MemtoReg;
		SMemWrite = MemWrite;
		SRegWrite = RegWrite;
	end

endmodule 