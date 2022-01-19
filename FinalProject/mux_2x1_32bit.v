module mux_2x1_32bit(input [31:0] D0 , input [31:0] D1, input S, output [31:0] F);

mux_2x1 MUX1(D0[0],D1[0],S,F[0]);
mux_2x1 MUX2(D0[1],D1[1],S,F[1]);
mux_2x1 MUX3(D0[2],D1[2],S,F[2]);
mux_2x1 MUX4(D0[3],D1[3],S,F[3]);
mux_2x1 MUX5(D0[4],D1[4],S,F[4]);
mux_2x1 MUX6(D0[5],D1[5],S,F[5]);
mux_2x1 MUX7(D0[6],D1[6],S,F[6]);
mux_2x1 MUX8(D0[7],D1[7],S,F[7]);
mux_2x1 MUX9(D0[8],D1[8],S,F[8]);
mux_2x1 MUX10(D0[9],D1[9],S,F[9]);
mux_2x1 MUX11(D0[10],D1[10],S,F[10]);
mux_2x1 MUX12(D0[11],D1[11],S,F[11]);
mux_2x1 MUX13(D0[12],D1[12],S,F[12]);
mux_2x1 MUX14(D0[13],D1[13],S,F[13]);
mux_2x1 MUX15(D0[14],D1[14],S,F[14]);
mux_2x1 MUX16(D0[15],D1[15],S,F[15]);
mux_2x1 MUX17(D0[16],D1[16],S,F[16]);
mux_2x1 MUX18(D0[17],D1[17],S,F[17]);
mux_2x1 MUX19(D0[18],D1[18],S,F[18]);
mux_2x1 MUX20(D0[19],D1[19],S,F[19]);
mux_2x1 MUX21(D0[20],D1[20],S,F[20]);
mux_2x1 MUX22(D0[21],D1[21],S,F[21]);
mux_2x1 MUX23(D0[22],D1[22],S,F[22]);
mux_2x1 MUX24(D0[23],D1[23],S,F[23]);
mux_2x1 MUX25(D0[24],D1[24],S,F[24]);
mux_2x1 MUX26(D0[25],D1[25],S,F[25]);
mux_2x1 MUX27(D0[26],D1[26],S,F[26]);
mux_2x1 MUX28(D0[27],D1[27],S,F[27]);
mux_2x1 MUX29(D0[28],D1[28],S,F[28]);
mux_2x1 MUX30(D0[29],D1[29],S,F[29]);
mux_2x1 MUX31(D0[30],D1[30],S,F[30]);
mux_2x1 MUX32(D0[31],D1[31],S,F[31]);

endmodule