
module Buffer2(
	input [3:0]Sel,
	input [4:0]RD,RT,
	input [31:0]A,B,Fetch,Jump,
	input RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,
	input [1:0]ALUOP,
	input clk,
	output reg[3:0]SSel,
	output reg[4:0]SRD,SRT,
	output reg[31:0]SA,SB,SFetch,SJump,
	output reg SRegDst,SBranch,SMemRead,SMemtoReg,SMemWrite,SALUSrc,SRegWrite,
	output reg[1:0]SALUOP
);

always @(posedge clk)
	begin
		SFetch = Fetch;
	   SSel = Sel;
		SA = A;
		SB = B;
		SJump = Jump;
		SRD = RD;
		SRT = RT;
		
		SRegDst = RegDst;
		SBranch = Branch;
		SMemRead = MemRead;
		SMemtoReg = MemtoReg;
		SMemWrite = MemWrite;
		SALUSrc = ALUSrc;
		SRegWrite = RegWrite;
		SALUOP = ALUOP;
	end

endmodule 