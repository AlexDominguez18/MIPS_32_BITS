
module Shift_Left2_2(
	input [25:0]in,
	output reg[31:0]out

);

always @*
	begin
	   out = in << 2;
	end

endmodule 