
module Shift_Left2(
	input [31:0]in,
	output reg[31:0]out

);

always @*
	begin
	   out = in << 2;
	end

endmodule 