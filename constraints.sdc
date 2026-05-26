Clock Definition
create_clock -name clk -period 10 [get_ports clk]

# Input Delay
set_input_delay 2 -clock clk [all_inputs]

# Output Delay
set_output_delay 2 -clock clk [all_outputs]

# Clock Uncertainty
set_clock_uncertainty 0.2 [get_clocks clk]