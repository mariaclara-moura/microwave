`timescale 1ns/1ns
`include "decodificador.v"

module decodificador_tb;

    reg [3:0] min_tb, sec_tens_tb, sec_ones_tb;
  	wire [6:0] min_segs_tb, sec_tens_segs_tb, sec_ones_segs_tb;

  	decodificador uut(.min(min_tb), .sec_tens(sec_tens_tb), .sec_ones(sec_ones_tb), .min_segs(min_segs_tb), .sec_tens_segs(sec_tens_segs_tb), .sec_ones_segs(sec_ones_segs_tb));

    initial
        begin

            $dumpfile("decodificador_tb.vcd");
            $dumpvars(0, decodificador_tb);

                min_tb=4'b0000; sec_tens_tb=4'b0000; sec_ones_tb=4'b0000;  
            #5  min_tb=4'b0001; sec_tens_tb=4'b0001; sec_ones_tb=4'b0001; 
         	  #5  min_tb=4'b0010; sec_tens_tb=4'b0010; sec_ones_tb=4'b0010;
            #5  min_tb=4'b0011; sec_tens_tb=4'b0011; sec_ones_tb=4'b0011;
            #5  min_tb=4'b0100; sec_tens_tb=4'b0100; sec_ones_tb=4'b0100;
            #5  min_tb=4'b0101; sec_tens_tb=4'b0101; sec_ones_tb=4'b0101;
          	#5  min_tb=4'b0110; sec_tens_tb=4'b0110; sec_ones_tb=4'b0110;
            #5  min_tb=4'b0111; sec_tens_tb=4'b0111; sec_ones_tb=4'b0111;
          	#5  min_tb=4'b1000; sec_tens_tb=4'b1000; sec_ones_tb=4'b1000;
            #5  min_tb=4'b1001; sec_tens_tb=4'b1001; sec_ones_tb=4'b1001;    
        end

endmodule