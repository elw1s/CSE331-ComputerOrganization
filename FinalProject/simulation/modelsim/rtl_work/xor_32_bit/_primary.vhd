library verilog;
use verilog.vl_types.all;
entity xor_32_bit is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        \OUT\           : out    vl_logic_vector(31 downto 0)
    );
end xor_32_bit;
