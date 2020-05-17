
module ALU_Control(
	input [5:0]Funct,
	input [2:0]ALUOP,
	output reg[3:0]Sel
);



always @*
	case(ALUOP)
	
	3'b 010: //Tipo R
			case(Funct)
			
			//SUMA
			6'b 000000:
				begin
					Sel = 4'b 0000;
				end
				
			//SUMA
			6'b 100000:
				begin
					Sel = 4'b 0001;
				end
				
			//RESTA
			6'b 100010:
				begin
					Sel = 4'b 0010;
				end
				
			//MULTIPLICACION
			6'b 000010:
				begin
					Sel = 4'b 0011;
				end
				
			//DIVISIÓN
			6'b 011010:
				begin
					Sel = 4'b 0100;
				end
				
			//AND
			6'b 100100:
				begin
					Sel = 4'b 0101;
				end
				
			//OR
			6'b 100101:
				begin
					Sel = 4'b 0110;
				end
				
			//NOR
			6'b 100111:
				begin
					Sel = 4'b 0111;
				end
			
			//XOR
			6'b 100110:
				begin
					Sel = 4'b 1001;
				end
				
			//SLT
			6'b 101010:
				begin
					Sel = 4'b 1000;
				end 
				
			endcase
			
	3'b 000: // sw y lw
	
			begin
					Sel = 4'b 0001; //SUMA
			end
			
	3'b 001: // Branch equal
	
			begin
					Sel = 4'b 0010; //RESTA
			end
			
	3'b 011: // ANDI
	
			begin
					Sel = 4'b 0101; //AND
			end
			
	3'b 100: // STLI
	
			begin
					Sel = 4'b 1000; //STL
			end
			
	3'b 101: // ORI
	
			begin
					Sel = 4'b 0110; //OR
			end
			
		endcase

endmodule 