module mips_16bit_testbench();

reg clk;
reg [31:0] PC;
wire [31:0] newPC;
mips_16bit MIPS(clk,PC,newPC);

initial begin
	clk = 1;
	PC = 32'b00000000000000000000000000000000;
end

always begin
	#20 clk =~clk;
	
	if (PC == 32'd64) begin
		$stop;
	end
	
	PC = newPC;
	
end


always @(PC) begin

	if(MIPS.instr[15:12] == 4'b0000)begin
		$display("Opcode: %4b , R[s]: %3b , R[t]: %3b , R[d]: %3b , Func: %3b \n AluCtrl: %3b , AluInput1: %32b , AluInput2: %32b \n AluResult: %32b \n WriteData: %32b \n PC: %32b\n *********",MIPS.instr[15:12],MIPS.instr[11:9],MIPS.instr[8:6],MIPS.instr[5:3],MIPS.instr[2:0],MIPS.AluCtrl, MIPS.read_data1, MIPS.AluB , MIPS.Result, MIPS.write_data,MIPS.PC);
	end
	else begin
		$display("Opcode: %4b , R[s]: %3b , R[t]: %3b , Imm: %6b (Branch: %1b or BNE: %1b and zero: %1b) \n AluCtrl: %3b , AluInput1: %32b , AluInput2: %32b \n AluResult: %32b \n WriteData: %32b \n PC: %32b\n newPC = %32b \n *********",MIPS.instr[15:12],MIPS.instr[11:9],MIPS.instr[8:6],MIPS.instr[5:0],MIPS.Branch , MIPS.BNE , MIPS.zero, MIPS.AluCtrl, MIPS.read_data1, MIPS.AluB , MIPS.Result, MIPS.write_data,MIPS.PC, MIPS.newPC);

	end

end

endmodule