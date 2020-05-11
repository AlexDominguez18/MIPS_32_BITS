
module ALU(
	input [31:0]A,B,
	input [3:0]Sel,
	output reg[31:0]Res,
	output reg zero_flag = 1'b 0
);


always @*
		case(Sel)
		
		4'b 0001:
			begin
				Res = A + B;
				zero_flag = (Res == 32'b 0);
			end
		4'b 0010:
			begin
				Res = A - B;
				zero_flag = (Res == 32'b 0);
			end
		4'b 0011:
			begin
				Res = A * B;
				zero_flag = (Res == 32'b 0);
			end
		4'b 0100:
			begin
				Res = A / B;
				zero_flag = (Res == 32'b 0);
			end
		4'b 0101:
			begin
				Res = A & B;
				zero_flag = (Res == 32'b 0);
			end
		4'b 0110:
			begin
				Res = A | B;
				zero_flag = (Res == 32'b 0);
			end
		4'b 0111:
			begin
				Res = ~(A | B);
				zero_flag = (Res == 32'b 0);
			end
			
		default:
			begin
				Res = 32'd 0;
				zero_flag = (Res == 32'b 0);
			end

		endcase
endmodule 