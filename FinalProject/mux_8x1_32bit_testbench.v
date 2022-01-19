
`timescale 1 ps / 1 ps

module mux_8x1_32bit_testbench();

reg [31:0] D0;
reg [31:0] D1;
reg [31:0] D2;
reg [31:0] D3;
reg [31:0] D4;
reg [31:0] D5;
reg [31:0] D6;
reg [31:0] D7;
reg [2:0] S;
wire [31:0] F;
	
	reg clk;
	
	mux_8x1_32bit TB(.D0(D0) , .D1(D1) , .D2(D2) , .D3(D3) , .D4(D4) , .D5(D5) , .D6(D6) , .D7(D7) , .S(S) , .F(F));
	
	always 
		begin 
			#2 clk = ~clk;
		end
	
	initial 
		begin 
			D0 = 32'd0;
			D1 = 32'd0;
			D2 = 32'd0;
			D3 = 32'd0;
			D4 = 32'd0;
			D5 = 32'd0;
			D6 = 32'd0;
			D7 = 32'd0;
			S = 3'b000;
			
			#5 D0 = 32'd0;
			D1 = 32'd1;
			D2 = 32'd2;
			D3 = 32'd3;
			D4 = 32'd4;
			D5 = 32'd5;
			D6 = 32'd6;
			D7 = 32'd7;
			S = 3'b100;
		end


endmodule
		