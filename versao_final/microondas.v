module microondas(
    input wire startn, clearn, stopn, door_closed,
    input wire [9:0] keypad,
    input wire clk,
    output wire [6:0] sec_ones_segs,
    output wire [6:0] sec_tens_segs,
    output wire [6:0] mins_segs,
    output wire mag_on
); 
    

    wire loadn;
    wire pgt_1hz;
    wire [3:0] BCD_OUT;
    wire zero;
    wire [3:0] sec_ones;
    wire [3:0] sec_tens;
    wire [3:0] min;

    encoder encoder(
    // entradas
    .keypad(keypad), 
    .clk(clk), 
    .enablen(mag_on), 
    
    // saídas
    .BCD_OUT(BCD_OUT),
    .pgt_1hz(pgt_1hz), 
    .loadn(loadn)
    );
    
    contador_nivel2 contador_nivel2(
    // entradas
    .uni_sec(BCD_OUT), 
    .load(loadn), 
    .clk(pgt_1hz), 
    .clear(clearn), 
    .enable(mag_on),

    // saídas
    .count_us(sec_ones), 
    .count_ds(sec_tens), 
    .count_m(min), 
    .zero(zero)
    );

    nivel2_mag_controle nivel2_mag_controle(
    // entradas
    .startn(startn), 
    .stopn(stopn), 
    .clearn(clearn) , 
    .door_closed(door_closed), 
    .timer_done(zero),

    // saída
    .mag_on(mag_on)
    );

    decodificador decodificador(
    // entradas
    .sec_ones(sec_ones), 
    .sec_tens(sec_tens), 
    .min(min),

    // saídas 
    .sec_ones_segs(sec_ones_segs), 
    .sec_tens_segs(sec_tens_segs), 
    .min_segs(mins_segs)
    );

endmodule
