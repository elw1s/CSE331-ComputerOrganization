module DataMemory(input [31:0] address, input [31:0] write_data, input MemWrite, input MemRead,input clk, output reg [31:0] read_data);

reg [31:0] Memory [255:0];

initial begin
	 $readmemb("data.txt",Memory);
end


always @(address or write_data or MemWrite or MemRead) begin
	if(MemWrite == 0 & MemRead == 1) begin
		read_data <= Memory[address];
	end
	if(MemWrite == 1 & MemRead == 0) begin
		Memory[address] = write_data;
		$writememb("data.txt",Memory);
	end
	
end


endmodule