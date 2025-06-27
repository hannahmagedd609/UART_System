module ALU #(parameter OUT_WD = 16, DATA_WD = 8, FUN_WD = 4)(
 input wire [DATA_WD - 1:0] A, B,
 input wire [FUN_WD - 1:0] ALU_FUN,
 input wire CLK, RST, ENABLE,
 output reg [OUT_WD - 1:0] ALU_OUT,
 output reg OUT_VALID);

reg [OUT_WD - 1:0] ALU_comb;
reg OUT_VALID_comb;

always @(*)
begin
if(ENABLE)
begin
OUT_VALID_comb = 1'b1;
case(ALU_FUN)
4'b0000: begin
ALU_comb = A + B;
end
4'b0001: begin
ALU_comb = A - B;
end
4'b0010: begin
ALU_comb = A * B;
end
4'b0011: begin
if(B != 16'b0)
begin
ALU_comb = A / B;
end
else
begin
ALU_comb = 16'b0;
end
end
4'b0100: begin
ALU_comb = A & B;
end
4'b0101: begin
ALU_comb = A | B;
end
4'b0110: begin
ALU_comb = ~(A & B);
end
4'b0111: begin
ALU_comb = ~(A | B);
end
4'b1000: begin
ALU_comb = A ^ B;
end
4'b1001: begin
ALU_comb = ~(A ^ B);
end
4'b1010: begin
ALU_comb = (A == B)?(16'b1):(16'b0);
end
4'b1011: begin
ALU_comb = (A > B)?(16'b10):(16'b0);
end
4'b1100: begin
ALU_comb = (A < B)?(16'b11):(16'b0);
end
4'b1101: begin
ALU_comb = A >> 1;
end
4'b1110: begin
ALU_comb = A << 1;
end
default: begin
ALU_comb = 16'b0;
end
endcase
end
else
begin
ALU_comb = 16'b0;
OUT_VALID_comb = 1'b0;
end
end

always @(posedge CLK or negedge RST)
begin
if(!RST)
begin
ALU_OUT <= 'b0;
OUT_VALID <= 'b0;
end
else if(ENABLE)
begin
ALU_OUT <= ALU_comb;
OUT_VALID <= OUT_VALID_comb; 
end
end


endmodule 



