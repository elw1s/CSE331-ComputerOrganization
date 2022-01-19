library verilog;
use verilog.vl_types.all;
entity mux_8x1_32bit is
    port(
        D0              : in     vl_logic_vector(31 downto 0);
        D1              : in     vl_logic_vector(31 downto 0);
        D2              : in     vl_logic_vector(31 downto 0);
        D3              : in     vl_logic_vector(31 downto 0);
        D4              : in     vl_logic_vector(31 downto 0);
        D5              : in     vl_logic_vector(31 downto 0);
        D6              : in     vl_logic_vector(31 downto 0);
        D7              : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        F               : out    vl_logic_vector(31 downto 0)
    );
end mux_8x1_32bit;
