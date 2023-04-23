module mux
  (input wire enablen,
   input wire clk_div_100,
   input wire debounced_out,
   output wire pgt_1hz);
  

assign pgt_1hz = (!enablen ? debounced_out : clk_div_110);
  
endmodule