`timescale 1ns/1ps
`include "mag_latch.v"

module mag_latch_teste();

    reg settb, resettb;
    wire Qtb;

    mag_latch DUT(.set(settb), .reset(resettb), .Q(Qtb));

    initial begin
        $dumpfile("mag_latch_teste.vcd");
        $dumpvars(0,mag_latch_teste);
            #10 settb = 0; resettb = 0;

            #10 settb = 0; resettb = 1;

            #10 settb = 0; resettb = 0;

            #10 settb = 1; resettb = 0;

            #10 settb = 0; resettb = 0;

            #10 settb = 1; resettb = 1;

            #10 settb = 0; resettb = 0;

            #10;
    end
endmodule