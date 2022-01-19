library verilog;
use verilog.vl_types.all;
entity set_less_than_32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        \OUT\           : out    vl_logic_vector(31 downto 0)
    );
end set_less_than_32;
