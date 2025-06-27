module UART_Parity_calc #(parameter Width = 8)(
    input wire [Width - 1:0] P_DATA,
    input wire Data_Valid, PAR_TYPE, PAR_EN, CLK, RST, Busy,
    output reg par_bit
);

reg [Width - 1:0] Data_draft;

always@(posedge CLK, negedge RST)
begin
if(!RST)
begin
Data_draft <= 'b0;
end
else if(Data_Valid && !Busy)
begin
Data_draft <= P_DATA; 
end
end

always @(posedge CLK, negedge RST) begin
   if(!RST)
   begin  
     par_bit <= 1'b0;
   end
  else if (PAR_EN) begin
      if (!PAR_TYPE) begin
            par_bit <= ^Data_draft; // Even parity
        end else begin
            par_bit <= ~^Data_draft; // Odd parity
        end
		end
end


endmodule



