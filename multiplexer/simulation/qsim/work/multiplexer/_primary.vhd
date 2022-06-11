library verilog;
use verilog.vl_types.all;
entity multiplexer is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        f               : out    vl_logic_vector(3 downto 0)
    );
end multiplexer;
