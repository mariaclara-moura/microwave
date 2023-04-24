`include "Nivel2/Nivel3/contador_mod_10_teste.v"
`include "Nivel2/Nivel3/contador_mod6.v"

`timescale 1ns/1ps

module contador_nivel2(uni_sec, clear, clk, enable, load, count_us, count_ds, count_m, zero);

  input [3:0] uni_sec;
  input wire clk, enable, load, clear;
  output wire [3:0] count_us, count_ds, count_m;
  output wire zero;
  
  wire [3:0] dez_sec, min;
  wire tc1;
  wire tc2;
  wire tc4;
  
  contador_mod10 us(uni_sec, clk, load, enable, count_us, tc1, enable, clear);
  contador_mod6 ds(dez_sec, clk, load, enable, count_ds, tc2, tc1, clear);
  
  wire tc3 = tc2 & tc1;
  
  contador_mod10 ms(min, clk, load, enable, count_m, tc4, tc3);
  
  assign zero = tc1 & tc2 & tc4;
  
endmodule
