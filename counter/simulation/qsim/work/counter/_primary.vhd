library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        mov             : in     vl_logic_vector(0 to 1);
        clk             : in     vl_logic;
        o               : out    vl_logic_vector(0 to 4)
    );
end counter;
