`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 03:04:29 CST (Apr 25 2021 19:04:29 UTC)

module GauFilter_Eqi2u2_1(in1, out1);
  input [1:0] in1;
  output out1;
  wire [1:0] in1;
  wire out1;
  wire n_0;
  NOR2X4 g14(.A (in1[0]), .B (n_0), .Y (out1));
  CLKINVX12 g15(.A (in1[1]), .Y (n_0));
endmodule

