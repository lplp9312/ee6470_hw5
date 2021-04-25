`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 02:59:44 CST (Apr 25 2021 18:59:44 UTC)

module GauFilter_gen_busy_r_1(in1, in2, in3, out1);
  input in1, in2, in3;
  output [2:0] out1;
  wire in1, in2, in3;
  wire [2:0] out1;
  wire n_0, n_1, n_2;
  NOR2X6 g18(.A (n_1), .B (out1[2]), .Y (out1[1]));
  NOR2X6 g19(.A (n_0), .B (n_2), .Y (out1[2]));
  NOR2X8 g20(.A (in1), .B (in3), .Y (n_2));
  INVX1 g21(.A (in3), .Y (n_1));
  CLKINVX4 g22(.A (in2), .Y (n_0));
  CLKINVX3 fopt(.A (out1[1]), .Y (out1[0]));
endmodule


