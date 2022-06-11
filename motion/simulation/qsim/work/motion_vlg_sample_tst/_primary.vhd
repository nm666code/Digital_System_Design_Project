library verilog;
use verilog.vl_types.all;
entity motion_vlg_sample_tst is
    port(
        nextFloor       : in     vl_logic_vector(4 downto 0);
        presentFloor    : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end motion_vlg_sample_tst;
