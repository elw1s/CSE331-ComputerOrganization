
module nor_32_bit(input [31:0] A , input [31:0] B , output [31:0] OUT);

wire [31:0]wOR;

or_32_bit F1(A , B , wOR);
not_32_bit F2(wOR , OUT);


endmodule