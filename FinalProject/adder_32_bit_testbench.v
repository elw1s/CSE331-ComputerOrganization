`timescale 1 ps / 1 ps

module adder_32_bit_testbench();

reg [31:0] A;
reg [31:0] B;
reg Cin;
wire Cout;
wire Overflow;
wire [31:0] Sum;
	
	reg clk;
	
	adder_32_bit TB(.A(A) , .B(B) , .Cin(Cin) , .Sum(Sum) , .Cout(Cout) , .Overflow (Overflow));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			A = 32'd0;
			B = 32'd0;
			Cin = 1'b0;
			
			#5 A = 32'd20;
				B = 32'd8;
				Cin = 1'b1;
		end


endmodule
		