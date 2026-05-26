read_liberty sky130.lib
read_verilog counter.v
link_design counter

read_sdc constraints.sdc

report_checks
report_tns
report_wns