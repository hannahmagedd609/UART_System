module SYSTEM_CTRL #(parameter BYTE = 8) (
   input wire [((BYTE*2) - 1):0] ALU_OUT,
   input wire ALU_OUT_VLD,
   input wire [BYTE - 1:0] RX_P_DATA,
   input wire RX_D_VLD,
   input wire FIFO_FULL,
   input wire [BYTE - 1:0] RdData,
   input wire RdData_Valid,
   input wire CLK,
   input wire RST,
   output reg ALU_EN,
   output reg [3:0] ALU_FUN,
   output reg CLK_EN,
   output reg [3:0] Address,
   output reg WrEn, RdEn,
   output reg [BYTE - 1:0] WrData,
   output reg [BYTE - 1:0] TX_P_Data,
   output reg TX_D_VLD,
   output reg clk_div_en
);

reg [3:0] Address_seq;


typedef enum bit [3:0] {IDLE     = 'b0000,
                        ADD_W    = 'b0001,
                        ADD_R    = 'b0011,
                        DATA_W   = 'b0010,
                        DATA_R   = 'b0110,
                        Reg_WrA  = 'b0111,
                        Reg_WrB  = 'b0101,
                        ALU_FUNC = 'b0100,
                        RES_ALU  = 'b1100} state_e;
    
state_e next_state, current_state;
reg frame_flag;  // 0 for lower byte, 1 for higher byte

always@(posedge CLK, negedge RST)
begin
   if(!RST)
   begin
      current_state <= IDLE;
   end
   else 
   begin
      current_state <= next_state;
   end
end

always@(posedge CLK, negedge RST)
begin
if(!RST)
begin
Address_seq <=  'b0;
end
else if(current_state == ADD_W || current_state == ADD_R) 
begin
Address_seq <= Address;
end
end

always@(posedge CLK, negedge RST)
begin
   if(!RST)
      frame_flag <= 1'b0;  // Reset to send lower byte first
   else if(current_state == RES_ALU && TX_D_VLD && frame_flag == 1'b0)
      frame_flag <= 1'b1;  // Switch to higher byte after lower byte is sent
   else if(TX_D_VLD && frame_flag == 1'b1)
      frame_flag <= 1'b0;  // Reset after both frames are sent
end

always@(*)
begin
   case(current_state)
      IDLE:
      begin
        if(RX_D_VLD)
        begin
           case(RX_P_DATA)
               'hAA: next_state = ADD_W;
               'hBB: next_state = ADD_R;
               'hCC: next_state = Reg_WrA;
               'hDD: next_state = ALU_FUNC;
               default: next_state = IDLE;
           endcase
        end
        else
        begin
           next_state = IDLE;
         end
      end
      ADD_W:
      begin
         if(RX_D_VLD)
         begin
            next_state = DATA_W;
         end
         else
         begin
            next_state = ADD_W;
         end
      end
      ADD_R:
      begin
         if(RX_D_VLD)
         begin
            next_state = DATA_R;
         end
         else
         begin
            next_state = ADD_R;
         end
      end
      DATA_W:
      begin
         if(RX_D_VLD)
         begin
            next_state = IDLE;
         end
         else
         begin
            next_state = DATA_W;
         end
      end
      DATA_R:
      begin
         if(RdData_Valid)
         begin
            if(!FIFO_FULL)
            begin
              next_state = IDLE;
            end
            else
            begin
              next_state = DATA_R;
            end
         end
         else
         begin
            next_state = DATA_R;
         end
      end
      Reg_WrA:
      begin
         if(RX_D_VLD)
         begin
            next_state = Reg_WrB;
         end
         else
         begin
            next_state = Reg_WrA;
         end
      end
      Reg_WrB:
      begin
         if(RX_D_VLD)
         begin
            next_state = ALU_FUNC;
         end
         else
         begin
            next_state = Reg_WrB;
         end
      end
      ALU_FUNC:
      begin
         if(RX_D_VLD)
         begin
            next_state = RES_ALU;
         end
         else
         begin
            next_state = ALU_FUNC;
         end
      end
      RES_ALU:
    begin
         if(ALU_OUT_VLD)
         begin
            if(!FIFO_FULL)
            begin
              if(frame_flag == 1'b1)
                next_state = IDLE;  // After sending both frames, return to IDLE
              else
                next_state = RES_ALU;  // Continue for the second frame
            end
            else
            begin
              next_state = RES_ALU;
            end
         end
         else
         begin
            next_state = RES_ALU;
         end
      end
      default:
      begin
         next_state = IDLE;
      end
   endcase
end

always@(*)
begin
   ALU_EN = 'b0;
   ALU_FUN = 'b0;
   CLK_EN = 'b0;
   Address = Address_seq;
   WrEn = 'b0;
   RdEn = 'b0;
   WrData = 'b0;    //to be written in the reg file
   TX_P_Data = 'b1; //to be sent to the async fifo
   TX_D_VLD = 'b0;
   clk_div_en = 'b1;
   
   case(current_state)
      IDLE:
      begin
         ALU_EN = 'b0;
         ALU_FUN = 'b0;
         CLK_EN = 'b0;
         Address = 'b0;
         WrEn = 'b0;
         RdEn = 'b0;
         WrData = 'b0;
         TX_P_Data = 'b0;
         TX_D_VLD = 'b0;
         clk_div_en = 'b1;
      end
      ADD_W:
      begin
         if(RX_D_VLD)
         begin
            Address = RX_P_DATA[3:0];
         end
      end
      ADD_R:
      begin
         if(RX_D_VLD)
         begin
            Address = RX_P_DATA[3:0];
            RdEn = 1'b1;
         end
      end
      DATA_W:
      begin
         if(RX_D_VLD)
         begin
            Address = Address_seq;
            WrData = RX_P_DATA;
            WrEn = 1'b1;
         end
      end
      DATA_R:
      begin
         if(RdData_Valid && !FIFO_FULL)
         begin
            TX_P_Data = RdData;
            TX_D_VLD = 1'b1;
         end
      end
      Reg_WrA:  
      begin
         if(RX_D_VLD)
         begin
            WrEn = 1'b1;
            Address = 'b0;
            WrData = RX_P_DATA;
         end
      end                 
      Reg_WrB:
      begin
         if(RX_D_VLD)
         begin
            WrEn = 1'b1;
            Address = 'b1;
            WrData = RX_P_DATA;
         end
      end
      ALU_FUNC: 
      begin
         CLK_EN = 1'b1;
         if(RX_D_VLD)
         begin
            ALU_FUN = RX_P_DATA[3:0];
            ALU_EN = 1'b1;
         end
      end
      RES_ALU:
     begin
     CLK_EN = 1'b1;
         if(ALU_OUT_VLD && !FIFO_FULL)
         begin
            if(frame_flag == 1'b0)
            begin
               TX_P_Data = ALU_OUT[7:0];  // Send lower byte first
               TX_D_VLD = 1'b1;
            end
            else
            begin
               TX_P_Data = ALU_OUT[15:8];  // Send higher byte next
               TX_D_VLD = 1'b1;
            end
         end
      end
   endcase
end

endmodule

