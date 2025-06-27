module UART_T_FSM(
    input wire Data_Valid, PAR_EN, ser_done,
    input wire CLK, RST,
    output reg [1:0] mux_sel,
    output reg Busy, ser_en
);

typedef enum bit [2:0] {START     = 3'b001,
                 IDLE   = 3'b000,
                 DATA   = 3'b011,
                 PARITY = 3'b010,
                 STOP   = 3'b110
} state;
 
state current_state = START;
state      next_state;
reg Busy_comb;

always @(posedge CLK or negedge RST) 
begin
    if (!RST) 
    begin
        current_state <= IDLE;  
    end else 
    begin
        current_state <= next_state;
    end
end

always @(*) 
begin
    case (current_state)
        IDLE: begin
            if (Data_Valid) begin
                next_state = START;
            end else begin
                next_state = IDLE;
            end
        end
        START: begin
            next_state = DATA;
        end
        DATA: begin
            if (ser_done) begin
                if (PAR_EN) 
                begin
                    next_state = PARITY;
                end else 
                begin
                    next_state = STOP;
                end
            end else 
            begin
                next_state = DATA;
            end
        end
        PARITY: begin
            next_state = STOP;
        end
        STOP:
        begin
                next_state = IDLE;
        end
        default: begin
            next_state = IDLE;
        end
    endcase
end

always @(*) begin
Busy_comb = 1'b0;
ser_en = 1'b0;
mux_sel = 2'b11;
    case (current_state)
        IDLE: begin
            mux_sel = 2'b11;
            ser_en = 1'b0;
            Busy_comb = 1'b0;
        end
        START: begin
            Busy_comb = 1'b1;
            mux_sel = 2'b00;
            ser_en = 1'b1;
        end
        DATA: begin
            Busy_comb = 1'b1;
            mux_sel = 2'b01;
            ser_en = 1'b1;
        end
        PARITY: begin
            mux_sel = 2'b10;
            Busy_comb = 1'b1; 
            ser_en = 1'b0;
        end
        STOP: begin
            mux_sel = 2'b11;
            Busy_comb = 1'b1;
            ser_en = 1'b0;
        end
        default: begin
            mux_sel = 2'b11;
            ser_en = 1'b0;
            Busy_comb = 1'b0;
        end
    endcase
end

always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    Busy <= 1'b0 ;
   end
  else
   begin
    Busy <= Busy_comb ;
   end
 end

endmodule


