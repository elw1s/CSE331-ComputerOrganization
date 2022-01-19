module mux_2x1(input D0 , input D1 , input S , output F);

wire w_and1 , w_and2 , w_snot;

not NOT1(w_snot , S);
and AND1(w_and1 , w_snot , D0);
and AND2(w_and2 , S , D1);
or OR1(F , w_and1 , w_and2);

endmodule
