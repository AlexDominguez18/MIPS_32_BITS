`timescale 1ns/1ns

module MIPS_32_BITS_TB();

reg clk = 1;

MIPS_32_BITS DUV(
	.clk(clk)
);

always #10 clk = !clk;
initial
	begin
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;	
	
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;		
		#80;			
		
		$stop;
		
	end

endmodule 
