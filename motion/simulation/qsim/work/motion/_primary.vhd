library verilog;
use verilog.vl_types.all;
entity motion is
    port(
        presentFloor    : in     vl_logic_vector(4 downto 0);
        nextFloor       : in     vl_logic_vector(4 downto 0);
        motion          : out    vl_logic_vector(1 downto 0)
    );
end motion;
