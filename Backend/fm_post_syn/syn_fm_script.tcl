
############################  Search PATH ################################
lappend search_path /home/IC/Projects/System/RTL
lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys

#lappend search_path /home/IC/Projects/System/RTL/ALU
#lappend search_path /home/IC/Projects/System/RTL/ASYNC_FIFO
#lappend search_path /home/IC/Projects/System/RTL/CUST_MUX
#lappend search_path /home/IC/Projects/System/RTL/CLK_DIV
#lappend search_path /home/IC/Projects/System/RTL/CLK_GATE
#lappend search_path /home/IC/Projects/System/RTL/DATA_SYNC
#lappend search_path /home/IC/Projects/System/RTL/Reg_File
#lappend search_path /home/IC/Projects/System/RTL/PULSE_GEN
#lappend search_path /home/IC/Projects/System/RTL/RST_SYNC
#lappend search_path /home/IC/Projects/System/RTL/SYS_CTRL
#lappend search_path /home/IC/Projects/System/RTL/UART/UART_RX
#lappend search_path /home/IC/Projects/System/RTL/UART/UART_TX
#lappend search_path /home/IC/Projects/System/RTL/UART/UART_TOP
#lappend search_path /home/IC/Projects/System/RTL/SYS_TOP

########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../Synthesis/$top_module.svf"

####################### Read Reference tech libs ########################
 

set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

###################  Read Reference Design Files ######################## 
read_verilog -container Ref "ALU.v"
read_verilog -container Ref "DF_SYNC.v"
read_verilog -container Ref "FIFO_MEM.v"
read_verilog -container Ref "FIFO_RD.v"
read_verilog -container Ref "FIFO_WR.v"
read_verilog -container Ref "ASYNC_FIFO.v"
read_verilog -container Ref "CUST_MUX.v"
read_verilog -container Ref "CLK_DIV.v"
read_verilog -container Ref "CLK_GATE.v"
read_verilog -container Ref "DATA_SYNC.v"
read_verilog -container Ref "Reg_File.v"
read_verilog -container Ref "PULSE_GEN.v"
read_verilog -container Ref "RST_SYNC.v"
read_sverilog -container Ref "SYS_CTRL.sv"
read_verilog -container Ref "UART_R_DSample.v"
read_verilog -container Ref "UART_R_DSER.v"
read_verilog -container Ref "UART_R_EdgeCnt.v"
read_verilog -container Ref "UART_R_ParCh.v"
read_verilog -container Ref "UART_R_StpCh.v"
read_verilog -container Ref "UART_R_StrtCh.v"
read_verilog -container Ref "UART_R_TOP.v"
read_sverilog -container Ref "UART_R_FSM.sv"
read_verilog -container Ref "UART_T_MUX.v"
read_verilog -container Ref "UART_T_ParCalc.v"
read_verilog -container Ref "UART_T_SER.v"
read_sverilog -container Ref "UART_T_FSM.sv"
read_verilog -container Ref "UART_T_TOP.v"
read_verilog -container Ref "UART_TOP.v"
read_verilog -container Ref "SYS_TOP.v"

######################## set the top Reference Design ######################## 

set_reference_design SYS_TOP
set_top SYS_TOP

####################### Read Implementation tech libs ######################## 

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/IC/Projects/System/Backend/Synthesis/netlists/SYS_TOP.v"

####################  set the top Implementation Design ######################

set_implementation_design SYS_TOP
set_top SYS_TOP


## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
