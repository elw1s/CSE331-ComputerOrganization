`timescale 1 ps / 1 ps

module mux_8x1_testbench();

reg D0;
reg D1;
reg D2;
reg D3;
reg D4;
reg D5;
reg D6;
reg D7;
reg [2:0] S;
wire F;

	
	reg clk;
	
	mux_8x1 TB(.D0(D0) , .D1(D1) , .D2(D2) , .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .S(S) , .F(F));
	
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
			D4 = 1'b0;
			D5 = 1'b0;
			D6 = 1'b0;
			D7 = 1'b0;
			S = 3'b000;
			
			#5 D0 = 1'b1;
				D1 = 1'b0;
				D2 = 1'b1;
				D3 = 1'b0;
				D4 = 1'b1;
				D5 = 1'b1;
				D6 = 1'b0;
				D7 = 1'b0;
				S = 3'b101;


		end


endmodule
		