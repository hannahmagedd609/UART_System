module ClkDiv #(parameter width = 6)(
input wire i_ref_clk,
input wire i_rst_n,
input wire i_clk_en,
input wire [width - 1:0] i_div_ratio,
output reg o_div_clk
);

reg [width - 1:0] cyc_counter;
reg x_flag;
wire odd;
wire CLK_DIV_EN;
wire [width - 1:0] half_period;
wire [width - 1:0] half_period_plus;
reg output_clk;

assign odd = i_div_ratio[0]; //high if ratio is odd, low if even
assign CLK_DIV_EN = (i_clk_en && (i_div_ratio != 'd0) && (i_div_ratio != 'd1));
assign half_period = (i_div_ratio >> 1);
assign half_period_plus = half_period + 'b1;

always @(*) begin
    if (CLK_DIV_EN)
        o_div_clk = output_clk;
    else
        o_div_clk = i_ref_clk;
end


always@(posedge i_ref_clk or negedge i_rst_n)
begin
if(!i_rst_n)
begin
output_clk  <= 'b0;
cyc_counter <= 'b0;
x_flag <= 'b0;
end
else if(CLK_DIV_EN && !odd && (cyc_counter == half_period - 1'b1))
begin
output_clk <= !output_clk;
cyc_counter <= 'b0;
end
else if (CLK_DIV_EN && odd && ((cyc_counter == half_period - 1'b1) && x_flag))
begin
output_clk <= !output_clk;
cyc_counter <= 'b0;
x_flag <= 1'b0;
end
else if(CLK_DIV_EN && odd && ((cyc_counter == half_period_plus - 1'b1) && !x_flag))
begin
output_clk <= !output_clk;
cyc_counter <= 'b0;
x_flag <= 1'b1;
end
else
begin
cyc_counter <= cyc_counter + 'b1;
end
end


endmodule

