`timescale 1ns/1ns

module MIPS_32_BITS_TB();

//Conexiones
reg clk = 1;
wire [31:0]resultadoAlu;

//Señales de estímulo

MIPS_32_BITS DUV(
	.clk(clk),
	.resultadoAlu(resultadoAlu)
);

always #10 clk = !clk;
initial
	begin
		
		#20;
		#20;
		#20;
		#20;
		#20;
		#20;
		
		$stop;
		
	end

endmodule 
