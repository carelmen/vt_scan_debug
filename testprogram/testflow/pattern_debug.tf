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
tm_1:
  "testName" = "Functional";
  "output" = "None";
tm_2:
  "testName" = "Functional";
  "output" = "None";
tm_3:
  "testName" = "Functional";
  "output" = "None";
tm_4:
  "testName" = "Functional";
  "output" = "None";
tm_6:
  "strobe" = "0";
end
-----------------------------------------------------------------
testmethodlimits
tm_1:
  "Functional" = "":"NA":"":"NA":"":"":"";
tm_2:
  "Functional" = "":"NA":"":"NA":"":"":"";
tm_3:
  "Functional" = "":"NA":"":"NA":"":"":"";
tm_4:
  "Functional" = "":"NA":"":"NA":"":"":"";
end
-----------------------------------------------------------------
testmethods
tm_1:
  testmethod_class = "ac_tml.AcTest.FunctionalTest";
tm_2:
  testmethod_class = "ac_tml.AcTest.FunctionalTest";
tm_3:
  testmethod_class = "ac_tml.AcTest.FunctionalTest";
tm_4:
  testmethod_class = "ac_tml.AcTest.FunctionalTest";
tm_5:
  testmethod_class = "pattern_debug_tml.OfflineResults";
tm_6:
  testmethod_class = "pattern_debug_tml.ShmooTiming";
end
-----------------------------------------------------------------
test_suites
DC:
  override = 1;
 override_tim_equ_set = 1;
 override_lev_equ_set = 1;
 override_tim_spec_set = 1;
 override_lev_spec_set = 1;
 override_timset = 1;
 override_levset = 1;
 override_testf = tm_5;
local_flags  = output_on_fail, value_on_pass, value_on_fail, per_pin_on_pass, per_pin_on_fail;
 site_match = 2;
 site_control = "parallel:";
I2C:
  override = 1;
 override_lev_equ_set = 1;
 override_tim_spec_set = "i2c";
 override_lev_spec_set = 1;
 override_timset = "1";
 override_levset = 1;
 override_seqlbl = "mpb_i2c_demo";
 override_testf = tm_3;
local_flags  = output_on_fail, value_on_pass, value_on_fail, per_pin_on_pass, per_pin_on_fail;
 site_match = 2;
 site_control = "parallel:";
JTAG:
  override = 1;
 override_lev_equ_set = 1;
 override_tim_spec_set = "Default";
 override_lev_spec_set = 1;
 override_timset = "1";
 override_levset = 1;
 override_seqlbl = "common_io";
 override_testf = tm_4;
local_flags  = output_on_fail, value_on_pass, value_on_fail, per_pin_on_pass, per_pin_on_fail;
 site_match = 2;
 site_control = "parallel:";
SCAN:
  override = 1;
 override_tim_equ_set = 1;
 override_lev_equ_set = 1;
 override_tim_spec_set = 1;
 override_lev_spec_set = 1;
 override_timset = 1;
 override_levset = 1;
 override_seqlbl = "scan";
 override_testf = tm_2;
local_flags  = output_on_pass, output_on_fail, value_on_pass, value_on_fail, per_pin_on_pass, per_pin_on_fail;
 site_match = 2;
 site_control = "parallel:";
SCAN_DEBUG:
  override = 1;
 override_tim_equ_set = 1;
 override_lev_equ_set = 1;
 override_tim_spec_set = 1;
 override_lev_spec_set = 1;
 override_timset = 1;
 override_levset = 1;
 override_seqlbl = "scan";
 override_testf = tm_6;
local_flags  = output_on_pass, output_on_fail, value_on_pass, value_on_fail, per_pin_on_pass, per_pin_on_fail;
 site_match = 2;
 site_control = "parallel:";
end
-----------------------------------------------------------------
test_flow

 run_and_branch(DC)
 then
 {
 }
 else
 {
    stop_bin "50", "5", , bad, reprobe, red, 5, over_on;
 }
 run_and_branch(SCAN)
 then
 {
 }
 else
 {
    stop_bin "60", "6", , bad, noreprobe, red, 6, not_over_on;
 }
 run_and_branch(SCAN_DEBUG)
 then
 {
 }
 else
 {
    stop_bin "60", "6", , bad, noreprobe, red, 6, not_over_on;
 }
 run_and_branch(I2C)
 then
 {
 }
 else
 {
    stop_bin "70", "7", , bad, reprobe, yellow, 7, over_on;
 }
 run_and_branch(JTAG)
 then
 {
 }
 else
 {
    stop_bin "70", "7", , bad, reprobe, yellow, 7, over_on;
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
  6 = "COMMS";
end
