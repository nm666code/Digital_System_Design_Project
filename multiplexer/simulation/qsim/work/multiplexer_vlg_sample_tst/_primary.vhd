library verilog;
use verilog.vl_types.all;
entity multiplexer_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end multiplexer_vlg_sample_tst;
