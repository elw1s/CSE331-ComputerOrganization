library verilog;
use verilog.vl_types.all;
entity mips_registers is
    port(
        write_data      : in     vl_logic_vector(31 downto 0);
        read_reg_1      : in     vl_logic_vector(2 downto 0);
        read_reg_2      : in     vl_logic_vector(2 downto 0);
        write_reg       : in     vl_logic_vector(2 downto 0);
        signal_reg_write: in     vl_logic;
        clk             : in     vl_logic;
        read_data_1     : out    vl_logic_vector(31 downto 0);
        read_data_2     : out    vl_logic_vector(31 downto 0)
    );
end mips_registers;
