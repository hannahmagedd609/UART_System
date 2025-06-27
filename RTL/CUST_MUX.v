
module Pres_MUX #(parameter WIDTH = 4, PRE_WD = 6)(
input wire [PRE_WD - 1:0] Prescale,
output reg [WIDTH - 1:0] div_ratio
);

always@(*)
begin
case(Prescale)
'd4:
begin
div_ratio = 'd8;
end
'd8:
begin
div_ratio = 'd4;
end
'd16:
begin
div_ratio = 'd2;
end
'd32:
div_ratio = 'd1;
default:
div_ratio = 'd1;
endcase
end

endmodule
