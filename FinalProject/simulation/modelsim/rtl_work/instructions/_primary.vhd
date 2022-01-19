library verilog;
use verilog.vl_types.all;
entity instructions is
    port(
        clk             : in     vl_logic;
        PC              : in     vl_logic_vector(31 downto 0);
        instruction     : out    vl_logic_vector(15 downto 0)
    );
end instructions;
