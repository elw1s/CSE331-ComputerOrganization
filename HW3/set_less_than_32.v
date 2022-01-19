module set_less_than_32(input [31:0] A , input [31:0] B , output [31:0] OUT);

wire Carry;
wire Overflow;
wire [31:0] S;
wire temp;

adder_1_bit ADD1(1'd0 , 1'd0 , 1'd0 , OUT[31] , temp);
adder_1_bit ADD2(1'd0 , 1'd0 , 1'd0 , OUT[30] , temp);
adder_1_bit ADD3(1'd0 , 1'd0 , 1'd0 , OUT[29] , temp);
adder_1_bit ADD4(1'd0 , 1'd0 , 1'd0 , OUT[28] , temp);
adder_1_bit ADD5(1'd0 , 1'd0 , 1'd0 , OUT[27] , temp);
adder_1_bit ADD6(1'd0 , 1'd0 , 1'd0 , OUT[26] , temp);
adder_1_bit ADD7(1'd0 , 1'd0 , 1'd0 , OUT[25] , temp);
adder_1_bit ADD8(1'd0 , 1'd0 , 1'd0 , OUT[24] , temp);
adder_1_bit ADD9(1'd0 , 1'd0 , 1'd0 , OUT[23] , temp);
adder_1_bit ADD10(1'd0 , 1'd0 , 1'd0 , OUT[22] , temp);
adder_1_bit ADD11(1'd0 , 1'd0 , 1'd0 , OUT[21] , temp);
adder_1_bit ADD12(1'd0 , 1'd0 , 1'd0 , OUT[20] , temp);
adder_1_bit ADD13(1'd0 , 1'd0 , 1'd0 , OUT[19] , temp);
adder_1_bit ADD14(1'd0 , 1'd0 , 1'd0 , OUT[18] , temp);
adder_1_bit ADD15(1'd0 , 1'd0 , 1'd0 , OUT[17] , temp);
adder_1_bit ADD16(1'd0 , 1'd0 , 1'd0 , OUT[16] , temp);
adder_1_bit ADD17(1'd0 , 1'd0 , 1'd0 , OUT[15] , temp);
adder_1_bit ADD18(1'd0 , 1'd0 , 1'd0 , OUT[14] , temp);
adder_1_bit ADD19(1'd0 , 1'd0 , 1'd0 , OUT[13] , temp);
adder_1_bit ADD20(1'd0 , 1'd0 , 1'd0 , OUT[12] , temp);
adder_1_bit ADD21(1'd0 , 1'd0 , 1'd0 , OUT[11] , temp);
adder_1_bit ADD22(1'd0 , 1'd0 , 1'd0 , OUT[10] , temp);
adder_1_bit ADD23(1'd0 , 1'd0 , 1'd0 , OUT[9] , temp);
adder_1_bit ADD24(1'd0 , 1'd0 , 1'd0 , OUT[8] , temp);
adder_1_bit ADD25(1'd0 , 1'd0 , 1'd0 , OUT[7] , temp);
adder_1_bit ADD26(1'd0 , 1'd0 , 1'd0 , OUT[6] , temp);
adder_1_bit ADD27(1'd0 , 1'd0 , 1'd0 , OUT[5] , temp);
adder_1_bit ADD28(1'd0 , 1'd0 , 1'd0 , OUT[4] , temp);
adder_1_bit ADD29(1'd0 , 1'd0 , 1'd0 , OUT[3] , temp);
adder_1_bit ADD30(1'd0 , 1'd0 , 1'd0 , OUT[2] , temp);
adder_1_bit ADD31(1'd0 , 1'd0 , 1'd0 , OUT[1] , temp);

adder_32_bit SUBTRACT(A , B , 1'b1 , S , Carry, Overflow); // A - B
xor_gate XOR(Overflow , S[31] , OUT[0]); // If overflow occurs, invert the sign bit


endmodule
