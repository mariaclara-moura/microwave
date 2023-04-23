module debouncer
  (input wire clk,
   input wire loadn,
   output wire debounced_out);
  
  reg [2:0] i = 3'b000;
  reg a = 1'b0;
  assign debounced_out = a;
  reg hold = 1'b0;

  always @ (posedge loadn) // novo sinal
    begin
      if (i == 3'b111) 
      begin
        a = 1'b0;
        hold = 1'b0;
        i = 3'b000;
      end
    end
  
  always @ (posedge clk)
    begin
      if (i < 3'b111 && hold == 1'b0)
        begin
          if (i == 3'd4)
            a = 1'b1; // produz saída
          i <= i + 1;
        end
      else
        hold = 1'b1;
    end
  
endmodule