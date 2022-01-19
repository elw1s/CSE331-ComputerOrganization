module adder_1_bit(A , B , Cin , Sum , Cout);

input A , B , Cin;
output Sum , Cout;
wire xor1_w , and1_w ,and2_w;

xor_gate XOR1(A , B , xor1_w);
xor_gate XOR2(Cin , xor1_w , Sum);
and AND1(and1_w , Cin , xor1_w);
and AND2(and2_w , A , B);
or OR1(Cout , and1_w , and2_w);

endmodule