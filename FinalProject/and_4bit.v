module and_4bit(input A, input B, input C , input D, output OUT);

wire w_a1,w_a2;

and AND1(w_a1,A,B);
and AND2(w_a2,w_a1,C);
and AND3(OUT,w_a2,D);

endmodule