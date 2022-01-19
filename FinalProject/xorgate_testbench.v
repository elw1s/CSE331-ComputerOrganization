`timescale 1 ps / 1 ps

module xorgate_testbench();

reg A;
reg B;
wire Out;
	
	reg clk;
	
	xor_gate TB(.A(A) , .B(B) , .out(Out));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			A = 32'd0;
			B = 32'd0;
			
			#5 A = 1'b0;
				B = 1'b1;
		end


endmodule
		