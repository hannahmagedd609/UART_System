/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : K-2015.06
// Date      : Wed Oct 23 21:29:14 2024
/////////////////////////////////////////////////////////////


module RST_SYNC ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   N0;
  wire   [0:0] RST_REG;

  \**SEQGEN**  \RST_REG_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(
        RST_REG[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        SYNC_RST), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \RST_REG_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(1'b1), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(RST_REG[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
endmodule


module DATA_SYNC_BUS_WIDTH8 ( unsync_bus, bus_enable, D_CLK, RST, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, D_CLK, RST;
  output enable_pulse;
  wire   N0, enable_flop, enable_pulse_comb, N1;
  wire   [1:0] sync_flops;

  \**SEQGEN**  \sync_flops_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(
        sync_flops[0]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_flops[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \sync_flops_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(
        bus_enable), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_flops[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  enable_flop_reg ( .clear(N0), .preset(1'b0), .next_state(
        sync_flops[1]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        enable_flop), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \sync_bus_reg[7]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[7]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  \sync_bus_reg[6]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[6]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  \sync_bus_reg[5]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[5]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  \sync_bus_reg[4]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[4]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  \sync_bus_reg[3]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[3]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  \sync_bus_reg[2]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[2]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  \sync_bus_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[1]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  \sync_bus_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(
        unsync_bus[0]), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), .Q(
        sync_bus[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(enable_pulse_comb) );
  \**SEQGEN**  enable_pulse_reg ( .clear(N0), .preset(1'b0), .next_state(
        enable_pulse_comb), .clocked_on(D_CLK), .data_in(1'b0), .enable(1'b0), 
        .Q(enable_pulse), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
  GTECH_AND2 C74 ( .A(N1), .B(sync_flops[1]), .Z(enable_pulse_comb) );
  GTECH_NOT I_1 ( .A(enable_flop), .Z(N1) );
endmodule


module FIFO_MEM_CTRL ( w_data, W_CLK, W_RST, w_addr, r_addr, winc, wfull, 
        r_data );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input W_CLK, W_RST, winc, wfull;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12,
         \FIFO_Memory[0][7] , \FIFO_Memory[0][6] , \FIFO_Memory[0][5] ,
         \FIFO_Memory[0][4] , \FIFO_Memory[0][3] , \FIFO_Memory[0][2] ,
         \FIFO_Memory[0][1] , \FIFO_Memory[0][0] , \FIFO_Memory[1][7] ,
         \FIFO_Memory[1][6] , \FIFO_Memory[1][5] , \FIFO_Memory[1][4] ,
         \FIFO_Memory[1][3] , \FIFO_Memory[1][2] , \FIFO_Memory[1][1] ,
         \FIFO_Memory[1][0] , \FIFO_Memory[2][7] , \FIFO_Memory[2][6] ,
         \FIFO_Memory[2][5] , \FIFO_Memory[2][4] , \FIFO_Memory[2][3] ,
         \FIFO_Memory[2][2] , \FIFO_Memory[2][1] , \FIFO_Memory[2][0] ,
         \FIFO_Memory[3][7] , \FIFO_Memory[3][6] , \FIFO_Memory[3][5] ,
         \FIFO_Memory[3][4] , \FIFO_Memory[3][3] , \FIFO_Memory[3][2] ,
         \FIFO_Memory[3][1] , \FIFO_Memory[3][0] , \FIFO_Memory[4][7] ,
         \FIFO_Memory[4][6] , \FIFO_Memory[4][5] , \FIFO_Memory[4][4] ,
         \FIFO_Memory[4][3] , \FIFO_Memory[4][2] , \FIFO_Memory[4][1] ,
         \FIFO_Memory[4][0] , \FIFO_Memory[5][7] , \FIFO_Memory[5][6] ,
         \FIFO_Memory[5][5] , \FIFO_Memory[5][4] , \FIFO_Memory[5][3] ,
         \FIFO_Memory[5][2] , \FIFO_Memory[5][1] , \FIFO_Memory[5][0] ,
         \FIFO_Memory[6][7] , \FIFO_Memory[6][6] , \FIFO_Memory[6][5] ,
         \FIFO_Memory[6][4] , \FIFO_Memory[6][3] , \FIFO_Memory[6][2] ,
         \FIFO_Memory[6][1] , \FIFO_Memory[6][0] , \FIFO_Memory[7][7] ,
         \FIFO_Memory[7][6] , \FIFO_Memory[7][5] , \FIFO_Memory[7][4] ,
         \FIFO_Memory[7][3] , \FIFO_Memory[7][2] , \FIFO_Memory[7][1] ,
         \FIFO_Memory[7][0] , wclken, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35;

  \**SEQGEN**  \FIFO_Memory_reg[0][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[0][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[0][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[0][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[0][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[0][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[0][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[0][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[0][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N30) );
  \**SEQGEN**  \FIFO_Memory_reg[1][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[1][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[1][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[1][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[1][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[1][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[1][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[1][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[1][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \FIFO_Memory_reg[2][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[2][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[2][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[2][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[2][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[2][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[2][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[2][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[2][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N28) );
  \**SEQGEN**  \FIFO_Memory_reg[3][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[3][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[3][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[3][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[3][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[3][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[3][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[3][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[3][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N27) );
  \**SEQGEN**  \FIFO_Memory_reg[4][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[4][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[4][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[4][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[4][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[4][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[4][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[4][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[4][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N26) );
  \**SEQGEN**  \FIFO_Memory_reg[5][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[5][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[5][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[5][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[5][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[5][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[5][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[5][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[5][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N25) );
  \**SEQGEN**  \FIFO_Memory_reg[6][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[6][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[6][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[6][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[6][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[6][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[6][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[6][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[6][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N24) );
  \**SEQGEN**  \FIFO_Memory_reg[7][7]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[7]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][7] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  \**SEQGEN**  \FIFO_Memory_reg[7][6]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[6]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][6] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  \**SEQGEN**  \FIFO_Memory_reg[7][5]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[5]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][5] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  \**SEQGEN**  \FIFO_Memory_reg[7][4]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[4]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][4] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  \**SEQGEN**  \FIFO_Memory_reg[7][3]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[3]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][3] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  \**SEQGEN**  \FIFO_Memory_reg[7][2]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[2]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][2] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  \**SEQGEN**  \FIFO_Memory_reg[7][1]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[1]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][1] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  \**SEQGEN**  \FIFO_Memory_reg[7][0]  ( .clear(N13), .preset(1'b0), 
        .next_state(w_data[0]), .clocked_on(W_CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\FIFO_Memory[7][0] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N23) );
  GTECH_AND2 C287 ( .A(N31), .B(w_addr[2]), .Z(N22) );
  GTECH_AND2 C289 ( .A(N32), .B(w_addr[2]), .Z(N21) );
  GTECH_AND2 C291 ( .A(N33), .B(w_addr[2]), .Z(N20) );
  GTECH_AND2 C293 ( .A(N34), .B(w_addr[2]), .Z(N19) );
  GTECH_AND2 C294 ( .A(w_addr[0]), .B(w_addr[1]), .Z(N31) );
  GTECH_AND2 C295 ( .A(N31), .B(N0), .Z(N18) );
  GTECH_NOT I_0 ( .A(w_addr[2]), .Z(N0) );
  GTECH_AND2 C296 ( .A(N1), .B(w_addr[1]), .Z(N32) );
  GTECH_NOT I_1 ( .A(w_addr[0]), .Z(N1) );
  GTECH_AND2 C297 ( .A(N32), .B(N2), .Z(N17) );
  GTECH_NOT I_2 ( .A(w_addr[2]), .Z(N2) );
  GTECH_AND2 C298 ( .A(w_addr[0]), .B(N3), .Z(N33) );
  GTECH_NOT I_3 ( .A(w_addr[1]), .Z(N3) );
  GTECH_AND2 C299 ( .A(N33), .B(N4), .Z(N16) );
  GTECH_NOT I_4 ( .A(w_addr[2]), .Z(N4) );
  GTECH_AND2 C300 ( .A(N5), .B(N6), .Z(N34) );
  GTECH_NOT I_5 ( .A(w_addr[0]), .Z(N5) );
  GTECH_NOT I_6 ( .A(w_addr[1]), .Z(N6) );
  GTECH_AND2 C301 ( .A(N34), .B(N7), .Z(N15) );
  GTECH_NOT I_7 ( .A(w_addr[2]), .Z(N7) );
  SELECT_OP C302 ( .DATA1({N15, N16, N17, N18, N19, N20, N21, N22}), .DATA2({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N8), 
        .CONTROL2(N9), .Z({N30, N29, N28, N27, N26, N25, N24, N23}) );
  GTECH_BUF B_0 ( .A(wclken), .Z(N8) );
  GTECH_BUF B_1 ( .A(N14), .Z(N9) );
  MUX_OP C303 ( .D0({\FIFO_Memory[0][0] , \FIFO_Memory[0][1] , 
        \FIFO_Memory[0][2] , \FIFO_Memory[0][3] , \FIFO_Memory[0][4] , 
        \FIFO_Memory[0][5] , \FIFO_Memory[0][6] , \FIFO_Memory[0][7] }), .D1({
        \FIFO_Memory[1][0] , \FIFO_Memory[1][1] , \FIFO_Memory[1][2] , 
        \FIFO_Memory[1][3] , \FIFO_Memory[1][4] , \FIFO_Memory[1][5] , 
        \FIFO_Memory[1][6] , \FIFO_Memory[1][7] }), .D2({\FIFO_Memory[2][0] , 
        \FIFO_Memory[2][1] , \FIFO_Memory[2][2] , \FIFO_Memory[2][3] , 
        \FIFO_Memory[2][4] , \FIFO_Memory[2][5] , \FIFO_Memory[2][6] , 
        \FIFO_Memory[2][7] }), .D3({\FIFO_Memory[3][0] , \FIFO_Memory[3][1] , 
        \FIFO_Memory[3][2] , \FIFO_Memory[3][3] , \FIFO_Memory[3][4] , 
        \FIFO_Memory[3][5] , \FIFO_Memory[3][6] , \FIFO_Memory[3][7] }), .D4({
        \FIFO_Memory[4][0] , \FIFO_Memory[4][1] , \FIFO_Memory[4][2] , 
        \FIFO_Memory[4][3] , \FIFO_Memory[4][4] , \FIFO_Memory[4][5] , 
        \FIFO_Memory[4][6] , \FIFO_Memory[4][7] }), .D5({\FIFO_Memory[5][0] , 
        \FIFO_Memory[5][1] , \FIFO_Memory[5][2] , \FIFO_Memory[5][3] , 
        \FIFO_Memory[5][4] , \FIFO_Memory[5][5] , \FIFO_Memory[5][6] , 
        \FIFO_Memory[5][7] }), .D6({\FIFO_Memory[6][0] , \FIFO_Memory[6][1] , 
        \FIFO_Memory[6][2] , \FIFO_Memory[6][3] , \FIFO_Memory[6][4] , 
        \FIFO_Memory[6][5] , \FIFO_Memory[6][6] , \FIFO_Memory[6][7] }), .D7({
        \FIFO_Memory[7][0] , \FIFO_Memory[7][1] , \FIFO_Memory[7][2] , 
        \FIFO_Memory[7][3] , \FIFO_Memory[7][4] , \FIFO_Memory[7][5] , 
        \FIFO_Memory[7][6] , \FIFO_Memory[7][7] }), .S0(N10), .S1(N11), .S2(
        N12), .Z({r_data[0], r_data[1], r_data[2], r_data[3], r_data[4], 
        r_data[5], r_data[6], r_data[7]}) );
  GTECH_BUF B_2 ( .A(r_addr[0]), .Z(N10) );
  GTECH_BUF B_3 ( .A(r_addr[1]), .Z(N11) );
  GTECH_BUF B_4 ( .A(r_addr[2]), .Z(N12) );
  GTECH_AND2 C306 ( .A(winc), .B(N35), .Z(wclken) );
  GTECH_NOT I_8 ( .A(wfull), .Z(N35) );
  GTECH_NOT I_9 ( .A(W_RST), .Z(N13) );
  GTECH_NOT I_10 ( .A(wclken), .Z(N14) );
endmodule


module DF_SYNC ( in_ptr, CLK, RST, out_ptr );
  input [3:0] in_ptr;
  output [3:0] out_ptr;
  input CLK, RST;
  wire   N0, \SYNC_reg[3][0] , \SYNC_reg[2][0] , \SYNC_reg[1][0] ,
         \SYNC_reg[0][0] ;

  \**SEQGEN**  \SYNC_reg_reg[3][1]  ( .clear(N0), .preset(1'b0), .next_state(
        \SYNC_reg[3][0] ), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), 
        .Q(out_ptr[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SYNC_reg_reg[3][0]  ( .clear(N0), .preset(1'b0), .next_state(
        in_ptr[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \SYNC_reg[3][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SYNC_reg_reg[2][1]  ( .clear(N0), .preset(1'b0), .next_state(
        \SYNC_reg[2][0] ), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), 
        .Q(out_ptr[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SYNC_reg_reg[2][0]  ( .clear(N0), .preset(1'b0), .next_state(
        in_ptr[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \SYNC_reg[2][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SYNC_reg_reg[1][1]  ( .clear(N0), .preset(1'b0), .next_state(
        \SYNC_reg[1][0] ), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), 
        .Q(out_ptr[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SYNC_reg_reg[1][0]  ( .clear(N0), .preset(1'b0), .next_state(
        in_ptr[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \SYNC_reg[1][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SYNC_reg_reg[0][1]  ( .clear(N0), .preset(1'b0), .next_state(
        \SYNC_reg[0][0] ), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), 
        .Q(out_ptr[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \SYNC_reg_reg[0][0]  ( .clear(N0), .preset(1'b0), .next_state(
        in_ptr[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \SYNC_reg[0][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
endmodule


module FIFO_WR ( winc, wq2_rptr, W_CLK, W_RST, wfull, waddr, wptr );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, W_CLK, W_RST;
  output wfull;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33;
  wire   [2:0] wptr_reg;

  GTECH_XOR2 C7 ( .A(wptr[3]), .B(wq2_rptr[3]), .Z(N2) );
  GTECH_XOR2 C8 ( .A(wptr[2]), .B(wq2_rptr[2]), .Z(N3) );
  EQ_UNS_OP eq_22 ( .A(wptr[1:0]), .B(wq2_rptr[1:0]), .Z(N4) );
  \**SEQGEN**  \waddr_reg[2]  ( .clear(N6), .preset(1'b0), .next_state(N19), 
        .clocked_on(W_CLK), .data_in(1'b0), .enable(1'b0), .Q(waddr[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \waddr_reg[1]  ( .clear(N6), .preset(1'b0), .next_state(N18), 
        .clocked_on(W_CLK), .data_in(1'b0), .enable(1'b0), .Q(waddr[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \waddr_reg[0]  ( .clear(N6), .preset(1'b0), .next_state(N17), 
        .clocked_on(W_CLK), .data_in(1'b0), .enable(1'b0), .Q(waddr[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \wptr_reg_reg[3]  ( .clear(N6), .preset(1'b0), .next_state(N25), 
        .clocked_on(W_CLK), .data_in(1'b0), .enable(1'b0), .Q(wptr[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N26) );
  \**SEQGEN**  \wptr_reg_reg[2]  ( .clear(N6), .preset(1'b0), .next_state(N24), 
        .clocked_on(W_CLK), .data_in(1'b0), .enable(1'b0), .Q(wptr_reg[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N26) );
  \**SEQGEN**  \wptr_reg_reg[1]  ( .clear(N6), .preset(1'b0), .next_state(N23), 
        .clocked_on(W_CLK), .data_in(1'b0), .enable(1'b0), .Q(wptr_reg[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N26) );
  \**SEQGEN**  \wptr_reg_reg[0]  ( .clear(N6), .preset(1'b0), .next_state(N22), 
        .clocked_on(W_CLK), .data_in(1'b0), .enable(1'b0), .Q(wptr_reg[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N26) );
  GTECH_AND2 C91 ( .A(waddr[1]), .B(waddr[2]), .Z(N27) );
  GTECH_AND2 C92 ( .A(waddr[0]), .B(N27), .Z(N28) );
  GTECH_AND2 C93 ( .A(wptr_reg[2]), .B(wptr[3]), .Z(N29) );
  GTECH_AND2 C94 ( .A(wptr_reg[1]), .B(N29), .Z(N30) );
  GTECH_AND2 C95 ( .A(wptr_reg[0]), .B(N30), .Z(N31) );
  ADD_UNS_OP add_35 ( .A(waddr), .B(1'b1), .Z({N11, N10, N9}) );
  ADD_UNS_OP add_36 ( .A({wptr[3], wptr_reg}), .B(1'b1), .Z({N15, N14, N13, 
        N12}) );
  SELECT_OP C96 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N11, N10, N9}), 
        .CONTROL1(N0), .CONTROL2(N16), .Z({N19, N18, N17}) );
  GTECH_BUF B_0 ( .A(N28), .Z(N0) );
  SELECT_OP C97 ( .DATA1(1'b1), .DATA2(N8), .CONTROL1(N0), .CONTROL2(N16), .Z(
        N20) );
  SELECT_OP C98 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N15, N14, N13, N12}), .CONTROL1(N1), .CONTROL2(N21), .Z({N25, N24, N23, N22}) );
  GTECH_BUF B_1 ( .A(N31), .Z(N1) );
  SELECT_OP C99 ( .DATA1(1'b1), .DATA2(N8), .CONTROL1(N1), .CONTROL2(N21), .Z(
        N26) );
  GTECH_XOR2 C102 ( .A(wptr[3]), .B(wptr_reg[2]), .Z(wptr[2]) );
  GTECH_XOR2 C103 ( .A(wptr_reg[2]), .B(wptr_reg[1]), .Z(wptr[1]) );
  GTECH_XOR2 C104 ( .A(wptr_reg[1]), .B(wptr_reg[0]), .Z(wptr[0]) );
  GTECH_AND2 C105 ( .A(N32), .B(N4), .Z(N5) );
  GTECH_AND2 C106 ( .A(N2), .B(N3), .Z(N32) );
  GTECH_BUF B_2 ( .A(N5), .Z(wfull) );
  GTECH_NOT I_0 ( .A(W_RST), .Z(N6) );
  GTECH_BUF B_3 ( .A(W_RST), .Z(N7) );
  GTECH_AND2 C111 ( .A(winc), .B(N33), .Z(N8) );
  GTECH_NOT I_1 ( .A(wfull), .Z(N33) );
  GTECH_AND2 C114 ( .A(N7), .B(N8) );
  GTECH_NOT I_2 ( .A(N28), .Z(N16) );
  GTECH_NOT I_3 ( .A(N31), .Z(N21) );
endmodule


module FIFO_RD ( rinc, rq2_wptr, R_CLK, R_RST, rempty, raddr, rptr );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, R_CLK, R_RST;
  output rempty;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29;
  wire   [2:0] rptr_reg;

  EQ_UNS_OP eq_22 ( .A(rptr), .B(rq2_wptr), .Z(N2) );
  \**SEQGEN**  \raddr_reg[2]  ( .clear(N3), .preset(1'b0), .next_state(N16), 
        .clocked_on(R_CLK), .data_in(1'b0), .enable(1'b0), .Q(raddr[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N17) );
  \**SEQGEN**  \raddr_reg[1]  ( .clear(N3), .preset(1'b0), .next_state(N15), 
        .clocked_on(R_CLK), .data_in(1'b0), .enable(1'b0), .Q(raddr[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N17) );
  \**SEQGEN**  \raddr_reg[0]  ( .clear(N3), .preset(1'b0), .next_state(N14), 
        .clocked_on(R_CLK), .data_in(1'b0), .enable(1'b0), .Q(raddr[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N17) );
  \**SEQGEN**  \rptr_reg_reg[3]  ( .clear(N3), .preset(1'b0), .next_state(N22), 
        .clocked_on(R_CLK), .data_in(1'b0), .enable(1'b0), .Q(rptr[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N23) );
  \**SEQGEN**  \rptr_reg_reg[2]  ( .clear(N3), .preset(1'b0), .next_state(N21), 
        .clocked_on(R_CLK), .data_in(1'b0), .enable(1'b0), .Q(rptr_reg[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N23) );
  \**SEQGEN**  \rptr_reg_reg[1]  ( .clear(N3), .preset(1'b0), .next_state(N20), 
        .clocked_on(R_CLK), .data_in(1'b0), .enable(1'b0), .Q(rptr_reg[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N23) );
  \**SEQGEN**  \rptr_reg_reg[0]  ( .clear(N3), .preset(1'b0), .next_state(N19), 
        .clocked_on(R_CLK), .data_in(1'b0), .enable(1'b0), .Q(rptr_reg[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N23) );
  GTECH_AND2 C88 ( .A(raddr[1]), .B(raddr[2]), .Z(N24) );
  GTECH_AND2 C89 ( .A(raddr[0]), .B(N24), .Z(N25) );
  GTECH_AND2 C90 ( .A(rptr_reg[2]), .B(rptr[3]), .Z(N26) );
  GTECH_AND2 C91 ( .A(rptr_reg[1]), .B(N26), .Z(N27) );
  GTECH_AND2 C92 ( .A(rptr_reg[0]), .B(N27), .Z(N28) );
  ADD_UNS_OP add_35 ( .A(raddr), .B(1'b1), .Z({N8, N7, N6}) );
  ADD_UNS_OP add_36 ( .A({rptr[3], rptr_reg}), .B(1'b1), .Z({N12, N11, N10, N9}) );
  SELECT_OP C93 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N8, N7, N6}), .CONTROL1(
        N0), .CONTROL2(N13), .Z({N16, N15, N14}) );
  GTECH_BUF B_0 ( .A(N25), .Z(N0) );
  SELECT_OP C94 ( .DATA1(1'b1), .DATA2(N5), .CONTROL1(N0), .CONTROL2(N13), .Z(
        N17) );
  SELECT_OP C95 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N12, N11, N10, N9}), .CONTROL1(N1), .CONTROL2(N18), .Z({N22, N21, N20, N19}) );
  GTECH_BUF B_1 ( .A(N28), .Z(N1) );
  SELECT_OP C96 ( .DATA1(1'b1), .DATA2(N5), .CONTROL1(N1), .CONTROL2(N18), .Z(
        N23) );
  GTECH_XOR2 C99 ( .A(rptr[3]), .B(rptr_reg[2]), .Z(rptr[2]) );
  GTECH_XOR2 C100 ( .A(rptr_reg[2]), .B(rptr_reg[1]), .Z(rptr[1]) );
  GTECH_XOR2 C101 ( .A(rptr_reg[1]), .B(rptr_reg[0]), .Z(rptr[0]) );
  GTECH_BUF B_2 ( .A(N2), .Z(rempty) );
  GTECH_NOT I_0 ( .A(R_RST), .Z(N3) );
  GTECH_BUF B_3 ( .A(R_RST), .Z(N4) );
  GTECH_AND2 C106 ( .A(rinc), .B(N29), .Z(N5) );
  GTECH_NOT I_1 ( .A(rempty), .Z(N29) );
  GTECH_AND2 C109 ( .A(N4), .B(N5) );
  GTECH_NOT I_2 ( .A(N25), .Z(N13) );
  GTECH_NOT I_3 ( .A(N28), .Z(N18) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADD_WIDTH4 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, 
        R_INC, WR_DATA, FULL, RD_DATA, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;

  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] rptr;
  wire   [3:0] wq2_rptr;

  FIFO_MEM_CTRL U0 ( .w_data(WR_DATA), .W_CLK(W_CLK), .W_RST(W_RST), .w_addr(
        waddr), .r_addr(raddr), .winc(W_INC), .wfull(FULL), .r_data(RD_DATA)
         );
  DF_SYNC U1 ( .in_ptr(wptr), .CLK(R_CLK), .RST(R_RST), .out_ptr(rq2_wptr) );
  DF_SYNC U2 ( .in_ptr(rptr), .CLK(W_CLK), .RST(W_RST), .out_ptr(wq2_rptr) );
  FIFO_WR U3 ( .winc(W_INC), .wq2_rptr(wq2_rptr), .W_CLK(W_CLK), .W_RST(W_RST), 
        .wfull(FULL), .waddr(waddr), .wptr(wptr) );
  FIFO_RD U4 ( .rinc(R_INC), .rq2_wptr(rq2_wptr), .R_CLK(R_CLK), .R_RST(R_RST), 
        .rempty(EMPTY), .raddr(raddr), .rptr(rptr) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   N0, pulse_flop, prev_flop, N1;

  \**SEQGEN**  prev_flop_reg ( .clear(N0), .preset(1'b0), .next_state(LVL_SIG), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(prev_flop), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  pulse_flop_reg ( .clear(N0), .preset(1'b0), .next_state(
        prev_flop), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        pulse_flop), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
  GTECH_AND2 C18 ( .A(prev_flop), .B(N1), .Z(PULSE_SIG) );
  GTECH_NOT I_1 ( .A(pulse_flop), .Z(N1) );
endmodule


module ClkDiv_width8 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N1, N2, N3, N4, CLK_DIV_EN, N5, output_clk, N6, N7, x_flag, N8,
         N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36,
         N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64,
         N65;
  wire   [7:0] cyc_counter;
  assign N22 = i_div_ratio[1];
  assign N23 = i_div_ratio[2];
  assign N24 = i_div_ratio[3];
  assign N25 = i_div_ratio[4];
  assign N26 = i_div_ratio[5];
  assign N27 = i_div_ratio[6];
  assign N28 = i_div_ratio[7];

  EQ_UNS_OP eq_38 ( .A(cyc_counter), .B({N17, N16, N15, N14, N13, N12, N11, 
        N10}), .Z(N18) );
  EQ_UNS_OP eq_43 ( .A(cyc_counter), .B({N17, N16, N15, N14, N13, N12, N11, 
        N10}), .Z(N20) );
  EQ_UNS_OP eq_49 ( .A(cyc_counter), .B({1'b0, N28, N27, N26, N25, N24, N23, 
        N22}), .Z(N29) );
  \**SEQGEN**  x_flag_reg ( .clear(N8), .preset(1'b0), .next_state(N30), 
        .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(x_flag), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N51) );
  \**SEQGEN**  \cyc_counter_reg[7]  ( .clear(N8), .preset(1'b0), .next_state(
        N50), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[6]  ( .clear(N8), .preset(1'b0), .next_state(
        N49), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[5]  ( .clear(N8), .preset(1'b0), .next_state(
        N48), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[4]  ( .clear(N8), .preset(1'b0), .next_state(
        N47), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[3]  ( .clear(N8), .preset(1'b0), .next_state(
        N46), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[2]  ( .clear(N8), .preset(1'b0), .next_state(
        N45), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[1]  ( .clear(N8), .preset(1'b0), .next_state(
        N44), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[0]  ( .clear(N8), .preset(1'b0), .next_state(
        N43), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  output_clk_reg ( .clear(N8), .preset(1'b0), .next_state(N6), 
        .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(output_clk), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N42) );
  GTECH_OR2 C65 ( .A(N27), .B(N28), .Z(N52) );
  GTECH_OR2 C66 ( .A(N26), .B(N52), .Z(N53) );
  GTECH_OR2 C67 ( .A(N25), .B(N53), .Z(N54) );
  GTECH_OR2 C68 ( .A(N24), .B(N54), .Z(N55) );
  GTECH_OR2 C69 ( .A(N23), .B(N55), .Z(N56) );
  GTECH_OR2 C70 ( .A(N22), .B(N56), .Z(N57) );
  GTECH_OR2 C71 ( .A(i_div_ratio[0]), .B(N57), .Z(N58) );
  GTECH_NOT I_0 ( .A(i_div_ratio[0]), .Z(N59) );
  GTECH_OR2 C81 ( .A(N59), .B(N57), .Z(N60) );
  SUB_UNS_OP sub_38 ( .A({N28, N27, N26, N25, N24, N23, N22}), .B(1'b1), .Z({
        N17, N16, N15, N14, N13, N12, N11, N10}) );
  ADD_UNS_OP add_57 ( .A(cyc_counter), .B(1'b1), .Z({N41, N40, N39, N38, N37, 
        N36, N35, N34}) );
  SELECT_OP C84 ( .DATA1(output_clk), .DATA2(i_ref_clk), .CONTROL1(N0), 
        .CONTROL2(N1), .Z(o_div_clk) );
  GTECH_BUF B_0 ( .A(CLK_DIV_EN), .Z(N0) );
  GTECH_BUF B_1 ( .A(N5), .Z(N1) );
  SELECT_OP C85 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N33), .Z(N42)
         );
  GTECH_BUF B_2 ( .A(N19), .Z(N2) );
  GTECH_BUF B_3 ( .A(N21), .Z(N3) );
  GTECH_BUF B_4 ( .A(N30), .Z(N4) );
  SELECT_OP C86 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA3({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA4({N41, N40, N39, N38, 
        N37, N36, N35, N34}), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), 
        .CONTROL4(N33), .Z({N50, N49, N48, N47, N46, N45, N44, N43}) );
  SELECT_OP C87 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N33), .Z(N51)
         );
  GTECH_AND2 C90 ( .A(N61), .B(N60), .Z(CLK_DIV_EN) );
  GTECH_AND2 C91 ( .A(i_clk_en), .B(N58), .Z(N61) );
  GTECH_NOT I_1 ( .A(CLK_DIV_EN), .Z(N5) );
  GTECH_NOT I_2 ( .A(output_clk), .Z(N6) );
  GTECH_AND2 C96 ( .A(CLK_DIV_EN), .B(i_div_ratio[0]), .Z(N7) );
  GTECH_NOT I_3 ( .A(i_rst_n), .Z(N8) );
  GTECH_BUF B_5 ( .A(i_rst_n), .Z(N9) );
  GTECH_AND2 C100 ( .A(N62), .B(N18), .Z(N19) );
  GTECH_AND2 C101 ( .A(CLK_DIV_EN), .B(N59), .Z(N62) );
  GTECH_AND2 C103 ( .A(N7), .B(N63), .Z(N21) );
  GTECH_AND2 C104 ( .A(N20), .B(x_flag), .Z(N63) );
  GTECH_AND2 C105 ( .A(N7), .B(N65), .Z(N30) );
  GTECH_AND2 C106 ( .A(N29), .B(N64), .Z(N65) );
  GTECH_NOT I_4 ( .A(x_flag), .Z(N64) );
  GTECH_OR2 C111 ( .A(N21), .B(N19), .Z(N31) );
  GTECH_OR2 C112 ( .A(N30), .B(N31), .Z(N32) );
  GTECH_NOT I_5 ( .A(N32), .Z(N33) );
  GTECH_AND2 C114 ( .A(N9), .B(N33) );
endmodule


module Pres_MUX_WIDTH4_PRE_WD6 ( Prescale, div_ratio );
  input [5:0] Prescale;
  output [3:0] div_ratio;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34;

  GTECH_AND2 C6 ( .A(N5), .B(N6), .Z(N7) );
  GTECH_OR2 C12 ( .A(Prescale[3]), .B(N9), .Z(N10) );
  GTECH_OR2 C13 ( .A(N14), .B(N10), .Z(N11) );
  GTECH_OR2 C16 ( .A(Prescale[5]), .B(Prescale[4]), .Z(N14) );
  GTECH_OR2 C17 ( .A(N13), .B(Prescale[2]), .Z(N15) );
  GTECH_OR2 C18 ( .A(N14), .B(N15), .Z(N16) );
  GTECH_OR2 C21 ( .A(Prescale[5]), .B(N18), .Z(N19) );
  GTECH_OR2 C23 ( .A(N19), .B(N24), .Z(N20) );
  GTECH_OR2 C26 ( .A(N22), .B(Prescale[4]), .Z(N23) );
  GTECH_OR2 C27 ( .A(Prescale[3]), .B(Prescale[2]), .Z(N24) );
  GTECH_OR2 C28 ( .A(N23), .B(N24), .Z(N25) );
  SELECT_OP C53 ( .DATA1({1'b1, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b1, 1'b0, 
        1'b0}), .DATA3({1'b0, 1'b0, 1'b1, 1'b0}), .DATA4({1'b0, 1'b0, 1'b0, 
        1'b1}), .DATA5({1'b0, 1'b0, 1'b0, 1'b1}), .CONTROL1(N0), .CONTROL2(N1), 
        .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N30), .Z({N34, N33, N32, N31})
         );
  GTECH_BUF B_0 ( .A(N12), .Z(N0) );
  GTECH_BUF B_1 ( .A(N17), .Z(N1) );
  GTECH_BUF B_2 ( .A(N21), .Z(N2) );
  GTECH_BUF B_3 ( .A(N26), .Z(N3) );
  SELECT_OP C54 ( .DATA1({N34, N33, N32, N31}), .DATA2({1'b0, 1'b0, 1'b0, 1'b1}), .CONTROL1(N4), .CONTROL2(N8), .Z(div_ratio) );
  GTECH_BUF B_4 ( .A(N7), .Z(N4) );
  GTECH_NOT I_0 ( .A(Prescale[1]), .Z(N5) );
  GTECH_NOT I_1 ( .A(Prescale[0]), .Z(N6) );
  GTECH_NOT I_2 ( .A(N7), .Z(N8) );
  GTECH_NOT I_3 ( .A(Prescale[2]), .Z(N9) );
  GTECH_NOT I_4 ( .A(N11), .Z(N12) );
  GTECH_NOT I_5 ( .A(Prescale[3]), .Z(N13) );
  GTECH_NOT I_6 ( .A(N16), .Z(N17) );
  GTECH_NOT I_7 ( .A(Prescale[4]), .Z(N18) );
  GTECH_NOT I_8 ( .A(N20), .Z(N21) );
  GTECH_NOT I_9 ( .A(Prescale[5]), .Z(N22) );
  GTECH_NOT I_10 ( .A(N25), .Z(N26) );
  GTECH_OR2 C73 ( .A(N17), .B(N12), .Z(N27) );
  GTECH_OR2 C74 ( .A(N21), .B(N27), .Z(N28) );
  GTECH_OR2 C75 ( .A(N26), .B(N28), .Z(N29) );
  GTECH_NOT I_11 ( .A(N29), .Z(N30) );
endmodule


module ClkDiv_width4 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N1, N2, N3, N4, CLK_DIV_EN, N5, output_clk, N6, N7, x_flag, N8,
         N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36,
         N37, N38, N39, N40, N41, N42, N43, N44, N45;
  wire   [3:0] cyc_counter;
  assign N18 = i_div_ratio[1];
  assign N19 = i_div_ratio[2];
  assign N20 = i_div_ratio[3];

  EQ_UNS_OP eq_38 ( .A(cyc_counter), .B({N13, N12, N11, N10}), .Z(N14) );
  EQ_UNS_OP eq_43 ( .A(cyc_counter), .B({N13, N12, N11, N10}), .Z(N16) );
  EQ_UNS_OP eq_49 ( .A(cyc_counter), .B({1'b0, N20, N19, N18}), .Z(N21) );
  \**SEQGEN**  x_flag_reg ( .clear(N8), .preset(1'b0), .next_state(N22), 
        .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(x_flag), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \cyc_counter_reg[3]  ( .clear(N8), .preset(1'b0), .next_state(
        N34), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[2]  ( .clear(N8), .preset(1'b0), .next_state(
        N33), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[1]  ( .clear(N8), .preset(1'b0), .next_state(
        N32), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_counter_reg[0]  ( .clear(N8), .preset(1'b0), .next_state(
        N31), .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cyc_counter[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  output_clk_reg ( .clear(N8), .preset(1'b0), .next_state(N6), 
        .clocked_on(i_ref_clk), .data_in(1'b0), .enable(1'b0), .Q(output_clk), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  GTECH_OR2 C53 ( .A(N19), .B(N20), .Z(N36) );
  GTECH_OR2 C54 ( .A(N18), .B(N36), .Z(N37) );
  GTECH_OR2 C55 ( .A(i_div_ratio[0]), .B(N37), .Z(N38) );
  GTECH_NOT I_0 ( .A(i_div_ratio[0]), .Z(N39) );
  GTECH_OR2 C61 ( .A(N39), .B(N37), .Z(N40) );
  SUB_UNS_OP sub_38 ( .A({N20, N19, N18}), .B(1'b1), .Z({N13, N12, N11, N10})
         );
  ADD_UNS_OP add_57 ( .A(cyc_counter), .B(1'b1), .Z({N29, N28, N27, N26}) );
  SELECT_OP C64 ( .DATA1(output_clk), .DATA2(i_ref_clk), .CONTROL1(N0), 
        .CONTROL2(N1), .Z(o_div_clk) );
  GTECH_BUF B_0 ( .A(CLK_DIV_EN), .Z(N0) );
  GTECH_BUF B_1 ( .A(N5), .Z(N1) );
  SELECT_OP C65 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N25), .Z(N30)
         );
  GTECH_BUF B_2 ( .A(N15), .Z(N2) );
  GTECH_BUF B_3 ( .A(N17), .Z(N3) );
  GTECH_BUF B_4 ( .A(N22), .Z(N4) );
  SELECT_OP C66 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0}), .DATA4({N29, N28, N27, N26}), 
        .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N25), .Z({N34, 
        N33, N32, N31}) );
  SELECT_OP C67 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N25), .Z(N35)
         );
  GTECH_AND2 C70 ( .A(N41), .B(N40), .Z(CLK_DIV_EN) );
  GTECH_AND2 C71 ( .A(i_clk_en), .B(N38), .Z(N41) );
  GTECH_NOT I_1 ( .A(CLK_DIV_EN), .Z(N5) );
  GTECH_NOT I_2 ( .A(output_clk), .Z(N6) );
  GTECH_AND2 C76 ( .A(CLK_DIV_EN), .B(i_div_ratio[0]), .Z(N7) );
  GTECH_NOT I_3 ( .A(i_rst_n), .Z(N8) );
  GTECH_BUF B_5 ( .A(i_rst_n), .Z(N9) );
  GTECH_AND2 C80 ( .A(N42), .B(N14), .Z(N15) );
  GTECH_AND2 C81 ( .A(CLK_DIV_EN), .B(N39), .Z(N42) );
  GTECH_AND2 C83 ( .A(N7), .B(N43), .Z(N17) );
  GTECH_AND2 C84 ( .A(N16), .B(x_flag), .Z(N43) );
  GTECH_AND2 C85 ( .A(N7), .B(N45), .Z(N22) );
  GTECH_AND2 C86 ( .A(N21), .B(N44), .Z(N45) );
  GTECH_NOT I_4 ( .A(x_flag), .Z(N44) );
  GTECH_OR2 C91 ( .A(N17), .B(N15), .Z(N23) );
  GTECH_OR2 C92 ( .A(N22), .B(N23), .Z(N24) );
  GTECH_NOT I_5 ( .A(N24), .Z(N25) );
  GTECH_AND2 C94 ( .A(N9), .B(N25) );
endmodule


module UART_Serial ( P_DATA, Data_Valid, ser_en, CLK, RST, Busy, ser_done, 
        ser_data );
  input [7:0] P_DATA;
  input Data_Valid, ser_en, CLK, RST, Busy;
  output ser_done, ser_data;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27;
  wire   [2:0] P_Counter;
  wire   [7:1] Temp_Reg;

  \**SEQGEN**  \Temp_Reg_reg[7]  ( .clear(N1), .preset(1'b0), .next_state(N18), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Temp_Reg[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \Temp_Reg_reg[6]  ( .clear(N1), .preset(1'b0), .next_state(N17), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Temp_Reg[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \Temp_Reg_reg[5]  ( .clear(N1), .preset(1'b0), .next_state(N16), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Temp_Reg[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \Temp_Reg_reg[4]  ( .clear(N1), .preset(1'b0), .next_state(N15), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Temp_Reg[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \Temp_Reg_reg[3]  ( .clear(N1), .preset(1'b0), .next_state(N14), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Temp_Reg[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \Temp_Reg_reg[2]  ( .clear(N1), .preset(1'b0), .next_state(N13), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Temp_Reg[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \Temp_Reg_reg[1]  ( .clear(N1), .preset(1'b0), .next_state(N12), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Temp_Reg[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \Temp_Reg_reg[0]  ( .clear(N1), .preset(1'b0), .next_state(N11), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(ser_data), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  ser_done_reg ( .clear(N1), .preset(1'b0), .next_state(N19), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(ser_done), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \P_Counter_reg[2]  ( .clear(N1), .preset(1'b0), .next_state(N22), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(P_Counter[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \P_Counter_reg[1]  ( .clear(N1), .preset(1'b0), .next_state(N21), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(P_Counter[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  \**SEQGEN**  \P_Counter_reg[0]  ( .clear(N1), .preset(1'b0), .next_state(N20), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(P_Counter[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N10) );
  GTECH_AND2 C86 ( .A(P_Counter[1]), .B(P_Counter[2]), .Z(N25) );
  GTECH_AND2 C87 ( .A(P_Counter[0]), .B(N25), .Z(N26) );
  ADD_UNS_OP add_24 ( .A(P_Counter), .B(1'b1), .Z({N9, N8, N7}) );
  SELECT_OP C91 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N0), 
        .CONTROL2(N24), .CONTROL3(N5), .Z(N10) );
  GTECH_BUF B_0 ( .A(N3), .Z(N0) );
  SELECT_OP C92 ( .DATA1(P_DATA), .DATA2({1'b0, Temp_Reg}), .CONTROL1(N0), 
        .CONTROL2(N24), .Z({N18, N17, N16, N15, N14, N13, N12, N11}) );
  SELECT_OP C93 ( .DATA1(1'b0), .DATA2(N26), .CONTROL1(N0), .CONTROL2(N24), 
        .Z(N19) );
  SELECT_OP C94 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N9, N8, N7}), .CONTROL1(
        N0), .CONTROL2(N24), .Z({N22, N21, N20}) );
  GTECH_NOT I_0 ( .A(RST), .Z(N1) );
  GTECH_BUF B_1 ( .A(RST), .Z(N2) );
  GTECH_AND2 C100 ( .A(Data_Valid), .B(N27), .Z(N3) );
  GTECH_NOT I_1 ( .A(Busy), .Z(N27) );
  GTECH_OR2 C104 ( .A(ser_en), .B(N3), .Z(N4) );
  GTECH_NOT I_2 ( .A(N4), .Z(N5) );
  GTECH_AND2 C106 ( .A(N2), .B(N24), .Z(N6) );
  GTECH_NOT I_3 ( .A(N3), .Z(N23) );
  GTECH_AND2 C110 ( .A(ser_en), .B(N23), .Z(N24) );
  GTECH_AND2 C111 ( .A(N6), .B(N23) );
endmodule


module UART_T_FSM ( Data_Valid, PAR_EN, ser_done, CLK, RST, mux_sel, Busy, 
        ser_en );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, CLK, RST;
  output Busy, ser_en;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, Busy_comb;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  \**SEQGEN**  \current_state_reg[2]  ( .clear(N14), .preset(1'b0), 
        .next_state(next_state[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \current_state_reg[1]  ( .clear(N14), .preset(1'b0), 
        .next_state(next_state[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \current_state_reg[0]  ( .clear(N14), .preset(1'b0), 
        .next_state(next_state[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_AND2 C18 ( .A(N15), .B(N16), .Z(N18) );
  GTECH_AND2 C19 ( .A(N18), .B(N17), .Z(N19) );
  GTECH_OR2 C21 ( .A(current_state[2]), .B(current_state[1]), .Z(N20) );
  GTECH_OR2 C22 ( .A(N20), .B(N17), .Z(N21) );
  GTECH_OR2 C26 ( .A(current_state[2]), .B(N16), .Z(N23) );
  GTECH_OR2 C27 ( .A(N23), .B(N17), .Z(N24) );
  GTECH_OR2 C30 ( .A(current_state[2]), .B(N16), .Z(N26) );
  GTECH_OR2 C31 ( .A(N26), .B(current_state[0]), .Z(N27) );
  GTECH_OR2 C35 ( .A(N15), .B(N16), .Z(N29) );
  GTECH_OR2 C36 ( .A(N29), .B(current_state[0]), .Z(N30) );
  GTECH_AND2 C38 ( .A(current_state[2]), .B(current_state[0]), .Z(N32) );
  GTECH_AND2 C40 ( .A(current_state[2]), .B(N16), .Z(N33) );
  GTECH_AND2 C79 ( .A(N15), .B(N16), .Z(N38) );
  GTECH_AND2 C80 ( .A(N38), .B(N17), .Z(N39) );
  GTECH_OR2 C82 ( .A(current_state[2]), .B(current_state[1]), .Z(N40) );
  GTECH_OR2 C83 ( .A(N40), .B(N17), .Z(N41) );
  GTECH_OR2 C87 ( .A(current_state[2]), .B(N16), .Z(N43) );
  GTECH_OR2 C88 ( .A(N43), .B(N17), .Z(N44) );
  GTECH_OR2 C91 ( .A(current_state[2]), .B(N16), .Z(N46) );
  GTECH_OR2 C92 ( .A(N46), .B(current_state[0]), .Z(N47) );
  GTECH_OR2 C96 ( .A(N15), .B(N16), .Z(N49) );
  GTECH_OR2 C97 ( .A(N49), .B(current_state[0]), .Z(N50) );
  GTECH_AND2 C99 ( .A(current_state[2]), .B(current_state[0]), .Z(N52) );
  GTECH_AND2 C101 ( .A(current_state[2]), .B(N16), .Z(N53) );
  \**SEQGEN**  Busy_reg ( .clear(N14), .preset(1'b0), .next_state(Busy_comb), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Busy), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C127 ( .DATA1(N36), .DATA2(1'b0), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N37) );
  GTECH_BUF B_0 ( .A(ser_done), .Z(N0) );
  GTECH_BUF B_1 ( .A(N35), .Z(N1) );
  SELECT_OP C128 ( .DATA1({1'b0, 1'b0, Data_Valid}), .DATA2({1'b0, 1'b1, 1'b1}), .DATA3({N37, 1'b1, N35}), .DATA4({1'b1, 1'b1, 1'b0}), .DATA5({1'b0, 1'b0, 
        1'b0}), .DATA6({1'b0, 1'b0, 1'b0}), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .Z(
        next_state) );
  GTECH_BUF B_2 ( .A(N19), .Z(N2) );
  GTECH_BUF B_3 ( .A(N22), .Z(N3) );
  GTECH_BUF B_4 ( .A(N25), .Z(N4) );
  GTECH_BUF B_5 ( .A(N28), .Z(N5) );
  GTECH_BUF B_6 ( .A(N31), .Z(N6) );
  GTECH_BUF B_7 ( .A(N34), .Z(N7) );
  SELECT_OP C129 ( .DATA1({1'b1, 1'b1}), .DATA2({1'b0, 1'b0}), .DATA3({1'b0, 
        1'b1}), .DATA4({1'b1, 1'b0}), .DATA5({1'b1, 1'b1}), .DATA6({1'b1, 1'b1}), .CONTROL1(N8), .CONTROL2(N9), .CONTROL3(N10), .CONTROL4(N11), .CONTROL5(N12), .CONTROL6(N13), .Z(mux_sel) );
  GTECH_BUF B_8 ( .A(N39), .Z(N8) );
  GTECH_BUF B_9 ( .A(N42), .Z(N9) );
  GTECH_BUF B_10 ( .A(N45), .Z(N10) );
  GTECH_BUF B_11 ( .A(N48), .Z(N11) );
  GTECH_BUF B_12 ( .A(N51), .Z(N12) );
  GTECH_BUF B_13 ( .A(N54), .Z(N13) );
  SELECT_OP C130 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N8), .CONTROL2(N9), .CONTROL3(
        N10), .CONTROL4(N11), .CONTROL5(N12), .CONTROL6(N13), .Z(ser_en) );
  SELECT_OP C131 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b0), .CONTROL1(N8), .CONTROL2(N9), .CONTROL3(
        N10), .CONTROL4(N11), .CONTROL5(N12), .CONTROL6(N13), .Z(Busy_comb) );
  GTECH_NOT I_0 ( .A(RST), .Z(N14) );
  GTECH_NOT I_1 ( .A(current_state[2]), .Z(N15) );
  GTECH_NOT I_2 ( .A(current_state[1]), .Z(N16) );
  GTECH_NOT I_3 ( .A(current_state[0]), .Z(N17) );
  GTECH_NOT I_4 ( .A(N21), .Z(N22) );
  GTECH_NOT I_5 ( .A(N24), .Z(N25) );
  GTECH_NOT I_6 ( .A(N27), .Z(N28) );
  GTECH_NOT I_7 ( .A(N30), .Z(N31) );
  GTECH_OR2 C149 ( .A(N32), .B(N33), .Z(N34) );
  GTECH_NOT I_8 ( .A(ser_done), .Z(N35) );
  GTECH_NOT I_9 ( .A(PAR_EN), .Z(N36) );
  GTECH_NOT I_10 ( .A(N41), .Z(N42) );
  GTECH_NOT I_11 ( .A(N44), .Z(N45) );
  GTECH_NOT I_12 ( .A(N47), .Z(N48) );
  GTECH_NOT I_13 ( .A(N50), .Z(N51) );
  GTECH_OR2 C176 ( .A(N52), .B(N53), .Z(N54) );
endmodule


module UART_Parity_calc ( P_DATA, Data_Valid, PAR_TYPE, PAR_EN, CLK, RST, Busy, 
        par_bit );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYPE, PAR_EN, CLK, RST, Busy;
  output par_bit;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21;
  wire   [7:0] Data_draft;

  \**SEQGEN**  \Data_draft_reg[7]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  \Data_draft_reg[6]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  \Data_draft_reg[5]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  \Data_draft_reg[4]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  \Data_draft_reg[3]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  \Data_draft_reg[2]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  \Data_draft_reg[1]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  \Data_draft_reg[0]  ( .clear(N2), .preset(1'b0), .next_state(
        P_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Data_draft[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N3) );
  \**SEQGEN**  par_bit_reg ( .clear(N2), .preset(1'b0), .next_state(N7), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(par_bit), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(PAR_EN) );
  SELECT_OP C70 ( .DATA1(N5), .DATA2(N6), .CONTROL1(N0), .CONTROL2(N1), .Z(N7)
         );
  GTECH_BUF B_0 ( .A(N4), .Z(N0) );
  GTECH_BUF B_1 ( .A(PAR_TYPE), .Z(N1) );
  GTECH_NOT I_0 ( .A(RST), .Z(N2) );
  GTECH_AND2 C74 ( .A(Data_Valid), .B(N8), .Z(N3) );
  GTECH_NOT I_1 ( .A(Busy), .Z(N8) );
  GTECH_NOT I_2 ( .A(PAR_TYPE), .Z(N4) );
  GTECH_XOR2 C81 ( .A(N14), .B(Data_draft[0]), .Z(N5) );
  GTECH_XOR2 C82 ( .A(N13), .B(Data_draft[1]), .Z(N14) );
  GTECH_XOR2 C83 ( .A(N12), .B(Data_draft[2]), .Z(N13) );
  GTECH_XOR2 C84 ( .A(N11), .B(Data_draft[3]), .Z(N12) );
  GTECH_XOR2 C85 ( .A(N10), .B(Data_draft[4]), .Z(N11) );
  GTECH_XOR2 C86 ( .A(N9), .B(Data_draft[5]), .Z(N10) );
  GTECH_XOR2 C87 ( .A(Data_draft[7]), .B(Data_draft[6]), .Z(N9) );
  GTECH_NOT I_3 ( .A(N21), .Z(N6) );
  GTECH_XOR2 C89 ( .A(N20), .B(Data_draft[0]), .Z(N21) );
  GTECH_XOR2 C90 ( .A(N19), .B(Data_draft[1]), .Z(N20) );
  GTECH_XOR2 C91 ( .A(N18), .B(Data_draft[2]), .Z(N19) );
  GTECH_XOR2 C92 ( .A(N17), .B(Data_draft[3]), .Z(N18) );
  GTECH_XOR2 C93 ( .A(N16), .B(Data_draft[4]), .Z(N17) );
  GTECH_XOR2 C94 ( .A(N15), .B(Data_draft[5]), .Z(N16) );
  GTECH_XOR2 C95 ( .A(Data_draft[7]), .B(Data_draft[6]), .Z(N15) );
endmodule


module UART_MUX ( mux_sel, start_bit, stop_bit, ser_data, par_bit, CLK, RST, 
        TX_OUT );
  input [1:0] mux_sel;
  input start_bit, stop_bit, ser_data, par_bit, CLK, RST;
  output TX_OUT;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, out, N12;

  GTECH_AND2 C6 ( .A(N4), .B(N5), .Z(N6) );
  GTECH_OR2 C8 ( .A(mux_sel[1]), .B(N5), .Z(N7) );
  GTECH_OR2 C11 ( .A(N4), .B(mux_sel[0]), .Z(N9) );
  GTECH_AND2 C13 ( .A(mux_sel[1]), .B(mux_sel[0]), .Z(N11) );
  \**SEQGEN**  TX_OUT_reg ( .clear(1'b0), .preset(N12), .next_state(out), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(TX_OUT), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C31 ( .DATA1(start_bit), .DATA2(ser_data), .DATA3(par_bit), 
        .DATA4(stop_bit), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), 
        .CONTROL4(N3), .Z(out) );
  GTECH_BUF B_0 ( .A(N6), .Z(N0) );
  GTECH_BUF B_1 ( .A(N8), .Z(N1) );
  GTECH_BUF B_2 ( .A(N10), .Z(N2) );
  GTECH_BUF B_3 ( .A(N11), .Z(N3) );
  GTECH_NOT I_0 ( .A(mux_sel[1]), .Z(N4) );
  GTECH_NOT I_1 ( .A(mux_sel[0]), .Z(N5) );
  GTECH_NOT I_2 ( .A(N7), .Z(N8) );
  GTECH_NOT I_3 ( .A(N9), .Z(N10) );
  GTECH_NOT I_4 ( .A(RST), .Z(N12) );
endmodule


module UART_TOP ( P_DATA_M, Data_Valid_M, PAR_EN_M, PAR_TYPE_M, CLK_M, RST_M, 
        TX_OUT_M, Busy_M );
  input [7:0] P_DATA_M;
  input Data_Valid_M, PAR_EN_M, PAR_TYPE_M, CLK_M, RST_M;
  output TX_OUT_M, Busy_M;
  wire   ser_en_M, ser_data_M, ser_done_M, par_bit_M, start_bit_M, stop_bit_M;
  wire   [1:0] mux_sel_M;

  UART_Serial Serial_DUT ( .P_DATA(P_DATA_M), .Data_Valid(Data_Valid_M), 
        .ser_en(ser_en_M), .CLK(CLK_M), .RST(RST_M), .Busy(Busy_M), .ser_done(
        ser_done_M), .ser_data(ser_data_M) );
  UART_T_FSM FSM_DUT ( .Data_Valid(Data_Valid_M), .PAR_EN(PAR_EN_M), 
        .ser_done(ser_done_M), .CLK(CLK_M), .RST(RST_M), .mux_sel(mux_sel_M), 
        .Busy(Busy_M), .ser_en(ser_en_M) );
  UART_Parity_calc Parity_calc_DUT ( .P_DATA(P_DATA_M), .Data_Valid(
        Data_Valid_M), .PAR_TYPE(PAR_TYPE_M), .PAR_EN(PAR_EN_M), .CLK(CLK_M), 
        .RST(RST_M), .Busy(Busy_M), .par_bit(par_bit_M) );
  UART_MUX MUX_DUT ( .mux_sel(mux_sel_M), .start_bit(start_bit_M), .stop_bit(
        stop_bit_M), .ser_data(ser_data_M), .par_bit(par_bit_M), .CLK(CLK_M), 
        .RST(RST_M), .TX_OUT(TX_OUT_M) );
endmodule


module uart_rx_fsm_DATA_WIDTH8 ( CLK, RST, S_DATA, Prescale, parity_enable, 
        bit_count, edge_count, par_err, stp_err, strt_glitch, strt_chk_en, 
        edge_bit_en, deser_en, par_chk_en, stp_chk_en, dat_samp_en, data_valid
 );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99;
  wire   [5:0] check_edge;
  wire   [5:0] error_check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  \**SEQGEN**  \current_state_reg[2]  ( .clear(N17), .preset(1'b0), 
        .next_state(next_state[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \current_state_reg[1]  ( .clear(N17), .preset(1'b0), 
        .next_state(next_state[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \current_state_reg[0]  ( .clear(N17), .preset(1'b0), 
        .next_state(next_state[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_AND2 C18 ( .A(N18), .B(N19), .Z(N21) );
  GTECH_AND2 C19 ( .A(N21), .B(N20), .Z(N22) );
  GTECH_OR2 C21 ( .A(current_state[2]), .B(current_state[1]), .Z(N23) );
  GTECH_OR2 C22 ( .A(N23), .B(N20), .Z(N24) );
  GTECH_OR2 C26 ( .A(current_state[2]), .B(N19), .Z(N26) );
  GTECH_OR2 C27 ( .A(N26), .B(N20), .Z(N27) );
  GTECH_OR2 C30 ( .A(current_state[2]), .B(N19), .Z(N29) );
  GTECH_OR2 C31 ( .A(N29), .B(current_state[0]), .Z(N30) );
  GTECH_OR2 C35 ( .A(N18), .B(N19), .Z(N32) );
  GTECH_OR2 C36 ( .A(N32), .B(current_state[0]), .Z(N33) );
  GTECH_AND2 C38 ( .A(current_state[2]), .B(current_state[1]), .Z(N35) );
  GTECH_AND2 C39 ( .A(N35), .B(current_state[0]), .Z(N36) );
  GTECH_OR2 C41 ( .A(N18), .B(current_state[1]), .Z(N37) );
  EQ_UNS_OP eq_68_2 ( .A(edge_count), .B(check_edge), .Z(N39) );
  EQ_UNS_OP eq_85_2 ( .A(edge_count), .B(check_edge), .Z(N45) );
  EQ_UNS_OP eq_102_2 ( .A(edge_count), .B(check_edge), .Z(N51) );
  EQ_UNS_OP eq_125_2 ( .A(edge_count), .B(error_check_edge), .Z(N54) );
  EQ_UNS_OP eq_114_2 ( .A(edge_count), .B(error_check_edge), .Z(N58) );
  GTECH_AND2 C132 ( .A(N18), .B(N19), .Z(N63) );
  GTECH_AND2 C133 ( .A(N63), .B(N20), .Z(N64) );
  GTECH_OR2 C135 ( .A(current_state[2]), .B(current_state[1]), .Z(N65) );
  GTECH_OR2 C136 ( .A(N65), .B(N20), .Z(N66) );
  GTECH_OR2 C140 ( .A(current_state[2]), .B(N19), .Z(N68) );
  GTECH_OR2 C141 ( .A(N68), .B(N20), .Z(N69) );
  GTECH_OR2 C144 ( .A(current_state[2]), .B(N19), .Z(N71) );
  GTECH_OR2 C145 ( .A(N71), .B(current_state[0]), .Z(N72) );
  GTECH_OR2 C149 ( .A(N18), .B(N19), .Z(N74) );
  GTECH_OR2 C150 ( .A(N74), .B(current_state[0]), .Z(N75) );
  GTECH_AND2 C152 ( .A(current_state[2]), .B(current_state[1]), .Z(N77) );
  GTECH_AND2 C153 ( .A(N77), .B(current_state[0]), .Z(N78) );
  GTECH_OR2 C155 ( .A(N18), .B(current_state[1]), .Z(N79) );
  GTECH_NOT I_0 ( .A(bit_count[3]), .Z(N84) );
  GTECH_NOT I_1 ( .A(bit_count[0]), .Z(N85) );
  GTECH_OR2 C202 ( .A(bit_count[2]), .B(N84), .Z(N86) );
  GTECH_OR2 C203 ( .A(bit_count[1]), .B(N86), .Z(N87) );
  GTECH_OR2 C204 ( .A(N85), .B(N87), .Z(N88) );
  GTECH_NOT I_2 ( .A(N88), .Z(N89) );
  GTECH_OR2 C206 ( .A(bit_count[2]), .B(bit_count[3]), .Z(N90) );
  GTECH_OR2 C207 ( .A(bit_count[1]), .B(N90), .Z(N91) );
  GTECH_OR2 C208 ( .A(bit_count[0]), .B(N91), .Z(N92) );
  GTECH_NOT I_3 ( .A(N92), .Z(N93) );
  GTECH_OR2 C213 ( .A(bit_count[0]), .B(N87), .Z(N94) );
  GTECH_NOT I_4 ( .A(N94), .Z(N95) );
  GTECH_NOT I_5 ( .A(bit_count[1]), .Z(N96) );
  GTECH_OR2 C218 ( .A(N96), .B(N86), .Z(N97) );
  GTECH_OR2 C219 ( .A(bit_count[0]), .B(N97), .Z(N98) );
  GTECH_NOT I_6 ( .A(N98), .Z(N99) );
  SUB_UNS_OP sub_40 ( .A(Prescale), .B(1'b1), .Z(check_edge) );
  SUB_UNS_OP sub_41 ( .A(Prescale), .B({1'b1, 1'b0}), .Z(error_check_edge) );
  SELECT_OP C227 ( .DATA1({N42, N42}), .DATA2({1'b0, 1'b1}), .CONTROL1(N0), 
        .CONTROL2(N41), .Z({N44, N43}) );
  GTECH_BUF B_0 ( .A(N40), .Z(N0) );
  GTECH_NOT I_7 ( .A(N46), .Z(N49) );
  SELECT_OP C229 ( .DATA1(N48), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N47), 
        .Z(N50) );
  GTECH_BUF B_1 ( .A(N46), .Z(N1) );
  SELECT_OP C230 ( .DATA1(N59), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N2), 
        .CONTROL2(N62), .CONTROL3(N57), .Z(N60) );
  GTECH_BUF B_2 ( .A(parity_enable), .Z(N2) );
  SELECT_OP C231 ( .DATA1({1'b0, 1'b0, N81}), .DATA2({1'b0, N44, N43}), 
        .DATA3({N50, 1'b1, N49}), .DATA4({N52, 1'b1, 1'b0}), .DATA5({1'b1, 
        1'b1, N60}), .DATA6({1'b0, 1'b0, N81}), .DATA7({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N3), .CONTROL2(N4), .CONTROL3(N5), .CONTROL4(N6), .CONTROL5(
        N7), .CONTROL6(N8), .CONTROL7(N9), .Z(next_state) );
  GTECH_BUF B_3 ( .A(N22), .Z(N3) );
  GTECH_BUF B_4 ( .A(N25), .Z(N4) );
  GTECH_BUF B_5 ( .A(N28), .Z(N5) );
  GTECH_BUF B_6 ( .A(N31), .Z(N6) );
  GTECH_BUF B_7 ( .A(N34), .Z(N7) );
  GTECH_BUF B_8 ( .A(N36), .Z(N8) );
  GTECH_BUF B_9 ( .A(N38), .Z(N9) );
  GTECH_NOT I_8 ( .A(N82), .Z(N83) );
  SELECT_OP C233 ( .DATA1(N81), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .DATA7(1'b0), .CONTROL1(N10), .CONTROL2(
        N11), .CONTROL3(N12), .CONTROL4(N13), .CONTROL5(N14), .CONTROL6(N15), 
        .CONTROL7(N16), .Z(dat_samp_en) );
  GTECH_BUF B_10 ( .A(N64), .Z(N10) );
  GTECH_BUF B_11 ( .A(N67), .Z(N11) );
  GTECH_BUF B_12 ( .A(deser_en), .Z(N12) );
  GTECH_BUF B_13 ( .A(par_chk_en), .Z(N13) );
  GTECH_BUF B_14 ( .A(stp_chk_en), .Z(N14) );
  GTECH_BUF B_15 ( .A(N78), .Z(N15) );
  GTECH_BUF B_16 ( .A(N80), .Z(N16) );
  SELECT_OP C234 ( .DATA1(N81), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N10), .CONTROL2(
        N11), .CONTROL3(N12), .CONTROL4(N13), .CONTROL5(N14), .CONTROL6(N15), 
        .CONTROL7(N16), .Z(edge_bit_en) );
  SELECT_OP C235 ( .DATA1(N81), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N10), .CONTROL2(
        N11), .CONTROL3(N12), .CONTROL4(N13), .CONTROL5(N14), .CONTROL6(N15), 
        .CONTROL7(N16), .Z(strt_chk_en) );
  SELECT_OP C236 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(N83), .DATA7(1'b0), .CONTROL1(N10), .CONTROL2(N11), .CONTROL3(N12), .CONTROL4(N13), .CONTROL5(N14), .CONTROL6(N15), .CONTROL7(
        N16), .Z(data_valid) );
  GTECH_NOT I_9 ( .A(RST), .Z(N17) );
  GTECH_NOT I_10 ( .A(current_state[2]), .Z(N18) );
  GTECH_NOT I_11 ( .A(current_state[1]), .Z(N19) );
  GTECH_NOT I_12 ( .A(current_state[0]), .Z(N20) );
  GTECH_NOT I_13 ( .A(N24), .Z(N25) );
  GTECH_NOT I_14 ( .A(N27), .Z(N28) );
  GTECH_NOT I_15 ( .A(N30), .Z(N31) );
  GTECH_NOT I_16 ( .A(N33), .Z(N34) );
  GTECH_NOT I_17 ( .A(N37), .Z(N38) );
  GTECH_BUF B_17 ( .A(N25) );
  GTECH_AND2 C263 ( .A(N93), .B(N39), .Z(N40) );
  GTECH_NOT I_18 ( .A(N40), .Z(N41) );
  GTECH_NOT I_19 ( .A(strt_glitch), .Z(N42) );
  GTECH_BUF B_18 ( .A(N28) );
  GTECH_AND2 C269 ( .A(N95), .B(N45), .Z(N46) );
  GTECH_NOT I_20 ( .A(N46), .Z(N47) );
  GTECH_NOT I_21 ( .A(parity_enable), .Z(N48) );
  GTECH_BUF B_19 ( .A(N31) );
  GTECH_AND2 C276 ( .A(N89), .B(N51), .Z(N52) );
  GTECH_BUF B_20 ( .A(N34), .Z(N53) );
  GTECH_AND2 C279 ( .A(N89), .B(N54), .Z(N55) );
  GTECH_OR2 C281 ( .A(N55), .B(parity_enable), .Z(N56) );
  GTECH_NOT I_22 ( .A(N56), .Z(N57) );
  GTECH_AND2 C283 ( .A(N53), .B(parity_enable) );
  GTECH_AND2 C284 ( .A(N99), .B(N58), .Z(N59) );
  GTECH_NOT I_23 ( .A(parity_enable), .Z(N61) );
  GTECH_AND2 C287 ( .A(N55), .B(N61), .Z(N62) );
  GTECH_NOT I_24 ( .A(N66), .Z(N67) );
  GTECH_NOT I_25 ( .A(N69), .Z(N70) );
  GTECH_NOT I_26 ( .A(N72), .Z(N73) );
  GTECH_NOT I_27 ( .A(N75), .Z(N76) );
  GTECH_NOT I_28 ( .A(N79), .Z(N80) );
  GTECH_BUF B_21 ( .A(N70), .Z(deser_en) );
  GTECH_BUF B_22 ( .A(N73), .Z(par_chk_en) );
  GTECH_BUF B_23 ( .A(N76), .Z(stp_chk_en) );
  GTECH_NOT I_29 ( .A(S_DATA), .Z(N81) );
  GTECH_OR2 C312 ( .A(par_err), .B(stp_err), .Z(N82) );
endmodule


module edge_bit_counter ( CLK, RST, Enable, Prescale, bit_count, edge_count );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable;
  wire   N0, N1, N2, N3, edge_count_done, N4, N5, N6, N7, N8, N9, N10, N11,
         N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42;

  \**SEQGEN**  \edge_count_reg[5]  ( .clear(N4), .preset(1'b0), .next_state(
        N24), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        edge_count[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \edge_count_reg[4]  ( .clear(N4), .preset(1'b0), .next_state(
        N23), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        edge_count[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \edge_count_reg[3]  ( .clear(N4), .preset(1'b0), .next_state(
        N22), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        edge_count[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \edge_count_reg[2]  ( .clear(N4), .preset(1'b0), .next_state(
        N21), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        edge_count[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \edge_count_reg[1]  ( .clear(N4), .preset(1'b0), .next_state(
        N20), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        edge_count[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \edge_count_reg[0]  ( .clear(N4), .preset(1'b0), .next_state(
        N19), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        edge_count[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  EQ_UNS_OP eq_40 ( .A(edge_count), .B({N30, N29, N28, N27, N26, N25}), .Z(N31) );
  \**SEQGEN**  \bit_count_reg[3]  ( .clear(N4), .preset(1'b0), .next_state(N42), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(bit_count[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \bit_count_reg[2]  ( .clear(N4), .preset(1'b0), .next_state(N41), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(bit_count[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \bit_count_reg[1]  ( .clear(N4), .preset(1'b0), .next_state(N40), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(bit_count[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \bit_count_reg[0]  ( .clear(N4), .preset(1'b0), .next_state(N39), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(bit_count[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  SUB_UNS_OP sub_40 ( .A(Prescale), .B(1'b1), .Z({N30, N29, N28, N27, N26, N25}) );
  ADD_UNS_OP add_54 ( .A(bit_count), .B(1'b1), .Z({N37, N36, N35, N34}) );
  ADD_UNS_OP add_31 ( .A(edge_count), .B(1'b1), .Z({N12, N11, N10, N9, N8, N7}) );
  SELECT_OP C89 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N12, 
        N11, N10, N9, N8, N7}), .CONTROL1(N0), .CONTROL2(N1), .Z({N18, N17, 
        N16, N15, N14, N13}) );
  GTECH_BUF B_0 ( .A(edge_count_done), .Z(N0) );
  GTECH_BUF B_1 ( .A(N6), .Z(N1) );
  SELECT_OP C90 ( .DATA1({N18, N17, N16, N15, N14, N13}), .DATA2({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N2), .CONTROL2(N3), .Z({N24, N23, 
        N22, N21, N20, N19}) );
  GTECH_BUF B_2 ( .A(Enable), .Z(N2) );
  GTECH_BUF B_3 ( .A(N5), .Z(N3) );
  SELECT_OP C91 ( .DATA1(edge_count_done), .DATA2(1'b1), .CONTROL1(N2), 
        .CONTROL2(N3), .Z(N38) );
  SELECT_OP C92 ( .DATA1({N37, N36, N35, N34}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N2), .CONTROL2(N3), .Z({N42, N41, N40, N39}) );
  GTECH_NOT I_0 ( .A(RST), .Z(N4) );
  GTECH_NOT I_1 ( .A(Enable), .Z(N5) );
  GTECH_NOT I_2 ( .A(edge_count_done), .Z(N6) );
  GTECH_AND2 C101 ( .A(N33), .B(N6) );
  GTECH_BUF B_4 ( .A(N31), .Z(edge_count_done) );
  GTECH_BUF B_5 ( .A(RST), .Z(N32) );
  GTECH_AND2 C106 ( .A(N32), .B(Enable), .Z(N33) );
  GTECH_AND2 C108 ( .A(N33), .B(edge_count_done) );
endmodule


module data_sampling ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable;
  output sampled_bit;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58;
  wire   [4:0] half_edges;
  wire   [4:0] half_edges_p1;
  wire   [4:0] half_edges_n1;
  wire   [2:0] Samples;

  EQ_UNS_OP eq_35 ( .A(edge_count), .B(half_edges_n1), .Z(N14) );
  EQ_UNS_OP eq_39 ( .A(edge_count), .B(half_edges), .Z(N15) );
  EQ_UNS_OP eq_43 ( .A(edge_count), .B(half_edges_p1), .Z(N16) );
  \**SEQGEN**  \Samples_reg[2]  ( .clear(N11), .preset(1'b0), .next_state(N24), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Samples[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N26) );
  \**SEQGEN**  \Samples_reg[1]  ( .clear(N11), .preset(1'b0), .next_state(N24), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Samples[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \Samples_reg[0]  ( .clear(N11), .preset(1'b0), .next_state(N24), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Samples[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N23) );
  GTECH_AND2 C62 ( .A(N32), .B(N33), .Z(N35) );
  GTECH_AND2 C63 ( .A(N35), .B(N34), .Z(N36) );
  GTECH_OR2 C65 ( .A(Samples[2]), .B(Samples[1]), .Z(N37) );
  GTECH_OR2 C66 ( .A(N37), .B(N34), .Z(N38) );
  GTECH_OR2 C69 ( .A(Samples[2]), .B(N33), .Z(N40) );
  GTECH_OR2 C70 ( .A(N40), .B(Samples[0]), .Z(N41) );
  GTECH_OR2 C74 ( .A(Samples[2]), .B(N33), .Z(N43) );
  GTECH_OR2 C75 ( .A(N43), .B(N34), .Z(N44) );
  GTECH_OR2 C78 ( .A(N32), .B(Samples[1]), .Z(N46) );
  GTECH_OR2 C79 ( .A(N46), .B(Samples[0]), .Z(N47) );
  GTECH_OR2 C83 ( .A(N32), .B(Samples[1]), .Z(N49) );
  GTECH_OR2 C84 ( .A(N49), .B(N34), .Z(N50) );
  GTECH_OR2 C88 ( .A(N32), .B(N33), .Z(N52) );
  GTECH_OR2 C89 ( .A(N52), .B(Samples[0]), .Z(N53) );
  GTECH_AND2 C91 ( .A(Samples[2]), .B(Samples[1]), .Z(N55) );
  GTECH_AND2 C92 ( .A(N55), .B(Samples[0]), .Z(N56) );
  \**SEQGEN**  sampled_bit_reg ( .clear(N11), .preset(1'b0), .next_state(N58), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(sampled_bit), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SUB_UNS_OP sub_20 ( .A(Prescale[5:1]), .B(1'b1), .Z(half_edges) );
  ADD_UNS_OP add_21 ( .A(half_edges), .B(1'b1), .Z(half_edges_p1) );
  SUB_UNS_OP sub_22 ( .A(half_edges), .B(1'b1), .Z(half_edges_n1) );
  SELECT_OP C115 ( .DATA1({1'b0, 1'b0, 1'b1}), .DATA2({1'b0, 1'b1, 1'b0}), 
        .DATA3({1'b1, 1'b0, 1'b0}), .DATA4({1'b0, 1'b0, 1'b0}), .CONTROL1(N0), 
        .CONTROL2(N28), .CONTROL3(N31), .CONTROL4(N19), .Z({N22, N21, N20}) );
  GTECH_BUF B_0 ( .A(N14), .Z(N0) );
  SELECT_OP C116 ( .DATA1({N22, N21, N20}), .DATA2({1'b1, 1'b1, 1'b1}), 
        .CONTROL1(N1), .CONTROL2(N2), .Z({N26, N25, N23}) );
  GTECH_BUF B_1 ( .A(Enable), .Z(N1) );
  GTECH_BUF B_2 ( .A(N13), .Z(N2) );
  SELECT_OP C117 ( .DATA1(S_DATA), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N24) );
  SELECT_OP C118 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b1), .DATA8(1'b1), .CONTROL1(N3), 
        .CONTROL2(N4), .CONTROL3(N5), .CONTROL4(N6), .CONTROL5(N7), .CONTROL6(
        N8), .CONTROL7(N9), .CONTROL8(N10), .Z(N57) );
  GTECH_BUF B_3 ( .A(N36), .Z(N3) );
  GTECH_BUF B_4 ( .A(N39), .Z(N4) );
  GTECH_BUF B_5 ( .A(N42), .Z(N5) );
  GTECH_BUF B_6 ( .A(N45), .Z(N6) );
  GTECH_BUF B_7 ( .A(N48), .Z(N7) );
  GTECH_BUF B_8 ( .A(N51), .Z(N8) );
  GTECH_BUF B_9 ( .A(N54), .Z(N9) );
  GTECH_BUF B_10 ( .A(N56), .Z(N10) );
  SELECT_OP C119 ( .DATA1(N57), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N58) );
  GTECH_NOT I_0 ( .A(RST), .Z(N11) );
  GTECH_BUF B_11 ( .A(RST), .Z(N12) );
  GTECH_NOT I_1 ( .A(Enable), .Z(N13) );
  GTECH_AND2 C127 ( .A(N12), .B(Enable) );
  GTECH_OR2 C131 ( .A(N15), .B(N14), .Z(N17) );
  GTECH_OR2 C132 ( .A(N16), .B(N17), .Z(N18) );
  GTECH_NOT I_2 ( .A(N18), .Z(N19) );
  GTECH_NOT I_3 ( .A(N14), .Z(N27) );
  GTECH_AND2 C135 ( .A(N15), .B(N27), .Z(N28) );
  GTECH_NOT I_4 ( .A(N15), .Z(N29) );
  GTECH_AND2 C137 ( .A(N27), .B(N29), .Z(N30) );
  GTECH_AND2 C138 ( .A(N16), .B(N30), .Z(N31) );
  GTECH_NOT I_5 ( .A(Samples[2]), .Z(N32) );
  GTECH_NOT I_6 ( .A(Samples[1]), .Z(N33) );
  GTECH_NOT I_7 ( .A(Samples[0]), .Z(N34) );
  GTECH_NOT I_8 ( .A(N38), .Z(N39) );
  GTECH_NOT I_9 ( .A(N41), .Z(N42) );
  GTECH_NOT I_10 ( .A(N44), .Z(N45) );
  GTECH_NOT I_11 ( .A(N47), .Z(N48) );
  GTECH_NOT I_12 ( .A(N50), .Z(N51) );
  GTECH_NOT I_13 ( .A(N53), .Z(N54) );
endmodule


module deserializer_DATA_WIDTH8 ( CLK, RST, sampled_bit, Enable, edge_count, 
        Prescale, P_DATA );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8;

  EQ_UNS_OP eq_22 ( .A(edge_count), .B({N6, N5, N4, N3, N2, N1}), .Z(N7) );
  \**SEQGEN**  \P_DATA_reg[7]  ( .clear(N0), .preset(1'b0), .next_state(
        sampled_bit), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  \**SEQGEN**  \P_DATA_reg[6]  ( .clear(N0), .preset(1'b0), .next_state(
        P_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  \**SEQGEN**  \P_DATA_reg[5]  ( .clear(N0), .preset(1'b0), .next_state(
        P_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  \**SEQGEN**  \P_DATA_reg[4]  ( .clear(N0), .preset(1'b0), .next_state(
        P_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  \**SEQGEN**  \P_DATA_reg[3]  ( .clear(N0), .preset(1'b0), .next_state(
        P_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  \**SEQGEN**  \P_DATA_reg[2]  ( .clear(N0), .preset(1'b0), .next_state(
        P_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  \**SEQGEN**  \P_DATA_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(
        P_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  \**SEQGEN**  \P_DATA_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(
        P_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        P_DATA[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N8) );
  SUB_UNS_OP sub_22 ( .A(Prescale), .B(1'b1), .Z({N6, N5, N4, N3, N2, N1}) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
  GTECH_BUF B_0 ( .A(RST) );
  GTECH_AND2 C53 ( .A(Enable), .B(N7), .Z(N8) );
endmodule


module strt_chk ( CLK, RST, sampled_bit, Enable, strt_glitch );
  input CLK, RST, sampled_bit, Enable;
  output strt_glitch;
  wire   N0;

  \**SEQGEN**  strt_glitch_reg ( .clear(N0), .preset(1'b0), .next_state(
        sampled_bit), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        strt_glitch), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(Enable) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
endmodule


module par_chk_DATA_WIDTH8 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable;
  output par_err;
  wire   N0, N1, N2, N3, parity, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13,
         N14, N15, N16, N17, N18, N19;

  \**SEQGEN**  par_err_reg ( .clear(N5), .preset(1'b0), .next_state(N6), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(par_err), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(Enable) );
  SELECT_OP C28 ( .DATA1(N3), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        parity) );
  GTECH_BUF B_0 ( .A(N2), .Z(N0) );
  GTECH_BUF B_1 ( .A(parity_type), .Z(N1) );
  GTECH_NOT I_0 ( .A(parity_type), .Z(N2) );
  GTECH_XOR2 C34 ( .A(N12), .B(P_DATA[0]), .Z(N3) );
  GTECH_XOR2 C35 ( .A(N11), .B(P_DATA[1]), .Z(N12) );
  GTECH_XOR2 C36 ( .A(N10), .B(P_DATA[2]), .Z(N11) );
  GTECH_XOR2 C37 ( .A(N9), .B(P_DATA[3]), .Z(N10) );
  GTECH_XOR2 C38 ( .A(N8), .B(P_DATA[4]), .Z(N9) );
  GTECH_XOR2 C39 ( .A(N7), .B(P_DATA[5]), .Z(N8) );
  GTECH_XOR2 C40 ( .A(P_DATA[7]), .B(P_DATA[6]), .Z(N7) );
  GTECH_NOT I_1 ( .A(N19), .Z(N4) );
  GTECH_XOR2 C42 ( .A(N18), .B(P_DATA[0]), .Z(N19) );
  GTECH_XOR2 C43 ( .A(N17), .B(P_DATA[1]), .Z(N18) );
  GTECH_XOR2 C44 ( .A(N16), .B(P_DATA[2]), .Z(N17) );
  GTECH_XOR2 C45 ( .A(N15), .B(P_DATA[3]), .Z(N16) );
  GTECH_XOR2 C46 ( .A(N14), .B(P_DATA[4]), .Z(N15) );
  GTECH_XOR2 C47 ( .A(N13), .B(P_DATA[5]), .Z(N14) );
  GTECH_XOR2 C48 ( .A(P_DATA[7]), .B(P_DATA[6]), .Z(N13) );
  GTECH_NOT I_2 ( .A(RST), .Z(N5) );
  GTECH_XOR2 C51 ( .A(parity), .B(sampled_bit), .Z(N6) );
endmodule


module stp_chk ( CLK, RST, sampled_bit, Enable, stp_err );
  input CLK, RST, sampled_bit, Enable;
  output stp_err;
  wire   N0, N1;

  \**SEQGEN**  stp_err_reg ( .clear(N0), .preset(1'b0), .next_state(N1), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(stp_err), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(Enable) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
  GTECH_NOT I_1 ( .A(sampled_bit), .Z(N1) );
endmodule


module UART_RX ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, P_DATA, 
        data_valid, parity_error, framing_error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type;
  output data_valid, parity_error, framing_error;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  uart_rx_fsm_DATA_WIDTH8 U0_uart_fsm ( .CLK(CLK), .RST(RST), .S_DATA(RX_IN), 
        .Prescale(Prescale), .parity_enable(parity_enable), .bit_count(
        bit_count), .edge_count(edge_count), .par_err(parity_error), .stp_err(
        framing_error), .strt_glitch(strt_glitch), .strt_chk_en(strt_chk_en), 
        .edge_bit_en(edge_bit_en), .deser_en(deser_en), .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(dat_samp_en), .data_valid(data_valid)
         );
  edge_bit_counter U0_edge_bit_counter ( .CLK(CLK), .RST(RST), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count) );
  data_sampling U0_data_sampling ( .CLK(CLK), .RST(RST), .S_DATA(RX_IN), 
        .Prescale(Prescale), .edge_count(edge_count), .Enable(dat_samp_en), 
        .sampled_bit(sampled_bit) );
  deserializer_DATA_WIDTH8 U0_deserializer ( .CLK(CLK), .RST(RST), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA) );
  strt_chk U0_strt_chk ( .CLK(CLK), .RST(RST), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch) );
  par_chk_DATA_WIDTH8 U0_par_chk ( .CLK(CLK), .RST(RST), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error) );
  stp_chk U0_stp_chk ( .CLK(CLK), .RST(RST), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error) );
endmodule


module UART_DATA_WIDTH8 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, 
        TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, 
        parity_type, parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;


  UART_TOP U0_UART_TX ( .P_DATA_M(TX_IN_P), .Data_Valid_M(TX_IN_V), .PAR_EN_M(
        parity_enable), .PAR_TYPE_M(parity_type), .CLK_M(TX_CLK), .RST_M(RST), 
        .TX_OUT_M(TX_OUT_S), .Busy_M(TX_OUT_V) );
  UART_RX U1_UART_RX ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN_S), 
        .parity_enable(parity_enable), .parity_type(parity_type), .Prescale(
        Prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), .parity_error(
        parity_error), .framing_error(framing_error) );
endmodule


module SYSTEM_CTRL_BYTE8 ( ALU_OUT, ALU_OUT_VLD, RX_P_DATA, RX_D_VLD, 
        FIFO_FULL, RdData, RdData_Valid, CLK, RST, ALU_EN, ALU_FUN, CLK_EN, 
        Address, WrEn, RdEn, WrData, TX_P_Data, TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_Data;
  input ALU_OUT_VLD, RX_D_VLD, FIFO_FULL, RdData_Valid, CLK, RST;
  output ALU_EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, frame_flag, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82,
         N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96,
         N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108,
         N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119,
         N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130,
         N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174,
         N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185,
         N186, N187, N188, N189, N190, N191, N192, N193, N194, N195, N196,
         N197, N198, N199, N200, N201, N202, N203, N204, N205, N206, N207,
         N208, N209, N210, N211, N212, N213, N214, N215, N216, N217, N218,
         N219, N220, N221, N222, N223, N224, N225, N226, N227, N228, N229,
         N230, N231, N232, N233, N234, N235, N236, N237, N238, N239, N240,
         N241, N242, N243, N244, N245, N246, N247, N248;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] Address_seq;
  assign clk_div_en = 1'b1;

  \**SEQGEN**  \current_state_reg[3]  ( .clear(N38), .preset(1'b0), 
        .next_state(next_state[3]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \current_state_reg[2]  ( .clear(N38), .preset(1'b0), 
        .next_state(next_state[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \current_state_reg[1]  ( .clear(N38), .preset(1'b0), 
        .next_state(next_state[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \current_state_reg[0]  ( .clear(N38), .preset(1'b0), 
        .next_state(next_state[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(current_state[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \Address_seq_reg[3]  ( .clear(N38), .preset(1'b0), .next_state(
        Address[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Address_seq[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N39) );
  \**SEQGEN**  \Address_seq_reg[2]  ( .clear(N38), .preset(1'b0), .next_state(
        Address[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Address_seq[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N39) );
  \**SEQGEN**  \Address_seq_reg[1]  ( .clear(N38), .preset(1'b0), .next_state(
        Address[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Address_seq[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N39) );
  \**SEQGEN**  \Address_seq_reg[0]  ( .clear(N38), .preset(1'b0), .next_state(
        Address[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        Address_seq[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N39) );
  \**SEQGEN**  frame_flag_reg ( .clear(N38), .preset(1'b0), .next_state(N40), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(frame_flag), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  GTECH_AND2 C69 ( .A(N241), .B(N242), .Z(N45) );
  GTECH_AND2 C70 ( .A(N236), .B(N231), .Z(N46) );
  GTECH_AND2 C71 ( .A(N45), .B(N46), .Z(N47) );
  GTECH_OR2 C73 ( .A(current_state[3]), .B(current_state[2]), .Z(N48) );
  GTECH_OR2 C74 ( .A(current_state[1]), .B(N231), .Z(N49) );
  GTECH_OR2 C75 ( .A(N48), .B(N49), .Z(N50) );
  GTECH_OR2 C79 ( .A(current_state[3]), .B(current_state[2]), .Z(N52) );
  GTECH_OR2 C80 ( .A(N236), .B(N231), .Z(N53) );
  GTECH_OR2 C81 ( .A(N52), .B(N53), .Z(N54) );
  GTECH_OR2 C84 ( .A(current_state[3]), .B(current_state[2]), .Z(N56) );
  GTECH_OR2 C85 ( .A(N236), .B(current_state[0]), .Z(N57) );
  GTECH_OR2 C86 ( .A(N56), .B(N57), .Z(N58) );
  GTECH_OR2 C90 ( .A(current_state[3]), .B(N242), .Z(N60) );
  GTECH_OR2 C91 ( .A(N236), .B(current_state[0]), .Z(N61) );
  GTECH_OR2 C92 ( .A(N60), .B(N61), .Z(N62) );
  GTECH_OR2 C97 ( .A(current_state[3]), .B(N242), .Z(N64) );
  GTECH_OR2 C98 ( .A(N236), .B(N231), .Z(N65) );
  GTECH_OR2 C99 ( .A(N64), .B(N65), .Z(N66) );
  GTECH_OR2 C103 ( .A(current_state[3]), .B(N242), .Z(N68) );
  GTECH_OR2 C104 ( .A(current_state[1]), .B(N231), .Z(N69) );
  GTECH_OR2 C105 ( .A(N68), .B(N69), .Z(N70) );
  GTECH_OR2 C108 ( .A(current_state[3]), .B(N242), .Z(N72) );
  GTECH_OR2 C109 ( .A(current_state[1]), .B(current_state[0]), .Z(N73) );
  GTECH_OR2 C110 ( .A(N72), .B(N73), .Z(N74) );
  GTECH_OR2 C114 ( .A(N241), .B(N242), .Z(N76) );
  GTECH_OR2 C115 ( .A(current_state[1]), .B(current_state[0]), .Z(N77) );
  GTECH_OR2 C116 ( .A(N76), .B(N77), .Z(N78) );
  GTECH_AND2 C118 ( .A(current_state[3]), .B(current_state[0]), .Z(N80) );
  GTECH_AND2 C119 ( .A(current_state[3]), .B(current_state[1]), .Z(N81) );
  GTECH_AND2 C121 ( .A(current_state[3]), .B(N242), .Z(N82) );
  GTECH_AND2 C138 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .Z(N84) );
  GTECH_OR2 C145 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[2]), .Z(N86) );
  GTECH_OR2 C146 ( .A(N92), .B(RX_P_DATA[0]), .Z(N87) );
  GTECH_OR2 C147 ( .A(N93), .B(N86), .Z(N88) );
  GTECH_OR2 C148 ( .A(N88), .B(N87), .Z(N89) );
  GTECH_OR2 C154 ( .A(RX_P_DATA[6]), .B(N91), .Z(N93) );
  GTECH_OR2 C155 ( .A(N105), .B(RX_P_DATA[2]), .Z(N94) );
  GTECH_OR2 C156 ( .A(N92), .B(N107), .Z(N95) );
  GTECH_OR2 C157 ( .A(N93), .B(N94), .Z(N96) );
  GTECH_OR2 C158 ( .A(N96), .B(N95), .Z(N97) );
  GTECH_OR2 C163 ( .A(RX_P_DATA[4]), .B(N106), .Z(N99) );
  GTECH_OR2 C164 ( .A(RX_P_DATA[1]), .B(RX_P_DATA[0]), .Z(N100) );
  GTECH_OR2 C165 ( .A(N108), .B(N99), .Z(N101) );
  GTECH_OR2 C166 ( .A(N101), .B(N100), .Z(N102) );
  GTECH_OR2 C172 ( .A(N104), .B(RX_P_DATA[5]), .Z(N108) );
  GTECH_OR2 C173 ( .A(N105), .B(N106), .Z(N109) );
  GTECH_OR2 C174 ( .A(RX_P_DATA[1]), .B(N107), .Z(N110) );
  GTECH_OR2 C175 ( .A(N108), .B(N109), .Z(N111) );
  GTECH_OR2 C176 ( .A(N111), .B(N110), .Z(N112) );
  GTECH_AND2 C293 ( .A(N241), .B(N242), .Z(N133) );
  GTECH_AND2 C294 ( .A(N236), .B(N231), .Z(N134) );
  GTECH_AND2 C295 ( .A(N133), .B(N134), .Z(N135) );
  GTECH_OR2 C297 ( .A(current_state[3]), .B(current_state[2]), .Z(N136) );
  GTECH_OR2 C298 ( .A(current_state[1]), .B(N231), .Z(N137) );
  GTECH_OR2 C299 ( .A(N136), .B(N137), .Z(N138) );
  GTECH_OR2 C303 ( .A(current_state[3]), .B(current_state[2]), .Z(N140) );
  GTECH_OR2 C304 ( .A(N236), .B(N231), .Z(N141) );
  GTECH_OR2 C305 ( .A(N140), .B(N141), .Z(N142) );
  GTECH_OR2 C308 ( .A(current_state[3]), .B(current_state[2]), .Z(N144) );
  GTECH_OR2 C309 ( .A(N236), .B(current_state[0]), .Z(N145) );
  GTECH_OR2 C310 ( .A(N144), .B(N145), .Z(N146) );
  GTECH_OR2 C314 ( .A(current_state[3]), .B(N242), .Z(N148) );
  GTECH_OR2 C315 ( .A(N236), .B(current_state[0]), .Z(N149) );
  GTECH_OR2 C316 ( .A(N148), .B(N149), .Z(N150) );
  GTECH_OR2 C321 ( .A(current_state[3]), .B(N242), .Z(N152) );
  GTECH_OR2 C322 ( .A(N236), .B(N231), .Z(N153) );
  GTECH_OR2 C323 ( .A(N152), .B(N153), .Z(N154) );
  GTECH_OR2 C327 ( .A(current_state[3]), .B(N242), .Z(N156) );
  GTECH_OR2 C328 ( .A(current_state[1]), .B(N231), .Z(N157) );
  GTECH_OR2 C329 ( .A(N156), .B(N157), .Z(N158) );
  GTECH_OR2 C332 ( .A(current_state[3]), .B(N242), .Z(N160) );
  GTECH_OR2 C333 ( .A(current_state[1]), .B(current_state[0]), .Z(N161) );
  GTECH_OR2 C334 ( .A(N160), .B(N161), .Z(N162) );
  GTECH_OR2 C338 ( .A(N241), .B(N242), .Z(N164) );
  GTECH_OR2 C339 ( .A(current_state[1]), .B(current_state[0]), .Z(N165) );
  GTECH_OR2 C340 ( .A(N164), .B(N165), .Z(N166) );
  GTECH_NOT I_0 ( .A(frame_flag), .Z(N230) );
  GTECH_NOT I_1 ( .A(current_state[0]), .Z(N231) );
  GTECH_OR2 C523 ( .A(current_state[2]), .B(current_state[3]), .Z(N232) );
  GTECH_OR2 C524 ( .A(current_state[1]), .B(N232), .Z(N233) );
  GTECH_OR2 C525 ( .A(N231), .B(N233), .Z(N234) );
  GTECH_NOT I_2 ( .A(N234), .Z(N235) );
  GTECH_NOT I_3 ( .A(current_state[1]), .Z(N236) );
  GTECH_OR2 C529 ( .A(current_state[2]), .B(current_state[3]), .Z(N237) );
  GTECH_OR2 C530 ( .A(N236), .B(N237), .Z(N238) );
  GTECH_OR2 C531 ( .A(N231), .B(N238), .Z(N239) );
  GTECH_NOT I_4 ( .A(N239), .Z(N240) );
  GTECH_NOT I_5 ( .A(current_state[3]), .Z(N241) );
  GTECH_NOT I_6 ( .A(current_state[2]), .Z(N242) );
  GTECH_OR2 C535 ( .A(N242), .B(N241), .Z(N243) );
  GTECH_OR2 C536 ( .A(current_state[1]), .B(N243), .Z(N244) );
  GTECH_OR2 C537 ( .A(current_state[0]), .B(N244), .Z(N245) );
  GTECH_NOT I_7 ( .A(N245), .Z(N246) );
  SELECT_OP C540 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N0), 
        .CONTROL2(N1), .CONTROL3(N43), .Z(N44) );
  GTECH_BUF B_0 ( .A(N40), .Z(N0) );
  GTECH_BUF B_1 ( .A(N41), .Z(N1) );
  SELECT_OP C541 ( .DATA1({1'b0, 1'b0, 1'b1}), .DATA2({1'b0, 1'b1, 1'b1}), 
        .DATA3({1'b1, 1'b1, 1'b1}), .DATA4({1'b1, 1'b0, 1'b0}), .DATA5({1'b0, 
        1'b0, 1'b0}), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(
        N5), .CONTROL5(N117), .Z({N120, N119, N118}) );
  GTECH_BUF B_2 ( .A(N90), .Z(N2) );
  GTECH_BUF B_3 ( .A(N98), .Z(N3) );
  GTECH_BUF B_4 ( .A(N103), .Z(N4) );
  GTECH_BUF B_5 ( .A(N113), .Z(N5) );
  SELECT_OP C542 ( .DATA1({N120, N119, N118}), .DATA2({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N6), .CONTROL2(N85), .Z({N123, N122, N121}) );
  GTECH_BUF B_6 ( .A(N84), .Z(N6) );
  SELECT_OP C543 ( .DATA1({N123, N122, N121}), .DATA2({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N7), .CONTROL2(N8), .Z({N126, N125, N124}) );
  GTECH_BUF B_7 ( .A(RX_D_VLD), .Z(N7) );
  GTECH_BUF B_8 ( .A(N198), .Z(N8) );
  SELECT_OP C544 ( .DATA1(FIFO_FULL), .DATA2(1'b1), .CONTROL1(N9), .CONTROL2(
        N10), .Z(N128) );
  GTECH_BUF B_9 ( .A(RdData_Valid), .Z(N9) );
  GTECH_BUF B_10 ( .A(N127), .Z(N10) );
  SELECT_OP C545 ( .DATA1(N230), .DATA2(1'b1), .CONTROL1(N11), .CONTROL2(N12), 
        .Z(N131) );
  GTECH_BUF B_11 ( .A(N130), .Z(N11) );
  GTECH_BUF B_12 ( .A(FIFO_FULL), .Z(N12) );
  SELECT_OP C546 ( .DATA1(N131), .DATA2(1'b1), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(N132) );
  GTECH_BUF B_13 ( .A(ALU_OUT_VLD), .Z(N13) );
  GTECH_BUF B_14 ( .A(N129), .Z(N14) );
  SELECT_OP C547 ( .DATA1({1'b0, N126, N125, N124}), .DATA2({1'b0, 1'b0, 
        RX_D_VLD, N198}), .DATA3({1'b0, RX_D_VLD, 1'b1, N198}), .DATA4({1'b0, 
        1'b0, N198, 1'b0}), .DATA5({1'b0, N128, N128, 1'b0}), .DATA6({1'b0, 
        1'b1, N198, 1'b1}), .DATA7({1'b0, 1'b1, 1'b0, N198}), .DATA8({RX_D_VLD, 
        1'b1, 1'b0, 1'b0}), .DATA9({N132, N132, 1'b0, 1'b0}), .DATA10({1'b0, 
        1'b0, 1'b0, 1'b0}), .CONTROL1(N15), .CONTROL2(N16), .CONTROL3(N17), 
        .CONTROL4(N18), .CONTROL5(N19), .CONTROL6(N20), .CONTROL7(N21), 
        .CONTROL8(N22), .CONTROL9(N23), .CONTROL10(N24), .Z(next_state) );
  GTECH_BUF B_15 ( .A(N47), .Z(N15) );
  GTECH_BUF B_16 ( .A(N51), .Z(N16) );
  GTECH_BUF B_17 ( .A(N55), .Z(N17) );
  GTECH_BUF B_18 ( .A(N59), .Z(N18) );
  GTECH_BUF B_19 ( .A(N63), .Z(N19) );
  GTECH_BUF B_20 ( .A(N67), .Z(N20) );
  GTECH_BUF B_21 ( .A(N71), .Z(N21) );
  GTECH_BUF B_22 ( .A(N75), .Z(N22) );
  GTECH_BUF B_23 ( .A(N79), .Z(N23) );
  GTECH_BUF B_24 ( .A(N83), .Z(N24) );
  SELECT_OP C548 ( .DATA1(RX_P_DATA[3:0]), .DATA2(Address_seq), .CONTROL1(N7), 
        .CONTROL2(N8), .Z({N171, N170, N169, N168}) );
  SELECT_OP C549 ( .DATA1(RX_P_DATA[3:0]), .DATA2(Address_seq), .CONTROL1(N7), 
        .CONTROL2(N8), .Z({N175, N174, N173, N172}) );
  SELECT_OP C550 ( .DATA1(RX_P_DATA[7:4]), .DATA2({1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N7), .CONTROL2(N8), .Z({N179, N178, N177, N176}) );
  SELECT_OP C551 ( .DATA1(RdData), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .CONTROL1(N25), .CONTROL2(N181), .Z({N189, N188, N187, 
        N186, N185, N184, N183, N182}) );
  GTECH_BUF B_25 ( .A(N180), .Z(N25) );
  SELECT_OP C552 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(Address_seq), 
        .CONTROL1(N7), .CONTROL2(N8), .Z({N193, N192, N191, N190}) );
  SELECT_OP C553 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b1}), .DATA2(Address_seq), 
        .CONTROL1(N7), .CONTROL2(N8), .Z({N197, N196, N195, N194}) );
  SELECT_OP C554 ( .DATA1(RX_P_DATA[3:0]), .DATA2({1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N7), .CONTROL2(N8), .Z({N202, N201, N200, N199}) );
  SELECT_OP C555 ( .DATA1(ALU_OUT[7:0]), .DATA2(ALU_OUT[15:8]), .CONTROL1(N26), 
        .CONTROL2(N27), .Z({N212, N211, N210, N209, N208, N207, N206, N205})
         );
  GTECH_BUF B_26 ( .A(N230), .Z(N26) );
  GTECH_BUF B_27 ( .A(frame_flag), .Z(N27) );
  SELECT_OP C556 ( .DATA1({N212, N211, N210, N209, N208, N207, N206, N205}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .CONTROL1(
        N28), .CONTROL2(N204), .Z({N220, N219, N218, N217, N216, N215, N214, 
        N213}) );
  GTECH_BUF B_28 ( .A(N203), .Z(N28) );
  SELECT_OP C557 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(RX_D_VLD), .DATA9(
        1'b0), .DATA10(1'b0), .CONTROL1(N29), .CONTROL2(N30), .CONTROL3(N31), 
        .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), .CONTROL7(N35), 
        .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(ALU_EN) );
  GTECH_BUF B_29 ( .A(N135), .Z(N29) );
  GTECH_BUF B_30 ( .A(N139), .Z(N30) );
  GTECH_BUF B_31 ( .A(N143), .Z(N31) );
  GTECH_BUF B_32 ( .A(N147), .Z(N32) );
  GTECH_BUF B_33 ( .A(N151), .Z(N33) );
  GTECH_BUF B_34 ( .A(N155), .Z(N34) );
  GTECH_BUF B_35 ( .A(N159), .Z(N35) );
  GTECH_BUF B_36 ( .A(N163), .Z(N36) );
  GTECH_BUF B_37 ( .A(N167), .Z(N37) );
  SELECT_OP C558 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0}), .DATA4({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA5({1'b0, 1'b0, 1'b0, 1'b0}), .DATA6({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA7({1'b0, 1'b0, 1'b0, 1'b0}), .DATA8({N202, N201, N200, 
        N199}), .DATA9({1'b0, 1'b0, 1'b0, 1'b0}), .DATA10({1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N29), .CONTROL2(N30), .CONTROL3(N31), .CONTROL4(N32), 
        .CONTROL5(N33), .CONTROL6(N34), .CONTROL7(N35), .CONTROL8(N36), 
        .CONTROL9(N37), .CONTROL10(N229), .Z(ALU_FUN) );
  SELECT_OP C559 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b1), .DATA9(1'b1), 
        .DATA10(1'b0), .CONTROL1(N29), .CONTROL2(N30), .CONTROL3(N31), 
        .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), .CONTROL7(N35), 
        .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(CLK_EN) );
  SELECT_OP C560 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N171, N170, N169, 
        N168}), .DATA3({N175, N174, N173, N172}), .DATA4(Address_seq), .DATA5(
        Address_seq), .DATA6({N193, N192, N191, N190}), .DATA7({N197, N196, 
        N195, N194}), .DATA8(Address_seq), .DATA9(Address_seq), .DATA10(
        Address_seq), .CONTROL1(N29), .CONTROL2(N30), .CONTROL3(N31), 
        .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), .CONTROL7(N35), 
        .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(Address) );
  SELECT_OP C561 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(RX_D_VLD), 
        .DATA5(1'b0), .DATA6(RX_D_VLD), .DATA7(RX_D_VLD), .DATA8(1'b0), 
        .DATA9(1'b0), .DATA10(1'b0), .CONTROL1(N29), .CONTROL2(N30), 
        .CONTROL3(N31), .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), 
        .CONTROL7(N35), .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(
        WrEn) );
  SELECT_OP C562 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(RX_D_VLD), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .CONTROL1(N29), .CONTROL2(N30), .CONTROL3(N31), 
        .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), .CONTROL7(N35), 
        .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(RdEn) );
  SELECT_OP C563 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA3({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA4({N179, N178, N177, 
        N176, N202, N201, N200, N199}), .DATA5({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .DATA6({N179, N178, N177, N176, N202, N201, N200, 
        N199}), .DATA7({N179, N178, N177, N176, N202, N201, N200, N199}), 
        .DATA8({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA9({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA10({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N29), .CONTROL2(N30), 
        .CONTROL3(N31), .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), 
        .CONTROL7(N35), .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(
        WrData) );
  SELECT_OP C564 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .DATA3({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .DATA4({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .DATA5({N189, N188, N187, N186, N185, 
        N184, N183, N182}), .DATA6({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1}), .DATA7({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), 
        .DATA8({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .DATA9({N220, 
        N219, N218, N217, N216, N215, N214, N213}), .DATA10({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .CONTROL1(N29), .CONTROL2(N30), 
        .CONTROL3(N31), .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), 
        .CONTROL7(N35), .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(
        TX_P_Data) );
  SELECT_OP C565 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(N180), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(N203), 
        .DATA10(1'b0), .CONTROL1(N29), .CONTROL2(N30), .CONTROL3(N31), 
        .CONTROL4(N32), .CONTROL5(N33), .CONTROL6(N34), .CONTROL7(N35), 
        .CONTROL8(N36), .CONTROL9(N37), .CONTROL10(N229), .Z(TX_D_VLD) );
  GTECH_NOT I_8 ( .A(RST), .Z(N38) );
  GTECH_OR2 C569 ( .A(N235), .B(N240), .Z(N39) );
  GTECH_AND2 C571 ( .A(N247), .B(N230), .Z(N40) );
  GTECH_AND2 C572 ( .A(N246), .B(TX_D_VLD), .Z(N247) );
  GTECH_AND2 C573 ( .A(TX_D_VLD), .B(frame_flag), .Z(N41) );
  GTECH_OR2 C576 ( .A(N41), .B(N40), .Z(N42) );
  GTECH_NOT I_9 ( .A(N42), .Z(N43) );
  GTECH_NOT I_10 ( .A(N50), .Z(N51) );
  GTECH_NOT I_11 ( .A(N54), .Z(N55) );
  GTECH_NOT I_12 ( .A(N58), .Z(N59) );
  GTECH_NOT I_13 ( .A(N62), .Z(N63) );
  GTECH_NOT I_14 ( .A(N66), .Z(N67) );
  GTECH_NOT I_15 ( .A(N70), .Z(N71) );
  GTECH_NOT I_16 ( .A(N74), .Z(N75) );
  GTECH_NOT I_17 ( .A(N78), .Z(N79) );
  GTECH_OR2 C605 ( .A(N80), .B(N248), .Z(N83) );
  GTECH_OR2 C606 ( .A(N81), .B(N82), .Z(N248) );
  GTECH_NOT I_18 ( .A(N84), .Z(N85) );
  GTECH_NOT I_19 ( .A(N89), .Z(N90) );
  GTECH_NOT I_20 ( .A(RX_P_DATA[5]), .Z(N91) );
  GTECH_NOT I_21 ( .A(RX_P_DATA[1]), .Z(N92) );
  GTECH_NOT I_22 ( .A(N97), .Z(N98) );
  GTECH_NOT I_23 ( .A(N102), .Z(N103) );
  GTECH_NOT I_24 ( .A(RX_P_DATA[6]), .Z(N104) );
  GTECH_NOT I_25 ( .A(RX_P_DATA[4]), .Z(N105) );
  GTECH_NOT I_26 ( .A(RX_P_DATA[2]), .Z(N106) );
  GTECH_NOT I_27 ( .A(RX_P_DATA[0]), .Z(N107) );
  GTECH_NOT I_28 ( .A(N112), .Z(N113) );
  GTECH_OR2 C633 ( .A(N98), .B(N90), .Z(N114) );
  GTECH_OR2 C634 ( .A(N103), .B(N114), .Z(N115) );
  GTECH_OR2 C635 ( .A(N113), .B(N115), .Z(N116) );
  GTECH_NOT I_29 ( .A(N116), .Z(N117) );
  GTECH_NOT I_30 ( .A(RdData_Valid), .Z(N127) );
  GTECH_NOT I_31 ( .A(ALU_OUT_VLD), .Z(N129) );
  GTECH_NOT I_32 ( .A(FIFO_FULL), .Z(N130) );
  GTECH_NOT I_33 ( .A(N138), .Z(N139) );
  GTECH_NOT I_34 ( .A(N142), .Z(N143) );
  GTECH_NOT I_35 ( .A(N146), .Z(N147) );
  GTECH_NOT I_36 ( .A(N150), .Z(N151) );
  GTECH_NOT I_37 ( .A(N154), .Z(N155) );
  GTECH_NOT I_38 ( .A(N158), .Z(N159) );
  GTECH_NOT I_39 ( .A(N162), .Z(N163) );
  GTECH_NOT I_40 ( .A(N166), .Z(N167) );
  GTECH_AND2 C683 ( .A(RdData_Valid), .B(N130), .Z(N180) );
  GTECH_NOT I_41 ( .A(N180), .Z(N181) );
  GTECH_NOT I_42 ( .A(RX_D_VLD), .Z(N198) );
  GTECH_AND2 C690 ( .A(ALU_OUT_VLD), .B(N130), .Z(N203) );
  GTECH_NOT I_43 ( .A(N203), .Z(N204) );
  GTECH_OR2 C696 ( .A(N139), .B(N135), .Z(N221) );
  GTECH_OR2 C697 ( .A(N143), .B(N221), .Z(N222) );
  GTECH_OR2 C698 ( .A(N147), .B(N222), .Z(N223) );
  GTECH_OR2 C699 ( .A(N151), .B(N223), .Z(N224) );
  GTECH_OR2 C700 ( .A(N155), .B(N224), .Z(N225) );
  GTECH_OR2 C701 ( .A(N159), .B(N225), .Z(N226) );
  GTECH_OR2 C702 ( .A(N163), .B(N226), .Z(N227) );
  GTECH_OR2 C703 ( .A(N167), .B(N227), .Z(N228) );
  GTECH_NOT I_44 ( .A(N228), .Z(N229) );
endmodule


module Reg_File_ADD_WIDTH4_RdWr_WIDTH8_RegF_DEPTH16 ( RdEn, WrEn, CLK, RST, 
        ADDRESS, Wr_DATA, Rd_DATA, Rd_DATA_VLD, REG0, REG1, REG2, REG3 );
  input [3:0] ADDRESS;
  input [7:0] Wr_DATA;
  output [7:0] Rd_DATA;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input RdEn, WrEn, CLK, RST;
  output Rd_DATA_VLD;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         \REG_FILE[4][7] , \REG_FILE[4][6] , \REG_FILE[4][5] ,
         \REG_FILE[4][4] , \REG_FILE[4][3] , \REG_FILE[4][2] ,
         \REG_FILE[4][1] , \REG_FILE[4][0] , \REG_FILE[5][7] ,
         \REG_FILE[5][6] , \REG_FILE[5][5] , \REG_FILE[5][4] ,
         \REG_FILE[5][3] , \REG_FILE[5][2] , \REG_FILE[5][1] ,
         \REG_FILE[5][0] , \REG_FILE[6][7] , \REG_FILE[6][6] ,
         \REG_FILE[6][5] , \REG_FILE[6][4] , \REG_FILE[6][3] ,
         \REG_FILE[6][2] , \REG_FILE[6][1] , \REG_FILE[6][0] ,
         \REG_FILE[7][7] , \REG_FILE[7][6] , \REG_FILE[7][5] ,
         \REG_FILE[7][4] , \REG_FILE[7][3] , \REG_FILE[7][2] ,
         \REG_FILE[7][1] , \REG_FILE[7][0] , \REG_FILE[8][7] ,
         \REG_FILE[8][6] , \REG_FILE[8][5] , \REG_FILE[8][4] ,
         \REG_FILE[8][3] , \REG_FILE[8][2] , \REG_FILE[8][1] ,
         \REG_FILE[8][0] , \REG_FILE[9][7] , \REG_FILE[9][6] ,
         \REG_FILE[9][5] , \REG_FILE[9][4] , \REG_FILE[9][3] ,
         \REG_FILE[9][2] , \REG_FILE[9][1] , \REG_FILE[9][0] ,
         \REG_FILE[10][7] , \REG_FILE[10][6] , \REG_FILE[10][5] ,
         \REG_FILE[10][4] , \REG_FILE[10][3] , \REG_FILE[10][2] ,
         \REG_FILE[10][1] , \REG_FILE[10][0] , \REG_FILE[11][7] ,
         \REG_FILE[11][6] , \REG_FILE[11][5] , \REG_FILE[11][4] ,
         \REG_FILE[11][3] , \REG_FILE[11][2] , \REG_FILE[11][1] ,
         \REG_FILE[11][0] , \REG_FILE[12][7] , \REG_FILE[12][6] ,
         \REG_FILE[12][5] , \REG_FILE[12][4] , \REG_FILE[12][3] ,
         \REG_FILE[12][2] , \REG_FILE[12][1] , \REG_FILE[12][0] ,
         \REG_FILE[13][7] , \REG_FILE[13][6] , \REG_FILE[13][5] ,
         \REG_FILE[13][4] , \REG_FILE[13][3] , \REG_FILE[13][2] ,
         \REG_FILE[13][1] , \REG_FILE[13][0] , \REG_FILE[14][7] ,
         \REG_FILE[14][6] , \REG_FILE[14][5] , \REG_FILE[14][4] ,
         \REG_FILE[14][3] , \REG_FILE[14][2] , \REG_FILE[14][1] ,
         \REG_FILE[14][0] , \REG_FILE[15][7] , \REG_FILE[15][6] ,
         \REG_FILE[15][5] , \REG_FILE[15][4] , \REG_FILE[15][3] ,
         \REG_FILE[15][2] , \REG_FILE[15][1] , \REG_FILE[15][0] , N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72;

  \**SEQGEN**  \REG_FILE_reg[0][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[0][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[0][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[0][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[0][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[0][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[0][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[0][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG0[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N60) );
  \**SEQGEN**  \REG_FILE_reg[1][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[1][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[1][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[1][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[1][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[1][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[1][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[1][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG1[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N59) );
  \**SEQGEN**  \REG_FILE_reg[2][7]  ( .clear(1'b0), .preset(N15), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[2][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[2][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[2][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[2][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[2][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[2][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[2][0]  ( .clear(1'b0), .preset(N15), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG2[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N58) );
  \**SEQGEN**  \REG_FILE_reg[3][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[3][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[3][5]  ( .clear(1'b0), .preset(N15), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[3][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[3][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[3][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[3][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[3][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        REG3[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N57) );
  \**SEQGEN**  \REG_FILE_reg[4][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[4][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[4][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[4][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[4][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[4][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[4][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[4][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[4][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \REG_FILE_reg[5][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[5][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[5][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[5][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[5][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[5][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[5][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[5][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[5][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \REG_FILE_reg[6][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[6][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[6][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[6][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[6][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[6][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[6][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[6][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[6][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \REG_FILE_reg[7][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[7][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[7][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[7][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[7][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[7][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[7][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[7][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[7][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \REG_FILE_reg[8][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[8][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[8][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[8][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[8][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[8][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[8][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[8][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[8][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \REG_FILE_reg[9][7]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[9][6]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[9][5]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[9][4]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[9][3]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[9][2]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[9][1]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[9][0]  ( .clear(N15), .preset(1'b0), .next_state(
        Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        \REG_FILE[9][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \REG_FILE_reg[10][7]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[10][6]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[10][5]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[10][4]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[10][3]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[10][2]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[10][1]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[10][0]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[10][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \REG_FILE_reg[11][7]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[11][6]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[11][5]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[11][4]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[11][3]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[11][2]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[11][1]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[11][0]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[11][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \REG_FILE_reg[12][7]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[12][6]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[12][5]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[12][4]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[12][3]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[12][2]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[12][1]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[12][0]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[12][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \REG_FILE_reg[13][7]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[13][6]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[13][5]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[13][4]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[13][3]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[13][2]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[13][1]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[13][0]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[13][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \REG_FILE_reg[14][7]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[14][6]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[14][5]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[14][4]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[14][3]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[14][2]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[14][1]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[14][0]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[14][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \REG_FILE_reg[15][7]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[7]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \REG_FILE_reg[15][6]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[6]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \REG_FILE_reg[15][5]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[5]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \REG_FILE_reg[15][4]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[4]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \REG_FILE_reg[15][3]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[3]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \REG_FILE_reg[15][2]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[2]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \REG_FILE_reg[15][1]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[1]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \REG_FILE_reg[15][0]  ( .clear(N15), .preset(1'b0), 
        .next_state(Wr_DATA[0]), .clocked_on(CLK), .data_in(1'b0), .enable(
        1'b0), .Q(\REG_FILE[15][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \Rd_DATA_reg[7]  ( .clear(N15), .preset(1'b0), .next_state(N36), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  \Rd_DATA_reg[6]  ( .clear(N15), .preset(1'b0), .next_state(N37), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  \Rd_DATA_reg[5]  ( .clear(N15), .preset(1'b0), .next_state(N38), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  \Rd_DATA_reg[4]  ( .clear(N15), .preset(1'b0), .next_state(N39), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  \Rd_DATA_reg[3]  ( .clear(N15), .preset(1'b0), .next_state(N40), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  \Rd_DATA_reg[2]  ( .clear(N15), .preset(1'b0), .next_state(N41), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  \Rd_DATA_reg[1]  ( .clear(N15), .preset(1'b0), .next_state(N42), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  \Rd_DATA_reg[0]  ( .clear(N15), .preset(1'b0), .next_state(N43), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N61) );
  \**SEQGEN**  Rd_DATA_VLD_reg ( .clear(N15), .preset(1'b0), .next_state(N17), 
        .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(Rd_DATA_VLD), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N62) );
  GTECH_AND2 C1828 ( .A(ADDRESS[2]), .B(ADDRESS[3]), .Z(N63) );
  GTECH_AND2 C1829 ( .A(N0), .B(ADDRESS[3]), .Z(N64) );
  GTECH_NOT I_0 ( .A(ADDRESS[2]), .Z(N0) );
  GTECH_AND2 C1830 ( .A(ADDRESS[2]), .B(N1), .Z(N65) );
  GTECH_NOT I_1 ( .A(ADDRESS[3]), .Z(N1) );
  GTECH_AND2 C1831 ( .A(N2), .B(N3), .Z(N66) );
  GTECH_NOT I_2 ( .A(ADDRESS[2]), .Z(N2) );
  GTECH_NOT I_3 ( .A(ADDRESS[3]), .Z(N3) );
  GTECH_AND2 C1832 ( .A(ADDRESS[0]), .B(ADDRESS[1]), .Z(N67) );
  GTECH_AND2 C1833 ( .A(N4), .B(ADDRESS[1]), .Z(N68) );
  GTECH_NOT I_4 ( .A(ADDRESS[0]), .Z(N4) );
  GTECH_AND2 C1834 ( .A(ADDRESS[0]), .B(N5), .Z(N69) );
  GTECH_NOT I_5 ( .A(ADDRESS[1]), .Z(N5) );
  GTECH_AND2 C1835 ( .A(N6), .B(N7), .Z(N70) );
  GTECH_NOT I_6 ( .A(ADDRESS[0]), .Z(N6) );
  GTECH_NOT I_7 ( .A(ADDRESS[1]), .Z(N7) );
  GTECH_AND2 C1836 ( .A(N63), .B(N67), .Z(N35) );
  GTECH_AND2 C1837 ( .A(N63), .B(N68), .Z(N34) );
  GTECH_AND2 C1838 ( .A(N63), .B(N69), .Z(N33) );
  GTECH_AND2 C1839 ( .A(N63), .B(N70), .Z(N32) );
  GTECH_AND2 C1840 ( .A(N64), .B(N67), .Z(N31) );
  GTECH_AND2 C1841 ( .A(N64), .B(N68), .Z(N30) );
  GTECH_AND2 C1842 ( .A(N64), .B(N69), .Z(N29) );
  GTECH_AND2 C1843 ( .A(N64), .B(N70), .Z(N28) );
  GTECH_AND2 C1844 ( .A(N65), .B(N67), .Z(N27) );
  GTECH_AND2 C1845 ( .A(N65), .B(N68), .Z(N26) );
  GTECH_AND2 C1846 ( .A(N65), .B(N69), .Z(N25) );
  GTECH_AND2 C1847 ( .A(N65), .B(N70), .Z(N24) );
  GTECH_AND2 C1848 ( .A(N66), .B(N67), .Z(N23) );
  GTECH_AND2 C1849 ( .A(N66), .B(N68), .Z(N22) );
  GTECH_AND2 C1850 ( .A(N66), .B(N69), .Z(N21) );
  GTECH_AND2 C1851 ( .A(N66), .B(N70), .Z(N20) );
  SELECT_OP C1852 ( .DATA1({N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, 
        N30, N31, N32, N33, N34, N35}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N8), .CONTROL2(N44), 
        .CONTROL3(N9), .Z({N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, 
        N50, N49, N48, N47, N46, N45}) );
  GTECH_BUF B_0 ( .A(N16), .Z(N8) );
  GTECH_BUF B_1 ( .A(1'b0), .Z(N9) );
  SELECT_OP C1853 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N8), 
        .CONTROL2(N10), .CONTROL3(N19), .Z(N61) );
  GTECH_BUF B_2 ( .A(N17), .Z(N10) );
  SELECT_OP C1854 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .CONTROL1(N8), 
        .CONTROL2(N10), .CONTROL3(N19), .Z(N62) );
  MUX_OP C1855 ( .D0({REG0[0], REG0[1], REG0[2], REG0[3], REG0[4], REG0[5], 
        REG0[6], REG0[7]}), .D1({REG1[0], REG1[1], REG1[2], REG1[3], REG1[4], 
        REG1[5], REG1[6], REG1[7]}), .D2({REG2[0], REG2[1], REG2[2], REG2[3], 
        REG2[4], REG2[5], REG2[6], REG2[7]}), .D3({REG3[0], REG3[1], REG3[2], 
        REG3[3], REG3[4], REG3[5], REG3[6], REG3[7]}), .D4({\REG_FILE[4][0] , 
        \REG_FILE[4][1] , \REG_FILE[4][2] , \REG_FILE[4][3] , \REG_FILE[4][4] , 
        \REG_FILE[4][5] , \REG_FILE[4][6] , \REG_FILE[4][7] }), .D5({
        \REG_FILE[5][0] , \REG_FILE[5][1] , \REG_FILE[5][2] , \REG_FILE[5][3] , 
        \REG_FILE[5][4] , \REG_FILE[5][5] , \REG_FILE[5][6] , \REG_FILE[5][7] }), .D6({\REG_FILE[6][0] , \REG_FILE[6][1] , \REG_FILE[6][2] , \REG_FILE[6][3] , 
        \REG_FILE[6][4] , \REG_FILE[6][5] , \REG_FILE[6][6] , \REG_FILE[6][7] }), .D7({\REG_FILE[7][0] , \REG_FILE[7][1] , \REG_FILE[7][2] , \REG_FILE[7][3] , 
        \REG_FILE[7][4] , \REG_FILE[7][5] , \REG_FILE[7][6] , \REG_FILE[7][7] }), .D8({\REG_FILE[8][0] , \REG_FILE[8][1] , \REG_FILE[8][2] , \REG_FILE[8][3] , 
        \REG_FILE[8][4] , \REG_FILE[8][5] , \REG_FILE[8][6] , \REG_FILE[8][7] }), .D9({\REG_FILE[9][0] , \REG_FILE[9][1] , \REG_FILE[9][2] , \REG_FILE[9][3] , 
        \REG_FILE[9][4] , \REG_FILE[9][5] , \REG_FILE[9][6] , \REG_FILE[9][7] }), .D10({\REG_FILE[10][0] , \REG_FILE[10][1] , \REG_FILE[10][2] , 
        \REG_FILE[10][3] , \REG_FILE[10][4] , \REG_FILE[10][5] , 
        \REG_FILE[10][6] , \REG_FILE[10][7] }), .D11({\REG_FILE[11][0] , 
        \REG_FILE[11][1] , \REG_FILE[11][2] , \REG_FILE[11][3] , 
        \REG_FILE[11][4] , \REG_FILE[11][5] , \REG_FILE[11][6] , 
        \REG_FILE[11][7] }), .D12({\REG_FILE[12][0] , \REG_FILE[12][1] , 
        \REG_FILE[12][2] , \REG_FILE[12][3] , \REG_FILE[12][4] , 
        \REG_FILE[12][5] , \REG_FILE[12][6] , \REG_FILE[12][7] }), .D13({
        \REG_FILE[13][0] , \REG_FILE[13][1] , \REG_FILE[13][2] , 
        \REG_FILE[13][3] , \REG_FILE[13][4] , \REG_FILE[13][5] , 
        \REG_FILE[13][6] , \REG_FILE[13][7] }), .D14({\REG_FILE[14][0] , 
        \REG_FILE[14][1] , \REG_FILE[14][2] , \REG_FILE[14][3] , 
        \REG_FILE[14][4] , \REG_FILE[14][5] , \REG_FILE[14][6] , 
        \REG_FILE[14][7] }), .D15({\REG_FILE[15][0] , \REG_FILE[15][1] , 
        \REG_FILE[15][2] , \REG_FILE[15][3] , \REG_FILE[15][4] , 
        \REG_FILE[15][5] , \REG_FILE[15][6] , \REG_FILE[15][7] }), .S0(N11), 
        .S1(N12), .S2(N13), .S3(N14), .Z({N43, N42, N41, N40, N39, N38, N37, 
        N36}) );
  GTECH_BUF B_3 ( .A(ADDRESS[0]), .Z(N11) );
  GTECH_BUF B_4 ( .A(ADDRESS[1]), .Z(N12) );
  GTECH_BUF B_5 ( .A(ADDRESS[2]), .Z(N13) );
  GTECH_BUF B_6 ( .A(ADDRESS[3]), .Z(N14) );
  GTECH_NOT I_8 ( .A(RST), .Z(N15) );
  GTECH_AND2 C1859 ( .A(WrEn), .B(N71), .Z(N16) );
  GTECH_NOT I_9 ( .A(RdEn), .Z(N71) );
  GTECH_AND2 C1861 ( .A(RdEn), .B(N72), .Z(N17) );
  GTECH_NOT I_10 ( .A(WrEn), .Z(N72) );
  GTECH_OR2 C1865 ( .A(N17), .B(N16), .Z(N18) );
  GTECH_NOT I_11 ( .A(N18), .Z(N19) );
  GTECH_NOT I_12 ( .A(N16), .Z(N44) );
endmodule


module ALU_OUT_WD16_DATA_WD8_FUN_WD4 ( A, B, ALU_FUN, CLK, RST, ENABLE, 
        ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, ENABLE;
  output OUT_VALID;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         OUT_VALID_comb, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82,
         N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96,
         N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108,
         N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119,
         N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130,
         N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174,
         N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185,
         N186, N187, N188, N189, N190, N191, N192, N193;
  wire   [15:0] ALU_comb;

  GTECH_AND2 C36 ( .A(N70), .B(N54), .Z(N44) );
  GTECH_AND2 C37 ( .A(N63), .B(N59), .Z(N45) );
  GTECH_AND2 C38 ( .A(N44), .B(N45), .Z(N46) );
  GTECH_OR2 C40 ( .A(ALU_FUN[3]), .B(ALU_FUN[2]), .Z(N47) );
  GTECH_OR2 C42 ( .A(N47), .B(N60), .Z(N48) );
  GTECH_OR2 C47 ( .A(N47), .B(N64), .Z(N50) );
  GTECH_OR2 C53 ( .A(N47), .B(N67), .Z(N52) );
  GTECH_OR2 C56 ( .A(ALU_FUN[3]), .B(N54), .Z(N55) );
  GTECH_OR2 C57 ( .A(ALU_FUN[1]), .B(ALU_FUN[0]), .Z(N56) );
  GTECH_OR2 C58 ( .A(N55), .B(N56), .Z(N57) );
  GTECH_OR2 C63 ( .A(ALU_FUN[1]), .B(N59), .Z(N60) );
  GTECH_OR2 C64 ( .A(N55), .B(N60), .Z(N61) );
  GTECH_OR2 C69 ( .A(N63), .B(ALU_FUN[0]), .Z(N64) );
  GTECH_OR2 C70 ( .A(N55), .B(N64), .Z(N65) );
  GTECH_OR2 C76 ( .A(N63), .B(N59), .Z(N67) );
  GTECH_OR2 C77 ( .A(N55), .B(N67), .Z(N68) );
  GTECH_OR2 C80 ( .A(N70), .B(ALU_FUN[2]), .Z(N71) );
  GTECH_OR2 C82 ( .A(N71), .B(N56), .Z(N72) );
  GTECH_OR2 C88 ( .A(N71), .B(N60), .Z(N74) );
  GTECH_OR2 C94 ( .A(N71), .B(N64), .Z(N76) );
  GTECH_OR2 C101 ( .A(N71), .B(N67), .Z(N78) );
  GTECH_OR2 C107 ( .A(N82), .B(N56), .Z(N80) );
  GTECH_OR2 C112 ( .A(N70), .B(N54), .Z(N82) );
  GTECH_OR2 C114 ( .A(N82), .B(N60), .Z(N83) );
  GTECH_OR2 C121 ( .A(N82), .B(N64), .Z(N85) );
  GTECH_AND2 C123 ( .A(ALU_FUN[3]), .B(ALU_FUN[2]), .Z(N87) );
  GTECH_AND2 C124 ( .A(ALU_FUN[1]), .B(ALU_FUN[0]), .Z(N88) );
  GTECH_AND2 C125 ( .A(N87), .B(N88), .Z(N89) );
  EQ_UNS_OP eq_55 ( .A(A), .B(B), .Z(N166) );
  GT_UNS_OP gt_58 ( .A(A), .B(B), .Z(N167) );
  LT_UNS_OP lt_61 ( .A(A), .B(B), .Z(N168) );
  \**SEQGEN**  OUT_VALID_reg ( .clear(N185), .preset(1'b0), .next_state(
        OUT_VALID_comb), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        OUT_VALID), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[15]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[15]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[14]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[14]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[13]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[13]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[12]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[12]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[11]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[11]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[10]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[10]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[9]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[9]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[8]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[8]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[7]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[6]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[5]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[4]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[3]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[2]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[1]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  \**SEQGEN**  \ALU_OUT_reg[0]  ( .clear(N185), .preset(1'b0), .next_state(
        ALU_comb[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        ALU_OUT[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(OUT_VALID_comb) );
  GTECH_OR2 C327 ( .A(B[6]), .B(B[7]), .Z(N187) );
  GTECH_OR2 C328 ( .A(B[5]), .B(N187), .Z(N188) );
  GTECH_OR2 C329 ( .A(B[4]), .B(N188), .Z(N189) );
  GTECH_OR2 C330 ( .A(B[3]), .B(N189), .Z(N190) );
  GTECH_OR2 C331 ( .A(B[2]), .B(N190), .Z(N191) );
  GTECH_OR2 C332 ( .A(B[1]), .B(N191), .Z(N192) );
  GTECH_OR2 C333 ( .A(B[0]), .B(N192), .Z(N193) );
  ADD_UNS_OP add_18 ( .A(A), .B(B), .Z({N98, N97, N96, N95, N94, N93, N92, N91, 
        N90}) );
  SUB_UNS_OP sub_21 ( .A(A), .B(B), .Z({N107, N106, N105, N104, N103, N102, 
        N101, N100, N99}) );
  MULT_UNS_OP mult_24 ( .A(A), .B(B), .Z({N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
  DIV_UNS_OP div_29 ( .A(A), .B(B), .QUOTIENT({N133, N132, N131, N130, N129, 
        N128, N127, N126}) );
  SELECT_OP C336 ( .DATA1({N133, N132, N131, N130, N129, N128, N127, N126}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N0), .CONTROL2(N125), .Z({N141, N140, N139, N138, N137, N136, N135, N134}) );
  GTECH_BUF B_0 ( .A(N193), .Z(N0) );
  SELECT_OP C337 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N98, N97, 
        N96, N95, N94, N93, N92, N91, N90}), .DATA2({N107, N107, N107, N107, 
        N107, N107, N107, N107, N106, N105, N104, N103, N102, N101, N100, N99}), .DATA3({N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108}), .DATA4({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, N141, N140, N139, N138, N137, N136, N135, N134}), 
        .DATA5({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N19, N20, N21, 
        N22, N23, N24, N25, N26}), .DATA6({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, N27, N28, N29, N30, N31, N32, N33, N34}), .DATA7({1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, N142, N143, N144, N145, N146, 
        N147, N148, N149}), .DATA8({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, N150, N151, N152, N153, N154, N155, N156, N157}), .DATA9({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N35, N36, N37, N38, N39, N40, 
        N41, N42}), .DATA10({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        N158, N159, N160, N161, N162, N163, N164, N165}), .DATA11({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, N166}), .DATA12({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N167, 1'b0}), .DATA13({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        N168, N168}), .DATA14({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, A[7:1]}), .DATA15({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, A, 
        1'b0}), .DATA16({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N1), .CONTROL2(
        N2), .CONTROL3(N3), .CONTROL4(N4), .CONTROL5(N5), .CONTROL6(N6), 
        .CONTROL7(N7), .CONTROL8(N8), .CONTROL9(N9), .CONTROL10(N10), 
        .CONTROL11(N11), .CONTROL12(N12), .CONTROL13(N13), .CONTROL14(N14), 
        .CONTROL15(N15), .CONTROL16(N16), .Z({N184, N183, N182, N181, N180, 
        N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169}) );
  GTECH_BUF B_1 ( .A(N46), .Z(N1) );
  GTECH_BUF B_2 ( .A(N49), .Z(N2) );
  GTECH_BUF B_3 ( .A(N51), .Z(N3) );
  GTECH_BUF B_4 ( .A(N53), .Z(N4) );
  GTECH_BUF B_5 ( .A(N58), .Z(N5) );
  GTECH_BUF B_6 ( .A(N62), .Z(N6) );
  GTECH_BUF B_7 ( .A(N66), .Z(N7) );
  GTECH_BUF B_8 ( .A(N69), .Z(N8) );
  GTECH_BUF B_9 ( .A(N73), .Z(N9) );
  GTECH_BUF B_10 ( .A(N75), .Z(N10) );
  GTECH_BUF B_11 ( .A(N77), .Z(N11) );
  GTECH_BUF B_12 ( .A(N79), .Z(N12) );
  GTECH_BUF B_13 ( .A(N81), .Z(N13) );
  GTECH_BUF B_14 ( .A(N84), .Z(N14) );
  GTECH_BUF B_15 ( .A(N86), .Z(N15) );
  GTECH_BUF B_16 ( .A(N89), .Z(N16) );
  SELECT_OP C338 ( .DATA1({N184, N183, N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169}), .DATA2({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CONTROL1(N17), .CONTROL2(N18), .Z(ALU_comb) );
  GTECH_BUF B_17 ( .A(OUT_VALID_comb), .Z(N17) );
  GTECH_BUF B_18 ( .A(N186), .Z(N18) );
  GTECH_AND2 C341 ( .A(A[7]), .B(B[7]), .Z(N19) );
  GTECH_AND2 C342 ( .A(A[6]), .B(B[6]), .Z(N20) );
  GTECH_AND2 C343 ( .A(A[5]), .B(B[5]), .Z(N21) );
  GTECH_AND2 C344 ( .A(A[4]), .B(B[4]), .Z(N22) );
  GTECH_AND2 C345 ( .A(A[3]), .B(B[3]), .Z(N23) );
  GTECH_AND2 C346 ( .A(A[2]), .B(B[2]), .Z(N24) );
  GTECH_AND2 C347 ( .A(A[1]), .B(B[1]), .Z(N25) );
  GTECH_AND2 C348 ( .A(A[0]), .B(B[0]), .Z(N26) );
  GTECH_OR2 C349 ( .A(A[7]), .B(B[7]), .Z(N27) );
  GTECH_OR2 C350 ( .A(A[6]), .B(B[6]), .Z(N28) );
  GTECH_OR2 C351 ( .A(A[5]), .B(B[5]), .Z(N29) );
  GTECH_OR2 C352 ( .A(A[4]), .B(B[4]), .Z(N30) );
  GTECH_OR2 C353 ( .A(A[3]), .B(B[3]), .Z(N31) );
  GTECH_OR2 C354 ( .A(A[2]), .B(B[2]), .Z(N32) );
  GTECH_OR2 C355 ( .A(A[1]), .B(B[1]), .Z(N33) );
  GTECH_OR2 C356 ( .A(A[0]), .B(B[0]), .Z(N34) );
  GTECH_XOR2 C357 ( .A(A[7]), .B(B[7]), .Z(N35) );
  GTECH_XOR2 C358 ( .A(A[6]), .B(B[6]), .Z(N36) );
  GTECH_XOR2 C359 ( .A(A[5]), .B(B[5]), .Z(N37) );
  GTECH_XOR2 C360 ( .A(A[4]), .B(B[4]), .Z(N38) );
  GTECH_XOR2 C361 ( .A(A[3]), .B(B[3]), .Z(N39) );
  GTECH_XOR2 C362 ( .A(A[2]), .B(B[2]), .Z(N40) );
  GTECH_XOR2 C363 ( .A(A[1]), .B(B[1]), .Z(N41) );
  GTECH_XOR2 C364 ( .A(A[0]), .B(B[0]), .Z(N42) );
  GTECH_BUF B_19 ( .A(OUT_VALID_comb), .Z(N43) );
  GTECH_NOT I_0 ( .A(N48), .Z(N49) );
  GTECH_NOT I_1 ( .A(N50), .Z(N51) );
  GTECH_NOT I_2 ( .A(N52), .Z(N53) );
  GTECH_NOT I_3 ( .A(ALU_FUN[2]), .Z(N54) );
  GTECH_NOT I_4 ( .A(N57), .Z(N58) );
  GTECH_NOT I_5 ( .A(ALU_FUN[0]), .Z(N59) );
  GTECH_NOT I_6 ( .A(N61), .Z(N62) );
  GTECH_NOT I_7 ( .A(ALU_FUN[1]), .Z(N63) );
  GTECH_NOT I_8 ( .A(N65), .Z(N66) );
  GTECH_NOT I_9 ( .A(N68), .Z(N69) );
  GTECH_NOT I_10 ( .A(ALU_FUN[3]), .Z(N70) );
  GTECH_NOT I_11 ( .A(N72), .Z(N73) );
  GTECH_NOT I_12 ( .A(N74), .Z(N75) );
  GTECH_NOT I_13 ( .A(N76), .Z(N77) );
  GTECH_NOT I_14 ( .A(N78), .Z(N79) );
  GTECH_NOT I_15 ( .A(N80), .Z(N81) );
  GTECH_NOT I_16 ( .A(N83), .Z(N84) );
  GTECH_NOT I_17 ( .A(N85), .Z(N86) );
  GTECH_AND2 C400 ( .A(N43), .B(N46) );
  GTECH_AND2 C401 ( .A(N43), .B(N49) );
  GTECH_AND2 C402 ( .A(N43), .B(N51) );
  GTECH_AND2 C403 ( .A(N43), .B(N53), .Z(N124) );
  GTECH_NOT I_18 ( .A(N193), .Z(N125) );
  GTECH_AND2 C406 ( .A(N124), .B(N193) );
  GTECH_NOT I_19 ( .A(N19), .Z(N142) );
  GTECH_NOT I_20 ( .A(N20), .Z(N143) );
  GTECH_NOT I_21 ( .A(N21), .Z(N144) );
  GTECH_NOT I_22 ( .A(N22), .Z(N145) );
  GTECH_NOT I_23 ( .A(N23), .Z(N146) );
  GTECH_NOT I_24 ( .A(N24), .Z(N147) );
  GTECH_NOT I_25 ( .A(N25), .Z(N148) );
  GTECH_NOT I_26 ( .A(N26), .Z(N149) );
  GTECH_NOT I_27 ( .A(N27), .Z(N150) );
  GTECH_NOT I_28 ( .A(N28), .Z(N151) );
  GTECH_NOT I_29 ( .A(N29), .Z(N152) );
  GTECH_NOT I_30 ( .A(N30), .Z(N153) );
  GTECH_NOT I_31 ( .A(N31), .Z(N154) );
  GTECH_NOT I_32 ( .A(N32), .Z(N155) );
  GTECH_NOT I_33 ( .A(N33), .Z(N156) );
  GTECH_NOT I_34 ( .A(N34), .Z(N157) );
  GTECH_NOT I_35 ( .A(N35), .Z(N158) );
  GTECH_NOT I_36 ( .A(N36), .Z(N159) );
  GTECH_NOT I_37 ( .A(N37), .Z(N160) );
  GTECH_NOT I_38 ( .A(N38), .Z(N161) );
  GTECH_NOT I_39 ( .A(N39), .Z(N162) );
  GTECH_NOT I_40 ( .A(N40), .Z(N163) );
  GTECH_NOT I_41 ( .A(N41), .Z(N164) );
  GTECH_NOT I_42 ( .A(N42), .Z(N165) );
  GTECH_AND2 C431 ( .A(N43), .B(N77) );
  GTECH_AND2 C433 ( .A(N43), .B(N79) );
  GTECH_AND2 C435 ( .A(N43), .B(N81) );
  GTECH_NOT I_43 ( .A(RST), .Z(N185) );
  GTECH_NOT I_44 ( .A(ENABLE), .Z(N186) );
  GTECH_BUF B_20 ( .A(ENABLE), .Z(OUT_VALID_comb) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, SI, SE, Test_Mode, 
        scan_clk, scan_rst, SO, UART_TX_O, parity_error, framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, SI, SE, Test_Mode, scan_clk,
         scan_rst;
  output SO, UART_TX_O, parity_error, framing_error;
  wire   SYNC_RST1, SYNC_RST2, RX_VLD, RX_VLD_SYNC, WR_INC, TX_CLK, RD_INC,
         FIFO_FULL, F_EMPTY, BUSY, clk_dEN, RX_CLK, _0_net_, ALU_OUT_VLD,
         RD_D_VLD, ALU_EN, GATE_EN, WrEn, RdEn, ALU_CLK;
  wire   [7:0] RX_OUT_P;
  wire   [7:0] RX_OUT_SYNC;
  wire   [7:0] WR_DATA;
  wire   [7:0] RD_DATA;
  wire   [7:0] div_ratio;
  wire   [7:0] UART_CONFIG;
  wire   [3:0] Pre_div;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Rd_D;
  wire   [3:0] ALU_FUN;
  wire   [3:0] Address;
  wire   [7:0] Wr_D;
  wire   [7:0] Op_A;
  wire   [7:0] Op_B;

  RST_SYNC U0_RST_SYNC1 ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(SYNC_RST1) );
  RST_SYNC U1_RST_SYNC2 ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(SYNC_RST2) );
  DATA_SYNC_BUS_WIDTH8 U2_DATA_SYNC ( .unsync_bus(RX_OUT_P), .bus_enable(
        RX_VLD), .D_CLK(REF_CLK), .RST(SYNC_RST1), .sync_bus(RX_OUT_SYNC), 
        .enable_pulse(RX_VLD_SYNC) );
  ASYNC_FIFO_DATA_WIDTH8_ADD_WIDTH4 U3_FIFO ( .W_CLK(REF_CLK), .W_RST(
        SYNC_RST1), .W_INC(WR_INC), .R_CLK(TX_CLK), .R_RST(SYNC_RST2), .R_INC(
        RD_INC), .WR_DATA(WR_DATA), .FULL(FIFO_FULL), .RD_DATA(RD_DATA), 
        .EMPTY(F_EMPTY) );
  PULSE_GEN U4_PLSE_GEN1 ( .CLK(TX_CLK), .RST(SYNC_RST2), .LVL_SIG(BUSY), 
        .PULSE_SIG(RD_INC) );
  ClkDiv_width8 U6_CLK_DIV_TX ( .i_ref_clk(UART_CLK), .i_rst_n(SYNC_RST2), 
        .i_clk_en(clk_dEN), .i_div_ratio(div_ratio), .o_div_clk(TX_CLK) );
  Pres_MUX_WIDTH4_PRE_WD6 U7_PRE_MUX ( .Prescale(UART_CONFIG[7:2]), 
        .div_ratio(Pre_div) );
  ClkDiv_width4 U8_CLK_DIV_RX ( .i_ref_clk(UART_CLK), .i_rst_n(SYNC_RST2), 
        .i_clk_en(clk_dEN), .i_div_ratio(Pre_div), .o_div_clk(RX_CLK) );
  UART_DATA_WIDTH8 U9_UART_TOP ( .RST(SYNC_RST2), .TX_CLK(TX_CLK), .RX_CLK(
        RX_CLK), .RX_IN_S(UART_RX_IN), .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_VLD), 
        .TX_IN_P(RD_DATA), .TX_IN_V(_0_net_), .TX_OUT_S(UART_TX_O), .TX_OUT_V(
        BUSY), .Prescale(UART_CONFIG[7:2]), .parity_enable(UART_CONFIG[0]), 
        .parity_type(UART_CONFIG[1]), .parity_error(parity_error), 
        .framing_error(framing_error) );
  SYSTEM_CTRL_BYTE8 U10_SYS_CTRL ( .ALU_OUT(ALU_OUT), .ALU_OUT_VLD(ALU_OUT_VLD), .RX_P_DATA(RX_OUT_SYNC), .RX_D_VLD(RX_VLD_SYNC), .FIFO_FULL(FIFO_FULL), 
        .RdData(Rd_D), .RdData_Valid(RD_D_VLD), .CLK(REF_CLK), .RST(SYNC_RST1), 
        .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLK_EN(GATE_EN), .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(Wr_D), .TX_P_Data(WR_DATA), .TX_D_VLD(
        WR_INC), .clk_div_en(clk_dEN) );
  Reg_File_ADD_WIDTH4_RdWr_WIDTH8_RegF_DEPTH16 U11_REG_FILE ( .RdEn(RdEn), 
        .WrEn(WrEn), .CLK(REF_CLK), .RST(SYNC_RST1), .ADDRESS(Address), 
        .Wr_DATA(Wr_D), .Rd_DATA(Rd_D), .Rd_DATA_VLD(RD_D_VLD), .REG0(Op_A), 
        .REG1(Op_B), .REG2(UART_CONFIG), .REG3(div_ratio) );
  ALU_OUT_WD16_DATA_WD8_FUN_WD4 U12_ALU ( .A(Op_A), .B(Op_B), .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(SYNC_RST1), .ENABLE(ALU_EN), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_OUT_VLD) );
  CLK_GATE U13_CLK_GATE ( .CLK_EN(GATE_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  GTECH_NOT I_0 ( .A(F_EMPTY), .Z(_0_net_) );
endmodule

