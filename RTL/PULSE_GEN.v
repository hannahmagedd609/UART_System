module PULSE_GEN 
(
input    wire                      CLK,
input    wire                      RST,
input    wire                      LVL_SIG,
output   wire                      PULSE_SIG
);

reg prev_flop, pulse_flop;
					 
					 
always @(posedge CLK or negedge RST)
 begin
  if(!RST)      
   begin
    prev_flop <= 1'b0 ;
    pulse_flop <= 1'b0 ;	
   end
  else
   begin
    prev_flop <= LVL_SIG;   
    pulse_flop <= prev_flop;
   end  
 end


assign PULSE_SIG = prev_flop && !pulse_flop;

endmodule 
