
vlib work
vlog -f vtfilelist


vsim test_wrapper
config wave -signalnamewidth 1

add wave -position end  sim:/test_wrapper/dut/reset
add wave -position end  sim:/test_wrapper/dut/clock
add wave -position end  sim:/test_wrapper/dut/scan_in
add wave -position end  sim:/test_wrapper/dut/scan_out

quietly virtual function -install /test_wrapper/tester -env /test_wrapper { &{/test_wrapper/tester/scan_out3_comparator, /test_wrapper/tester/scan_out2_comparator, /test_wrapper/tester/scan_out1_comparator, /test_wrapper/tester/scan_out0_comparator }} comp
quietly virtual function -install /test_wrapper/tester -env /test_wrapper { &{/test_wrapper/tester/scan_out3_expected, /test_wrapper/tester/scan_out2_expected, /test_wrapper/tester/scan_out1_expected, /test_wrapper/tester/scan_out0_expected }} expect

# add wave tester/scan_out*_comp*
add wave -noupdate /test_wrapper/tester/expect
add wave tester/scan_out*_exp*



run 1.8 us