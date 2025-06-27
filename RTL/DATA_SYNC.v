
module DATA_SYNC #(parameter BUS_WIDTH = 8, NUM_STAGES = 2)(
input wire [BUS_WIDTH - 1:0] unsync_bus,
input wire bus_enable,
input wire D_CLK, RST,
output reg [BUS_WIDTH - 1:0] sync_bus,
output reg enable_pulse
);

reg [NUM_STAGES - 1:0] sync_flops;
reg enable_flop;
reg [BUS_WIDTH - 1:0] sync_bus_comb;
wire enable_pulse_comb;

always@(posedge D_CLK or negedge RST)
begin
if(!RST)
begin
sync_flops <= 'b0;
end
else
begin
sync_flops <= {sync_flops[NUM_STAGES - 2:0], bus_enable};
end
end

always@(posedge D_CLK or negedge RST)
begin
if(!RST)
begin
enable_flop <= 1'b0;
end
else 
begin
enable_flop <= sync_flops[NUM_STAGES - 1];
end
end

assign enable_pulse_comb = !enable_flop && sync_flops[NUM_STAGES - 1];

always@(*)
begin
if(enable_pulse_comb)
begin
sync_bus_comb = unsync_bus;
end
else
begin
sync_bus_comb = sync_bus;
end
end


always@(posedge D_CLK or negedge RST)
begin
if(!RST)
begin
sync_bus <= 'b0;
end
else
begin
sync_bus <= sync_bus_comb;
end
end
 
always@(posedge D_CLK or negedge RST)
begin
if(!RST)
begin
enable_pulse <= 1'b0;
end
else
begin
enable_pulse <= enable_pulse_comb;
end
end

endmodule 

