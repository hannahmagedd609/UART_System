module RST_SYNC #(parameter NUM_STAGES = 2)(
input wire RST,
input wire CLK,
output reg SYNC_RST
);

reg [NUM_STAGES - 1:0] RST_REG; 

always@(posedge CLK or negedge RST)
begin
if(!RST)
begin
RST_REG <= 'b0;
end
else
begin
RST_REG <= {RST_REG[NUM_STAGES - 2:0],1'b1};
end
end 

always@(*)
begin
SYNC_RST = RST_REG[NUM_STAGES - 1];
end

endmodule 
