`define DELAY2 1000
module DataMemoryTestBench ();

	wire [31:0] read_data;
	reg [31:0] address; 
	reg [31:0] write_data; 
	reg MemWrite,MemRead,clk;
	
DataMemory datamem(address,write_data,MemWrite,MemRead,clk,read_data);

initial begin
address=32'b00000000000000000000000000000101;write_data=32'b00000000000001110000101000100000;MemRead=1'b0;MemWrite=1'b1;clk=1;
#`DELAY2;
clk=0;
#`DELAY2;
address=32'b00000000000000000000000000000110;write_data=32'b11111110011111111111110011111100;MemRead=1'b1;MemWrite=1'b0;clk=1;
#`DELAY2;
clk=0;
#`DELAY2;


end

initial begin
$monitor("read_data=%32b, address=%32b , write_data=%32b, memRead=%1b, memWrite=%1b",read_data,address,write_data,MemRead,MemWrite);
end

endmodule