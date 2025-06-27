module Reg_File # (
    parameter ADD_WIDTH = 4,
    parameter RdWr_WIDTH = 8,
    parameter RegF_DEPTH = 16)
(
    input  wire                   RdEn, WrEn,
    input  wire                   CLK, RST,
    input  wire  [ADD_WIDTH - 1:0]   ADDRESS,
    input  wire  [RdWr_WIDTH - 1:0]  Wr_DATA, 
    output reg   [RdWr_WIDTH - 1:0]  Rd_DATA,
    output reg                       Rd_DATA_VLD,
    output wire  [RdWr_WIDTH - 1 :0] REG0, REG1, REG2, REG3 
);

    reg [RdWr_WIDTH-1:0] REG_FILE [0:RegF_DEPTH - 1];
    integer I;
	
	assign REG0 = REG_FILE[0];
	assign REG1 = REG_FILE[1];
	assign REG2 = REG_FILE[2];
	assign REG3 = REG_FILE[3];
	
    always @(posedge CLK, negedge RST)
	  begin
        if (!RST)
		  begin
		  Rd_DATA <= 'b0;
		  Rd_DATA_VLD <= 'b0;
            for(I = 0; I < RegF_DEPTH; I = I + 1)
			begin
			if(I == 2)
			begin
             REG_FILE[I] <= 'b100000_01;
			end
		    else if(I == 3)
			begin
			REG_FILE[I] <= 'b100000;
			end
			else
			begin
			REG_FILE[I] <= 'b0;
			end
			end 
		  end
	else if (WrEn && !RdEn)
     begin
      REG_FILE[ADDRESS] <= Wr_DATA;
     end
   else if (RdEn && !WrEn) 
     begin    
       Rd_DATA <= REG_FILE[ADDRESS];
	   Rd_DATA_VLD <= 1'b1;
     end  
   else
     begin
	   Rd_DATA_VLD <= 1'b0;
     end
end


endmodule


