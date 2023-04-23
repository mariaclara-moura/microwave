`timescale 1ns/1ps
`include "contador_nivel2.v"

module contador_nivel2_teste();

 	reg [3:0] uni_sec, min;
    reg [3:0] dez_sec; 
  	reg clk, enable, load;
  	wire [3:0] count_us, count_m;
    wire [3:0] count_ds; 
  	wire zero;
    integer i;
  
  	contador_nivel2 dut(uni_sec, dez_sec, min, clk, enable, load, count_us, count_ds, count_m, zero);

	initial
		begin
		
			$dumpfile("contador_nivel2_teste.vcd");
			$dumpvars(0,contador_nivel2_teste);
          
           enable = 0; 
           uni_sec = 4'b0111;
           dez_sec = 3'b101;
           min = 4'b1000;
           load = 1; 
           #5 enable = 1;
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