`timescale 1ns/1ps

module contador_mod10_teste();

 	reg [3:0] data; 
  	reg clk, load, reset, stop;
  	wire [3:0] count; 
  	wire tc;
  	integer i;
  

  	contador_mod10 dut(data, clk, load, reset, count, tc, stop);

	initial
		begin
		
			$dumpfile("contador_mod10_teste.vcd");
			$dumpvars(0,contador_mod10_teste);
          
           stop = 0; 
           data = 4'b0111;
           load = 1; 
           #5 reset = 1;
           #5 stop = 1;
           #5 load = 0; 
           #10;
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