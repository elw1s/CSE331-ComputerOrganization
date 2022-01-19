`timescale 1 ps / 1 ps

module set_less_than_32_testbench();

reg [31:0] A;
reg [31:0] B;
wire [31:0] Out;
	
	reg clk;
	
	set_less_than_32 SLT(.A(A) , .B(B) , .OUT(Out));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			A = 32'd20;
			B = 32'd8;
			
		end


endmodule
