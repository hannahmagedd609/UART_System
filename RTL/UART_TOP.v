module UART # ( parameter DATA_WIDTH = 8)
(
 input   wire                          RST,
 input   wire                          TX_CLK,
 input   wire                          RX_CLK,
 input   wire                          RX_IN_S,
 output  wire   [DATA_WIDTH-1:0]       RX_OUT_P, 
 output  wire                          RX_OUT_V,
 input   wire   [DATA_WIDTH-1:0]       TX_IN_P, 
 input   wire                          TX_IN_V, 
 output  wire                          TX_OUT_S,
 output  wire                          TX_OUT_V,  
 input   wire   [5:0]                  Prescale, 
 input   wire                          parity_enable,
 input   wire                          parity_type,
 output  wire                          parity_error,
 output  wire                          framing_error
);


UART_TOP U0_UART_TX (
.CLK_M(TX_CLK),
.RST_M(RST),
.P_DATA_M(TX_IN_P),
.Data_Valid_M(TX_IN_V),
.PAR_EN_M(parity_enable),
.PAR_TYPE_M(parity_type), 
.TX_OUT_M(TX_OUT_S),
.Busy_M(TX_OUT_V)
);
 
 
UART_RX U1_UART_RX (
.CLK(RX_CLK),
.RST(RST),
.RX_IN(RX_IN_S),
.Prescale(Prescale),
.parity_enable(parity_enable),
.parity_type(parity_type),
.P_DATA(RX_OUT_P), 
.data_valid(RX_OUT_V),
.parity_error(parity_error),
.framing_error(framing_error)
);
 



endmodule
 


