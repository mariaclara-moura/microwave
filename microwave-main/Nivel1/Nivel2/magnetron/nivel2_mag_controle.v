`include "Nivel1\Nivel2\magnetron\Nivel3\mag_latch.v"
`include "Nivel1\Nivel2\magnetron\Nivel3\control_mag.v"

module nivel2_mag_controle (
    input wire startn, stopn, clearn, door_closed, timer_done,
    output wire mag_on);

wire saida_set;
wire saida_reset;

control_mag control_mag(startn, stopn, clearn, door_closed, timer_done, saida_set, saida_reset);
mag_latch mag_latch(saida_set, saida_reset, mag_on);

endmodule