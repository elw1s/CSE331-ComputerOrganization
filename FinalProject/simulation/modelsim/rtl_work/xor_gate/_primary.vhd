library verilog;
use verilog.vl_types.all;
entity xor_gate is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        \out\           : out    vl_logic
    );
end xor_gate;
