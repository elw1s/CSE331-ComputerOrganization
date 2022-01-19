`define DELAY2 100
module instruction_memory_testbench ();

	wire [15:0] instruction;
	
	reg [31:0] PC;
	reg clk;
	
instructions instructionmem(clk, PC, instruction);

initial begin
PC=32'b00000000000000000000000000000000; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;
PC=32'b00000000000000000000000000000001; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;
PC=32'b00000000000000000000000000000010; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;
PC=32'b00000000000000000000000000000001; clk=1;
#`DELAY2;
clk=0;
#`DELAY2;

end

initial begin
$monitor("instruction=%16b, PC=%32b",instruction,PC);
end

endmodule