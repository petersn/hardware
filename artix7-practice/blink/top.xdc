# Clock signal
set_property LOC A17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]

# LED
set_property LOC N18 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

## Clock signal
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { clk }];
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];

## LED
#set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { led }];
