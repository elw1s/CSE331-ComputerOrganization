module xor_32_bit(input [31:0] A , input [31:0] B , output [31:0] OUT);

xor_gate XOR1(A[0] , B[0] , OUT[0]);
xor_gate XOR2(A[1] , B[1] , OUT[1]);
xor_gate XOR3(A[2] , B[2] , OUT[2]);
xor_gate XOR4(A[3] , B[3] , OUT[3]);
xor_gate XOR5(A[4] , B[4] , OUT[4]);
xor_gate XOR6(A[5] , B[5] , OUT[5]);
xor_gate XOR7(A[6] , B[6] , OUT[6]);
xor_gate XOR8(A[7] , B[7] , OUT[7]);
xor_gate XOR9(A[8] , B[8] , OUT[8]);
xor_gate XOR10(A[9] , B[9] , OUT[9]);
xor_gate XOR11(A[10] , B[10] , OUT[10]);
xor_gate XOR12(A[11] , B[11] , OUT[11]);
xor_gate XOR13(A[12] , B[12] , OUT[12]);
xor_gate XOR14(A[13] , B[13] , OUT[13]);
xor_gate XOR15(A[14] , B[14] , OUT[14]);
xor_gate XOR16(A[15] , B[15] , OUT[15]);
xor_gate XOR17(A[16] , B[16] , OUT[16]);
xor_gate XOR18(A[17] , B[17] , OUT[17]);
xor_gate XOR19(A[18] , B[18] , OUT[18]);
xor_gate XOR20(A[19] , B[19] , OUT[19]);
xor_gate XOR21(A[20] , B[20] , OUT[20]);
xor_gate XOR22(A[21] , B[21] , OUT[21]);
xor_gate XOR23(A[22] , B[22] , OUT[22]);
xor_gate XOR24(A[23] , B[23] , OUT[23]);
xor_gate XOR25(A[24] , B[24] , OUT[24]);
xor_gate XOR26(A[25] , B[25] , OUT[25]);
xor_gate XOR27(A[26] , B[26] , OUT[26]);
xor_gate XOR28(A[27] , B[27] , OUT[27]);
xor_gate XOR29(A[28] , B[28] , OUT[28]);
xor_gate XOR30(A[29] , B[29] , OUT[29]);
xor_gate XOR31(A[30] , B[30] , OUT[30]);
xor_gate XOR32(A[31] , B[31] , OUT[31]);

endmodule