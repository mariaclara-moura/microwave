`timescale 1ns/1ps
`include "contador_mod6.v"

module contador_mod6_teste();

  	reg [2:0] data; 
  	reg clk, load, reset, stop;
  	wire [2:0] count; 
  	wire tc;
  	integer i;
  

  	contador_mod6 dut(data, clk, load, reset, count, tc, stop);

	initial
		begin
		
			$dumpfile("contador_mod6_teste.vcd");
			$dumpvars(0,contador_mod6_teste);
          load = 0;
          reset = 1;
          stop = 1;
          #5 reset = 0;
          #10 reset = 1;
         
        end
  
  initial
    
    begin
    	clk = 1'b0;
  	end
		
  initial
    begin
    	#5 clk = ~clk;
      for(i = 0; i < 26; i= i + 1)
        begin
          #5 clk = ~clk;
        end
      
    end
      

endmodule