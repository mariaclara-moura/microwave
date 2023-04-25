module decodificador(
  input wire [3:0] min, sec_tens, sec_ones, 
  output reg [6:0] min_segs, sec_tens_segs, sec_ones_segs);

  always@(min)
    case(min)
      4'b0000 : min_segs = 7'b100_0000;
      4'b0001 : min_segs = 7'b111_1001;
      4'b0010 : min_segs = 7'b010_0100;
      4'b0011 : min_segs = 7'b011_0000;
      4'b0100 : min_segs = 7'b001_1001;
      4'b0101 : min_segs = 7'b001_0010;
      4'b0110 : min_segs = 7'b000_0010;
      4'b0111 : min_segs = 7'b111_1000;
      4'b1000 : min_segs = 7'b000_0000;
      4'b1001 : min_segs = 7'b001_0000;
    endcase
  
  always@(sec_tens)
    case(sec_tens)
      4'b0000 : sec_tens_segs = 7'b100_0000;
      4'b0001 : sec_tens_segs = 7'b111_1001;
      4'b0010 : sec_tens_segs = 7'b010_0100;
      4'b0011 : sec_tens_segs = 7'b011_0000;
      4'b0100 : sec_tens_segs= 7'b001_1001;
      4'b0101 : sec_tens_segs = 7'b001_0010;
      4'b0110 : sec_tens_segs = 7'b000_0010;
      4'b0111 : sec_tens_segs = 7'b111_1000;
      4'b1000 : sec_tens_segs = 7'b000_0000;
      4'b1001 : sec_tens_segs = 7'b001_0000;
    endcase
  
  always@(sec_ones)
    case(sec_ones)
      4'b0000 : sec_ones_segs = 7'b100_0000;
      4'b0001 : sec_ones_segs = 7'b111_1001;
      4'b0010 : sec_ones_segs = 7'b010_0100;
      4'b0011 : sec_ones_segs = 7'b011_0000;
      4'b0100 : sec_ones_segs= 7'b001_1001;
      4'b0101 : sec_ones_segs = 7'b001_0010;
      4'b0110 : sec_ones_segs = 7'b000_0010;
      4'b0111 : sec_ones_segs = 7'b111_1000;
      4'b1000 : sec_ones_segs = 7'b000_0000;
      4'b1001 : sec_ones_segs = 7'b001_0000;
    endcase

endmodule

		