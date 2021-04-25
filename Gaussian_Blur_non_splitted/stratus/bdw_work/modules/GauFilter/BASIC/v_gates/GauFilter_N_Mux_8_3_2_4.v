`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 03:10:27 CST (Apr 25 2021 19:10:27 UTC)

module GauFilter_N_Mux_8_3_2_4(in4, in3, in2, ctrl1, out1);
  input [7:0] in4, in3, in2;
  input [1:0] ctrl1;
  output [7:0] out1;
  wire [7:0] in4, in3, in2;
  wire [1:0] ctrl1;
  wire [7:0] out1;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_15;
  OAI2BB1X1 g127(.A0N (in2[5]), .A1N (n_15), .B0 (n_3), .Y (out1[5]));
  OAI2BB1X1 g132(.A0N (in2[6]), .A1N (n_15), .B0 (n_2), .Y (out1[6]));
  OAI2BB1X1 g128(.A0N (in2[7]), .A1N (n_15), .B0 (n_8), .Y (out1[7]));
  OAI2BB1X1 g130(.A0N (in2[4]), .A1N (n_15), .B0 (n_6), .Y (out1[4]));
  OAI2BB1X1 g131(.A0N (in2[1]), .A1N (n_15), .B0 (n_0), .Y (out1[1]));
  OAI2BB1X1 g129(.A0N (in2[2]), .A1N (n_15), .B0 (n_1), .Y (out1[2]));
  OAI2BB1X1 g126(.A0N (in3[3]), .A1N (n_7), .B0 (n_5), .Y (out1[3]));
  OAI2BB1X1 g133(.A0N (in2[0]), .A1N (n_15), .B0 (n_4), .Y (out1[0]));
  AOI22X1 g138(.A0 (in3[7]), .A1 (n_7), .B0 (in4[7]), .B1 (ctrl1[1]),
       .Y (n_8));
  AOI22X1 g135(.A0 (in3[4]), .A1 (n_7), .B0 (in4[4]), .B1 (ctrl1[1]),
       .Y (n_6));
  AOI22X1 g134(.A0 (in2[3]), .A1 (n_15), .B0 (in4[3]), .B1 (ctrl1[1]),
       .Y (n_5));
  AOI22X1 g136(.A0 (in3[0]), .A1 (n_7), .B0 (in4[0]), .B1 (ctrl1[1]),
       .Y (n_4));
  AOI22X1 g140(.A0 (in3[5]), .A1 (n_7), .B0 (in4[5]), .B1 (ctrl1[1]),
       .Y (n_3));
  AOI22X1 g137(.A0 (in3[6]), .A1 (n_7), .B0 (in4[6]), .B1 (ctrl1[1]),
       .Y (n_2));
  AOI22X1 g139(.A0 (in3[2]), .A1 (n_7), .B0 (in4[2]), .B1 (ctrl1[1]),
       .Y (n_1));
  AOI22X1 g141(.A0 (in3[1]), .A1 (n_7), .B0 (in4[1]), .B1 (ctrl1[1]),
       .Y (n_0));
  NOR2X1 g142(.A (ctrl1[1]), .B (ctrl1[0]), .Y (n_15));
  NOR2BX1 g143(.AN (ctrl1[0]), .B (ctrl1[1]), .Y (n_7));
endmodule

