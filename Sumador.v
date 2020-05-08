
module Sumador(
	input [31:0]A,B,
	output reg[31:0]Res
);

always@*
	begin
		Res = A + B;
	end

endmodule 