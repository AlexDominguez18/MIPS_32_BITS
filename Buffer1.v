
module Buffer1(
	input [31:0]in,Fetch,
	input clk,
	output reg[31:0]SFetch,
	output reg [15:0]Jump,
	output reg[4:0]RS,RT,RD,Opcode
);

always @(posedge clk)
	begin
		SFetch = Fetch;
		Opcode = in[31:26];
		RS = in[25:21];
		RT = in[20:16];
		RD = in[15:11];
		Jump = in[15:0];
		
	end

endmodule 