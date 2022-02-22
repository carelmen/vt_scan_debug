hp93000,testflow,0.1
language_revision = 1;

information

end
-----------------------------------------------------------------
declarations

end
-----------------------------------------------------------------
implicit_declarations

end
-----------------------------------------------------------------
flags

datalog_formatter = 0;
datalog_sample_size = 1;
graphic_result_displa = 1;
state_display = 0;
print_wafermap = 0;
ink_wafer = 0;
max_reprobes = 1;
temp_monitor = 1;
calib_age_monitor = 1;
diag_monitor = 1;
current_monitor = 1;
log_events_enable = 1;
set_pass_level = 0;
set_fail_level = 0;
set_bypass_level = 0;
hold_on_fail = 0;
global_hold = 0;
debug_mode = 0;
debug_analog = 0;
parallel_mode = 1;
site_match_mode = 2;
global_overon = 0;
limits_enable = 0;
test_number_enable = 1;
test_number_inc = 1;
log_cycles_before = 0;
log_cycles_after = 0;
unburst_mode = 0;
sqst_mode = 0;
warn_as_fail = 1;
use_hw_dsp = 0;
dsp_file_enable = 0;
buffer_testflow_log = 0;
check_testmethod_api = 0;
stdf_generation = 1;
tm_crash_as_fatal = 1;
hidden_datalog_mode = 0;
multibin_mode = 0;
end
-----------------------------------------------------------------
testmethodparameters
end
-----------------------------------------------------------------
testmethodlimits
end
-----------------------------------------------------------------
testmethods
tm_2:
  testmethod_class = "datalogging_perf.WriteTestResults";
end
-----------------------------------------------------------------
test_suites
SPI:
  override = 1;
 override_lev_equ_set = 1;
 override_tim_spec_set = "i2c";
 override_lev_spec_set = 1;
 override_timset = "1";
 override_levset = 1;
 override_testf = tm_2;
local_flags  = output_on_pass, output_on_fail, value_on_pass, value_on_fail, per_pin_on_pass, per_pin_on_fail;
 site_match = 2;
 site_control = "parallel:";
end
-----------------------------------------------------------------
test_flow

 run_and_branch(SPI)
 then
 {
 }
 else
 {
    stop_bin "50", "5", , bad, reprobe, red, 5, over_on;
 }
 stop_bin "100", "PASS", , good, noreprobe, green, 1, over_on;
end
-----------------------------------------------------------------
binning
otherwise bin = "db", "", , bad, noreprobe, red, , not_over_on;
end
-----------------------------------------------------------------
context

context_config_file = "pattern_debug.pin";
context_levels_file = "pattern_debug.lev";
context_timing_file = "pattern_debug.tim";
context_vector_file = "pattern_debug.mfh";
end
-----------------------------------------------------------------
hardware_bin_descriptions
  1 = "PASS";
  5 = "DIG";
end
