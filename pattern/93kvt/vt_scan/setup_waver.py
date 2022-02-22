##############################
# View Attributes
##

# Geometry
view_x        = 217 # left upper corner X coordinate
view_y        = 17 # left upper corner Y coordinate
view_width    = 1382 # waver window width
view_height   = 996 # waver window height

# View Settings
zoom          = 135.87 # zoom factor ( default = '1' )
filter        = '' # search filter value
show_fails = 0  # show/hide factor

# Grid Settings
show_grid     = 1  # show/hide grid
grid_offset   = '0ns' # first grid line offset (time expression)
grid_spacing  = '100ns' # spacing between grid lines (time expression)

# Footer Settings
show_footer   = 1 #  show footer
footer_h      = 250 # footer view height

##############################
# Configure Test Readers
##

# Load VCD.
load_vcd(
    test_id        = '0', # test id ( unique test identifier )
    test_path      = '/home/carelmen/external/top/projects/testinsight/webinar_scan/pattern/93kvt/vt_scan/dut.vcd', # test file
    keep_sig_path  = 1   # keep signals hierarchy path ( optional )
    )

##############################
# Configure Signals
##

show_signal( test_id = '0', signal_name = 'test_wrapper.vtw_logger.fail_number' )
show_signal( test_id = '0', signal_name = 'test_wrapper.vtw_logger.compare_number' )
show_signal( test_id = '0', signal_name = 'test_wrapper.reset' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_in0' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_in1' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_in2' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_in3' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_out0' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_out1' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_out2' )
show_signal( test_id = '0', signal_name = 'test_wrapper.scan_out3' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.Pattern0.cycle_number' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.Pattern0.repeat_count' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.Pattern0.vector_number' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.Pattern0.waveform_table' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.Pattern0.vector_comment' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.Pattern0.vector_subr' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.Pattern0.pat_name' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.clock_driver' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.clock_driver_data' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.clock_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.clock_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.reset_driver' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.reset_driver_data' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.reset_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.reset_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in0_driver' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in0_driver_data' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in0_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in0_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in1_driver' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in1_driver_data' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in1_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in1_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in2_driver' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in2_driver_data' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in2_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in2_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in3_driver' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in3_driver_data' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in3_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_in3_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out0_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out0_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out1_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out1_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out2_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out2_comparator' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out3_expected' )
show_signal( test_id = '0', signal_name = 'test_wrapper.tester.scan_out3_comparator' )
show_signal( test_id = '0', signal_name = 'comment' )

