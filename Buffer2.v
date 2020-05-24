
module Buffer2(
	input [4:0]RD,RT,
	input [31:0]A,B,Fetch,Jump,
	input [27:0]target,
	input [31:0]contadorPc,
	input RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,ControlJump,
	input [2:0]ALUOP,
	input clk,
	output reg[4:0]SRD,SRT,
	output reg[31:0]SA,SB,SFetch,SJump,Starget,
	output reg SRegDst,SBranch,SMemRead,SMemtoReg,SMemWrite,SALUSrc,SRegWrite,SControlJump,
	output reg[2:0]SALUOP,
	output reg[31:0]SContadorPc
);

always @(posedge clk)
	begin
		SFetch = Fetch;
		SA = A;
		SB = B;
		SJump = Jump;
		SRD = RD;
		SRT = RT;
		Starget = {Fetch[31:28],target};
		
		SRegDst = RegDst;
		SBranch = Branch;
		SMemRead = MemRead;
		SMemtoReg = MemtoReg;
		SMemWrite = MemWrite;
		SALUSrc = ALUSrc;
		SRegWrite = RegWrite;
		SALUOP = ALUOP;
		SControlJump = ControlJump;
		SContadorPc = contadorPc;
	end

endmodule 