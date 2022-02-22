`ifdef _Pattern0_timing_v
`else
`define _Pattern0_timing_v
`ifdef _alldef_hv
`else
`include "vtw_alldef.hv"
`endif
module Pattern0_timing(tester_sync,vector_number,cycle_number,wft,wfc,vector_comment,SPI_MOSI,SPI_MISO,SPI_CS,SPI_CLK,I2C_SCL,I2C_SDA,JTAG_TCK,JTAG_TMS,JTAG_TDI,JTAG_TDO,JTAG_TRSTN,SWDIO,SWCLK,clock,reset,scan_in0,scan_in1,scan_in2,scan_in3,scan_out0,scan_out1,scan_out2,scan_out3);

  input tester_sync;
  input [0:`VTW_INTEGER_SIZE-1] vector_number;
  input [0:`VTW_INTEGER_SIZE-1] cycle_number;
  input [0:`VTW_COMMENT_SIZE-1] vector_comment;
  input [0:3] wft;
  input [0:183] wfc;
  inout  SPI_MOSI;
  inout  SPI_MISO;
  inout  SPI_CS;
  inout  SPI_CLK;
  inout  I2C_SCL;
  inout  I2C_SDA;
  inout  JTAG_TCK;
  inout  JTAG_TMS;
  inout  JTAG_TDI;
  inout  JTAG_TDO;
  inout  JTAG_TRSTN;
  inout  SWDIO;
  inout  SWCLK;
  inout  clock;
  inout  reset;
  inout  scan_in0;
  inout  scan_in1;
  inout  scan_in2;
  inout  scan_in3;
  inout  scan_out0;
  inout  scan_out1;
  inout  scan_out2;
  inout  scan_out3;
  wire [0:35] triggers;
  
  Pattern0_timing_control timing_control(.tester_sync(tester_sync),
                                         .wft(wft),
                                         .wfc(wfc),
                                         .triggers(triggers));
                                         
  // Submodules
  Pattern0_submodule_0 Pattern0_submodule_0();
  
  task initialize;
    begin
      Pattern0_submodule_0.initialize;
    end
  endtask
  task finalize;
    begin
      /*
      // Switch off SPI_MOSI driver
      `VTW_TESTER.SPI_MOSI_driver = `VTW_FALSE;
      // Switch off SPI_MISO driver
      `VTW_TESTER.SPI_MISO_driver = `VTW_FALSE;
      // Switch off SPI_CS driver
      `VTW_TESTER.SPI_CS_driver = `VTW_FALSE;
      // Switch off SPI_CLK driver
      `VTW_TESTER.SPI_CLK_driver = `VTW_FALSE;
      // Switch off I2C_SCL driver
      `VTW_TESTER.I2C_SCL_driver = `VTW_FALSE;
      // Switch off I2C_SDA driver
      `VTW_TESTER.I2C_SDA_driver = `VTW_FALSE;
      // Switch off JTAG_TCK driver
      `VTW_TESTER.JTAG_TCK_driver = `VTW_FALSE;
      // Switch off JTAG_TMS driver
      `VTW_TESTER.JTAG_TMS_driver = `VTW_FALSE;
      // Switch off JTAG_TDI driver
      `VTW_TESTER.JTAG_TDI_driver = `VTW_FALSE;
      // Switch off JTAG_TDO driver
      `VTW_TESTER.JTAG_TDO_driver = `VTW_FALSE;
      // Switch off JTAG_TRSTN driver
      `VTW_TESTER.JTAG_TRSTN_driver = `VTW_FALSE;
      // Switch off SWDIO driver
      `VTW_TESTER.SWDIO_driver = `VTW_FALSE;
      // Switch off SWCLK driver
      `VTW_TESTER.SWCLK_driver = `VTW_FALSE;
      // Switch off clock driver
      `VTW_TESTER.clock_driver = `VTW_FALSE;
      // Switch off reset driver
      `VTW_TESTER.reset_driver = `VTW_FALSE;
      // Switch off scan_in0 driver
      `VTW_TESTER.scan_in0_driver = `VTW_FALSE;
      // Switch off scan_in1 driver
      `VTW_TESTER.scan_in1_driver = `VTW_FALSE;
      // Switch off scan_in2 driver
      `VTW_TESTER.scan_in2_driver = `VTW_FALSE;
      // Switch off scan_in3 driver
      `VTW_TESTER.scan_in3_driver = `VTW_FALSE;
      // Switch off scan_out0 driver
      `VTW_TESTER.scan_out0_driver = `VTW_FALSE;
      // Switch off scan_out1 driver
      `VTW_TESTER.scan_out1_driver = `VTW_FALSE;
      // Switch off scan_out2 driver
      `VTW_TESTER.scan_out2_driver = `VTW_FALSE;
      // Switch off scan_out3 driver
      `VTW_TESTER.scan_out3_driver = `VTW_FALSE;
      */
    end
  endtask
  
endmodule // Pattern0_timing
`endif
