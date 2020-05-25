
module Ciclo_Fetch(
	input clk,
	input [31:0]DirEntrada,
	output reg[31:0]out,
	output reg [31:0]Fetch,
	output [31:0]Sal
);

 reg[31:0]DirSalida;
 reg[6:0]pc;
 reg [7:0]MEM[127:0];
 
initial
	begin
		pc = 7'd 0;
	end
	
always @(posedge clk)
 begin
		if (DirEntrada >= 32'd 0 )
			begin
				DirSalida = DirEntrada;
			end
		else
			begin
				DirSalida = 32'd 0;
			end
		pc = DirSalida;
		pc = pc + 7'd 4;
		out=pc;
		Fetch=pc;
 end
	
initial
	begin
		$readmemb("C:\\Verilog\\Proyecto\\MIPS_32_BITS-master\\Instrucciones.mem", MEM);
	end
 
assign Sal = {MEM[DirSalida],MEM[DirSalida+1],MEM[DirSalida+2],MEM[DirSalida+3]}; // se concatena
   
endmodule 