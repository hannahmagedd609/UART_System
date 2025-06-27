#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Fri Oct 25 15:29:06 2024                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Projects/System_pnr/DFT/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/System_pnr/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/System_pnr/DFT/sdc/SYS_TOP.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/SYS_TOP_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/SYS_TOP_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold {hold1_analysis_view hold2_analysis_view hold3_analysis_view}
fit
zoomOut
zoomOut
zoomIn
zoomIn
zoomOut
fit
floorPlan -d 240.47 160.47 4.0 4.0 4.0 4.0
windowSelect -13.131 160.932 27.544 132.773
zoomBox -32.425 164.061 34.845 124.951
zoomBox -13.781 155.626 15.508 135.003
zoomBox -8.626 151.879 10.505 138.902
fit
deselectAll
zoomBox -17.042 162.757 34.323 103.049
zoomBox -11.335 160.287 15.299 132.770
zoomBox -6.655 154.881 12.611 143.947
zoomBox -1.423 150.844 3.696 148.809
selectPhyPin 0.0000 150.0000 0.2000 150.2000 2 {SI[0]}
zoomOut
fit
zoomBox -12.088 131.209 33.801 95.227
zoomBox -8.676 123.928 14.232 110.322
zoomBox -1.673 120.210 2.667 117.738
zoomOut
deselectAll
selectPhyPin 0.0000 120.0000 0.2000 120.2000 2 {SI[3]}
deselectAll
selectObject IO_Pin {SI[3]}
deselectAll
fit
zoomBox -6.091 161.193 18.418 95.227
zoomBox -17.563 153.593 19.074 103.704
zoomBox -8.051 146.887 11.551 117.779
fit
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
selectWire 2.3000 157.0900 238.0650 158.0900 5 VSS
deselectAll
selectWire 238.5650 0.8000 239.5650 159.5900 6 VDD
zoomBox 189.199 130.427 275.241 70.197
zoomBox 233.154 109.164 263.046 96.798
deselectAll
fit
zoomBox 28.848 163.279 63.004 136.684
fit
zoomBox -4.005 159.107 16.072 146.852
selectWire 2.3000 2.3000 3.3000 158.0900 6 VSS
fit
deselectAll
zoomBox 229.352 164.843 252.818 138.770
zoomBox 225.584 161.647 247.767 153.405
selectWire 238.5650 0.8000 239.5650 159.5900 6 VDD
deselectAll
windowSelect 238.333 160.009 240.311 158.330
deselectAll
selectVia 238.5650 158.5900 239.5650 159.5900 6 VDD
fit
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
zoomBox 54.400 18.311 143.571 -7.763
zoomBox 72.189 5.474 106.392 -3.735
zoomBox 79.736 2.372 97.288 -2.170
zoomBox 81.942 2.359 89.858 -0.186
fit
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
zoomBox -35.032 145.810 38.234 95.749
zoomBox -18.549 131.686 30.920 121.112
zoomBox -3.033 129.937 10.771 124.289
deselectAll
selectWire 4.1000 2.3000 5.1000 158.0900 6 VSS
deleteSelectedFromFPlan
selectWire 5.6000 0.8000 6.6000 159.5900 6 VDD
deleteSelectedFromFPlan
fit
zoomBox 48.403 146.592 90.642 109.307
fit
zoomBox 56.746 164.843 81.776 133.034
zoomBox 61.344 160.144 73.325 151.264
windowSelect 65.269 159.751 66.895 158.387
deselectAll
selectVia 65.6000 158.5900 66.6000 159.5900 6 VDD
deselectAll
selectVia 65.6000 158.5900 66.6000 159.5900 6 VDD
deselectAll
selectWire 0.8000 158.5900 239.5650 159.5900 5 VDD
deselectAll
selectWire 65.6000 0.8000 66.6000 159.5900 6 VDD
fit
deselectAll
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
zoomBox -33.468 142.941 22.851 85.320
fit
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
zoomBox -16.259 110.089 42.666 66.025
selectWire 0.8000 0.8000 1.8000 159.5900 6 VDD
deselectAll
selectWire 2.3000 2.3000 3.3000 158.0900 6 VSS
zoomBox -2.515 88.025 12.911 75.918
deselectAll
windowSelect 1.899 82.320 4.009 80.603
deselectAll
selectVia 2.3000 81.4450 3.3000 81.7350 6 VSS
fit
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyGeometry -noMinArea
fit
fit
saveFPlan /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.fp
