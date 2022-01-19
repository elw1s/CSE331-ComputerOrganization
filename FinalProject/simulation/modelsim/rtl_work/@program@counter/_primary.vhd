library verilog;
use verilog.vl_types.all;
entity ProgramCounter is
    port(
        clk             : in     vl_logic;
        PC              : out    vl_logic_vector(31 downto 0)
    );
end ProgramCounter;
