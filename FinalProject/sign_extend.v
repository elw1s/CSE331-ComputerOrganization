module sign_extend(input [5:0] A, output [31:0] OUT);

and AND1(OUT[31],A[5],1'b1);
and AND2(OUT[30],A[5],1'b1);
and AND3(OUT[29],A[5],1'b1);
and AND4(OUT[28],A[5],1'b1);
and AND5(OUT[27],A[5],1'b1);
and AND6(OUT[26],A[5],1'b1);
and AND7(OUT[25],A[5],1'b1);
and AND8(OUT[24],A[5],1'b1);
and AND9(OUT[23],A[5],1'b1);
and AND10(OUT[22],A[5],1'b1);
and AND11(OUT[21],A[5],1'b1);
and AND12(OUT[20],A[5],1'b1);
and AND13(OUT[19],A[5],1'b1);
and AND14(OUT[18],A[5],1'b1);
and AND15(OUT[17],A[5],1'b1);
and AND16(OUT[16],A[5],1'b1);
and AND17(OUT[15],A[5],1'b1);
and AND18(OUT[14],A[5],1'b1);
and AND19(OUT[13],A[5],1'b1);
and AND20(OUT[12],A[5],1'b1);
and AND21(OUT[11],A[5],1'b1);
and AND22(OUT[10],A[5],1'b1);
and AND23(OUT[9],A[5],1'b1);
and AND24(OUT[8],A[5],1'b1);
and AND25(OUT[7],A[5],1'b1);
and AND26(OUT[6],A[5],1'b1);
and AND_BITS1(OUT[5],A[5],1'b1);
and AND_BITS2(OUT[4],A[4],1'b1);
and AND_BITS3(OUT[3],A[3],1'b1);
and AND_BITS4(OUT[2],A[2],1'b1);
and AND_BITS5(OUT[1],A[1],1'b1);
and AND_BITS6(OUT[0],A[0],1'b1);

endmodule