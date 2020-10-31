// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Oct 31 19:23:20 2020
// Host        : ubuntu running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -force -mode synth_stub iob_timer_stub.v
// Design      : iob_timer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module iob_timer(valid, address, wdata, wstrb, rdata, ready, clk, rst)
/* synthesis syn_black_box black_box_pad_pin="valid[0:0],address[2:0],wdata[0:0],wstrb[3:0],rdata[31:0],ready[0:0],clk[0:0],rst[0:0]" */;
  input [0:0]valid;
  input [2:0]address;
  input [0:0]wdata;
  input [3:0]wstrb;
  output [31:0]rdata;
  output [0:0]ready;
  input [0:0]clk;
  input [0:0]rst;
endmodule
