`timescale 1ns/1ns
`include "Nivel1\Nivel2\encoder\Nivel3\div_100.v"

module div_100_tb;

  reg clk_tb;
  integer i;
  output wire clk_div_100_tb;

  	div_100 uut(.clk(clk_tb));

    initial
        begin

            $dumpfile("div_100_tb.vcd");
            $dumpvars(0, div_100_tb);

              for (i = 0; i < 10; i = i + 1)
              begin
                if (i%2) #5 clk_tb = 0;
                else #5 clk_tb = 1;
              end
        end
          

endmodule
          
          
          
