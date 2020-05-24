
module Buffer1(
	input [31:0]in,Fetch,contadorPc,
	input clk,
	output reg[31:0]SFetch,
	output reg[25:0]out,
	output reg[31:0]SContadorPc,
	output reg[15:0]Jump,
	output reg[4:0]RS,RT,RD,
	output reg[5:0]Opcode
);

always @(posedge clk)
	begin
		SFetch = Fetch;
		Opcode = in[31:26];
		RS = in[25:21];
		RT = in[20:16];
		RD = in[15:11];
		Jump = in[15:0];
		out = in[25:0];
		SContadorPc = contadorPc;
		
	end

endmodule 