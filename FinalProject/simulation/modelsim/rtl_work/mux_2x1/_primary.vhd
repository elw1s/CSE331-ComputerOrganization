library verilog;
use verilog.vl_types.all;
entity mux_2x1 is
    port(
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        S               : in     vl_logic;
        F               : out    vl_logic
    );
end mux_2x1;
