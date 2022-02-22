`ifdef _monitor_v
`else
`define _monitor_v
`ifdef _alldef_hv
`else
`include "vtw_alldef.hv"
`endif
`ifdef VTW_OE_CONTENTION_MONITOR
module monitor(
               SPI_MOSI_oe,
               SPI_MISO_oe,
               SPI_CS_oe,
               SPI_CLK_oe,
               I2C_SCL_oe,
               I2C_SDA_oe,
               JTAG_TCK_oe,
               JTAG_TMS_oe,
               JTAG_TDI_oe,
               JTAG_TDO_oe,
               JTAG_TRSTN_oe,
               SWDIO_oe,
               SWCLK_oe,
               clock_oe,
               reset_oe,
               scan_in0_oe,
               scan_in1_oe,
               scan_in2_oe,
               scan_in3_oe,
               scan_out0_oe,
               scan_out1_oe,
               scan_out2_oe,
               scan_out3_oe
              );
`else
module monitor(
               
              );
`endif
  `ifdef VTW_OE_CONTENTION_MONITOR
  input SPI_MOSI_oe;
  input SPI_MISO_oe;
  input SPI_CS_oe;
  input SPI_CLK_oe;
  input I2C_SCL_oe;
  input I2C_SDA_oe;
  input JTAG_TCK_oe;
  input JTAG_TMS_oe;
  input JTAG_TDI_oe;
  input JTAG_TDO_oe;
  input JTAG_TRSTN_oe;
  input SWDIO_oe;
  input SWCLK_oe;
  input clock_oe;
  input reset_oe;
  input scan_in0_oe;
  input scan_in1_oe;
  input scan_in2_oe;
  input scan_in3_oe;
  input scan_out0_oe;
  input scan_out1_oe;
  input scan_out2_oe;
  input scan_out3_oe;
  `else
  `endif
  time SPI_MOSI_last_contention;
  time SPI_MISO_last_contention;
  time SPI_CS_last_contention;
  time SPI_CLK_last_contention;
  time I2C_SCL_last_contention;
  time I2C_SDA_last_contention;
  time JTAG_TCK_last_contention;
  time JTAG_TMS_last_contention;
  time JTAG_TDI_last_contention;
  time JTAG_TDO_last_contention;
  time JTAG_TRSTN_last_contention;
  time SWDIO_last_contention;
  time SWCLK_last_contention;
  time clock_last_contention;
  time reset_last_contention;
  time scan_in0_last_contention;
  time scan_in1_last_contention;
  time scan_in2_last_contention;
  time scan_in3_last_contention;
  time scan_out0_last_contention;
  time scan_out1_last_contention;
  time scan_out2_last_contention;
  time scan_out3_last_contention;
  initial begin
    SPI_MOSI_last_contention=0;
    SPI_MISO_last_contention=0;
    SPI_CS_last_contention=0;
    SPI_CLK_last_contention=0;
    I2C_SCL_last_contention=0;
    I2C_SDA_last_contention=0;
    JTAG_TCK_last_contention=0;
    JTAG_TMS_last_contention=0;
    JTAG_TDI_last_contention=0;
    JTAG_TDO_last_contention=0;
    JTAG_TRSTN_last_contention=0;
    SWDIO_last_contention=0;
    SWCLK_last_contention=0;
    clock_last_contention=0;
    reset_last_contention=0;
    scan_in0_last_contention=0;
    scan_in1_last_contention=0;
    scan_in2_last_contention=0;
    scan_in3_last_contention=0;
    scan_out0_last_contention=0;
    scan_out1_last_contention=0;
    scan_out2_last_contention=0;
    scan_out3_last_contention=0;
  end
  `ifdef VTW_OE_CONTENTION_MONITOR
  // Signal SPI_MOSI contention control
  always @(`VTW_TESTER.SPI_MOSI or `VTW_TESTER.SPI_MOSI_driver or `VTW_TESTER.SPI_MOSI_driver_data or SPI_MOSI_oe)
    begin
      if(SPI_MOSI_last_contention < $time && SPI_MOSI_oe === 1 &&
         `VTW_TESTER.SPI_MOSI_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_MOSI_driver_data !== 1'bz && `VTW_TESTER.SPI_MOSI_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_MOSI");
         SPI_MOSI_last_contention = $time;
      end
    end
  
  // Signal SPI_MISO contention control
  always @(`VTW_TESTER.SPI_MISO or `VTW_TESTER.SPI_MISO_driver or `VTW_TESTER.SPI_MISO_driver_data or SPI_MISO_oe)
    begin
      if(SPI_MISO_last_contention < $time && SPI_MISO_oe === 1 &&
         `VTW_TESTER.SPI_MISO_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_MISO_driver_data !== 1'bz && `VTW_TESTER.SPI_MISO_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_MISO");
         SPI_MISO_last_contention = $time;
      end
    end
  
  // Signal SPI_CS contention control
  always @(`VTW_TESTER.SPI_CS or `VTW_TESTER.SPI_CS_driver or `VTW_TESTER.SPI_CS_driver_data or SPI_CS_oe)
    begin
      if(SPI_CS_last_contention < $time && SPI_CS_oe === 1 &&
         `VTW_TESTER.SPI_CS_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_CS_driver_data !== 1'bz && `VTW_TESTER.SPI_CS_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_CS");
         SPI_CS_last_contention = $time;
      end
    end
  
  // Signal SPI_CLK contention control
  always @(`VTW_TESTER.SPI_CLK or `VTW_TESTER.SPI_CLK_driver or `VTW_TESTER.SPI_CLK_driver_data or SPI_CLK_oe)
    begin
      if(SPI_CLK_last_contention < $time && SPI_CLK_oe === 1 &&
         `VTW_TESTER.SPI_CLK_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_CLK_driver_data !== 1'bz && `VTW_TESTER.SPI_CLK_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_CLK");
         SPI_CLK_last_contention = $time;
      end
    end
  
  // Signal I2C_SCL contention control
  always @(`VTW_TESTER.I2C_SCL or `VTW_TESTER.I2C_SCL_driver or `VTW_TESTER.I2C_SCL_driver_data or I2C_SCL_oe)
    begin
      if(I2C_SCL_last_contention < $time && I2C_SCL_oe === 1 &&
         `VTW_TESTER.I2C_SCL_driver_data !== 1'bx && 
         `VTW_TESTER.I2C_SCL_driver_data !== 1'bz && `VTW_TESTER.I2C_SCL_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("I2C_SCL");
         I2C_SCL_last_contention = $time;
      end
    end
  
  // Signal I2C_SDA contention control
  always @(`VTW_TESTER.I2C_SDA or `VTW_TESTER.I2C_SDA_driver or `VTW_TESTER.I2C_SDA_driver_data or I2C_SDA_oe)
    begin
      if(I2C_SDA_last_contention < $time && I2C_SDA_oe === 1 &&
         `VTW_TESTER.I2C_SDA_driver_data !== 1'bx && 
         `VTW_TESTER.I2C_SDA_driver_data !== 1'bz && `VTW_TESTER.I2C_SDA_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("I2C_SDA");
         I2C_SDA_last_contention = $time;
      end
    end
  
  // Signal JTAG_TCK contention control
  always @(`VTW_TESTER.JTAG_TCK or `VTW_TESTER.JTAG_TCK_driver or `VTW_TESTER.JTAG_TCK_driver_data or JTAG_TCK_oe)
    begin
      if(JTAG_TCK_last_contention < $time && JTAG_TCK_oe === 1 &&
         `VTW_TESTER.JTAG_TCK_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TCK_driver_data !== 1'bz && `VTW_TESTER.JTAG_TCK_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TCK");
         JTAG_TCK_last_contention = $time;
      end
    end
  
  // Signal JTAG_TMS contention control
  always @(`VTW_TESTER.JTAG_TMS or `VTW_TESTER.JTAG_TMS_driver or `VTW_TESTER.JTAG_TMS_driver_data or JTAG_TMS_oe)
    begin
      if(JTAG_TMS_last_contention < $time && JTAG_TMS_oe === 1 &&
         `VTW_TESTER.JTAG_TMS_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TMS_driver_data !== 1'bz && `VTW_TESTER.JTAG_TMS_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TMS");
         JTAG_TMS_last_contention = $time;
      end
    end
  
  // Signal JTAG_TDI contention control
  always @(`VTW_TESTER.JTAG_TDI or `VTW_TESTER.JTAG_TDI_driver or `VTW_TESTER.JTAG_TDI_driver_data or JTAG_TDI_oe)
    begin
      if(JTAG_TDI_last_contention < $time && JTAG_TDI_oe === 1 &&
         `VTW_TESTER.JTAG_TDI_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TDI_driver_data !== 1'bz && `VTW_TESTER.JTAG_TDI_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TDI");
         JTAG_TDI_last_contention = $time;
      end
    end
  
  // Signal JTAG_TDO contention control
  always @(`VTW_TESTER.JTAG_TDO or `VTW_TESTER.JTAG_TDO_driver or `VTW_TESTER.JTAG_TDO_driver_data or JTAG_TDO_oe)
    begin
      if(JTAG_TDO_last_contention < $time && JTAG_TDO_oe === 1 &&
         `VTW_TESTER.JTAG_TDO_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TDO_driver_data !== 1'bz && `VTW_TESTER.JTAG_TDO_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TDO");
         JTAG_TDO_last_contention = $time;
      end
    end
  
  // Signal JTAG_TRSTN contention control
  always @(`VTW_TESTER.JTAG_TRSTN or `VTW_TESTER.JTAG_TRSTN_driver or `VTW_TESTER.JTAG_TRSTN_driver_data or JTAG_TRSTN_oe)
    begin
      if(JTAG_TRSTN_last_contention < $time && JTAG_TRSTN_oe === 1 &&
         `VTW_TESTER.JTAG_TRSTN_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TRSTN_driver_data !== 1'bz && `VTW_TESTER.JTAG_TRSTN_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TRSTN");
         JTAG_TRSTN_last_contention = $time;
      end
    end
  
  // Signal SWDIO contention control
  always @(`VTW_TESTER.SWDIO or `VTW_TESTER.SWDIO_driver or `VTW_TESTER.SWDIO_driver_data or SWDIO_oe)
    begin
      if(SWDIO_last_contention < $time && SWDIO_oe === 1 &&
         `VTW_TESTER.SWDIO_driver_data !== 1'bx && 
         `VTW_TESTER.SWDIO_driver_data !== 1'bz && `VTW_TESTER.SWDIO_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SWDIO");
         SWDIO_last_contention = $time;
      end
    end
  
  // Signal SWCLK contention control
  always @(`VTW_TESTER.SWCLK or `VTW_TESTER.SWCLK_driver or `VTW_TESTER.SWCLK_driver_data or SWCLK_oe)
    begin
      if(SWCLK_last_contention < $time && SWCLK_oe === 1 &&
         `VTW_TESTER.SWCLK_driver_data !== 1'bx && 
         `VTW_TESTER.SWCLK_driver_data !== 1'bz && `VTW_TESTER.SWCLK_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SWCLK");
         SWCLK_last_contention = $time;
      end
    end
  
  // Signal clock contention control
  always @(`VTW_TESTER.clock or `VTW_TESTER.clock_driver or `VTW_TESTER.clock_driver_data or clock_oe)
    begin
      if(clock_last_contention < $time && clock_oe === 1 &&
         `VTW_TESTER.clock_driver_data !== 1'bx && 
         `VTW_TESTER.clock_driver_data !== 1'bz && `VTW_TESTER.clock_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("clock");
         clock_last_contention = $time;
      end
    end
  
  // Signal reset contention control
  always @(`VTW_TESTER.reset or `VTW_TESTER.reset_driver or `VTW_TESTER.reset_driver_data or reset_oe)
    begin
      if(reset_last_contention < $time && reset_oe === 1 &&
         `VTW_TESTER.reset_driver_data !== 1'bx && 
         `VTW_TESTER.reset_driver_data !== 1'bz && `VTW_TESTER.reset_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("reset");
         reset_last_contention = $time;
      end
    end
  
  // Signal scan_in0 contention control
  always @(`VTW_TESTER.scan_in0 or `VTW_TESTER.scan_in0_driver or `VTW_TESTER.scan_in0_driver_data or scan_in0_oe)
    begin
      if(scan_in0_last_contention < $time && scan_in0_oe === 1 &&
         `VTW_TESTER.scan_in0_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in0_driver_data !== 1'bz && `VTW_TESTER.scan_in0_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in0");
         scan_in0_last_contention = $time;
      end
    end
  
  // Signal scan_in1 contention control
  always @(`VTW_TESTER.scan_in1 or `VTW_TESTER.scan_in1_driver or `VTW_TESTER.scan_in1_driver_data or scan_in1_oe)
    begin
      if(scan_in1_last_contention < $time && scan_in1_oe === 1 &&
         `VTW_TESTER.scan_in1_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in1_driver_data !== 1'bz && `VTW_TESTER.scan_in1_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in1");
         scan_in1_last_contention = $time;
      end
    end
  
  // Signal scan_in2 contention control
  always @(`VTW_TESTER.scan_in2 or `VTW_TESTER.scan_in2_driver or `VTW_TESTER.scan_in2_driver_data or scan_in2_oe)
    begin
      if(scan_in2_last_contention < $time && scan_in2_oe === 1 &&
         `VTW_TESTER.scan_in2_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in2_driver_data !== 1'bz && `VTW_TESTER.scan_in2_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in2");
         scan_in2_last_contention = $time;
      end
    end
  
  // Signal scan_in3 contention control
  always @(`VTW_TESTER.scan_in3 or `VTW_TESTER.scan_in3_driver or `VTW_TESTER.scan_in3_driver_data or scan_in3_oe)
    begin
      if(scan_in3_last_contention < $time && scan_in3_oe === 1 &&
         `VTW_TESTER.scan_in3_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in3_driver_data !== 1'bz && `VTW_TESTER.scan_in3_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in3");
         scan_in3_last_contention = $time;
      end
    end
  
  // Signal scan_out0 contention control
  always @(`VTW_TESTER.scan_out0 or `VTW_TESTER.scan_out0_driver or `VTW_TESTER.scan_out0_driver_data or scan_out0_oe)
    begin
      if(scan_out0_last_contention < $time && scan_out0_oe === 1 &&
         `VTW_TESTER.scan_out0_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out0_driver_data !== 1'bz && `VTW_TESTER.scan_out0_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out0");
         scan_out0_last_contention = $time;
      end
    end
  
  // Signal scan_out1 contention control
  always @(`VTW_TESTER.scan_out1 or `VTW_TESTER.scan_out1_driver or `VTW_TESTER.scan_out1_driver_data or scan_out1_oe)
    begin
      if(scan_out1_last_contention < $time && scan_out1_oe === 1 &&
         `VTW_TESTER.scan_out1_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out1_driver_data !== 1'bz && `VTW_TESTER.scan_out1_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out1");
         scan_out1_last_contention = $time;
      end
    end
  
  // Signal scan_out2 contention control
  always @(`VTW_TESTER.scan_out2 or `VTW_TESTER.scan_out2_driver or `VTW_TESTER.scan_out2_driver_data or scan_out2_oe)
    begin
      if(scan_out2_last_contention < $time && scan_out2_oe === 1 &&
         `VTW_TESTER.scan_out2_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out2_driver_data !== 1'bz && `VTW_TESTER.scan_out2_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out2");
         scan_out2_last_contention = $time;
      end
    end
  
  // Signal scan_out3 contention control
  always @(`VTW_TESTER.scan_out3 or `VTW_TESTER.scan_out3_driver or `VTW_TESTER.scan_out3_driver_data or scan_out3_oe)
    begin
      if(scan_out3_last_contention < $time && scan_out3_oe === 1 &&
         `VTW_TESTER.scan_out3_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out3_driver_data !== 1'bz && `VTW_TESTER.scan_out3_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out3");
         scan_out3_last_contention = $time;
      end
    end
  
  `else
  // Signal SPI_MOSI contention control
  always @(`VTW_TESTER.SPI_MOSI or `VTW_TESTER.SPI_MOSI_driver or `VTW_TESTER.SPI_MOSI_driver_data)
    begin
      if(`VTW_TESTER.SPI_MOSI === 1'bx && (SPI_MOSI_last_contention < $time) && 
         `VTW_TESTER.SPI_MOSI_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_MOSI_driver_data !== 1'bz && `VTW_TESTER.SPI_MOSI_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_MOSI");
         SPI_MOSI_last_contention = $time;
      end
    end
  
  // Signal SPI_MISO contention control
  always @(`VTW_TESTER.SPI_MISO or `VTW_TESTER.SPI_MISO_driver or `VTW_TESTER.SPI_MISO_driver_data)
    begin
      if(`VTW_TESTER.SPI_MISO === 1'bx && (SPI_MISO_last_contention < $time) && 
         `VTW_TESTER.SPI_MISO_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_MISO_driver_data !== 1'bz && `VTW_TESTER.SPI_MISO_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_MISO");
         SPI_MISO_last_contention = $time;
      end
    end
  
  // Signal SPI_CS contention control
  always @(`VTW_TESTER.SPI_CS or `VTW_TESTER.SPI_CS_driver or `VTW_TESTER.SPI_CS_driver_data)
    begin
      if(`VTW_TESTER.SPI_CS === 1'bx && (SPI_CS_last_contention < $time) && 
         `VTW_TESTER.SPI_CS_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_CS_driver_data !== 1'bz && `VTW_TESTER.SPI_CS_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_CS");
         SPI_CS_last_contention = $time;
      end
    end
  
  // Signal SPI_CLK contention control
  always @(`VTW_TESTER.SPI_CLK or `VTW_TESTER.SPI_CLK_driver or `VTW_TESTER.SPI_CLK_driver_data)
    begin
      if(`VTW_TESTER.SPI_CLK === 1'bx && (SPI_CLK_last_contention < $time) && 
         `VTW_TESTER.SPI_CLK_driver_data !== 1'bx && 
         `VTW_TESTER.SPI_CLK_driver_data !== 1'bz && `VTW_TESTER.SPI_CLK_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SPI_CLK");
         SPI_CLK_last_contention = $time;
      end
    end
  
  // Signal I2C_SCL contention control
  always @(`VTW_TESTER.I2C_SCL or `VTW_TESTER.I2C_SCL_driver or `VTW_TESTER.I2C_SCL_driver_data)
    begin
      if(`VTW_TESTER.I2C_SCL === 1'bx && (I2C_SCL_last_contention < $time) && 
         `VTW_TESTER.I2C_SCL_driver_data !== 1'bx && 
         `VTW_TESTER.I2C_SCL_driver_data !== 1'bz && `VTW_TESTER.I2C_SCL_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("I2C_SCL");
         I2C_SCL_last_contention = $time;
      end
    end
  
  // Signal I2C_SDA contention control
  always @(`VTW_TESTER.I2C_SDA or `VTW_TESTER.I2C_SDA_driver or `VTW_TESTER.I2C_SDA_driver_data)
    begin
      if(`VTW_TESTER.I2C_SDA === 1'bx && (I2C_SDA_last_contention < $time) && 
         `VTW_TESTER.I2C_SDA_driver_data !== 1'bx && 
         `VTW_TESTER.I2C_SDA_driver_data !== 1'bz && `VTW_TESTER.I2C_SDA_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("I2C_SDA");
         I2C_SDA_last_contention = $time;
      end
    end
  
  // Signal JTAG_TCK contention control
  always @(`VTW_TESTER.JTAG_TCK or `VTW_TESTER.JTAG_TCK_driver or `VTW_TESTER.JTAG_TCK_driver_data)
    begin
      if(`VTW_TESTER.JTAG_TCK === 1'bx && (JTAG_TCK_last_contention < $time) && 
         `VTW_TESTER.JTAG_TCK_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TCK_driver_data !== 1'bz && `VTW_TESTER.JTAG_TCK_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TCK");
         JTAG_TCK_last_contention = $time;
      end
    end
  
  // Signal JTAG_TMS contention control
  always @(`VTW_TESTER.JTAG_TMS or `VTW_TESTER.JTAG_TMS_driver or `VTW_TESTER.JTAG_TMS_driver_data)
    begin
      if(`VTW_TESTER.JTAG_TMS === 1'bx && (JTAG_TMS_last_contention < $time) && 
         `VTW_TESTER.JTAG_TMS_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TMS_driver_data !== 1'bz && `VTW_TESTER.JTAG_TMS_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TMS");
         JTAG_TMS_last_contention = $time;
      end
    end
  
  // Signal JTAG_TDI contention control
  always @(`VTW_TESTER.JTAG_TDI or `VTW_TESTER.JTAG_TDI_driver or `VTW_TESTER.JTAG_TDI_driver_data)
    begin
      if(`VTW_TESTER.JTAG_TDI === 1'bx && (JTAG_TDI_last_contention < $time) && 
         `VTW_TESTER.JTAG_TDI_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TDI_driver_data !== 1'bz && `VTW_TESTER.JTAG_TDI_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TDI");
         JTAG_TDI_last_contention = $time;
      end
    end
  
  // Signal JTAG_TDO contention control
  always @(`VTW_TESTER.JTAG_TDO or `VTW_TESTER.JTAG_TDO_driver or `VTW_TESTER.JTAG_TDO_driver_data)
    begin
      if(`VTW_TESTER.JTAG_TDO === 1'bx && (JTAG_TDO_last_contention < $time) && 
         `VTW_TESTER.JTAG_TDO_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TDO_driver_data !== 1'bz && `VTW_TESTER.JTAG_TDO_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TDO");
         JTAG_TDO_last_contention = $time;
      end
    end
  
  // Signal JTAG_TRSTN contention control
  always @(`VTW_TESTER.JTAG_TRSTN or `VTW_TESTER.JTAG_TRSTN_driver or `VTW_TESTER.JTAG_TRSTN_driver_data)
    begin
      if(`VTW_TESTER.JTAG_TRSTN === 1'bx && (JTAG_TRSTN_last_contention < $time) && 
         `VTW_TESTER.JTAG_TRSTN_driver_data !== 1'bx && 
         `VTW_TESTER.JTAG_TRSTN_driver_data !== 1'bz && `VTW_TESTER.JTAG_TRSTN_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("JTAG_TRSTN");
         JTAG_TRSTN_last_contention = $time;
      end
    end
  
  // Signal SWDIO contention control
  always @(`VTW_TESTER.SWDIO or `VTW_TESTER.SWDIO_driver or `VTW_TESTER.SWDIO_driver_data)
    begin
      if(`VTW_TESTER.SWDIO === 1'bx && (SWDIO_last_contention < $time) && 
         `VTW_TESTER.SWDIO_driver_data !== 1'bx && 
         `VTW_TESTER.SWDIO_driver_data !== 1'bz && `VTW_TESTER.SWDIO_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SWDIO");
         SWDIO_last_contention = $time;
      end
    end
  
  // Signal SWCLK contention control
  always @(`VTW_TESTER.SWCLK or `VTW_TESTER.SWCLK_driver or `VTW_TESTER.SWCLK_driver_data)
    begin
      if(`VTW_TESTER.SWCLK === 1'bx && (SWCLK_last_contention < $time) && 
         `VTW_TESTER.SWCLK_driver_data !== 1'bx && 
         `VTW_TESTER.SWCLK_driver_data !== 1'bz && `VTW_TESTER.SWCLK_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("SWCLK");
         SWCLK_last_contention = $time;
      end
    end
  
  // Signal clock contention control
  always @(`VTW_TESTER.clock or `VTW_TESTER.clock_driver or `VTW_TESTER.clock_driver_data)
    begin
      if(`VTW_TESTER.clock === 1'bx && (clock_last_contention < $time) && 
         `VTW_TESTER.clock_driver_data !== 1'bx && 
         `VTW_TESTER.clock_driver_data !== 1'bz && `VTW_TESTER.clock_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("clock");
         clock_last_contention = $time;
      end
    end
  
  // Signal reset contention control
  always @(`VTW_TESTER.reset or `VTW_TESTER.reset_driver or `VTW_TESTER.reset_driver_data)
    begin
      if(`VTW_TESTER.reset === 1'bx && (reset_last_contention < $time) && 
         `VTW_TESTER.reset_driver_data !== 1'bx && 
         `VTW_TESTER.reset_driver_data !== 1'bz && `VTW_TESTER.reset_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("reset");
         reset_last_contention = $time;
      end
    end
  
  // Signal scan_in0 contention control
  always @(`VTW_TESTER.scan_in0 or `VTW_TESTER.scan_in0_driver or `VTW_TESTER.scan_in0_driver_data)
    begin
      if(`VTW_TESTER.scan_in0 === 1'bx && (scan_in0_last_contention < $time) && 
         `VTW_TESTER.scan_in0_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in0_driver_data !== 1'bz && `VTW_TESTER.scan_in0_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in0");
         scan_in0_last_contention = $time;
      end
    end
  
  // Signal scan_in1 contention control
  always @(`VTW_TESTER.scan_in1 or `VTW_TESTER.scan_in1_driver or `VTW_TESTER.scan_in1_driver_data)
    begin
      if(`VTW_TESTER.scan_in1 === 1'bx && (scan_in1_last_contention < $time) && 
         `VTW_TESTER.scan_in1_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in1_driver_data !== 1'bz && `VTW_TESTER.scan_in1_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in1");
         scan_in1_last_contention = $time;
      end
    end
  
  // Signal scan_in2 contention control
  always @(`VTW_TESTER.scan_in2 or `VTW_TESTER.scan_in2_driver or `VTW_TESTER.scan_in2_driver_data)
    begin
      if(`VTW_TESTER.scan_in2 === 1'bx && (scan_in2_last_contention < $time) && 
         `VTW_TESTER.scan_in2_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in2_driver_data !== 1'bz && `VTW_TESTER.scan_in2_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in2");
         scan_in2_last_contention = $time;
      end
    end
  
  // Signal scan_in3 contention control
  always @(`VTW_TESTER.scan_in3 or `VTW_TESTER.scan_in3_driver or `VTW_TESTER.scan_in3_driver_data)
    begin
      if(`VTW_TESTER.scan_in3 === 1'bx && (scan_in3_last_contention < $time) && 
         `VTW_TESTER.scan_in3_driver_data !== 1'bx && 
         `VTW_TESTER.scan_in3_driver_data !== 1'bz && `VTW_TESTER.scan_in3_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_in3");
         scan_in3_last_contention = $time;
      end
    end
  
  // Signal scan_out0 contention control
  always @(`VTW_TESTER.scan_out0 or `VTW_TESTER.scan_out0_driver or `VTW_TESTER.scan_out0_driver_data)
    begin
      if(`VTW_TESTER.scan_out0 === 1'bx && (scan_out0_last_contention < $time) && 
         `VTW_TESTER.scan_out0_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out0_driver_data !== 1'bz && `VTW_TESTER.scan_out0_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out0");
         scan_out0_last_contention = $time;
      end
    end
  
  // Signal scan_out1 contention control
  always @(`VTW_TESTER.scan_out1 or `VTW_TESTER.scan_out1_driver or `VTW_TESTER.scan_out1_driver_data)
    begin
      if(`VTW_TESTER.scan_out1 === 1'bx && (scan_out1_last_contention < $time) && 
         `VTW_TESTER.scan_out1_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out1_driver_data !== 1'bz && `VTW_TESTER.scan_out1_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out1");
         scan_out1_last_contention = $time;
      end
    end
  
  // Signal scan_out2 contention control
  always @(`VTW_TESTER.scan_out2 or `VTW_TESTER.scan_out2_driver or `VTW_TESTER.scan_out2_driver_data)
    begin
      if(`VTW_TESTER.scan_out2 === 1'bx && (scan_out2_last_contention < $time) && 
         `VTW_TESTER.scan_out2_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out2_driver_data !== 1'bz && `VTW_TESTER.scan_out2_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out2");
         scan_out2_last_contention = $time;
      end
    end
  
  // Signal scan_out3 contention control
  always @(`VTW_TESTER.scan_out3 or `VTW_TESTER.scan_out3_driver or `VTW_TESTER.scan_out3_driver_data)
    begin
      if(`VTW_TESTER.scan_out3 === 1'bx && (scan_out3_last_contention < $time) && 
         `VTW_TESTER.scan_out3_driver_data !== 1'bx && 
         `VTW_TESTER.scan_out3_driver_data !== 1'bz && `VTW_TESTER.scan_out3_driver === `VTW_TRUE) begin
         `VTW_LOGGING.contention_message("scan_out3");
         scan_out3_last_contention = $time;
      end
    end
  
  `endif
endmodule
`endif
