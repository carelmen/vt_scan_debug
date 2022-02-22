`ifdef _Pattern0_timing_control_v
`else
`define _Pattern0_timing_control_v
`ifdef _alldef_hv
`else
`include "vtw_alldef.hv"
`endif
module Pattern0_timing_control(tester_sync,wft,wfc,triggers);

  input  tester_sync;
  input  [0:3] wft;
  input  [0:183] wfc;
  output [0:35] triggers;
  reg    [0:35] triggers;
  reg    enable;
  
  initial
    begin
      triggers = {36{1'b0}};
    end
  
  always @(posedge tester_sync)
    begin
      // Signal SPI_MOSI
      if((wft === 0) && (wfc[0:7] === 1))
        triggers[0] = ~triggers[0];
      // Signal SPI_MISO
      if((wft === 0) && (wfc[8:15] === 1))
        triggers[1] = ~triggers[1];
      // Signal SPI_CS
      if((wft === 0) && (wfc[16:23] === 1))
        triggers[2] = ~triggers[2];
      // Signal SPI_CLK
      if((wft === 0) && (wfc[24:31] === 1))
        triggers[3] = ~triggers[3];
      // Signal I2C_SCL
      if((wft === 0) && (wfc[32:39] === 1))
        triggers[4] = ~triggers[4];
      // Signal I2C_SDA
      if((wft === 0) && (wfc[40:47] === 1))
        triggers[5] = ~triggers[5];
      // Signal JTAG_TCK
      if((wft === 0) && (wfc[48:55] === 1))
        triggers[6] = ~triggers[6];
      // Signal JTAG_TMS
      if((wft === 0) && (wfc[56:63] === 1))
        triggers[7] = ~triggers[7];
      // Signal JTAG_TDI
      if((wft === 0) && (wfc[64:71] === 1))
        triggers[8] = ~triggers[8];
      // Signal JTAG_TDO
      if((wft === 0) && (wfc[72:79] === 1))
        triggers[9] = ~triggers[9];
      // Signal JTAG_TRSTN
      if((wft === 0) && (wfc[80:87] === 1))
        triggers[10] = ~triggers[10];
      // Signal SWDIO
      if((wft === 0) && (wfc[88:95] === 1))
        triggers[11] = ~triggers[11];
      // Signal SWCLK
      if((wft === 0) && (wfc[96:103] === 1))
        triggers[12] = ~triggers[12];
      // Signal clock
      if((wft === 0) && (wfc[104:111] === 1))
        triggers[13] = ~triggers[13];
      // Signal reset
      if((wft === 0) && (wfc[112:119] === 1))
        triggers[14] = ~triggers[14];
      if((wft === 0) && (wfc[112:119] === 2))
        triggers[15] = ~triggers[15];
      // Signal scan_in0
      if((wft === 0) && (wfc[120:127] === 1))
        triggers[16] = ~triggers[16];
      if((wft === 0) && (wfc[120:127] === 2))
        triggers[17] = ~triggers[17];
      // Signal scan_in1
      if((wft === 0) && (wfc[128:135] === 1))
        triggers[18] = ~triggers[18];
      if((wft === 0) && (wfc[128:135] === 2))
        triggers[19] = ~triggers[19];
      // Signal scan_in2
      if((wft === 0) && (wfc[136:143] === 1))
        triggers[20] = ~triggers[20];
      if((wft === 0) && (wfc[136:143] === 2))
        triggers[21] = ~triggers[21];
      // Signal scan_in3
      if((wft === 0) && (wfc[144:151] === 1))
        triggers[22] = ~triggers[22];
      if((wft === 0) && (wfc[144:151] === 2))
        triggers[23] = ~triggers[23];
      // Signal scan_out0
      if((wft === 0) && (wfc[152:159] === 1))
        triggers[24] = ~triggers[24];
      if((wft === 0) && (wfc[152:159] === 2))
        triggers[25] = ~triggers[25];
      if((wft === 0) && (wfc[152:159] === 3))
        triggers[26] = ~triggers[26];
      // Signal scan_out1
      if((wft === 0) && (wfc[160:167] === 1))
        triggers[27] = ~triggers[27];
      if((wft === 0) && (wfc[160:167] === 2))
        triggers[28] = ~triggers[28];
      if((wft === 0) && (wfc[160:167] === 3))
        triggers[29] = ~triggers[29];
      // Signal scan_out2
      if((wft === 0) && (wfc[168:175] === 1))
        triggers[30] = ~triggers[30];
      if((wft === 0) && (wfc[168:175] === 2))
        triggers[31] = ~triggers[31];
      if((wft === 0) && (wfc[168:175] === 3))
        triggers[32] = ~triggers[32];
      // Signal scan_out3
      if((wft === 0) && (wfc[176:183] === 1))
        triggers[33] = ~triggers[33];
      if((wft === 0) && (wfc[176:183] === 2))
        triggers[34] = ~triggers[34];
      if((wft === 0) && (wfc[176:183] === 3))
        triggers[35] = ~triggers[35];
    end
    
  always @(negedge tester_sync)
    begin
      triggers = {36{1'b0}};
    end
  
endmodule // Pattern0_timing_control
`endif
