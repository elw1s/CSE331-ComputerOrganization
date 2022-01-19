library verilog;
use verilog.vl_types.all;
entity adder_32_bit is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        Cin             : in     vl_logic;
        Sum             : out    vl_logic_vector(31 downto 0);
        Cout            : out    vl_logic;
        Overflow        : out    vl_logic
    );
end adder_32_bit;
