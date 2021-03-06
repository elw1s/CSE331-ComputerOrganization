`timescale 1 ps / 1 ps

module and_32_bit_testbench();

reg [31:0]A;
reg [31:0]B;
wire [31:0]OUT;

	
	reg clk;
	
	and_32_bit TB(.A(A) , .B(B) , .OUT(OUT));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			A = 32'd0;
			B = 32'd0;
			
			#5 A = 32'd25;
				B = 32'd14;
		end


endmodule
		