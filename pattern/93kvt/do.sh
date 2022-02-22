#!/bin/bash


# (!) set this to match you directory
VT_DIR=/home/carelmen/top/projects/testinsight/webinar_scan/pattern/93kvt


MODELSIM_PATH=/opt/tools/modelsim_ase/bin
VLIB=$MODELSIM_PATH/vlib
VLOG=$MODELSIM_PATH/vlog
VSIM=$MODELSIM_PATH/vsim
VT_EXEC=/opt/tools/tdl_1.10.8-3_Linux64/bin/93kvt


cd $VT_DIR

$VT_EXEC -setup scan_export.py
cp test_wrapper.v vt_scan
cp vtfilelist vt_scan
cp asic.v vt_scan

cd vt_scan

$VLIB work
$VLOG -f vtfilelist
$VSIM -c test_wrapper -do "run -all"

# Status : simulation failed with 14 errors detected.

F=`grep Status transcript | awk '{print $7}'`
echo Found $F
exit $F
