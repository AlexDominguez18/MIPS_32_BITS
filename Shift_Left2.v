
module Shift_Left2(
	input [31:0]in,
	output reg[31:0]out

);

always @*
	begin
	   out = {in[29:0], 2'b 00};
	end

endmodule 