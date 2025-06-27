###################################################################

# Created by write_sdc on Wed Oct 23 21:29:14 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
group_path -name INOUT  -from [list [get_ports RST_N] [get_ports UART_CLK] [get_ports REF_CLK] [get_ports UART_RX_IN] [get_ports SI] [get_ports SE] [get_ports Test_Mode] [get_ports scan_clk] [get_ports scan_rst]]  -to [list [get_ports SO] [get_ports UART_TX_O] [get_ports parity_error] [get_ports framing_error]]
group_path -name INREG  -from [list [get_ports RST_N] [get_ports UART_CLK] [get_ports REF_CLK] [get_ports UART_RX_IN] [get_ports SI] [get_ports SE] [get_ports Test_Mode] [get_ports scan_clk] [get_ports scan_rst]]
group_path -name REGOUT  -to [list [get_ports SO] [get_ports UART_TX_O] [get_ports parity_error] [get_ports framing_error]]
