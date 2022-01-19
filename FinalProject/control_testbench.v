module control_testbench();


reg [3:0] OP;
wire RegDes, AluSrc, MemToReg, RegWr, MemRd, MemWr, Branch, BNE;
wire [2:0] AluOp;

reg clk;


control CTRL(OP, RegDes, AluSrc, MemToReg, RegWr, MemRd, MemWr, Branch, BNE, AluOp);

always 
		begin 
			#2 clk = ~clk;
		end
		
initial begin

OP = 4'b0000;
#1000;
OP = 4'b0101;
#1000;
OP = 4'b0001;

end

initial begin

$monitor("Opcode = %4b \n RegDes = %1b, AluSrc = %1b, MemToReg = %1b, RegWr = %1b, MemRd = %1b, MemWr = %1b,Branch = %1b,BNE = %1b,AluOp = %3b, ",OP,RegDes,AluSrc, MemToReg, RegWr, MemRd, MemWr, Branch, BNE, AluOp);

end






endmodule