library verilog;
use verilog.vl_types.all;
entity sign_extend is
    port(
        A               : in     vl_logic_vector(5 downto 0);
        \OUT\           : out    vl_logic_vector(31 downto 0)
    );
end sign_extend;
