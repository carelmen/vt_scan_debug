`ifdef _Pattern0_submodule_0_v
`else
`define _Pattern0_submodule_0_v
`ifdef _alldef_hv
`else
`include "vtw_alldef.hv"
`endif
module Pattern0_submodule_0;

  // Signal SPI_MOSI
  wire       SPI_MOSI_tester_comparator;
  
  // Signal SPI_MISO
  wire       SPI_MISO_tester_comparator;
  
  // Signal SPI_CS
  wire       SPI_CS_tester_comparator;
  
  // Signal SPI_CLK
  wire       SPI_CLK_tester_comparator;
  
  // Signal I2C_SCL
  wire       I2C_SCL_tester_comparator;
  
  // Signal I2C_SDA
  wire       I2C_SDA_tester_comparator;
  
  // Signal JTAG_TCK
  wire       JTAG_TCK_tester_comparator;
  
  // Signal JTAG_TMS
  wire       JTAG_TMS_tester_comparator;
  
  // Signal JTAG_TDI
  wire       JTAG_TDI_tester_comparator;
  
  // Signal JTAG_TDO
  wire       JTAG_TDO_tester_comparator;
  
  // Signal JTAG_TRSTN
  wire       JTAG_TRSTN_tester_comparator;
  
  // Signal SWDIO
  wire       SWDIO_tester_comparator;
  
  // Signal SWCLK
  wire       SWCLK_tester_comparator;
  
  // Signal clock
  wire       clock_tester_comparator;
  
  // Signal reset
  wire       reset_tester_comparator;
  
  // Signal scan_in0
  wire       scan_in0_tester_comparator;
  
  // Signal scan_in1
  wire       scan_in1_tester_comparator;
  
  // Signal scan_in2
  wire       scan_in2_tester_comparator;
  
  // Signal scan_in3
  wire       scan_in3_tester_comparator;
  
  // Signal scan_out0
  wire       scan_out0_tester_comparator;
  
  // Signal scan_out1
  wire       scan_out1_tester_comparator;
  
  // Signal scan_out2
  wire       scan_out2_tester_comparator;
  
  // Signal scan_out3
  wire       scan_out3_tester_comparator;
  
  reg initialized;
  reg [0:63] timing_rec;
  integer timing_fp;
  integer timing_read_cnt;
  integer edge_index;
  reg [2047:0] pat_name;
  integer pat_name_fp;
  integer pat_name_cnt;
  // Signal SPI_MOSI
  vtw_wfg SPI_MOSI_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[0]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.SPI_MOSI),
               .driver_state(`VTW_TESTER.SPI_MOSI_driver));
  
  // Signal SPI_MISO
  vtw_wfg SPI_MISO_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[1]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.SPI_MISO),
               .driver_state(`VTW_TESTER.SPI_MISO_driver));
  
  // Signal SPI_CS
  vtw_wfg SPI_CS_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[2]),
             .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
             .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
             .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
             .channel_out(`VTW_TESTER.Pattern0.tester_control.SPI_CS),
             .driver_state(`VTW_TESTER.SPI_CS_driver));
  
  // Signal SPI_CLK
  vtw_wfg SPI_CLK_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[3]),
              .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
              .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
              .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
              .channel_out(`VTW_TESTER.Pattern0.tester_control.SPI_CLK),
              .driver_state(`VTW_TESTER.SPI_CLK_driver));
  
  // Signal I2C_SCL
  vtw_wfg I2C_SCL_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[4]),
              .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
              .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
              .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
              .channel_out(`VTW_TESTER.Pattern0.tester_control.I2C_SCL),
              .driver_state(`VTW_TESTER.I2C_SCL_driver));
  
  // Signal I2C_SDA
  vtw_wfg I2C_SDA_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[5]),
              .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
              .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
              .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
              .channel_out(`VTW_TESTER.Pattern0.tester_control.I2C_SDA),
              .driver_state(`VTW_TESTER.I2C_SDA_driver));
  
  // Signal JTAG_TCK
  vtw_wfg JTAG_TCK_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[6]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.JTAG_TCK),
               .driver_state(`VTW_TESTER.JTAG_TCK_driver));
  
  // Signal JTAG_TMS
  vtw_wfg JTAG_TMS_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[7]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.JTAG_TMS),
               .driver_state(`VTW_TESTER.JTAG_TMS_driver));
  
  // Signal JTAG_TDI
  vtw_wfg JTAG_TDI_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[8]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.JTAG_TDI),
               .driver_state(`VTW_TESTER.JTAG_TDI_driver));
  
  // Signal JTAG_TDO
  vtw_wfg JTAG_TDO_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[9]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.JTAG_TDO),
               .driver_state(`VTW_TESTER.JTAG_TDO_driver));
  
  // Signal JTAG_TRSTN
  vtw_wfg JTAG_TRSTN_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[10]),
                 .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                 .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                 .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                 .channel_out(`VTW_TESTER.Pattern0.tester_control.JTAG_TRSTN),
                 .driver_state(`VTW_TESTER.JTAG_TRSTN_driver));
  
  // Signal SWDIO
  vtw_wfg SWDIO_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[11]),
            .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
            .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
            .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
            .channel_out(`VTW_TESTER.Pattern0.tester_control.SWDIO),
            .driver_state(`VTW_TESTER.SWDIO_driver));
  
  // Signal SWCLK
  vtw_wfg SWCLK_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[12]),
            .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
            .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
            .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
            .channel_out(`VTW_TESTER.Pattern0.tester_control.SWCLK),
            .driver_state(`VTW_TESTER.SWCLK_driver));
  
  // Signal clock
  vtw_wfg clock_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[13]),
            .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
            .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
            .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
            .channel_out(`VTW_TESTER.Pattern0.tester_control.clock),
            .driver_state(`VTW_TESTER.clock_driver));
  
  // Signal reset
  vtw_wfg reset_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[14]),
            .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
            .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
            .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
            .channel_out(`VTW_TESTER.Pattern0.tester_control.reset),
            .driver_state(`VTW_TESTER.reset_driver));
  vtw_wfg reset_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[15]),
            .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
            .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
            .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
            .channel_out(`VTW_TESTER.Pattern0.tester_control.reset),
            .driver_state(`VTW_TESTER.reset_driver));
  
  // Signal scan_in0
  vtw_wfg scan_in0_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[16]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in0),
               .driver_state(`VTW_TESTER.scan_in0_driver));
  vtw_wfg scan_in0_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[17]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in0),
               .driver_state(`VTW_TESTER.scan_in0_driver));
  
  // Signal scan_in1
  vtw_wfg scan_in1_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[18]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in1),
               .driver_state(`VTW_TESTER.scan_in1_driver));
  vtw_wfg scan_in1_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[19]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in1),
               .driver_state(`VTW_TESTER.scan_in1_driver));
  
  // Signal scan_in2
  vtw_wfg scan_in2_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[20]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in2),
               .driver_state(`VTW_TESTER.scan_in2_driver));
  vtw_wfg scan_in2_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[21]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in2),
               .driver_state(`VTW_TESTER.scan_in2_driver));
  
  // Signal scan_in3
  vtw_wfg scan_in3_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[22]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in3),
               .driver_state(`VTW_TESTER.scan_in3_driver));
  vtw_wfg scan_in3_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[23]),
               .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
               .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
               .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
               .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_in3),
               .driver_state(`VTW_TESTER.scan_in3_driver));
  
  // Signal scan_out0
  vtw_wfg scan_out0_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[24]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out0),
                .driver_state(`VTW_TESTER.scan_out0_driver));
  vtw_wfg scan_out0_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[25]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out0),
                .driver_state(`VTW_TESTER.scan_out0_driver));
  vtw_wfg scan_out0_2_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[26]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out0),
                .driver_state(`VTW_TESTER.scan_out0_driver));
  
  // Signal scan_out1
  vtw_wfg scan_out1_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[27]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out1),
                .driver_state(`VTW_TESTER.scan_out1_driver));
  vtw_wfg scan_out1_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[28]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out1),
                .driver_state(`VTW_TESTER.scan_out1_driver));
  vtw_wfg scan_out1_2_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[29]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out1),
                .driver_state(`VTW_TESTER.scan_out1_driver));
  
  // Signal scan_out2
  vtw_wfg scan_out2_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[30]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out2),
                .driver_state(`VTW_TESTER.scan_out2_driver));
  vtw_wfg scan_out2_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[31]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out2),
                .driver_state(`VTW_TESTER.scan_out2_driver));
  vtw_wfg scan_out2_2_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[32]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out2),
                .driver_state(`VTW_TESTER.scan_out2_driver));
  
  // Signal scan_out3
  vtw_wfg scan_out3_0_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[33]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out3),
                .driver_state(`VTW_TESTER.scan_out3_driver));
  vtw_wfg scan_out3_1_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[34]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out3),
                .driver_state(`VTW_TESTER.scan_out3_driver));
  vtw_wfg scan_out3_2_wfg(.tester_sync(`VTW_TESTER.Pattern0.tester_control.triggers[35]),
                .cur_vector_number(`VTW_TESTER.Pattern0.tester_control.vector_number),
                .cur_cycle_number(`VTW_TESTER.Pattern0.tester_control.cycle_number),
                .cur_vector_comment(`VTW_TESTER.Pattern0.tester_control.vector_comment),
                .channel_out(`VTW_TESTER.Pattern0.tester_control.scan_out3),
                .driver_state(`VTW_TESTER.scan_out3_driver));
  
  task initialize;
    begin
      if(initialized !== `VTW_TRUE) begin
        pat_name_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/Pattern0.bin"},"r");
        if(pat_name_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load pattern name from ",`VTW_TEST_MEMORY_DIR,"/Pattern0.bin"});
            $finish;
        end
        pat_name_cnt = $fscanf(pat_name_fp,"%x\n",pat_name);
        $fclose(pat_name_fp);
        
        // Signal SPI_MOSI
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_MOSI_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_MOSI_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_MOSI_0_wfg.waveform = timing_rec[56:63];
        SPI_MOSI_0_wfg.signal = "SPI_MOSI";
        SPI_MOSI_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_MOSI_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < SPI_MOSI_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_MOSI_0_wfg.edge_timing[edge_index] = timing_rec + `SPI_MOSI_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_MOSI_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal SPI_MISO
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_MISO_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_MISO_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_MISO_0_wfg.waveform = timing_rec[56:63];
        SPI_MISO_0_wfg.signal = "SPI_MISO";
        SPI_MISO_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_MISO_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < SPI_MISO_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_MISO_0_wfg.edge_timing[edge_index] = timing_rec + `SPI_MISO_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_MISO_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal SPI_CS
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_CS_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_CS_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_CS_0_wfg.waveform = timing_rec[56:63];
        SPI_CS_0_wfg.signal = "SPI_CS";
        SPI_CS_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_CS_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < SPI_CS_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_CS_0_wfg.edge_timing[edge_index] = timing_rec + `SPI_CS_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_CS_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal SPI_CLK
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_CLK_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SPI_CLK_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_CLK_0_wfg.waveform = timing_rec[56:63];
        SPI_CLK_0_wfg.signal = "SPI_CLK";
        SPI_CLK_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SPI_CLK_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < SPI_CLK_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_CLK_0_wfg.edge_timing[edge_index] = timing_rec + `SPI_CLK_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SPI_CLK_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal I2C_SCL
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_I2C_SCL_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_I2C_SCL_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        I2C_SCL_0_wfg.waveform = timing_rec[56:63];
        I2C_SCL_0_wfg.signal = "I2C_SCL";
        I2C_SCL_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        I2C_SCL_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < I2C_SCL_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            I2C_SCL_0_wfg.edge_timing[edge_index] = timing_rec + `I2C_SCL_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            I2C_SCL_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal I2C_SDA
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_I2C_SDA_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_I2C_SDA_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        I2C_SDA_0_wfg.waveform = timing_rec[56:63];
        I2C_SDA_0_wfg.signal = "I2C_SDA";
        I2C_SDA_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        I2C_SDA_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < I2C_SDA_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            I2C_SDA_0_wfg.edge_timing[edge_index] = timing_rec + `I2C_SDA_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            I2C_SDA_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal JTAG_TCK
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TCK_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TCK_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TCK_0_wfg.waveform = timing_rec[56:63];
        JTAG_TCK_0_wfg.signal = "JTAG_TCK";
        JTAG_TCK_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TCK_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < JTAG_TCK_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TCK_0_wfg.edge_timing[edge_index] = timing_rec + `JTAG_TCK_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TCK_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal JTAG_TMS
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TMS_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TMS_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TMS_0_wfg.waveform = timing_rec[56:63];
        JTAG_TMS_0_wfg.signal = "JTAG_TMS";
        JTAG_TMS_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TMS_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < JTAG_TMS_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TMS_0_wfg.edge_timing[edge_index] = timing_rec + `JTAG_TMS_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TMS_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal JTAG_TDI
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TDI_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TDI_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TDI_0_wfg.waveform = timing_rec[56:63];
        JTAG_TDI_0_wfg.signal = "JTAG_TDI";
        JTAG_TDI_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TDI_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < JTAG_TDI_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TDI_0_wfg.edge_timing[edge_index] = timing_rec + `JTAG_TDI_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TDI_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal JTAG_TDO
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TDO_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TDO_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TDO_0_wfg.waveform = timing_rec[56:63];
        JTAG_TDO_0_wfg.signal = "JTAG_TDO";
        JTAG_TDO_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TDO_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < JTAG_TDO_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TDO_0_wfg.edge_timing[edge_index] = timing_rec + `JTAG_TDO_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TDO_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal JTAG_TRSTN
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TRSTN_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_JTAG_TRSTN_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TRSTN_0_wfg.waveform = timing_rec[56:63];
        JTAG_TRSTN_0_wfg.signal = "JTAG_TRSTN";
        JTAG_TRSTN_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        JTAG_TRSTN_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < JTAG_TRSTN_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TRSTN_0_wfg.edge_timing[edge_index] = timing_rec + `JTAG_TRSTN_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            JTAG_TRSTN_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal SWDIO
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SWDIO_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SWDIO_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SWDIO_0_wfg.waveform = timing_rec[56:63];
        SWDIO_0_wfg.signal = "SWDIO";
        SWDIO_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SWDIO_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < SWDIO_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SWDIO_0_wfg.edge_timing[edge_index] = timing_rec + `SWDIO_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SWDIO_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal SWCLK
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SWCLK_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_SWCLK_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SWCLK_0_wfg.waveform = timing_rec[56:63];
        SWCLK_0_wfg.signal = "SWCLK";
        SWCLK_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        SWCLK_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < SWCLK_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SWCLK_0_wfg.edge_timing[edge_index] = timing_rec + `SWCLK_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            SWCLK_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal clock
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_clock_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_clock_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        clock_0_wfg.waveform = timing_rec[56:63];
        clock_0_wfg.signal = "clock";
        clock_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        clock_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < clock_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            clock_0_wfg.edge_timing[edge_index] = timing_rec + `clock_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            clock_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal reset
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_reset_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_reset_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        reset_0_wfg.waveform = timing_rec[56:63];
        reset_0_wfg.signal = "reset";
        reset_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        reset_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < reset_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            reset_0_wfg.edge_timing[edge_index] = timing_rec + `reset_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            reset_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        reset_1_wfg.waveform = timing_rec[56:63];
        reset_1_wfg.signal = "reset";
        reset_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        reset_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < reset_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            reset_1_wfg.edge_timing[edge_index] = timing_rec + `reset_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            reset_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_in0
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in0_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in0_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in0_0_wfg.waveform = timing_rec[56:63];
        scan_in0_0_wfg.signal = "scan_in0";
        scan_in0_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in0_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in0_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in0_0_wfg.edge_timing[edge_index] = timing_rec + `scan_in0_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in0_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in0_1_wfg.waveform = timing_rec[56:63];
        scan_in0_1_wfg.signal = "scan_in0";
        scan_in0_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in0_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in0_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in0_1_wfg.edge_timing[edge_index] = timing_rec + `scan_in0_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in0_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_in1
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in1_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in1_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in1_0_wfg.waveform = timing_rec[56:63];
        scan_in1_0_wfg.signal = "scan_in1";
        scan_in1_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in1_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in1_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in1_0_wfg.edge_timing[edge_index] = timing_rec + `scan_in1_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in1_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in1_1_wfg.waveform = timing_rec[56:63];
        scan_in1_1_wfg.signal = "scan_in1";
        scan_in1_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in1_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in1_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in1_1_wfg.edge_timing[edge_index] = timing_rec + `scan_in1_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in1_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_in2
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in2_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in2_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in2_0_wfg.waveform = timing_rec[56:63];
        scan_in2_0_wfg.signal = "scan_in2";
        scan_in2_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in2_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in2_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in2_0_wfg.edge_timing[edge_index] = timing_rec + `scan_in2_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in2_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in2_1_wfg.waveform = timing_rec[56:63];
        scan_in2_1_wfg.signal = "scan_in2";
        scan_in2_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in2_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in2_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in2_1_wfg.edge_timing[edge_index] = timing_rec + `scan_in2_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in2_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_in3
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in3_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_in3_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in3_0_wfg.waveform = timing_rec[56:63];
        scan_in3_0_wfg.signal = "scan_in3";
        scan_in3_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in3_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in3_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in3_0_wfg.edge_timing[edge_index] = timing_rec + `scan_in3_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in3_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in3_1_wfg.waveform = timing_rec[56:63];
        scan_in3_1_wfg.signal = "scan_in3";
        scan_in3_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_in3_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_in3_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in3_1_wfg.edge_timing[edge_index] = timing_rec + `scan_in3_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_in3_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_out0
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out0_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out0_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out0_0_wfg.waveform = timing_rec[56:63];
        scan_out0_0_wfg.signal = "scan_out0";
        scan_out0_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out0_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out0_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out0_0_wfg.edge_timing[edge_index] = timing_rec + `scan_out0_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out0_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out0_1_wfg.waveform = timing_rec[56:63];
        scan_out0_1_wfg.signal = "scan_out0";
        scan_out0_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out0_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out0_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out0_1_wfg.edge_timing[edge_index] = timing_rec + `scan_out0_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out0_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out0_2_wfg.waveform = timing_rec[56:63];
        scan_out0_2_wfg.signal = "scan_out0";
        scan_out0_2_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out0_2_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out0_2_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out0_2_wfg.edge_timing[edge_index] = timing_rec + `scan_out0_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out0_2_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_out1
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out1_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out1_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out1_0_wfg.waveform = timing_rec[56:63];
        scan_out1_0_wfg.signal = "scan_out1";
        scan_out1_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out1_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out1_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out1_0_wfg.edge_timing[edge_index] = timing_rec + `scan_out1_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out1_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out1_1_wfg.waveform = timing_rec[56:63];
        scan_out1_1_wfg.signal = "scan_out1";
        scan_out1_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out1_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out1_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out1_1_wfg.edge_timing[edge_index] = timing_rec + `scan_out1_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out1_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out1_2_wfg.waveform = timing_rec[56:63];
        scan_out1_2_wfg.signal = "scan_out1";
        scan_out1_2_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out1_2_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out1_2_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out1_2_wfg.edge_timing[edge_index] = timing_rec + `scan_out1_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out1_2_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_out2
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out2_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out2_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out2_0_wfg.waveform = timing_rec[56:63];
        scan_out2_0_wfg.signal = "scan_out2";
        scan_out2_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out2_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out2_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out2_0_wfg.edge_timing[edge_index] = timing_rec + `scan_out2_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out2_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out2_1_wfg.waveform = timing_rec[56:63];
        scan_out2_1_wfg.signal = "scan_out2";
        scan_out2_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out2_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out2_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out2_1_wfg.edge_timing[edge_index] = timing_rec + `scan_out2_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out2_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out2_2_wfg.waveform = timing_rec[56:63];
        scan_out2_2_wfg.signal = "scan_out2";
        scan_out2_2_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out2_2_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out2_2_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out2_2_wfg.edge_timing[edge_index] = timing_rec + `scan_out2_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out2_2_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        // Signal scan_out3
        timing_fp = $fopen({`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out3_pin_timing.bin"},"r");
        if(timing_fp == 0) begin
            `VTW_LOGGING.error_message({"can't load signal timing from ",`VTW_TEST_MEMORY_DIR,"/timing/Pattern0_scan_out3_pin_timing.bin"});
            $finish;
        end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out3_0_wfg.waveform = timing_rec[56:63];
        scan_out3_0_wfg.signal = "scan_out3";
        scan_out3_0_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out3_0_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out3_0_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out3_0_wfg.edge_timing[edge_index] = timing_rec + `scan_out3_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out3_0_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out3_1_wfg.waveform = timing_rec[56:63];
        scan_out3_1_wfg.signal = "scan_out3";
        scan_out3_1_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out3_1_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out3_1_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out3_1_wfg.edge_timing[edge_index] = timing_rec + `scan_out3_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out3_1_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out3_2_wfg.waveform = timing_rec[56:63];
        scan_out3_2_wfg.signal = "scan_out3";
        scan_out3_2_wfg.pattern = pat_name;
        timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
        scan_out3_2_wfg.edge_num = timing_rec;
        for(edge_index=0; edge_index < scan_out3_2_wfg.edge_num; edge_index=edge_index+1)
          begin
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out3_2_wfg.edge_timing[edge_index] = timing_rec + `scan_out3_BOARD_DELAY;
            timing_read_cnt = $fscanf(timing_fp,"%x\n",timing_rec);
            scan_out3_2_wfg.edge_info[edge_index] = timing_rec[52:63];
          end
        
        $fclose(timing_fp);
        
        initialized = `VTW_TRUE;
      end
    end
  endtask
  // Signal SPI_MOSI driver control
  always @(SPI_MOSI_0_wfg.driver_on)
    `VTW_TESTER.SPI_MOSI_driver = `VTW_TRUE;
  always @(SPI_MOSI_0_wfg.driver_off)
    `VTW_TESTER.SPI_MOSI_driver = `VTW_FALSE;
  always @(SPI_MOSI_0_wfg.drive0)
    `VTW_TESTER.SPI_MOSI_driver_data = 1'b0;
  always @(SPI_MOSI_0_wfg.drive1)
    `VTW_TESTER.SPI_MOSI_driver_data = 1'b1;
  
  // Signal SPI_MISO driver control
  always @(SPI_MISO_0_wfg.driver_on)
    `VTW_TESTER.SPI_MISO_driver = `VTW_TRUE;
  always @(SPI_MISO_0_wfg.driver_off)
    `VTW_TESTER.SPI_MISO_driver = `VTW_FALSE;
  always @(SPI_MISO_0_wfg.drive0)
    `VTW_TESTER.SPI_MISO_driver_data = 1'b0;
  always @(SPI_MISO_0_wfg.drive1)
    `VTW_TESTER.SPI_MISO_driver_data = 1'b1;
  
  // Signal SPI_CS driver control
  always @(SPI_CS_0_wfg.driver_on)
    `VTW_TESTER.SPI_CS_driver = `VTW_TRUE;
  always @(SPI_CS_0_wfg.driver_off)
    `VTW_TESTER.SPI_CS_driver = `VTW_FALSE;
  always @(SPI_CS_0_wfg.drive0)
    `VTW_TESTER.SPI_CS_driver_data = 1'b0;
  always @(SPI_CS_0_wfg.drive1)
    `VTW_TESTER.SPI_CS_driver_data = 1'b1;
  
  // Signal SPI_CLK driver control
  always @(SPI_CLK_0_wfg.driver_on)
    `VTW_TESTER.SPI_CLK_driver = `VTW_TRUE;
  always @(SPI_CLK_0_wfg.driver_off)
    `VTW_TESTER.SPI_CLK_driver = `VTW_FALSE;
  always @(SPI_CLK_0_wfg.drive0)
    `VTW_TESTER.SPI_CLK_driver_data = 1'b0;
  always @(SPI_CLK_0_wfg.drive1)
    `VTW_TESTER.SPI_CLK_driver_data = 1'b1;
  
  // Signal I2C_SCL driver control
  always @(I2C_SCL_0_wfg.driver_on)
    `VTW_TESTER.I2C_SCL_driver = `VTW_TRUE;
  always @(I2C_SCL_0_wfg.driver_off)
    `VTW_TESTER.I2C_SCL_driver = `VTW_FALSE;
  always @(I2C_SCL_0_wfg.drive0)
    `VTW_TESTER.I2C_SCL_driver_data = 1'b0;
  always @(I2C_SCL_0_wfg.drive1)
    `VTW_TESTER.I2C_SCL_driver_data = 1'b1;
  
  // Signal I2C_SDA driver control
  always @(I2C_SDA_0_wfg.driver_on)
    `VTW_TESTER.I2C_SDA_driver = `VTW_TRUE;
  always @(I2C_SDA_0_wfg.driver_off)
    `VTW_TESTER.I2C_SDA_driver = `VTW_FALSE;
  always @(I2C_SDA_0_wfg.drive0)
    `VTW_TESTER.I2C_SDA_driver_data = 1'b0;
  always @(I2C_SDA_0_wfg.drive1)
    `VTW_TESTER.I2C_SDA_driver_data = 1'b1;
  
  // Signal JTAG_TCK driver control
  always @(JTAG_TCK_0_wfg.driver_on)
    `VTW_TESTER.JTAG_TCK_driver = `VTW_TRUE;
  always @(JTAG_TCK_0_wfg.driver_off)
    `VTW_TESTER.JTAG_TCK_driver = `VTW_FALSE;
  always @(JTAG_TCK_0_wfg.drive0)
    `VTW_TESTER.JTAG_TCK_driver_data = 1'b0;
  always @(JTAG_TCK_0_wfg.drive1)
    `VTW_TESTER.JTAG_TCK_driver_data = 1'b1;
  
  // Signal JTAG_TMS driver control
  always @(JTAG_TMS_0_wfg.driver_on)
    `VTW_TESTER.JTAG_TMS_driver = `VTW_TRUE;
  always @(JTAG_TMS_0_wfg.driver_off)
    `VTW_TESTER.JTAG_TMS_driver = `VTW_FALSE;
  always @(JTAG_TMS_0_wfg.drive0)
    `VTW_TESTER.JTAG_TMS_driver_data = 1'b0;
  always @(JTAG_TMS_0_wfg.drive1)
    `VTW_TESTER.JTAG_TMS_driver_data = 1'b1;
  
  // Signal JTAG_TDI driver control
  always @(JTAG_TDI_0_wfg.driver_on)
    `VTW_TESTER.JTAG_TDI_driver = `VTW_TRUE;
  always @(JTAG_TDI_0_wfg.driver_off)
    `VTW_TESTER.JTAG_TDI_driver = `VTW_FALSE;
  always @(JTAG_TDI_0_wfg.drive0)
    `VTW_TESTER.JTAG_TDI_driver_data = 1'b0;
  always @(JTAG_TDI_0_wfg.drive1)
    `VTW_TESTER.JTAG_TDI_driver_data = 1'b1;
  
  // Signal JTAG_TDO driver control
  always @(JTAG_TDO_0_wfg.driver_on)
    `VTW_TESTER.JTAG_TDO_driver = `VTW_TRUE;
  always @(JTAG_TDO_0_wfg.driver_off)
    `VTW_TESTER.JTAG_TDO_driver = `VTW_FALSE;
  always @(JTAG_TDO_0_wfg.drive0)
    `VTW_TESTER.JTAG_TDO_driver_data = 1'b0;
  always @(JTAG_TDO_0_wfg.drive1)
    `VTW_TESTER.JTAG_TDO_driver_data = 1'b1;
  
  // Signal JTAG_TRSTN driver control
  always @(JTAG_TRSTN_0_wfg.driver_on)
    `VTW_TESTER.JTAG_TRSTN_driver = `VTW_TRUE;
  always @(JTAG_TRSTN_0_wfg.driver_off)
    `VTW_TESTER.JTAG_TRSTN_driver = `VTW_FALSE;
  always @(JTAG_TRSTN_0_wfg.drive0)
    `VTW_TESTER.JTAG_TRSTN_driver_data = 1'b0;
  always @(JTAG_TRSTN_0_wfg.drive1)
    `VTW_TESTER.JTAG_TRSTN_driver_data = 1'b1;
  
  // Signal SWDIO driver control
  always @(SWDIO_0_wfg.driver_on)
    `VTW_TESTER.SWDIO_driver = `VTW_TRUE;
  always @(SWDIO_0_wfg.driver_off)
    `VTW_TESTER.SWDIO_driver = `VTW_FALSE;
  always @(SWDIO_0_wfg.drive0)
    `VTW_TESTER.SWDIO_driver_data = 1'b0;
  always @(SWDIO_0_wfg.drive1)
    `VTW_TESTER.SWDIO_driver_data = 1'b1;
  
  // Signal SWCLK driver control
  always @(SWCLK_0_wfg.driver_on)
    `VTW_TESTER.SWCLK_driver = `VTW_TRUE;
  always @(SWCLK_0_wfg.driver_off)
    `VTW_TESTER.SWCLK_driver = `VTW_FALSE;
  always @(SWCLK_0_wfg.drive0)
    `VTW_TESTER.SWCLK_driver_data = 1'b0;
  always @(SWCLK_0_wfg.drive1)
    `VTW_TESTER.SWCLK_driver_data = 1'b1;
  
  // Signal clock driver control
  always @(clock_0_wfg.driver_on)
    `VTW_TESTER.clock_driver = `VTW_TRUE;
  always @(clock_0_wfg.driver_off)
    `VTW_TESTER.clock_driver = `VTW_FALSE;
  always @(clock_0_wfg.drive0)
    `VTW_TESTER.clock_driver_data = 1'b0;
  always @(clock_0_wfg.drive1)
    `VTW_TESTER.clock_driver_data = 1'b1;
  
  // Signal reset driver control
  always @(reset_0_wfg.driver_on)
    `VTW_TESTER.reset_driver = `VTW_TRUE;
  always @(reset_0_wfg.driver_off)
    `VTW_TESTER.reset_driver = `VTW_FALSE;
  always @(reset_0_wfg.drive0)
    `VTW_TESTER.reset_driver_data = 1'b0;
  always @(reset_0_wfg.drive1)
    `VTW_TESTER.reset_driver_data = 1'b1;
  always @(reset_1_wfg.driver_on)
    `VTW_TESTER.reset_driver = `VTW_TRUE;
  always @(reset_1_wfg.driver_off)
    `VTW_TESTER.reset_driver = `VTW_FALSE;
  always @(reset_1_wfg.drive0)
    `VTW_TESTER.reset_driver_data = 1'b0;
  always @(reset_1_wfg.drive1)
    `VTW_TESTER.reset_driver_data = 1'b1;
  
  // Signal scan_in0 driver control
  always @(scan_in0_0_wfg.driver_on)
    `VTW_TESTER.scan_in0_driver = `VTW_TRUE;
  always @(scan_in0_0_wfg.driver_off)
    `VTW_TESTER.scan_in0_driver = `VTW_FALSE;
  always @(scan_in0_0_wfg.drive0)
    `VTW_TESTER.scan_in0_driver_data = 1'b0;
  always @(scan_in0_0_wfg.drive1)
    `VTW_TESTER.scan_in0_driver_data = 1'b1;
  always @(scan_in0_1_wfg.driver_on)
    `VTW_TESTER.scan_in0_driver = `VTW_TRUE;
  always @(scan_in0_1_wfg.driver_off)
    `VTW_TESTER.scan_in0_driver = `VTW_FALSE;
  always @(scan_in0_1_wfg.drive0)
    `VTW_TESTER.scan_in0_driver_data = 1'b0;
  always @(scan_in0_1_wfg.drive1)
    `VTW_TESTER.scan_in0_driver_data = 1'b1;
  
  // Signal scan_in1 driver control
  always @(scan_in1_0_wfg.driver_on)
    `VTW_TESTER.scan_in1_driver = `VTW_TRUE;
  always @(scan_in1_0_wfg.driver_off)
    `VTW_TESTER.scan_in1_driver = `VTW_FALSE;
  always @(scan_in1_0_wfg.drive0)
    `VTW_TESTER.scan_in1_driver_data = 1'b0;
  always @(scan_in1_0_wfg.drive1)
    `VTW_TESTER.scan_in1_driver_data = 1'b1;
  always @(scan_in1_1_wfg.driver_on)
    `VTW_TESTER.scan_in1_driver = `VTW_TRUE;
  always @(scan_in1_1_wfg.driver_off)
    `VTW_TESTER.scan_in1_driver = `VTW_FALSE;
  always @(scan_in1_1_wfg.drive0)
    `VTW_TESTER.scan_in1_driver_data = 1'b0;
  always @(scan_in1_1_wfg.drive1)
    `VTW_TESTER.scan_in1_driver_data = 1'b1;
  
  // Signal scan_in2 driver control
  always @(scan_in2_0_wfg.driver_on)
    `VTW_TESTER.scan_in2_driver = `VTW_TRUE;
  always @(scan_in2_0_wfg.driver_off)
    `VTW_TESTER.scan_in2_driver = `VTW_FALSE;
  always @(scan_in2_0_wfg.drive0)
    `VTW_TESTER.scan_in2_driver_data = 1'b0;
  always @(scan_in2_0_wfg.drive1)
    `VTW_TESTER.scan_in2_driver_data = 1'b1;
  always @(scan_in2_1_wfg.driver_on)
    `VTW_TESTER.scan_in2_driver = `VTW_TRUE;
  always @(scan_in2_1_wfg.driver_off)
    `VTW_TESTER.scan_in2_driver = `VTW_FALSE;
  always @(scan_in2_1_wfg.drive0)
    `VTW_TESTER.scan_in2_driver_data = 1'b0;
  always @(scan_in2_1_wfg.drive1)
    `VTW_TESTER.scan_in2_driver_data = 1'b1;
  
  // Signal scan_in3 driver control
  always @(scan_in3_0_wfg.driver_on)
    `VTW_TESTER.scan_in3_driver = `VTW_TRUE;
  always @(scan_in3_0_wfg.driver_off)
    `VTW_TESTER.scan_in3_driver = `VTW_FALSE;
  always @(scan_in3_0_wfg.drive0)
    `VTW_TESTER.scan_in3_driver_data = 1'b0;
  always @(scan_in3_0_wfg.drive1)
    `VTW_TESTER.scan_in3_driver_data = 1'b1;
  always @(scan_in3_1_wfg.driver_on)
    `VTW_TESTER.scan_in3_driver = `VTW_TRUE;
  always @(scan_in3_1_wfg.driver_off)
    `VTW_TESTER.scan_in3_driver = `VTW_FALSE;
  always @(scan_in3_1_wfg.drive0)
    `VTW_TESTER.scan_in3_driver_data = 1'b0;
  always @(scan_in3_1_wfg.drive1)
    `VTW_TESTER.scan_in3_driver_data = 1'b1;
  
  // Signal scan_out0 driver control
  always @(scan_out0_0_wfg.driver_on)
    `VTW_TESTER.scan_out0_driver = `VTW_TRUE;
  always @(scan_out0_0_wfg.driver_off)
    `VTW_TESTER.scan_out0_driver = `VTW_FALSE;
  always @(scan_out0_0_wfg.drive0)
    `VTW_TESTER.scan_out0_driver_data = 1'b0;
  always @(scan_out0_0_wfg.drive1)
    `VTW_TESTER.scan_out0_driver_data = 1'b1;
  always @(scan_out0_1_wfg.driver_on)
    `VTW_TESTER.scan_out0_driver = `VTW_TRUE;
  always @(scan_out0_1_wfg.driver_off)
    `VTW_TESTER.scan_out0_driver = `VTW_FALSE;
  always @(scan_out0_1_wfg.drive0)
    `VTW_TESTER.scan_out0_driver_data = 1'b0;
  always @(scan_out0_1_wfg.drive1)
    `VTW_TESTER.scan_out0_driver_data = 1'b1;
  always @(scan_out0_2_wfg.driver_on)
    `VTW_TESTER.scan_out0_driver = `VTW_TRUE;
  always @(scan_out0_2_wfg.driver_off)
    `VTW_TESTER.scan_out0_driver = `VTW_FALSE;
  always @(scan_out0_2_wfg.drive0)
    `VTW_TESTER.scan_out0_driver_data = 1'b0;
  always @(scan_out0_2_wfg.drive1)
    `VTW_TESTER.scan_out0_driver_data = 1'b1;
  
  // Signal scan_out1 driver control
  always @(scan_out1_0_wfg.driver_on)
    `VTW_TESTER.scan_out1_driver = `VTW_TRUE;
  always @(scan_out1_0_wfg.driver_off)
    `VTW_TESTER.scan_out1_driver = `VTW_FALSE;
  always @(scan_out1_0_wfg.drive0)
    `VTW_TESTER.scan_out1_driver_data = 1'b0;
  always @(scan_out1_0_wfg.drive1)
    `VTW_TESTER.scan_out1_driver_data = 1'b1;
  always @(scan_out1_1_wfg.driver_on)
    `VTW_TESTER.scan_out1_driver = `VTW_TRUE;
  always @(scan_out1_1_wfg.driver_off)
    `VTW_TESTER.scan_out1_driver = `VTW_FALSE;
  always @(scan_out1_1_wfg.drive0)
    `VTW_TESTER.scan_out1_driver_data = 1'b0;
  always @(scan_out1_1_wfg.drive1)
    `VTW_TESTER.scan_out1_driver_data = 1'b1;
  always @(scan_out1_2_wfg.driver_on)
    `VTW_TESTER.scan_out1_driver = `VTW_TRUE;
  always @(scan_out1_2_wfg.driver_off)
    `VTW_TESTER.scan_out1_driver = `VTW_FALSE;
  always @(scan_out1_2_wfg.drive0)
    `VTW_TESTER.scan_out1_driver_data = 1'b0;
  always @(scan_out1_2_wfg.drive1)
    `VTW_TESTER.scan_out1_driver_data = 1'b1;
  
  // Signal scan_out2 driver control
  always @(scan_out2_0_wfg.driver_on)
    `VTW_TESTER.scan_out2_driver = `VTW_TRUE;
  always @(scan_out2_0_wfg.driver_off)
    `VTW_TESTER.scan_out2_driver = `VTW_FALSE;
  always @(scan_out2_0_wfg.drive0)
    `VTW_TESTER.scan_out2_driver_data = 1'b0;
  always @(scan_out2_0_wfg.drive1)
    `VTW_TESTER.scan_out2_driver_data = 1'b1;
  always @(scan_out2_1_wfg.driver_on)
    `VTW_TESTER.scan_out2_driver = `VTW_TRUE;
  always @(scan_out2_1_wfg.driver_off)
    `VTW_TESTER.scan_out2_driver = `VTW_FALSE;
  always @(scan_out2_1_wfg.drive0)
    `VTW_TESTER.scan_out2_driver_data = 1'b0;
  always @(scan_out2_1_wfg.drive1)
    `VTW_TESTER.scan_out2_driver_data = 1'b1;
  always @(scan_out2_2_wfg.driver_on)
    `VTW_TESTER.scan_out2_driver = `VTW_TRUE;
  always @(scan_out2_2_wfg.driver_off)
    `VTW_TESTER.scan_out2_driver = `VTW_FALSE;
  always @(scan_out2_2_wfg.drive0)
    `VTW_TESTER.scan_out2_driver_data = 1'b0;
  always @(scan_out2_2_wfg.drive1)
    `VTW_TESTER.scan_out2_driver_data = 1'b1;
  
  // Signal scan_out3 driver control
  always @(scan_out3_0_wfg.driver_on)
    `VTW_TESTER.scan_out3_driver = `VTW_TRUE;
  always @(scan_out3_0_wfg.driver_off)
    `VTW_TESTER.scan_out3_driver = `VTW_FALSE;
  always @(scan_out3_0_wfg.drive0)
    `VTW_TESTER.scan_out3_driver_data = 1'b0;
  always @(scan_out3_0_wfg.drive1)
    `VTW_TESTER.scan_out3_driver_data = 1'b1;
  always @(scan_out3_1_wfg.driver_on)
    `VTW_TESTER.scan_out3_driver = `VTW_TRUE;
  always @(scan_out3_1_wfg.driver_off)
    `VTW_TESTER.scan_out3_driver = `VTW_FALSE;
  always @(scan_out3_1_wfg.drive0)
    `VTW_TESTER.scan_out3_driver_data = 1'b0;
  always @(scan_out3_1_wfg.drive1)
    `VTW_TESTER.scan_out3_driver_data = 1'b1;
  always @(scan_out3_2_wfg.driver_on)
    `VTW_TESTER.scan_out3_driver = `VTW_TRUE;
  always @(scan_out3_2_wfg.driver_off)
    `VTW_TESTER.scan_out3_driver = `VTW_FALSE;
  always @(scan_out3_2_wfg.drive0)
    `VTW_TESTER.scan_out3_driver_data = 1'b0;
  always @(scan_out3_2_wfg.drive1)
    `VTW_TESTER.scan_out3_driver_data = 1'b1;
  
  // Signal SPI_MOSI expected control
  always @(negedge `VTW_TESTER.SPI_MOSI_comparator)
    begin
      if(`VTW_TESTER.SPI_MOSI_comparator === 1'b0)
        `VTW_TESTER.SPI_MOSI_expected = 1'bx;
    end
  always @(SPI_MOSI_0_wfg.expected)
    begin
      `VTW_TESTER.SPI_MOSI_expected = SPI_MOSI_0_wfg.expected;
    end
  
  // Signal SPI_MISO expected control
  always @(negedge `VTW_TESTER.SPI_MISO_comparator)
    begin
      if(`VTW_TESTER.SPI_MISO_comparator === 1'b0)
        `VTW_TESTER.SPI_MISO_expected = 1'bx;
    end
  always @(SPI_MISO_0_wfg.expected)
    begin
      `VTW_TESTER.SPI_MISO_expected = SPI_MISO_0_wfg.expected;
    end
  
  // Signal SPI_CS expected control
  always @(negedge `VTW_TESTER.SPI_CS_comparator)
    begin
      if(`VTW_TESTER.SPI_CS_comparator === 1'b0)
        `VTW_TESTER.SPI_CS_expected = 1'bx;
    end
  always @(SPI_CS_0_wfg.expected)
    begin
      `VTW_TESTER.SPI_CS_expected = SPI_CS_0_wfg.expected;
    end
  
  // Signal SPI_CLK expected control
  always @(negedge `VTW_TESTER.SPI_CLK_comparator)
    begin
      if(`VTW_TESTER.SPI_CLK_comparator === 1'b0)
        `VTW_TESTER.SPI_CLK_expected = 1'bx;
    end
  always @(SPI_CLK_0_wfg.expected)
    begin
      `VTW_TESTER.SPI_CLK_expected = SPI_CLK_0_wfg.expected;
    end
  
  // Signal I2C_SCL expected control
  always @(negedge `VTW_TESTER.I2C_SCL_comparator)
    begin
      if(`VTW_TESTER.I2C_SCL_comparator === 1'b0)
        `VTW_TESTER.I2C_SCL_expected = 1'bx;
    end
  always @(I2C_SCL_0_wfg.expected)
    begin
      `VTW_TESTER.I2C_SCL_expected = I2C_SCL_0_wfg.expected;
    end
  
  // Signal I2C_SDA expected control
  always @(negedge `VTW_TESTER.I2C_SDA_comparator)
    begin
      if(`VTW_TESTER.I2C_SDA_comparator === 1'b0)
        `VTW_TESTER.I2C_SDA_expected = 1'bx;
    end
  always @(I2C_SDA_0_wfg.expected)
    begin
      `VTW_TESTER.I2C_SDA_expected = I2C_SDA_0_wfg.expected;
    end
  
  // Signal JTAG_TCK expected control
  always @(negedge `VTW_TESTER.JTAG_TCK_comparator)
    begin
      if(`VTW_TESTER.JTAG_TCK_comparator === 1'b0)
        `VTW_TESTER.JTAG_TCK_expected = 1'bx;
    end
  always @(JTAG_TCK_0_wfg.expected)
    begin
      `VTW_TESTER.JTAG_TCK_expected = JTAG_TCK_0_wfg.expected;
    end
  
  // Signal JTAG_TMS expected control
  always @(negedge `VTW_TESTER.JTAG_TMS_comparator)
    begin
      if(`VTW_TESTER.JTAG_TMS_comparator === 1'b0)
        `VTW_TESTER.JTAG_TMS_expected = 1'bx;
    end
  always @(JTAG_TMS_0_wfg.expected)
    begin
      `VTW_TESTER.JTAG_TMS_expected = JTAG_TMS_0_wfg.expected;
    end
  
  // Signal JTAG_TDI expected control
  always @(negedge `VTW_TESTER.JTAG_TDI_comparator)
    begin
      if(`VTW_TESTER.JTAG_TDI_comparator === 1'b0)
        `VTW_TESTER.JTAG_TDI_expected = 1'bx;
    end
  always @(JTAG_TDI_0_wfg.expected)
    begin
      `VTW_TESTER.JTAG_TDI_expected = JTAG_TDI_0_wfg.expected;
    end
  
  // Signal JTAG_TDO expected control
  always @(negedge `VTW_TESTER.JTAG_TDO_comparator)
    begin
      if(`VTW_TESTER.JTAG_TDO_comparator === 1'b0)
        `VTW_TESTER.JTAG_TDO_expected = 1'bx;
    end
  always @(JTAG_TDO_0_wfg.expected)
    begin
      `VTW_TESTER.JTAG_TDO_expected = JTAG_TDO_0_wfg.expected;
    end
  
  // Signal JTAG_TRSTN expected control
  always @(negedge `VTW_TESTER.JTAG_TRSTN_comparator)
    begin
      if(`VTW_TESTER.JTAG_TRSTN_comparator === 1'b0)
        `VTW_TESTER.JTAG_TRSTN_expected = 1'bx;
    end
  always @(JTAG_TRSTN_0_wfg.expected)
    begin
      `VTW_TESTER.JTAG_TRSTN_expected = JTAG_TRSTN_0_wfg.expected;
    end
  
  // Signal SWDIO expected control
  always @(negedge `VTW_TESTER.SWDIO_comparator)
    begin
      if(`VTW_TESTER.SWDIO_comparator === 1'b0)
        `VTW_TESTER.SWDIO_expected = 1'bx;
    end
  always @(SWDIO_0_wfg.expected)
    begin
      `VTW_TESTER.SWDIO_expected = SWDIO_0_wfg.expected;
    end
  
  // Signal SWCLK expected control
  always @(negedge `VTW_TESTER.SWCLK_comparator)
    begin
      if(`VTW_TESTER.SWCLK_comparator === 1'b0)
        `VTW_TESTER.SWCLK_expected = 1'bx;
    end
  always @(SWCLK_0_wfg.expected)
    begin
      `VTW_TESTER.SWCLK_expected = SWCLK_0_wfg.expected;
    end
  
  // Signal clock expected control
  always @(negedge `VTW_TESTER.clock_comparator)
    begin
      if(`VTW_TESTER.clock_comparator === 1'b0)
        `VTW_TESTER.clock_expected = 1'bx;
    end
  always @(clock_0_wfg.expected)
    begin
      `VTW_TESTER.clock_expected = clock_0_wfg.expected;
    end
  
  // Signal reset expected control
  always @(negedge `VTW_TESTER.reset_comparator)
    begin
      if(`VTW_TESTER.reset_comparator === 1'b0)
        `VTW_TESTER.reset_expected = 1'bx;
    end
  always @(reset_0_wfg.expected)
    begin
      `VTW_TESTER.reset_expected = reset_0_wfg.expected;
    end
  always @(reset_1_wfg.expected)
    begin
      `VTW_TESTER.reset_expected = reset_1_wfg.expected;
    end
  
  // Signal scan_in0 expected control
  always @(negedge `VTW_TESTER.scan_in0_comparator)
    begin
      if(`VTW_TESTER.scan_in0_comparator === 1'b0)
        `VTW_TESTER.scan_in0_expected = 1'bx;
    end
  always @(scan_in0_0_wfg.expected)
    begin
      `VTW_TESTER.scan_in0_expected = scan_in0_0_wfg.expected;
    end
  always @(scan_in0_1_wfg.expected)
    begin
      `VTW_TESTER.scan_in0_expected = scan_in0_1_wfg.expected;
    end
  
  // Signal scan_in1 expected control
  always @(negedge `VTW_TESTER.scan_in1_comparator)
    begin
      if(`VTW_TESTER.scan_in1_comparator === 1'b0)
        `VTW_TESTER.scan_in1_expected = 1'bx;
    end
  always @(scan_in1_0_wfg.expected)
    begin
      `VTW_TESTER.scan_in1_expected = scan_in1_0_wfg.expected;
    end
  always @(scan_in1_1_wfg.expected)
    begin
      `VTW_TESTER.scan_in1_expected = scan_in1_1_wfg.expected;
    end
  
  // Signal scan_in2 expected control
  always @(negedge `VTW_TESTER.scan_in2_comparator)
    begin
      if(`VTW_TESTER.scan_in2_comparator === 1'b0)
        `VTW_TESTER.scan_in2_expected = 1'bx;
    end
  always @(scan_in2_0_wfg.expected)
    begin
      `VTW_TESTER.scan_in2_expected = scan_in2_0_wfg.expected;
    end
  always @(scan_in2_1_wfg.expected)
    begin
      `VTW_TESTER.scan_in2_expected = scan_in2_1_wfg.expected;
    end
  
  // Signal scan_in3 expected control
  always @(negedge `VTW_TESTER.scan_in3_comparator)
    begin
      if(`VTW_TESTER.scan_in3_comparator === 1'b0)
        `VTW_TESTER.scan_in3_expected = 1'bx;
    end
  always @(scan_in3_0_wfg.expected)
    begin
      `VTW_TESTER.scan_in3_expected = scan_in3_0_wfg.expected;
    end
  always @(scan_in3_1_wfg.expected)
    begin
      `VTW_TESTER.scan_in3_expected = scan_in3_1_wfg.expected;
    end
  
  // Signal scan_out0 expected control
  always @(negedge `VTW_TESTER.scan_out0_comparator)
    begin
      if(`VTW_TESTER.scan_out0_comparator === 1'b0)
        `VTW_TESTER.scan_out0_expected = 1'bx;
    end
  always @(scan_out0_0_wfg.expected)
    begin
      `VTW_TESTER.scan_out0_expected = scan_out0_0_wfg.expected;
    end
  always @(scan_out0_1_wfg.expected)
    begin
      `VTW_TESTER.scan_out0_expected = scan_out0_1_wfg.expected;
    end
  always @(scan_out0_2_wfg.expected)
    begin
      `VTW_TESTER.scan_out0_expected = scan_out0_2_wfg.expected;
    end
  
  // Signal scan_out1 expected control
  always @(negedge `VTW_TESTER.scan_out1_comparator)
    begin
      if(`VTW_TESTER.scan_out1_comparator === 1'b0)
        `VTW_TESTER.scan_out1_expected = 1'bx;
    end
  always @(scan_out1_0_wfg.expected)
    begin
      `VTW_TESTER.scan_out1_expected = scan_out1_0_wfg.expected;
    end
  always @(scan_out1_1_wfg.expected)
    begin
      `VTW_TESTER.scan_out1_expected = scan_out1_1_wfg.expected;
    end
  always @(scan_out1_2_wfg.expected)
    begin
      `VTW_TESTER.scan_out1_expected = scan_out1_2_wfg.expected;
    end
  
  // Signal scan_out2 expected control
  always @(negedge `VTW_TESTER.scan_out2_comparator)
    begin
      if(`VTW_TESTER.scan_out2_comparator === 1'b0)
        `VTW_TESTER.scan_out2_expected = 1'bx;
    end
  always @(scan_out2_0_wfg.expected)
    begin
      `VTW_TESTER.scan_out2_expected = scan_out2_0_wfg.expected;
    end
  always @(scan_out2_1_wfg.expected)
    begin
      `VTW_TESTER.scan_out2_expected = scan_out2_1_wfg.expected;
    end
  always @(scan_out2_2_wfg.expected)
    begin
      `VTW_TESTER.scan_out2_expected = scan_out2_2_wfg.expected;
    end
  
  // Signal scan_out3 expected control
  always @(negedge `VTW_TESTER.scan_out3_comparator)
    begin
      if(`VTW_TESTER.scan_out3_comparator === 1'b0)
        `VTW_TESTER.scan_out3_expected = 1'bx;
    end
  always @(scan_out3_0_wfg.expected)
    begin
      `VTW_TESTER.scan_out3_expected = scan_out3_0_wfg.expected;
    end
  always @(scan_out3_1_wfg.expected)
    begin
      `VTW_TESTER.scan_out3_expected = scan_out3_1_wfg.expected;
    end
  always @(scan_out3_2_wfg.expected)
    begin
      `VTW_TESTER.scan_out3_expected = scan_out3_2_wfg.expected;
    end
  
  // Signal SPI_MOSI comparator signal
  assign (strong1,weak0) SPI_MOSI_tester_comparator = SPI_MOSI_0_wfg.compare;
  always @(SPI_MOSI_tester_comparator)
    begin
      `VTW_TESTER.SPI_MOSI_comparator = SPI_MOSI_tester_comparator;
    end
  
  // Signal SPI_MISO comparator signal
  assign (strong1,weak0) SPI_MISO_tester_comparator = SPI_MISO_0_wfg.compare;
  always @(SPI_MISO_tester_comparator)
    begin
      `VTW_TESTER.SPI_MISO_comparator = SPI_MISO_tester_comparator;
    end
  
  // Signal SPI_CS comparator signal
  assign (strong1,weak0) SPI_CS_tester_comparator = SPI_CS_0_wfg.compare;
  always @(SPI_CS_tester_comparator)
    begin
      `VTW_TESTER.SPI_CS_comparator = SPI_CS_tester_comparator;
    end
  
  // Signal SPI_CLK comparator signal
  assign (strong1,weak0) SPI_CLK_tester_comparator = SPI_CLK_0_wfg.compare;
  always @(SPI_CLK_tester_comparator)
    begin
      `VTW_TESTER.SPI_CLK_comparator = SPI_CLK_tester_comparator;
    end
  
  // Signal I2C_SCL comparator signal
  assign (strong1,weak0) I2C_SCL_tester_comparator = I2C_SCL_0_wfg.compare;
  always @(I2C_SCL_tester_comparator)
    begin
      `VTW_TESTER.I2C_SCL_comparator = I2C_SCL_tester_comparator;
    end
  
  // Signal I2C_SDA comparator signal
  assign (strong1,weak0) I2C_SDA_tester_comparator = I2C_SDA_0_wfg.compare;
  always @(I2C_SDA_tester_comparator)
    begin
      `VTW_TESTER.I2C_SDA_comparator = I2C_SDA_tester_comparator;
    end
  
  // Signal JTAG_TCK comparator signal
  assign (strong1,weak0) JTAG_TCK_tester_comparator = JTAG_TCK_0_wfg.compare;
  always @(JTAG_TCK_tester_comparator)
    begin
      `VTW_TESTER.JTAG_TCK_comparator = JTAG_TCK_tester_comparator;
    end
  
  // Signal JTAG_TMS comparator signal
  assign (strong1,weak0) JTAG_TMS_tester_comparator = JTAG_TMS_0_wfg.compare;
  always @(JTAG_TMS_tester_comparator)
    begin
      `VTW_TESTER.JTAG_TMS_comparator = JTAG_TMS_tester_comparator;
    end
  
  // Signal JTAG_TDI comparator signal
  assign (strong1,weak0) JTAG_TDI_tester_comparator = JTAG_TDI_0_wfg.compare;
  always @(JTAG_TDI_tester_comparator)
    begin
      `VTW_TESTER.JTAG_TDI_comparator = JTAG_TDI_tester_comparator;
    end
  
  // Signal JTAG_TDO comparator signal
  assign (strong1,weak0) JTAG_TDO_tester_comparator = JTAG_TDO_0_wfg.compare;
  always @(JTAG_TDO_tester_comparator)
    begin
      `VTW_TESTER.JTAG_TDO_comparator = JTAG_TDO_tester_comparator;
    end
  
  // Signal JTAG_TRSTN comparator signal
  assign (strong1,weak0) JTAG_TRSTN_tester_comparator = JTAG_TRSTN_0_wfg.compare;
  always @(JTAG_TRSTN_tester_comparator)
    begin
      `VTW_TESTER.JTAG_TRSTN_comparator = JTAG_TRSTN_tester_comparator;
    end
  
  // Signal SWDIO comparator signal
  assign (strong1,weak0) SWDIO_tester_comparator = SWDIO_0_wfg.compare;
  always @(SWDIO_tester_comparator)
    begin
      `VTW_TESTER.SWDIO_comparator = SWDIO_tester_comparator;
    end
  
  // Signal SWCLK comparator signal
  assign (strong1,weak0) SWCLK_tester_comparator = SWCLK_0_wfg.compare;
  always @(SWCLK_tester_comparator)
    begin
      `VTW_TESTER.SWCLK_comparator = SWCLK_tester_comparator;
    end
  
  // Signal clock comparator signal
  assign (strong1,weak0) clock_tester_comparator = clock_0_wfg.compare;
  always @(clock_tester_comparator)
    begin
      `VTW_TESTER.clock_comparator = clock_tester_comparator;
    end
  
  // Signal reset comparator signal
  assign (strong1,weak0) reset_tester_comparator = reset_0_wfg.compare | reset_1_wfg.compare;
  always @(reset_tester_comparator)
    begin
      `VTW_TESTER.reset_comparator = reset_tester_comparator;
    end
  
  // Signal scan_in0 comparator signal
  assign (strong1,weak0) scan_in0_tester_comparator = scan_in0_0_wfg.compare | scan_in0_1_wfg.compare;
  always @(scan_in0_tester_comparator)
    begin
      `VTW_TESTER.scan_in0_comparator = scan_in0_tester_comparator;
    end
  
  // Signal scan_in1 comparator signal
  assign (strong1,weak0) scan_in1_tester_comparator = scan_in1_0_wfg.compare | scan_in1_1_wfg.compare;
  always @(scan_in1_tester_comparator)
    begin
      `VTW_TESTER.scan_in1_comparator = scan_in1_tester_comparator;
    end
  
  // Signal scan_in2 comparator signal
  assign (strong1,weak0) scan_in2_tester_comparator = scan_in2_0_wfg.compare | scan_in2_1_wfg.compare;
  always @(scan_in2_tester_comparator)
    begin
      `VTW_TESTER.scan_in2_comparator = scan_in2_tester_comparator;
    end
  
  // Signal scan_in3 comparator signal
  assign (strong1,weak0) scan_in3_tester_comparator = scan_in3_0_wfg.compare | scan_in3_1_wfg.compare;
  always @(scan_in3_tester_comparator)
    begin
      `VTW_TESTER.scan_in3_comparator = scan_in3_tester_comparator;
    end
  
  // Signal scan_out0 comparator signal
  assign (strong1,weak0) scan_out0_tester_comparator = scan_out0_0_wfg.compare | scan_out0_1_wfg.compare | scan_out0_2_wfg.compare;
  always @(scan_out0_tester_comparator)
    begin
      `VTW_TESTER.scan_out0_comparator = scan_out0_tester_comparator;
    end
  
  // Signal scan_out1 comparator signal
  assign (strong1,weak0) scan_out1_tester_comparator = scan_out1_0_wfg.compare | scan_out1_1_wfg.compare | scan_out1_2_wfg.compare;
  always @(scan_out1_tester_comparator)
    begin
      `VTW_TESTER.scan_out1_comparator = scan_out1_tester_comparator;
    end
  
  // Signal scan_out2 comparator signal
  assign (strong1,weak0) scan_out2_tester_comparator = scan_out2_0_wfg.compare | scan_out2_1_wfg.compare | scan_out2_2_wfg.compare;
  always @(scan_out2_tester_comparator)
    begin
      `VTW_TESTER.scan_out2_comparator = scan_out2_tester_comparator;
    end
  
  // Signal scan_out3 comparator signal
  assign (strong1,weak0) scan_out3_tester_comparator = scan_out3_0_wfg.compare | scan_out3_1_wfg.compare | scan_out3_2_wfg.compare;
  always @(scan_out3_tester_comparator)
    begin
      `VTW_TESTER.scan_out3_comparator = scan_out3_tester_comparator;
    end
  
endmodule // Pattern0_submodule_0
`endif
