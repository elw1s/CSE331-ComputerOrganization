module mux_4x1(input D0 , input D1 , input D2 , input D3 , input S0 , input S1 , output F);

wire w_mux1 , w_mux2;

mux_2x1 MUX1(D0 , D1 , S0 , w_mux1);
mux_2x1 MUX2(D2 , D3 , S0 , w_mux2);
mux_2x1 MUX3(w_mux1 , w_mux2 , S1 , F);

endmodule