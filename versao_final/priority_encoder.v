module priority_encoder  
  (input wire [9:0] keypad,
  input wire enablen,
  output reg [3:0] BCD_OUT,
  output reg loadn);
  
  always @ (keypad)
    begin
      if (!enablen)
        begin
          if(keypad == 10'b0000000001)begin BCD_OUT = 4'b0000; loadn = 0; end
          else if(keypad == 10'b0000000010) begin BCD_OUT = 4'b0001; loadn = 1'b0; end
          else if(keypad == 10'b0000000100) begin BCD_OUT = 4'b0010; loadn = 1'b0; end
          else if(keypad == 10'b0000001000) begin BCD_OUT = 4'b0011; loadn = 1'b0; end
          else if(keypad == 10'b0000010000) begin BCD_OUT = 4'b0100; loadn = 1'b0; end
          else if(keypad == 10'b0000100000) begin BCD_OUT = 4'b0101; loadn = 1'b0; end
          else if(keypad == 10'b0001000000) begin BCD_OUT = 4'b0110; loadn = 1'b0; end
          else if(keypad == 10'b0010000000) begin BCD_OUT = 4'b0111; loadn = 1'b0; end
          else if(keypad == 10'b0100000000) begin BCD_OUT = 4'b1000; loadn = 1'b0; end
          else if(keypad == 10'b1000000000) begin BCD_OUT = 4'b1001; loadn = 1'b0; end
          else begin BCD_OUT = 4'b0000; loadn = 1'b1; end
        end
    end
  
endmodule
