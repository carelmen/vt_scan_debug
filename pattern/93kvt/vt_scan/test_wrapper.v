`ifdef VTW_INCLUDE_ALL_SOURCES
`include "test.hv"
`include "board.hv"
`include "vtw_wfgdef.hv"
`include "vtw_stddef.hv"
`include "vtw_logger.hv"
`include "vtw_alldef.hv"
`include "vtw_stdutil.hv"
`include "clockgen.v"
`include "vtw_logger.v"
`include "vtw_wfg.v"
`include "vtw_stdutil.v"
`include "Pattern0_timing.v"
`include "Pattern0.v"
`include "Pattern0_timing_control.v"
`include "Pattern0_submodule_0.v"
`include "tester.v"
`include "monitor.v"
`else
`include "vtw_alldef.hv"
`endif
module test_wrapper;

  wire SPI_MOSI;
  wire SPI_MISO;
  wire SPI_CS;
  wire SPI_CLK;
  wire I2C_SCL;
  wire I2C_SDA;
  wire JTAG_TCK;
  wire JTAG_TMS;
  wire JTAG_TDI;
  wire JTAG_TDO;
  wire JTAG_TRSTN;
  wire SWDIO;
  wire SWCLK;
  wire clock;
  wire reset;
  wire scan_in0;
  wire scan_in1;
  wire scan_in2;
  wire scan_in3;
  wire scan_out0;
  wire scan_out1;
  wire scan_out2;
  wire scan_out3;
  
  vtw_logger vtw_logger(
                       );
  vtw_stdutil vtw_stdutil(
                         );
  `ifdef VTW_OE_CONTENTION_MONITOR
  `ifdef VTW_OWN_MONITOR_CONNECTION
  `else
  monitor monitor(
                  .SPI_MOSI_oe(SPI_MOSI_oe),
                  .SPI_MISO_oe(SPI_MISO_oe),
                  .SPI_CS_oe(SPI_CS_oe),
                  .SPI_CLK_oe(SPI_CLK_oe),
                  .I2C_SCL_oe(I2C_SCL_oe),
                  .I2C_SDA_oe(I2C_SDA_oe),
                  .JTAG_TCK_oe(JTAG_TCK_oe),
                  .JTAG_TMS_oe(JTAG_TMS_oe),
                  .JTAG_TDI_oe(JTAG_TDI_oe),
                  .JTAG_TDO_oe(JTAG_TDO_oe),
                  .JTAG_TRSTN_oe(JTAG_TRSTN_oe),
                  .SWDIO_oe(SWDIO_oe),
                  .SWCLK_oe(SWCLK_oe),
                  .clock_oe(clock_oe),
                  .reset_oe(reset_oe),
                  .scan_in0_oe(scan_in0_oe),
                  .scan_in1_oe(scan_in1_oe),
                  .scan_in2_oe(scan_in2_oe),
                  .scan_in3_oe(scan_in3_oe),
                  .scan_out0_oe(scan_out0_oe),
                  .scan_out1_oe(scan_out1_oe),
                  .scan_out2_oe(scan_out2_oe),
                  .scan_out3_oe(scan_out3_oe)
                 );
  `endif
  `else
  monitor monitor(
                 );
  `endif
`ifdef VTW_NO_DUT
`else
`ifdef VTW_OWN_DUT_CONNECTION
`else
  asic dut(
          .clock(clock),
          .reset(reset),
          .scan_in({scan_in3, scan_in2, scan_in1, scan_in0}),
          .scan_out({scan_out3, scan_out2, scan_out1, scan_out0})
         );
`endif
`endif

`ifdef VTW_USER_CODE
`VTW_USER_CODE
`endif

  tester tester(
                .SPI_MOSI(SPI_MOSI),
                .SPI_MISO(SPI_MISO),
                .SPI_CS(SPI_CS),
                .SPI_CLK(SPI_CLK),
                .I2C_SCL(I2C_SCL),
                .I2C_SDA(I2C_SDA),
                .JTAG_TCK(JTAG_TCK),
                .JTAG_TMS(JTAG_TMS),
                .JTAG_TDI(JTAG_TDI),
                .JTAG_TDO(JTAG_TDO),
                .JTAG_TRSTN(JTAG_TRSTN),
                .SWDIO(SWDIO),
                .SWCLK(SWCLK),
                .clock(clock),
                .reset(reset),
                .scan_in0(scan_in0),
                .scan_in1(scan_in1),
                .scan_in2(scan_in2),
                .scan_in3(scan_in3),
                .scan_out0(scan_out0),
                .scan_out1(scan_out1),
                .scan_out2(scan_out2),
                .scan_out3(scan_out3)
               );
  initial
    begin
