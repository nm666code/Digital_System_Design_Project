library verilog;
use verilog.vl_types.all;
entity counter_vlg_check_tst is
    port(
        o               : in     vl_logic_vector(0 to 4);
        sampler_rx      : in     vl_logic
    );
end counter_vlg_check_tst;
