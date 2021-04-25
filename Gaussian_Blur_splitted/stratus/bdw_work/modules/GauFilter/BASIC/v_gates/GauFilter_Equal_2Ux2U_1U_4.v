`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 02:59:42 CST (Apr 25 2021 18:59:42 UTC)

module GauFilter_Equal_2Ux2U_1U_4(in2, in1, out1);
  input [1:0] in2, in1;
  output out1;
  wire [1:0] in2, in1;
  wire out1;
  wire n_0, n_1;
  AND2XL g34(.A (n_1), .B (n_0), .Y (out1));
  XNOR2X1 g35(.A (in2[1]), .B (in1[1]), .Y (n_1));
  XNOR2X1 g36(.A (in2[0]), .B (in1[0]), .Y (n_0));
endmodule

