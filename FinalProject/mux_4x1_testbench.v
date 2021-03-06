`timescale 1 ps / 1 ps

module mux_4x1_testbench();

reg D0;
reg D1;
reg D2;
reg D3;
reg S0;
reg S1;
wire F;

	
	reg clk;
	
	mux_4x1 TB(.D0(D0) , .D1(D1) , .D2(D2) , .D3(D3), .S0(S0) , .S1(S1) , .F(F));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			D0 = 1'b0;
			D1 = 1'b0;
			D2 = 1'b0;
			D3 = 1'b0;
			S0 = 1'b0;
			S1 = 1'b0;
			
			#5 D0 = 1'b1;
				D1 = 1'b0;
				D2 = 1'b1;
				D3 = 1'b0;
				S0 = 1'b1;
				S1 = 1'b0;


		end


endmodule
		