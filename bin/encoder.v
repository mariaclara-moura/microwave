`include "debouncer.v"
`include "div_100.v"
`include "priority_encoder.v"
`include "mux.v"

module encoder(input wire[9:0] keypad,
    input wire enablen,
    input wire clk,
    output wire[3:0] BCD_OUT,
    output wire loadn,
    output wire pgt_1hz
);


    priority_encoder mod1(.keypad(keypad), .enablen(enablen), .BCD_OUT(BCD_OUT), .loadn(loadn));
    div_100 mod2(.clk(clk), .clk_div_100(clk_div_100));
    debouncer mod3(.clk(clk), .loadn(loadn), .debounced_out(debounced_out));
    mux mod4(.enablen(enablen), .clk_div_100(clk_div_100), .debounced_out(debounced_out), .pgt_1hz(pgt_1hz));


endmodule
