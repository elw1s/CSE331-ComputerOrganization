module alu32(input [31:0] A , input [31:0] B , input [2:0] AluOP , output [31:0] R, output zero);


wire [31:0]wAdd;
wire [31:0]wXor;
wire [31:0]wSub;
wire [31:0]wMult;
wire [31:0]wSlt;
wire [31:0]wNor;
wire [31:0]wAnd;
wire [31:0]wOr;
wire cout1 , cout2 , Overflow, empty;

wire wOR1, wOR2, wOR3, wOR4, wOR5, wOR6, wOR7, wOR8, wOR9, wOR10, wOR11, wOR12, wOR13, wOR14, wOR15, wOR16, wOR17, wOR18, wOR19, wOR20, wOR21, wOR22, wOR23, wOR24, wOR25, wOR26, wOR27, wOR28, wOR29, wOR30;
wire wNot1, wNot2;

adder_32_bit F1(A , B , 1'b0 , wAdd , cout1, empty);
xor_32_bit F2(A , B , wXor);
adder_32_bit F3(A , B , 1'b1 , wSub , cout2, Overflow);
//Mult
set_less_than_32 F5(A , B , wSlt);
nor_32_bit F6(A , B , wNor);
and_32_bit F7(A , B , wAnd);
or_32_bit F8(A, B , wOr);

or OR1(wOR1, wSub[30], wSub[31]);
or OR2(wOR2, wOR1 , wSub[29]);
or OR3(wOR3, wOR2, wSub[28]);
or OR4(wOR4, wOR3, wSub[27]);
or OR5(wOR5, wOR4, wSub[26]);
or OR6(wOR6, wOR5, wSub[25]);
or OR7(wOR7, wOR6, wSub[24]);
or OR8(wOR8, wOR7, wSub[23]);
or OR9(wOR9, wOR8, wSub[22]);
or OR10(wOR10, wOR9, wSub[21]);
or OR11(wOR11, wOR10, wSub[20]);
or OR12(wOR12, wOR11, wSub[19]);
or OR13(wOR13, wOR12, wSub[18]);
or OR14(wOR14, wOR13, wSub[17]);
or OR15(wOR15, wOR14, wSub[16]);
or OR16(wOR16, wOR15, wSub[15]);
or OR17(wOR17, wOR16, wSub[14]);
or OR18(wOR18, wOR17, wSub[13]);
or OR19(wOR19, wOR18, wSub[12]);
or OR20(wOR20, wOR19, wSub[11]);
or OR21(wOR21, wOR20, wSub[10]);
or OR22(wOR22, wOR21, wSub[9]);
or OR23(wOR23, wOR22, wSub[8]);
or OR24(wOR24, wOR23, wSub[7]);
or OR25(wOR25, wOR24, wSub[6]);
or OR26(wOR26, wOR25, wSub[5]);
or OR27(wOR27, wOR26, wSub[4]);
or OR28(wOR28, wOR27, wSub[3]);
or OR29(wOR29, wOR28, wSub[2]);
or OR30(wOR30, wOR29, wSub[1]);
not NOT0(wNot1, wOR30);
not NOT1(wNot2, wSub[0]);
and AND1(zero, wNot1, wNot2);

mux_8x1_32bit F9(wAdd , wXor , wSub, wMult , wSlt , wNor , wAnd , wOr , AluOP , R);





endmodule