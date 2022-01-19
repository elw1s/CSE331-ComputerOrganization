module xor_gate(A , B , out);
input A , B;
output out;
wire aNot_w , bNot_w, and1_w , and2_w;

not aNot(aNot_w , A);
not bNot(bNot_w , B);
and and1(and1_w , aNot_w , B);
and and2(and2_w , A , bNot_w);
or or1(out , and1_w , and2_w);

endmodule 