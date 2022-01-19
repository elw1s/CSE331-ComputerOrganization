module instructions(input clk, input [31:0] PC , output reg [15:0] instruction);

reg [15:0] instructions [63:0];


initial begin
	$readmemb("instructions.txt",instructions);
end
	always @(PC)begin
		instruction<=instructions[PC];
	end
	

endmodule