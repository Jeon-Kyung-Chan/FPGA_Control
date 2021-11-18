set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T16} [get_ports rst]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L16} [get_ports clk]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V15} [get_ports digit[3]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W15} [get_ports digit[2]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T11} [get_ports digit[1]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T10} [get_ports digit[0]]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T20} [get_ports segd[0]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U20} [get_ports segd[1]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V20} [get_ports segd[2]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W20} [get_ports segd[3]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y18} [get_ports segd[4]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports segd[5]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W18} [get_ports segd[6]]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports push_ss]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V16} [get_ports push_clr]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF] 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets push_ss_IBUF] 