`ifdef VTW_OWN_DUMP
`else
`ifdef VTW_FSDB_DUMP
      $fsdbDumpfile("dut.fsdb");
      $fsdbDumpvarsToFile("dut_fsdb.list");
`else
      $dumpfile("dut.vcd");
      $dumpvars(1,`VTW_LOGGING.fail_number);
      $dumpvars(1,`VTW_LOGGING.compare_number);
      $dumpvars(1,SPI_MOSI);
      $dumpvars(1,SPI_MISO);
      $dumpvars(1,SPI_CS);
      $dumpvars(1,SPI_CLK);
      $dumpvars(1,I2C_SCL);
      $dumpvars(1,I2C_SDA);
      $dumpvars(1,JTAG_TCK);
      $dumpvars(1,JTAG_TMS);
      $dumpvars(1,JTAG_TDI);
      $dumpvars(1,JTAG_TDO);
      $dumpvars(1,JTAG_TRSTN);
      $dumpvars(1,SWDIO);
      $dumpvars(1,SWCLK);
      $dumpvars(1,clock);
      $dumpvars(1,reset);
      $dumpvars(1,scan_in0);
      $dumpvars(1,scan_in1);
      $dumpvars(1,scan_in2);
      $dumpvars(1,scan_in3);
      $dumpvars(1,scan_out0);
      $dumpvars(1,scan_out1);
      $dumpvars(1,scan_out2);
      $dumpvars(1,scan_out3);
`ifdef VTW_SKIP_PATTERN_PARAMETERS
`else
      $dumpvars(1,tester.Pattern0.cycle_number);
      $dumpvars(1,tester.Pattern0.repeat_count);
      $dumpvars(1,tester.Pattern0.vector_number);
      $dumpvars(1,tester.Pattern0.waveform_table);
      $dumpvars(1,tester.Pattern0.vector_comment);
      $dumpvars(1,tester.Pattern0.vector_subr);
      $dumpvars(1,tester.Pattern0.pat_name);
