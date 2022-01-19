library verilog;
use verilog.vl_types.all;
entity and_3bit is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        \OUT\           : out    vl_logic
    );
end and_3bit;
