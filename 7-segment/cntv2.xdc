set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T16} [get_ports rst]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports clk]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN D18} [get_ports qout[3]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G14} [get_ports qout[2]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M15} [get_ports qout[1]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M14} [get_ports qout[0]]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T20} [get_ports segd[0]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U20} [get_ports segd[1]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V20} [get_ports segd[2]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W20} [get_ports segd[3]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y18} [get_ports segd[4]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports segd[5]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W18} [get_ports segd[6]]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W19} [get_ports segd[7]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]