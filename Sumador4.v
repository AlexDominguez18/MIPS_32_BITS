
module Sumador4(
	input [6:0]pcInput,
	output reg [6:0]pcOut
);

always@*
begin
	
	pcOut = pcInput + 7'd 4;
	
end

endmodule 