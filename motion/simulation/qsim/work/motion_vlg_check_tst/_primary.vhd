library verilog;
use verilog.vl_types.all;
entity motion_vlg_check_tst is
    port(
        motion          : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end motion_vlg_check_tst;
