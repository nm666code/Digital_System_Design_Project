library verilog;
use verilog.vl_types.all;
entity multiplexer_vlg_check_tst is
    port(
        f               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplexer_vlg_check_tst;
