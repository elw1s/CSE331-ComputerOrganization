`timescale 1 ps / 1 ps

module adder_1_bit_testbench();

reg A;
reg B;
reg Cin;
wire Cout;
wire Sum;
	
	reg clk;
	
	adder_1_bit TB(.A(A) , .B(B) , .Cin(Cin) , .Sum(Sum), .Cout(Cout));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			A = 1'd0;
			B = 1'd0;
			
			#5 A = 1'b0;
				B = 1'b1;
				Cin = 1'b0;
		end


endmodule
		