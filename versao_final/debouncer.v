module debouncer
  (input wire clk,
   input wire loadn,
   output wire debounced_out);
  
  reg [4:0] i;
  reg a;
  assign debounced_out = a;
  
  always @ (posedge clk or posedge loadn)
    begin
      if (loadn) begin
		i <= 3'd0;
		a <= 0;
	  end
  	  else
        begin
          if (i < 5'd31)
            begin
              i <= i + 1;
            end
          if (i == 5'd30)
            begin
              a <= 1;
            end
          else 
            a <= 0;
        end
    end
  
endmodule
