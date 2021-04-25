`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 03:10:42 CST (Apr 25 2021 19:10:42 UTC)

module GauFilter_Mul_2Ux2U_4U_1(in2, in1, out1);
  input [1:0] in2, in1;
  output [3:0] out1;
  wire [1:0] in2, in1;
  wire [3:0] out1;
  wire mul_22_8_n_0, mul_22_8_n_2, mul_22_8_n_3, mul_22_8_n_4,
       mul_22_8_n_5;
  ADDHX1 mul_22_8_g84(.A (mul_22_8_n_0), .B (mul_22_8_n_5), .CO
       (out1[3]), .S (out1[2]));
  NOR2BX1 mul_22_8_g85(.AN (mul_22_8_n_4), .B (mul_22_8_n_5), .Y
       (out1[1]));
  NOR2X4 mul_22_8_g86(.A (mul_22_8_n_2), .B (mul_22_8_n_3), .Y
       (mul_22_8_n_5));
  NAND2X1 mul_22_8_g87(.A (mul_22_8_n_2), .B (mul_22_8_n_3), .Y
       (mul_22_8_n_4));
  NAND2X4 mul_22_8_g89(.A (in1[1]), .B (in2[0]), .Y (mul_22_8_n_3));
  NAND2X6 mul_22_8_g91(.A (in1[0]), .B (in2[1]), .Y (mul_22_8_n_2));
  AND2X1 mul_22_8_g2(.A (in1[0]), .B (in2[0]), .Y (out1[0]));
  CLKAND2X6 mul_22_8_g96(.A (in1[1]), .B (in2[1]), .Y (mul_22_8_n_0));
endmodule