`endif
      $dumpvars(1,tester.SPI_MOSI_driver);
      $dumpvars(1,tester.SPI_MOSI_driver_data);
      $dumpvars(1,tester.SPI_MOSI_expected);
      $dumpvars(1,tester.SPI_MOSI_comparator);
      $dumpvars(1,tester.SPI_MISO_driver);
      $dumpvars(1,tester.SPI_MISO_driver_data);
      $dumpvars(1,tester.SPI_MISO_expected);
      $dumpvars(1,tester.SPI_MISO_comparator);
      $dumpvars(1,tester.SPI_CS_driver);
      $dumpvars(1,tester.SPI_CS_driver_data);
      $dumpvars(1,tester.SPI_CS_expected);
      $dumpvars(1,tester.SPI_CS_comparator);
      $dumpvars(1,tester.SPI_CLK_driver);
      $dumpvars(1,tester.SPI_CLK_driver_data);
      $dumpvars(1,tester.SPI_CLK_expected);
      $dumpvars(1,tester.SPI_CLK_comparator);
      $dumpvars(1,tester.I2C_SCL_driver);
      $dumpvars(1,tester.I2C_SCL_driver_data);
      $dumpvars(1,tester.I2C_SCL_expected);
      $dumpvars(1,tester.I2C_SCL_comparator);
      $dumpvars(1,tester.I2C_SDA_driver);
      $dumpvars(1,tester.I2C_SDA_driver_data);
      $dumpvars(1,tester.I2C_SDA_expected);
      $dumpvars(1,tester.I2C_SDA_comparator);
      $dumpvars(1,tester.JTAG_TCK_driver);
      $dumpvars(1,tester.JTAG_TCK_driver_data);
      $dumpvars(1,tester.JTAG_TCK_expected);
      $dumpvars(1,tester.JTAG_TCK_comparator);
      $dumpvars(1,tester.JTAG_TMS_driver);
      $dumpvars(1,tester.JTAG_TMS_driver_data);
      $dumpvars(1,tester.JTAG_TMS_expected);
      $dumpvars(1,tester.JTAG_TMS_comparator);
      $dumpvars(1,tester.JTAG_TDI_driver);
      $dumpvars(1,tester.JTAG_TDI_driver_data);
      $dumpvars(1,tester.JTAG_TDI_expected);
      $dumpvars(1,tester.JTAG_TDI_comparator);
      $dumpvars(1,tester.JTAG_TDO_driver);
      $dumpvars(1,tester.JTAG_TDO_driver_data);
      $dumpvars(1,tester.JTAG_TDO_expected);
      $dumpvars(1,tester.JTAG_TDO_comparator);
      $dumpvars(1,tester.JTAG_TRSTN_driver);
      $dumpvars(1,tester.JTAG_TRSTN_driver_data);
      $dumpvars(1,tester.JTAG_TRSTN_expected);
      $dumpvars(1,tester.JTAG_TRSTN_comparator);
      $dumpvars(1,tester.SWDIO_driver);
      $dumpvars(1,tester.SWDIO_driver_data);
      $dumpvars(1,tester.SWDIO_expected);
      $dumpvars(1,tester.SWDIO_comparator);
      $dumpvars(1,tester.SWCLK_driver);
      $dumpvars(1,tester.SWCLK_driver_data);
      $dumpvars(1,tester.SWCLK_expected);
      $dumpvars(1,tester.SWCLK_comparator);
      $dumpvars(1,tester.clock_driver);
      $dumpvars(1,tester.clock_driver_data);
      $dumpvars(1,tester.clock_expected);
      $dumpvars(1,tester.clock_comparator);
      $dumpvars(1,tester.reset_driver);
      $dumpvars(1,tester.reset_driver_data);
      $dumpvars(1,tester.reset_expected);
      $dumpvars(1,tester.reset_comparator);
      $dumpvars(1,tester.scan_in0_driver);
      $dumpvars(1,tester.scan_in0_driver_data);
      $dumpvars(1,tester.scan_in0_expected);
      $dumpvars(1,tester.scan_in0_comparator);
      $dumpvars(1,tester.scan_in1_driver);
      $dumpvars(1,tester.scan_in1_driver_data);
      $dumpvars(1,tester.scan_in1_expected);
      $dumpvars(1,tester.scan_in1_comparator);
      $dumpvars(1,tester.scan_in2_driver);
      $dumpvars(1,tester.scan_in2_driver_data);
      $dumpvars(1,tester.scan_in2_expected);
      $dumpvars(1,tester.scan_in2_comparator);
      $dumpvars(1,tester.scan_in3_driver);
      $dumpvars(1,tester.scan_in3_driver_data);
      $dumpvars(1,tester.scan_in3_expected);
      $dumpvars(1,tester.scan_in3_comparator);
      $dumpvars(1,tester.scan_out0_driver);
      $dumpvars(1,tester.scan_out0_driver_data);
      $dumpvars(1,tester.scan_out0_expected);
      $dumpvars(1,tester.scan_out0_comparator);
      $dumpvars(1,tester.scan_out1_driver);
      $dumpvars(1,tester.scan_out1_driver_data);
      $dumpvars(1,tester.scan_out1_expected);
      $dumpvars(1,tester.scan_out1_comparator);
      $dumpvars(1,tester.scan_out2_driver);
      $dumpvars(1,tester.scan_out2_driver_data);
      $dumpvars(1,tester.scan_out2_expected);
      $dumpvars(1,tester.scan_out2_comparator);
      $dumpvars(1,tester.scan_out3_driver);
      $dumpvars(1,tester.scan_out3_driver_data);
      $dumpvars(1,tester.scan_out3_expected);
      $dumpvars(1,tester.scan_out3_comparator);
`endif
`endif
    end
    
endmodule
