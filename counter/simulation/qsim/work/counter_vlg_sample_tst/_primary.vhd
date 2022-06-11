library verilog;
use verilog.vl_types.all;
entity counter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        mov             : in     vl_logic_vector(0 to 1);
        sampler_tx      : out    vl_logic
    );
end counter_vlg_sample_tst;
