library verilog;
use verilog.vl_types.all;
entity control is
    port(
        OP              : in     vl_logic_vector(3 downto 0);
        RegDes          : out    vl_logic;
        AluSrc          : out    vl_logic;
        MemToReg        : out    vl_logic;
        RegWr           : out    vl_logic;
        MemRd           : out    vl_logic;
        MemWr           : out    vl_logic;
        Branch          : out    vl_logic;
        BNE             : out    vl_logic;
        AluOp           : out    vl_logic_vector(2 downto 0)
    );
end control;
