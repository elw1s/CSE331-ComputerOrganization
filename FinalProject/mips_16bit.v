module mips_16bit(input clk , input [31:0] PC, output [31:0] newPC);

wire [31:0] read_data1, read_data2;
wire [15:0] instr;
wire [31:0] write_data;
wire [31:0] ExtendedImm, AluB, Result;
wire zero;
wire RegDes, AluSrc, MemToReg, RegWr, MemRd, MemWr, Branch, BNE;
wire [2:0] AluOp, write_reg, AluCtrl;
wire wBeq, wBne, wNotZero, wOrBeqBne;
wire Cin,Cout,Overflow;
wire [31:0] CalculatedPC;
wire [31:0] read_data_mem;
wire [31:0] PC_1;
wire Cout1, Overflow1;

instructions INST1(clk,PC, instr);

control CTRL1(instr[15:12], RegDes, AluSrc, MemToReg, RegWr, MemRd, MemWr, Branch, BNE, AluOp);

mux_2x1_3bit MUX1(instr[8:6], instr[5:3], RegDes, write_reg); //Select Write Register

mips_registers REG1(write_data, instr[11:9], instr[8:6], write_reg, RegWr, clk, read_data1, read_data2);

AluControl ALUCTRL(AluOp, instr[2:0], AluCtrl);

sign_extend SIGNEXTEND(instr[5:0], ExtendedImm);

mux_2x1_32bit MUX2(read_data2, ExtendedImm,AluSrc,AluB);

alu32 ALU(read_data1, AluB, AluCtrl, Result, zero);

DataMemory MEM(Result, read_data2, MemWr, MemRd, clk , read_data_mem);

mux_2x1_32bit MUX3(Result, read_data_mem,MemToReg, write_data);

/* Beq or Bne */
and AND1(wBeq, Branch, zero);
not NOT1(wNotZero, zero);
and AND2(wBne , BNE, wNotZero);
or OR1(wOrBeqBne, wBeq, wBne);

adder_32_bit ADDER2(PC , 32'd1 , 1'b0 , PC_1, Cout1, Overflow1);
adder_32_bit ADDER1(PC_1,ExtendedImm, 1'b0, CalculatedPC , Cout , Overflow);
mux_2x1_32bit MUX4(PC_1,CalculatedPC, wOrBeqBne, newPC);


endmodule