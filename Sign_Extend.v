
module Sign_Extend(
	input [15:0]in,
	output reg[31:0]out
);

always @*
	case(in[15])
	
	1'b 0:
	begin
		out = in;
	end
	
	1'b 1:
	begin
	 out = {16'b 1111111111111111 ,in};
	end
	
  endcase
endmodule 