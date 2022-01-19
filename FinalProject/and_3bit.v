module and_3bit(input A, input B, input C , output OUT);

wire w_a1,w_a2;

and AND1(w_a1,A,B);
and AND2(OUT,w_a1,C);

endmodule