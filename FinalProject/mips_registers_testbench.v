`define DELAY1 40
module mips_registers_testbench ();

	wire [31:0] read_data_1, read_data_2;
	reg [31:0] write_data;
	reg [2:0] read_reg_1, read_reg_2, write_reg;
	reg signal_reg_write, clk;
	
mips_registers REG(write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk, read_data_1,read_data_2 );

initial begin
write_data=32'b11001110011111111111111111110000; read_reg_1=3'b001; read_reg_2=3'b010; write_reg=3'b100; signal_reg_write=1; clk=1;
#`DELAY1;
clk=0;
#`DELAY1;
write_data=32'b11001110011111111111111111110000; read_reg_1=3'b100; read_reg_2=3'b010; write_reg=3'b101; signal_reg_write=1; clk=1;
#`DELAY1;
clk=0;
end

initial begin
$monitor("read_data1=%32b, read_data2=%32b, write_reg=%3b, signal_reg_write=%1b",read_data_1,read_data_2,write_reg, signal_reg_write);
end

endmodule