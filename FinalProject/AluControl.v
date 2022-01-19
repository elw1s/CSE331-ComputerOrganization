module AluControl(input [2:0] AluOp, input [2:0] Func, output [2:0] AluCtrl);

wire notP2,notP1,notP0,notF2,notF1,notF0;
wire wAnd1, wAnd2, wAnd3, wAnd4, wAnd5, wAnd6, wAnd7;
wire wOr1;



/* AluCtrl 2 (C2) */

assign AluCtrl[2] = (~AluOp[2] & AluOp[1] & ~AluOp[0] & ~Func[2] & ~Func[1] & Func[0])+
						  (~AluOp[2] & AluOp[1] % ~AluOp[0] & Func[2] & ~Func[1] & ~Func[0]) +
						  (~AluOp[2] & AluOp[1] & ~AluOp[0] & Func[2] & ~Func[1] & Func[0]) +
						  (AluOp[2] & ~AluOp[1] & ~AluOp[0]) +
						  (AluOp[2] & ~AluOp[1] & AluOp[0]) +
						  (AluOp[2] & AluOp[1] & ~AluOp[0]) +
						  (AluOp[2] & AluOp[1] & AluOp[0]);

	
/* AluCtrl 1 (C1) */
assign AluCtrl[1] = (~AluOp[2] & AluOp[1] & ~AluOp[0] & ~Func[1] & Func[0]) + 
                    (~AluOp[2] & AluOp[1] & ~AluOp[0] & ~Func[2] & Func[1] & ~Func[0]) +
						  (AluOp[2] & ~AluOp[1]) +
						  (~AluOp[1] & AluOp[0]);


/* AluCtrl 0 (C0) */

assign AluCtrl[0] = (~AluOp[2] & AluOp[1] & ~AluOp[0] & ~Func[2] & Func[1] & Func[0]) +
                    (~AluOp[2] & AluOp[1] & ~AluOp[0] & Func[2] & ~Func[1]) +
						  (AluOp[2] & ~AluOp[1] & AluOp[0]) +
						  (AluOp[2] & AluOp[1] & ~AluOp[0]);



endmodule