library verilog;
use verilog.vl_types.all;
entity DataMemory is
    port(
        address         : in     vl_logic_vector(31 downto 0);
        write_data      : in     vl_logic_vector(31 downto 0);
        MemWrite        : in     vl_logic;
        MemRead         : in     vl_logic;
        clk             : in     vl_logic;
        read_data       : out    vl_logic_vector(31 downto 0)
    );
end DataMemory;
