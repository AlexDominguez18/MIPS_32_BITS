
module Mux2(
	input in,
	input [31:0]A,B,
	output reg[31:0]Sal
);

always @*
	case(in)
	
		1'b 0:
			begin
				Sal = A;
			end
			
		1'b 1:
			begin
				Sal = B;
			end
	
		endcase

endmodule 