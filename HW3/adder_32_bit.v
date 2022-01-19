module adder_32_bit(A , B , Cin , Sum , Cout, Overflow);
input [31:0] A;
input [31:0] B;
input Cin;
output [31:0] Sum;
output Cout;
output Overflow;

wire b_xor_1 , b_xor_2 , b_xor_3 , b_xor_4 , b_xor_5 , b_xor_6 , b_xor_7 , b_xor_8 , b_xor_9 , b_xor_10 , b_xor_11 , b_xor_12 , b_xor_13 , b_xor_14 ,b_xor_15 , b_xor_16 , b_xor_17 , b_xor_18 , b_xor_19 , b_xor_20 , b_xor_21 ,b_xor_22 , b_xor_23 , b_xor_24 , b_xor_25 , b_xor_26 , b_xor_27 , b_xor_28 , b_xor_29 , b_xor_30 , b_xor_31 , b_xor_32;
wire Cin1 , Cin2 , Cin3 , Cin4, Cin5 , Cin6 , Cin7 ,Cin8 ,Cin9 ,Cin10 ,Cin11,Cin12 ,Cin13 ,Cin14 ,Cin15 ,Cin16, Cin17 , Cin18 , Cin19 , Cin20, Cin21 , Cin22 , Cin23 ,Cin24 ,Cin25 ,Cin26 ,Cin27 ,Cin28 ,Cin29 ,Cin30 ,Cin31 ,Cin32;

xor_gate XOR1(Cin , B[0] , b_xor_1);
xor_gate XOR2(Cin , B[1] , b_xor_2);
xor_gate XOR3(Cin , B[2] , b_xor_3);
xor_gate XOR4(Cin , B[3] , b_xor_4);
xor_gate XOR5(Cin , B[4] , b_xor_5);
xor_gate XOR6(Cin , B[5] , b_xor_6);
xor_gate XOR7(Cin , B[6] , b_xor_7);
xor_gate XOR8(Cin , B[7] , b_xor_8);
xor_gate XOR9(Cin , B[8] , b_xor_9);
xor_gate XOR10(Cin , B[9] , b_xor_10);
xor_gate XOR11(Cin , B[10] , b_xor_11);
xor_gate XOR12(Cin , B[11] , b_xor_12);
xor_gate XOR13(Cin , B[12] , b_xor_13);
xor_gate XOR14(Cin , B[13] , b_xor_14);
xor_gate XOR15(Cin , B[14] , b_xor_15);
xor_gate XOR16(Cin , B[15] , b_xor_16);
xor_gate XOR17(Cin , B[16] , b_xor_17);
xor_gate XOR18(Cin , B[17] , b_xor_18);
xor_gate XOR19(Cin , B[18] , b_xor_19);
xor_gate XOR20(Cin , B[19] , b_xor_20);
xor_gate XOR21(Cin , B[20] , b_xor_21);
xor_gate XOR22(Cin , B[21] , b_xor_22);
xor_gate XOR23(Cin , B[22] , b_xor_23);
xor_gate XOR24(Cin , B[23] , b_xor_24);
xor_gate XOR25(Cin , B[24] , b_xor_25);
xor_gate XOR26(Cin , B[25] , b_xor_26);
xor_gate XOR27(Cin , B[26] , b_xor_27);
xor_gate XOR28(Cin , B[27] , b_xor_28);
xor_gate XOR29(Cin , B[28] , b_xor_29);
xor_gate XOR30(Cin , B[29] , b_xor_30);
xor_gate XOR31(Cin , B[30] , b_xor_31);
xor_gate XOR32(Cin , B[31] , b_xor_32);



adder_1_bit S0(A[0] , b_xor_1 , Cin , Sum[0] , Cin1);
adder_1_bit S1(A[1] , b_xor_2 , Cin1 , Sum[1] , Cin2);
adder_1_bit S2(A[2] , b_xor_3 , Cin2 , Sum[2] , Cin3);
adder_1_bit S3(A[3] , b_xor_4 , Cin3 , Sum[3] , Cin4);
adder_1_bit S4(A[4] , b_xor_5 , Cin4 , Sum[4] , Cin5);
adder_1_bit S5(A[5] , b_xor_6 , Cin5 , Sum[5] , Cin6);
adder_1_bit S6(A[6] , b_xor_7 , Cin6 , Sum[6] , Cin7);
adder_1_bit S7(A[7] , b_xor_8 , Cin7 , Sum[7] , Cin8);
adder_1_bit S8(A[8] , b_xor_9 , Cin8 , Sum[8] , Cin9);
adder_1_bit S9(A[9] , b_xor_10 , Cin9 , Sum[9] , Cin10);
adder_1_bit S10(A[10] , b_xor_11 , Cin10 , Sum[10] , Cin11);
adder_1_bit S11(A[11] , b_xor_12, Cin11 , Sum[11] , Cin12);
adder_1_bit S12(A[12] , b_xor_13 , Cin12 , Sum[12] , Cin13);
adder_1_bit S13(A[13] , b_xor_14 , Cin13, Sum[13] , Cin14);
adder_1_bit S14(A[14] , b_xor_15 , Cin14 , Sum[14] , Cin15);
adder_1_bit S15(A[15] , b_xor_16 , Cin15 , Sum[15] , Cin16);
adder_1_bit S16(A[16] , b_xor_17 , Cin16 , Sum[16] , Cin17);
adder_1_bit S17(A[17] , b_xor_18 , Cin17 , Sum[17] , Cin18);
adder_1_bit S18(A[18] , b_xor_19 , Cin18 , Sum[18] , Cin19);
adder_1_bit S19(A[19] , b_xor_20 , Cin19 , Sum[19] , Cin20);
adder_1_bit S20(A[20] , b_xor_21 , Cin20 , Sum[20] , Cin21);
adder_1_bit S21(A[21] , b_xor_22 , Cin21 , Sum[21] , Cin22);
adder_1_bit S22(A[22] , b_xor_23 , Cin22 , Sum[22] , Cin23);
adder_1_bit S23(A[23] , b_xor_24 , Cin23 , Sum[23] , Cin24);
adder_1_bit S24(A[24] , b_xor_25 , Cin24 , Sum[24] , Cin25);
adder_1_bit S25(A[25] , b_xor_26 , Cin25 , Sum[25] , Cin26);
adder_1_bit S26(A[26] , b_xor_27 , Cin26 , Sum[26] , Cin27);
adder_1_bit S27(A[27] , b_xor_28 , Cin27 , Sum[27] , Cin28);
adder_1_bit S28(A[28] , b_xor_29 , Cin28 , Sum[28] , Cin29);
adder_1_bit S29(A[29] , b_xor_30 , Cin29 , Sum[29] , Cin30);
adder_1_bit S30(A[30] , b_xor_31 , Cin30 , Sum[30] , Cin31);
adder_1_bit S31(A[31] , b_xor_32 , Cin31 , Sum[31] , Cout);

xor_gate XOR0(Cin31 , Cout , Overflow);


endmodule
