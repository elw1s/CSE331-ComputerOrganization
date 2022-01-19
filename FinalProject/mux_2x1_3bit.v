module mux_2x1_3bit(input [2:0] D0 , input [2:0] D1, input S, output [2:0] F);

mux_2x1 MUX1(D0[0],D1[0],S,F[0]);
mux_2x1 MUX2(D0[1],D1[1],S,F[1]);
mux_2x1 MUX3(D0[2],D1[2],S,F[2]);


endmodule