module div_100
  (input wire clk,
  output wire clk_div_100);
  
  integer i = 0;
  reg ciclo = 0;
  
  assign clk_div_100 = ciclo;
  
  always @ (posedge clk)
    begin
      i <= i + 1;
      if (i == 100) begin ciclo <= !ciclo; i <= 0; end
    end
  
endmodule