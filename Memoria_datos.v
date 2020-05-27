
module Memoria_datos(
	input [31:0]Adress,
	input [31:0]Write_Data,
	input MemWrite, MemRead,
	output reg[31:0]Read_Data
);

reg [31:0]Memoria[0:31];


initial 
	begin
		$readmemb("C:\\Arquitectura\\Proyecto\\MIPS_32_BITS-master\\MemoriaDatos.txt", Memoria);
	end

always @* 
	case(MemWrite)
	
		1'b 1:
		begin
		   Memoria[Adress] = Write_Data; //Escribe
		end
	endcase
	
always @*
	case(MemRead)
		1'b 1:
		begin
			Read_Data = Memoria[Adress]; //Lee
		end
		
	endcase

endmodule 