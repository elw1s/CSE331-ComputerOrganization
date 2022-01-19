module mux_8x1(input D0 , input D1 , input D2 , input D3 , input D4 , input D5 , input D6 , input D7 , input [2:0] S , output F);


wire w_MUX1 , w_MUX2;

mux_4x1 MUX1(D0 , D1 , D2 , D3 , S[0] , S[1] , w_MUX1);
mux_4x1 MUX2(D4 , D5 , D6 , D7 , S[0] , S[1] , w_MUX2);
mux_2x1 MUX3(w_MUX1 , w_MUX2 , S[2] , F);

endmodule