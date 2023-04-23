module debouncer
  (input wire clk,
   input wire loadn,
   output wire debounced_out);
  
  reg [2:0] i;
  reg a;
  assign debounced_out = a;
  
  always @ (posedge clk or posedge loadn)
    begin
      if (clear) i = 3'd0;
  	  else
        begin
          if (i == 3'd3)
            begin
              a = 1'b1;
              i = i + 1;
            end
          else if (i < 3'd7)
            begin
              i = i + 1;
            end
        end
    end
  
endmodule
