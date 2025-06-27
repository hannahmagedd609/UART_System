module UART_TOP #(parameter Width_M = 8)(
input wire [Width_M - 1:0] P_DATA_M,
input wire Data_Valid_M, PAR_EN_M, PAR_TYPE_M,
input wire CLK_M, RST_M,
output wire TX_OUT_M, Busy_M
);

wire ser_en_M, ser_done_M, ser_data_M, par_bit_M;
wire [1:0] mux_sel_M;

reg start_bit_M = 1'b0;
reg stop_bit_M = 1'b1;


UART_Serial Serial_DUT(
.P_DATA(P_DATA_M),
.Data_Valid(Data_Valid_M),
.CLK(CLK_M),
.RST(RST_M),
.Busy(Busy_M),
.ser_en(ser_en_M),
.ser_data(ser_data_M),
.ser_done(ser_done_M)
);


UART_T_FSM FSM_DUT(
.Data_Valid(Data_Valid_M),
.PAR_EN(PAR_EN_M),
.ser_done(ser_done_M),
.CLK(CLK_M),
.RST(RST_M),
.mux_sel(mux_sel_M),
.Busy(Busy_M),
.ser_en(ser_en_M)
);

UART_Parity_calc Parity_calc_DUT(
.P_DATA(P_DATA_M),
.Data_Valid(Data_Valid_M),
.Busy(Busy_M),
.PAR_TYPE(PAR_TYPE_M),
.PAR_EN(PAR_EN_M),
.CLK(CLK_M),
.RST(RST_M),
.par_bit(par_bit_M)
);

UART_MUX MUX_DUT(
.mux_sel(mux_sel_M),
.start_bit(start_bit_M),
.stop_bit(stop_bit_M),
.ser_data(ser_data_M),
.par_bit(par_bit_M),
.CLK(CLK_M),
.RST(RST_M),
.TX_OUT(TX_OUT_M)
);

endmodule 


