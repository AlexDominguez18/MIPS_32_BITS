
module Banco_Registros(
	input [4:0]Read_Reg1,Read_Reg2,Write_Reg,
	input [31:0]Write_Data,
	input RegWrite,
	output reg[31:0]Read_data1,Read_data2
);

reg [31:0] BR[0:31]; //Se crea el banco de registros

initial
	begin
		$readmemb("C:\\Arquitectura\\Proyecto\\MIPS_32_BITS-master\\BR.mem",BR);
	end


always @*
	begin
		Read_data1 = BR[Read_Reg1]; //LEE
		Read_data2 = BR[Read_Reg2]; //LEE
		
		if(RegWrite)

			begin
				BR[Write_Reg] = Write_Data; //ESCRIBE
			end
	end
endmodule 