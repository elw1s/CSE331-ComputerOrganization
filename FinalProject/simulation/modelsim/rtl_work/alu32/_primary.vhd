library verilog;
use verilog.vl_types.all;
entity alu32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        AluOP           : in     vl_logic_vector(2 downto 0);
        R               : out    vl_logic_vector(31 downto 0);
        zero            : out    vl_logic
    );
end alu32;
