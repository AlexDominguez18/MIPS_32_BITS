
module Buffer2(
	input [4:0]RD,RT,
	input [31:0]A,B,Fetch,Jump,
	input RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,
	input [2:0]ALUOP,
	input clk,
	output reg[4:0]SRD,SRT,
	output reg[31:0]SA,SB,SFetch,SJump,
	output reg SRegDst,SBranch,SMemRead,SMemtoReg,SMemWrite,SALUSrc,SRegWrite,
	output reg[2:0]SALUOP
);

always @(posedge clk)
	begin
		SFetch = Fetch;
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