`timescale 1 ps / 1 ps

module alu32_testbench();

reg [31:0] A;
reg [31:0] B;
reg [2:0] AluOP;
wire [31:0] Result;
	
	reg clk;
	
	alu32 TB(.A(A) , .B(B) , .AluOP(AluOP) , .R(Result));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			A = 32'd0;
			B = 32'd0;
			
			#5 A = 32'd50;
				B = 32'd100;
				AluOP = 3'b000;
		end


endmodule
		