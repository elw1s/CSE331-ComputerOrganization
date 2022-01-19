module and_5bit(input A, input B, input C , input D, input E, output OUT);

wire w_a1,w_a2,w_a3;

and AND1(w_a1,A,B);
and AND2(w_a2,w_a1,C);
and AND3(w_a3,w_a2,D);
and AND4(OUT,w_a3,E);

endmodule