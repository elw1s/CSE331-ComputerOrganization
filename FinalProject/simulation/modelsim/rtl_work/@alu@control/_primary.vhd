library verilog;
use verilog.vl_types.all;
entity AluControl is
    port(
        AluOp           : in     vl_logic_vector(2 downto 0);
        Func            : in     vl_logic_vector(2 downto 0);
        AluCtrl         : out    vl_logic_vector(2 downto 0)
    );
end AluControl;
