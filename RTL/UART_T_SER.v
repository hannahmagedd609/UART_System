module UART_Serial #(parameter Data_Wd = 8, Count_Wd = 3)( 
    input wire [Data_Wd - 1:0] P_DATA,
    input wire Data_Valid, ser_en, CLK, RST, Busy,
    output reg ser_done,
    output wire ser_data
);

reg [Data_Wd - 1:0] Temp_Reg;
reg [Count_Wd - 1:0] P_Counter;

 
always @(posedge CLK or negedge RST)
begin
        if (!RST) begin
            P_Counter <= 'b0;
            Temp_Reg <= 'b0;
            ser_done <= 1'b0;
        end else if (Data_Valid && !Busy) begin
            Temp_Reg <= P_DATA;
            ser_done <= 1'b0;
            P_Counter <= 'b0;
        end else if (ser_en) begin
            Temp_Reg <= Temp_Reg >> 1;
            P_Counter <= P_Counter + 'b1;
            
            if (P_Counter == (Data_Wd - 'b1)) begin
                ser_done <= 1'b1;
            end else begin
                ser_done <= 1'b0;
            end
        end 
    end
assign ser_data = Temp_Reg[0];

endmodule



