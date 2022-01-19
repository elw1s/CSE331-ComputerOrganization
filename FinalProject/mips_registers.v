module mips_registers(input [31:0] write_data, input[2:0] read_reg_1, input[2:0] read_reg_2, input[2:0] write_reg, input signal_reg_write, input clk, output reg [31:0] read_data_1 , output reg [31:0] read_data_2);

reg[31:0] registers [7:0];
	
		initial begin
			$readmemb("registers.txt",registers);
		end
	
	always @(read_reg_1 or read_reg_2)begin
		read_data_1<=registers[read_reg_1];
	   read_data_2<=registers[read_reg_2];
	end	

	always @(clk) begin	
		if(signal_reg_write & (write_reg!=3'b000))
		begin 
			registers[write_reg] = write_data;
		end
			$writememb("registers_output.txt",registers);
	end

endmodule
