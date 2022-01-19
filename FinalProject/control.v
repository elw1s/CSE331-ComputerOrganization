module control(input [3:0] OP, output RegDes, output AluSrc, output MemToReg, output RegWr, output MemRd, output MemWr, output Branch, output BNE, output [2:0] AluOp);

wire R, LW, SW, Addi, Andi, Ori, Nori, Slti, Beq, Bne;
wire not3,not2,not1,not0;
wire or1,or2,or3,or4,or5,or6,or7,or8,or9,or10,or11,or12,or13,or14,or15,or16,or17;

not NOT1(not3, OP[3]);
not NOT2(not2,OP[2]);
not NOT3(not1,OP[1]);
not NOT4(not0,OP[0]);

and_4bit AND_4_1(not3,not2,not1,not0,R);
and_4bit AND_4_2(OP[3],not2,not1,not0,LW);
and_4bit AND_4_3(OP[3],not2,not1,OP[0],SW);
and_4bit AND_4_4(not3,not2,not1,OP[0],Addi);
and_4bit AND_4_5(not3,not2,OP[1],not0,Andi);
and_4bit AND_4_6(not3,not2,OP[1],OP[0],Ori);
and_4bit AND_4_7(not3,OP[2],not1,not0,Nori);
and_4bit AND_4_8(not3,OP[2],not1,OP[0],Beq);
and_4bit AND_4_9(not3,OP[2],OP[1],not0,Bne);
and_4bit AND_4_10(not3,OP[2],OP[1],OP[0],Slti);

/* RegDes */
and AND1(RegDes,R,1'b1); 
/* AluSrc */
or OR1(or1,LW,SW);
or OR2(or2,or1,Addi);
or OR3(or3,or2,Andi);
or OR4(or4,or3,Ori);
or OR5(or5,or4,Nori);
or OR6(AluSrc,or5,Slti);
/* MemToReg */
and AND2(MemToReg, LW, 1'b1);
/* RegWr */
or OR7(or6,R,LW);
or OR8(or7,or6,Addi);
or OR9(or8,or7,Andi);
or OR10(or9,or8,Ori);
or OR11(or10,or9,Nori);
or OR12(RegWr,or10,Slti);
/* MemRd */
and AND3(MemRd,LW,1'b1);
/* MemWr */
and AND4(MemWr,SW,1'b1);
/* Branch */
and AND5(Branch,Beq,1'b1);
/* BNE */
and AND6(BNE,Bne,1'b1);
/* AluOp2 */
or OR13(or11,Andi,Ori);
or OR14(or12,or11,Nori);
or OR15(AluOp[2],or12,Slti);
/* AluOp1 */
or OR16(or13,R,Addi);
or OR17(or14,or13,Nori);
or OR18(AluOp[1],or14,Slti);
/* AluOp0 */
or OR19(or15,Beq,Bne);
or OR20(or16,or15,Addi);
or OR21(or17,or16,Ori);
or OR22(AluOp[0],or17,Slti);


endmodule