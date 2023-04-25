module div_100
  (input wire clk,
  output wire clk_div_100);
  
  reg [27:0] contador = 28'b0000000;
  parameter DIVISOR = 28'd50000000;
  //integer i = 0;
  reg ciclo = 0;
  
  assign clk_div_100 = ciclo;
  
  always @ (posedge clk)
    begin
		if (contador >= (DIVISOR)-1) begin
			contador <= 0;
			ciclo <= 1'd1;
		end
		else begin
			contador <= contador + 1;
			ciclo <= 1'd0;
		end
			
      //i <= i + 1;
      //if (i == 100) begin ciclo <= !ciclo; i <= 0; end
    end
  
endmodule