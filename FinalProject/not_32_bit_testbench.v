`timescale 1 ps / 1 ps

module not_32_bit_testbench();

reg [31:0] A;
wire [31:0] OUT;
	
	reg clk;
	
	not_32_bit TB(.A(A) , .OUT(OUT));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			A = 32'd0;
			
			#5 A = 32'd16;


		end


endmodule
		