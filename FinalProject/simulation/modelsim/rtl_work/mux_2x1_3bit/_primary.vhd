library verilog;
use verilog.vl_types.all;
entity mux_2x1_3bit is
    port(
        D0              : in     vl_logic_vector(2 downto 0);
        D1              : in     vl_logic_vector(2 downto 0);
        S               : in     vl_logic;
        F               : out    vl_logic_vector(2 downto 0)
    );
end mux_2x1_3bit;
