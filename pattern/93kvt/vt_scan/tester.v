`ifdef _tester_v
`else
`define _tester_v
`ifdef _alldef_hv
`else
`include "vtw_alldef.hv"
`endif
module tester(
              SPI_MOSI,
              SPI_MISO,
              SPI_CS,
              SPI_CLK,
              I2C_SCL,
              I2C_SDA,
              JTAG_TCK,
              JTAG_TMS,
              JTAG_TDI,
              JTAG_TDO,
              JTAG_TRSTN,
              SWDIO,
              SWCLK,
              clock,
              reset,
              scan_in0,
              scan_in1,
              scan_in2,
              scan_in3,
              scan_out0,
              scan_out1,
              scan_out2,
              scan_out3
             );
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
  // Signal SPI_MOSI
  reg SPI_MOSI_driver;
  reg SPI_MOSI_driver_data;
  reg SPI_MOSI_expected;
  reg SPI_MOSI_comparator;
  // Signal SPI_MISO
  reg SPI_MISO_driver;
  reg SPI_MISO_driver_data;
  reg SPI_MISO_expected;
  reg SPI_MISO_comparator;
  // Signal SPI_CS
  reg SPI_CS_driver;
  reg SPI_CS_driver_data;
  reg SPI_CS_expected;
  reg SPI_CS_comparator;
  // Signal SPI_CLK
  reg SPI_CLK_driver;
  reg SPI_CLK_driver_data;
  reg SPI_CLK_expected;
  reg SPI_CLK_comparator;
  // Signal I2C_SCL
  reg I2C_SCL_driver;
  reg I2C_SCL_driver_data;
  reg I2C_SCL_expected;
  reg I2C_SCL_comparator;
  // Signal I2C_SDA
  reg I2C_SDA_driver;
  reg I2C_SDA_driver_data;
  reg I2C_SDA_expected;
  reg I2C_SDA_comparator;
  // Signal JTAG_TCK
  reg JTAG_TCK_driver;
  reg JTAG_TCK_driver_data;
  reg JTAG_TCK_expected;
  reg JTAG_TCK_comparator;
  // Signal JTAG_TMS
  reg JTAG_TMS_driver;
  reg JTAG_TMS_driver_data;
  reg JTAG_TMS_expected;
  reg JTAG_TMS_comparator;
  // Signal JTAG_TDI
  reg JTAG_TDI_driver;
  reg JTAG_TDI_driver_data;
  reg JTAG_TDI_expected;
  reg JTAG_TDI_comparator;
  // Signal JTAG_TDO
  reg JTAG_TDO_driver;
  reg JTAG_TDO_driver_data;
  reg JTAG_TDO_expected;
  reg JTAG_TDO_comparator;
  // Signal JTAG_TRSTN
  reg JTAG_TRSTN_driver;
  reg JTAG_TRSTN_driver_data;
  reg JTAG_TRSTN_expected;
  reg JTAG_TRSTN_comparator;
  // Signal SWDIO
  reg SWDIO_driver;
  reg SWDIO_driver_data;
  reg SWDIO_expected;
  reg SWDIO_comparator;
  // Signal SWCLK
  reg SWCLK_driver;
  reg SWCLK_driver_data;
  reg SWCLK_expected;
  reg SWCLK_comparator;
  // Signal clock
  reg clock_driver;
  reg clock_driver_data;
  reg clock_expected;
  reg clock_comparator;
  // Signal reset
  reg reset_driver;
  reg reset_driver_data;
  reg reset_expected;
  reg reset_comparator;
  // Signal scan_in0
  reg scan_in0_driver;
  reg scan_in0_driver_data;
  reg scan_in0_expected;
  reg scan_in0_comparator;
  // Signal scan_in1
  reg scan_in1_driver;
  reg scan_in1_driver_data;
  reg scan_in1_expected;
  reg scan_in1_comparator;
  // Signal scan_in2
  reg scan_in2_driver;
  reg scan_in2_driver_data;
  reg scan_in2_expected;
  reg scan_in2_comparator;
  // Signal scan_in3
  reg scan_in3_driver;
  reg scan_in3_driver_data;
  reg scan_in3_expected;
  reg scan_in3_comparator;
  // Signal scan_out0
  reg scan_out0_driver;
  reg scan_out0_driver_data;
  reg scan_out0_expected;
  reg scan_out0_comparator;
  // Signal scan_out1
  reg scan_out1_driver;
  reg scan_out1_driver_data;
  reg scan_out1_expected;
  reg scan_out1_comparator;
  // Signal scan_out2
  reg scan_out2_driver;
  reg scan_out2_driver_data;
  reg scan_out2_expected;
  reg scan_out2_comparator;
  // Signal scan_out3
  reg scan_out3_driver;
  reg scan_out3_driver_data;
  reg scan_out3_expected;
  reg scan_out3_comparator;
  
  reg test_complete;
  initial
    begin
      test_complete =  1'b0;
      `VTW_STD_UTIL.initialize;
      `ifdef VTW_OWN_INIT
      `VTW_OWN_INIT;
      `endif
      `ifdef VTW_NO_AUTOSTART
      `else
        Pattern0_exec;
        test_complete = 1'b1;
      `endif
    end
  
  task Pattern0_exec;
    begin
        #0 -> Pattern0.start;
        @(Pattern0.finished);
    end
  endtask
  
  always @(posedge test_complete)
    begin
      if( test_complete === 1'b1 )
        begin
          `VTW_LOGGING.final_message;
           $finish;
        end
    end
  
  initial
    begin
      SPI_MOSI_driver = `VTW_FALSE;
      SPI_MOSI_driver_data = $time % 2;
      SPI_MISO_driver = `VTW_FALSE;
      SPI_MISO_driver_data = $time % 2;
      SPI_CS_driver = `VTW_FALSE;
      SPI_CS_driver_data = $time % 2;
      SPI_CLK_driver = `VTW_FALSE;
      SPI_CLK_driver_data = $time % 2;
      I2C_SCL_driver = `VTW_FALSE;
      I2C_SCL_driver_data = $time % 2;
      I2C_SDA_driver = `VTW_FALSE;
      I2C_SDA_driver_data = $time % 2;
      JTAG_TCK_driver = `VTW_FALSE;
      JTAG_TCK_driver_data = $time % 2;
      JTAG_TMS_driver = `VTW_FALSE;
      JTAG_TMS_driver_data = $time % 2;
      JTAG_TDI_driver = `VTW_FALSE;
      JTAG_TDI_driver_data = $time % 2;
      JTAG_TDO_driver = `VTW_FALSE;
      JTAG_TDO_driver_data = $time % 2;
      JTAG_TRSTN_driver = `VTW_FALSE;
      JTAG_TRSTN_driver_data = $time % 2;
      SWDIO_driver = `VTW_FALSE;
      SWDIO_driver_data = $time % 2;
      SWCLK_driver = `VTW_FALSE;
      SWCLK_driver_data = $time % 2;
      clock_driver = `VTW_FALSE;
      clock_driver_data = $time % 2;
      reset_driver = `VTW_FALSE;
      reset_driver_data = $time % 2;
      scan_in0_driver = `VTW_FALSE;
      scan_in0_driver_data = $time % 2;
      scan_in1_driver = `VTW_FALSE;
      scan_in1_driver_data = $time % 2;
      scan_in2_driver = `VTW_FALSE;
      scan_in2_driver_data = $time % 2;
      scan_in3_driver = `VTW_FALSE;
      scan_in3_driver_data = $time % 2;
      scan_out0_driver = `VTW_FALSE;
      scan_out0_driver_data = $time % 2;
      scan_out1_driver = `VTW_FALSE;
      scan_out1_driver_data = $time % 2;
      scan_out2_driver = `VTW_FALSE;
      scan_out2_driver_data = $time % 2;
      scan_out3_driver = `VTW_FALSE;
      scan_out3_driver_data = $time % 2;
    end
  
    // Signal SPI_MOSI driver connection
    assign SPI_MOSI = (SPI_MOSI_driver === `VTW_TRUE && SPI_MOSI_driver_data !== 1'bx) ? SPI_MOSI_driver_data : 1'bz;
    // Signal SPI_MISO driver connection
    assign SPI_MISO = (SPI_MISO_driver === `VTW_TRUE && SPI_MISO_driver_data !== 1'bx) ? SPI_MISO_driver_data : 1'bz;
    // Signal SPI_CS driver connection
    assign SPI_CS = (SPI_CS_driver === `VTW_TRUE && SPI_CS_driver_data !== 1'bx) ? SPI_CS_driver_data : 1'bz;
    // Signal SPI_CLK driver connection
    assign SPI_CLK = (SPI_CLK_driver === `VTW_TRUE && SPI_CLK_driver_data !== 1'bx) ? SPI_CLK_driver_data : 1'bz;
    // Signal I2C_SCL driver connection
    assign I2C_SCL = (I2C_SCL_driver === `VTW_TRUE && I2C_SCL_driver_data !== 1'bx) ? I2C_SCL_driver_data : 1'bz;
    // Signal I2C_SDA driver connection
    assign I2C_SDA = (I2C_SDA_driver === `VTW_TRUE && I2C_SDA_driver_data !== 1'bx) ? I2C_SDA_driver_data : 1'bz;
    // Signal JTAG_TCK driver connection
    assign JTAG_TCK = (JTAG_TCK_driver === `VTW_TRUE && JTAG_TCK_driver_data !== 1'bx) ? JTAG_TCK_driver_data : 1'bz;
    // Signal JTAG_TMS driver connection
    assign JTAG_TMS = (JTAG_TMS_driver === `VTW_TRUE && JTAG_TMS_driver_data !== 1'bx) ? JTAG_TMS_driver_data : 1'bz;
    // Signal JTAG_TDI driver connection
    assign JTAG_TDI = (JTAG_TDI_driver === `VTW_TRUE && JTAG_TDI_driver_data !== 1'bx) ? JTAG_TDI_driver_data : 1'bz;
    // Signal JTAG_TDO driver connection
    assign JTAG_TDO = (JTAG_TDO_driver === `VTW_TRUE && JTAG_TDO_driver_data !== 1'bx) ? JTAG_TDO_driver_data : 1'bz;
    // Signal JTAG_TRSTN driver connection
    assign JTAG_TRSTN = (JTAG_TRSTN_driver === `VTW_TRUE && JTAG_TRSTN_driver_data !== 1'bx) ? JTAG_TRSTN_driver_data : 1'bz;
    // Signal SWDIO driver connection
    assign SWDIO = (SWDIO_driver === `VTW_TRUE && SWDIO_driver_data !== 1'bx) ? SWDIO_driver_data : 1'bz;
    // Signal SWCLK driver connection
    assign SWCLK = (SWCLK_driver === `VTW_TRUE && SWCLK_driver_data !== 1'bx) ? SWCLK_driver_data : 1'bz;
    // Signal clock driver connection
    assign clock = (clock_driver === `VTW_TRUE && clock_driver_data !== 1'bx) ? clock_driver_data : 1'bz;
    // Signal reset driver connection
    assign reset = (reset_driver === `VTW_TRUE && reset_driver_data !== 1'bx) ? reset_driver_data : 1'bz;
    // Signal scan_in0 driver connection
    assign scan_in0 = (scan_in0_driver === `VTW_TRUE && scan_in0_driver_data !== 1'bx) ? scan_in0_driver_data : 1'bz;
    // Signal scan_in1 driver connection
    assign scan_in1 = (scan_in1_driver === `VTW_TRUE && scan_in1_driver_data !== 1'bx) ? scan_in1_driver_data : 1'bz;
    // Signal scan_in2 driver connection
    assign scan_in2 = (scan_in2_driver === `VTW_TRUE && scan_in2_driver_data !== 1'bx) ? scan_in2_driver_data : 1'bz;
    // Signal scan_in3 driver connection
    assign scan_in3 = (scan_in3_driver === `VTW_TRUE && scan_in3_driver_data !== 1'bx) ? scan_in3_driver_data : 1'bz;
    // Signal scan_out0 driver connection
    assign scan_out0 = (scan_out0_driver === `VTW_TRUE && scan_out0_driver_data !== 1'bx) ? scan_out0_driver_data : 1'bz;
    // Signal scan_out1 driver connection
    assign scan_out1 = (scan_out1_driver === `VTW_TRUE && scan_out1_driver_data !== 1'bx) ? scan_out1_driver_data : 1'bz;
    // Signal scan_out2 driver connection
    assign scan_out2 = (scan_out2_driver === `VTW_TRUE && scan_out2_driver_data !== 1'bx) ? scan_out2_driver_data : 1'bz;
    // Signal scan_out3 driver connection
    assign scan_out3 = (scan_out3_driver === `VTW_TRUE && scan_out3_driver_data !== 1'bx) ? scan_out3_driver_data : 1'bz;
    
    Pattern0 Pattern0(
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
endmodule
`endif
