
module Ciclo_Fetch(
	input clk,
	input [31:0]Dir,
	output reg[31:0]out,
	output reg [31:0]Fetch,
	output [31:0]Sal
);

 reg[6:0]pc;
 reg [7:0]MEM[127:0];
 
initial
	begin
		pc = -7'd 4;
	end
	
always @(posedge clk)
 begin
		if (pc == -7'd 4)
			begin
				pc = pc + 4'd 4;
			end
		else
			begin
				pc = Dir[6:0];
				pc = pc + 4'd 4;
			end
		out=pc;
		Fetch=pc;
 end
	
initial
	begin
		$readmemb("C:\\Verilog\\Proyecto\\MIPS_32_BITS\\Instrucciones.mem", MEM);
	end
 
assign Sal = {MEM[Dir],MEM[Dir+1],MEM[Dir+2],MEM[Dir+3]}; // se concatena
   
endmodule 