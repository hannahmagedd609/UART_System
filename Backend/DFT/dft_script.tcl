
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP_dft

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable
set PROJECT_PATH /home/IC/Projects/System/
set LIB_PATH     /home/IC/tsmc_fb_cl013g_sc/aci/sc-m

lappend search_path /home/IC/Projects/System/RTL
lappend search_path /home/IC/Projects/System/std_cells
#lappend search_path $LIB_PATH/synopsys
#lappend search_path $PROJECT_PATH/RTL/ALU
#lappend search_path $PROJECT_PATH/RTL/ASYNC_FIFO
#lappend search_path $PROJECT_PATH/RTL/Clock_Divider
#lappend search_path $PROJECT_PATH/RTL/Clock_Gating
#lappend search_path $PROJECT_PATH/RTL/DATA_SYNC
#lappend search_path $PROJECT_PATH/RTL/RegFile
#lappend search_path $PROJECT_PATH/RTL/PULSE_GEN
#lappend search_path $PROJECT_PATH/RTL/RST_SYNC
#lappend search_path $PROJECT_PATH/RTL/SYS_CTRL
#lappend search_path $PROJECT_PATH/RTL/CLKDIV_MUX
#lappend search_path $PROJECT_PATH/RTL/UART/UART_RX
#lappend search_path $PROJECT_PATH/RTL/UART/UART_TX
#lappend search_path $PROJECT_PATH/RTL/UART/UART_TOP
#lappend search_path $PROJECT_PATH/RTL/Top


set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format1 verilog
set file_format2 sverilog

#ALU
analyze -format $file_format1 ALU.v
#FIFO
analyze -format $file_format1 DF_SYNC.v
analyze -format $file_format1 FIFO_MEM.v
analyze -format $file_format1 FIFO_RD.v
analyze -format $file_format1 FIFO_WR.v
analyze -format $file_format1 ASYNC_FIFO.v
#CLK_DIVIDER MUX
analyze -format $file_format1 CUST_MUX.v
#CLK_DIVIDER
analyze -format $file_format1 CLK_DIV.v
#CLK_GATING
analyze -format $file_format1 CLK_GATE.v
#DATA_SYNC
analyze -format $file_format1 DATA_SYNC.v
#REGISTER_FILE
analyze -format $file_format1 Reg_File.v
#PULSE_GENERATOR
analyze -format $file_format1 PULSE_GEN.v
#RST_SYNC
analyze -format $file_format1 RST_SYNC.v
#SYS_CONTROLLER
analyze -format $file_format2 SYS_CTRL.sv
#UART_RX
analyze -format $file_format1 UART_R_DSample.v
analyze -format $file_format1 UART_R_DSER.v
analyze -format $file_format1 UART_R_EdgeCnt.v
analyze -format $file_format1 UART_R_ParCh.v
analyze -format $file_format1 UART_R_StpCh.v
analyze -format $file_format1 UART_R_StrtCh.v
analyze -format $file_format1 UART_R_TOP.v
analyze -format $file_format2 UART_R_FSM.sv
#UART_TX
analyze -format $file_format1 UART_T_MUX.v
analyze -format $file_format1 UART_T_ParCalc.v
analyze -format $file_format1 UART_T_SER.v
analyze -format $file_format1 UART_T_TOP.v
analyze -format $file_format2 UART_T_FSM.sv
#UART_TOP
analyze -format $file_format1 UART_TOP.v
#MUX
analyze -format $file_format1 MUX2X1.v
#SYS_TOP
analyze -format $file_format1 SYS_TOP_dft.v

elaborate -lib WORK SYS_TOP_dft

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]
#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"
set_scan_configuration -clock_mixing no_mix -style multiplexed_flip_flop -replace true -max_length 100


###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"
compile -map_effort high

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################
set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports Test_Mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports Test_Mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

############################# Create Test Protocol #####################
create_test_protocol
                            
###################### Pre-DFT Design Rule Checking ####################
dft_drc -verbose

############################# Preview DFT ##############################
preview_dft -show scan_summary

############################# Insert DFT ###############################
insert_dft

######################## Optimize Logic post DFT #######################
compile -scan -incremental

###################### Design Rule Checking post DFT ###################
dft_drc -verbose -coverage_estimate

##################### Close Formality Setup file ###########################
set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

################# starting graphical user interface #######################

#gui_start

#exit
