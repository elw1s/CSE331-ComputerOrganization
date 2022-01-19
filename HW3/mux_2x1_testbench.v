`timescale 1 ps / 1 ps

module mux_2x1_testbench();

reg D0;
reg D1;
reg S;
wire F;

	
	reg clk;
	
	mux_2x1 TB(.D0(D0) , .D1(D1) , .S(S) , .F(F));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			D0 = 1'b0;
			D1 = 1'b0;
			
			#5 D0 = 1'b1;
				D1 = 1'b0;
				S = 1'b1;
		end


endmodule
		