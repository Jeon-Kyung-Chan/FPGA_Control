set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L16} [get_ports clk]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G15} [get_ports ss0]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports pb3]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V16} [get_ports pb2]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P16} [get_ports pb1]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R18} [get_ports pb0]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W14} [get_ports sound]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF] 