module UART_MUX(
    input wire [1:0] mux_sel,
    input wire start_bit, stop_bit, ser_data, par_bit,
    input wire CLK, RST,
    output reg TX_OUT
);

reg out;

always @(*) begin
        case(mux_sel)
            2'b00: begin
                out = start_bit;
            end
            2'b01: begin
                out = ser_data;
            end
            2'b10: begin
                out = par_bit;
            end
            2'b11: begin
                out = stop_bit;
            end 
        endcase
end
always@(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    TX_OUT <= 'b1 ;
   end
  else
   begin
    TX_OUT <= out ;
   end 
 end 
endmodule


