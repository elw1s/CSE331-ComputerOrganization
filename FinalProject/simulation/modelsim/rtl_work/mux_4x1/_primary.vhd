library verilog;
use verilog.vl_types.all;
entity mux_4x1 is
    port(
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        F               : out    vl_logic
    );
end mux_4x1;
