library verilog;
use verilog.vl_types.all;
entity mips_16bit is
    port(
        clk             : in     vl_logic;
        PC              : in     vl_logic_vector(31 downto 0);
        newPC           : out    vl_logic_vector(31 downto 0)
    );
end mips_16bit;
