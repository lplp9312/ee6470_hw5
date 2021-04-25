`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 03:10:41 CST (Apr 25 2021 19:10:41 UTC)

module GauFilter_Add_4Ux2U_4U_1(in2, in1, out1);
  input [3:0] in2;
  input [1:0] in1;
  output [3:0] out1;
  wire [3:0] in2;
  wire [1:0] in1;
  wire [3:0] out1;
  wire add_23_2_n_0, add_23_2_n_1, add_23_2_n_2, add_23_2_n_3,
       add_23_2_n_4, add_23_2_n_5, add_23_2_n_9, add_23_2_n_10;
  MXI2X1 add_23_2_g57(.A (add_23_2_n_1), .B (in2[3]), .S0
       (add_23_2_n_10), .Y (out1[3]));
  ADDHX1 add_23_2_g58(.A (in2[2]), .B (add_23_2_n_9), .CO
       (add_23_2_n_10), .S (out1[2]));
  OAI21X2 add_23_2_g59(.A0 (add_23_2_n_4), .A1 (add_23_2_n_3), .B0
       (add_23_2_n_5), .Y (add_23_2_n_9));
  MXI2XL add_23_2_g63(.A (add_23_2_n_2), .B (in2[0]), .S0 (in1[0]), .Y
       (out1[0]));
  NAND2X2 add_23_2_g65(.A (in2[1]), .B (in1[1]), .Y (add_23_2_n_5));
  NOR2X4 add_23_2_g66(.A (in2[1]), .B (in1[1]), .Y (add_23_2_n_4));
  NAND2X8 add_23_2_g67(.A (in2[0]), .B (in1[0]), .Y (add_23_2_n_3));
  INVX1 add_23_2_g68(.A (in2[0]), .Y (add_23_2_n_2));
  INVXL add_23_2_g69(.A (in2[3]), .Y (add_23_2_n_1));
  NOR2BX1 add_23_2_g2(.AN (add_23_2_n_5), .B (add_23_2_n_4), .Y
       (add_23_2_n_0));
  XNOR2X1 add_23_2_g70(.A (add_23_2_n_3), .B (add_23_2_n_0), .Y
       (out1[1]));
endmodule


